from core.decorators import instance
from core.map_object import MapObject
from core.aochat import server_packets
from core.logger import Logger
from __init__ import none_to_empty_string
import requests
import time
import os


@instance()
class PorkManager:
    #database mapping for later
    funcom_lookup_xml = [
			{"firstname": "firstname"}, {"lastname": "lastname"}, {"level": "level"}, {"defender_rank": "defender_rank"},  {"defender_rank_id": "defender_rank_id"}, {"breed": "breed"},
			{"gender": "gender"}, {"faction": "faction"}, {"profession": "profession"}, {"profession_title": "profession_title"}, {"organization_id": "organization_id"},
			{"organization_name": "organization_name"}, {"rank_id": "rank_id"}, {"rank": "rank"}]
	funcom_lookup_json = [{"FIRSTNAME": "firstname"}, {"LASTNAME": "lastname"}, {"LEVELX": "level"}, {"RANK_name": "defender_rank"}, {"ALIENLEVEL": "defender_rank_id"}, {"BREED": "breed"},
			{"SEX": "gender"}, {"SIDE": "faction"}, {"PROF": "profession"}, {"PROFNAME": "profession_title"}, {"ORG_INSTANCE": "organization_id"},
			{"NAME": "organization_name"}, {"RANK": "rank_id"}, {"RANK_TITLE": "rank"},
			{"CHAR_INSTANCE": "user_id"}]

    def __init__(self):
        self.logger = Logger("pork_manager")

    def inject(self, registry):
        self.bot = registry.get_instance("bot")
        self.db = registry.get_instance("db")
        self.character_manager = registry.get_instance("character_manager")

    def pre_start(self):
        self.bot.add_packet_handler(server_packets.CharacterLookup.id, self.update)
        self.bot.add_packet_handler(server_packets.CharacterName.id, self.update)

    def start(self):
        pass

    def get_character_info(self, char):
        char_id = self.character_manager.resolve_char_to_id(char)
        char_name = self.character_manager.resolve_char_to_name(char)

        # if we have entry in database and it is less than a day old, use that
        char_info = self.get_from_database(char_id=char_id, char_name=char_name)
        if char_info:
            if char_info.source == "chat_server":
                char_info = None
            elif char_info.last_updated > (int(time.time()) - 86400):
                char_info.source += " (cache)"
                return char_info

        if char_name:
            url = "http://people.anarchy-online.com/character/bio/d/%d/name/%s/bio.xml?data_type=json" % (self.bot.dimension, char_name)
        else:
            return None

        r = requests.get(url)
        try:
            json = r.json()
        except ValueError as e:
            self.logger.warning("Error marshalling value as json: %s" % r.text, e)
            json = None

        # char_id have to match or at least be higher!
        #TODO mapping
        if (json and json[0]["CHAR_INSTANCE"]>=char_id):
            char_info_json = json[0]
            org_info_json = json[1] if json[1] else {}

            char_info = MapObject({
                "name": char_info_json["NAME"],
                "char_id": char_info_json["CHAR_INSTANCE"],
                "first_name": char_info_json["FIRSTNAME"],
                "last_name": char_info_json["LASTNAME"],
                "level": char_info_json["LEVELX"],
                "breed": char_info_json["BREED"],
                "dimension": char_info_json["CHAR_DIMENSION"],
                "gender": char_info_json["SEX"],
                "faction": char_info_json["SIDE"],
                "profession": char_info_json["PROF"],
                "profession_title": char_info_json["PROFNAME"],
                "ai_rank": char_info_json["RANK_name"],
                "ai_level": char_info_json["ALIENLEVEL"],
                "pvp_rating": char_info_json["PVPRATING"],
                "pvp_title": none_to_empty_string(char_info_json["PVPTITLE"]),
                "head_id": char_info_json["HEADID"],
                "org_id": org_info_json.get("ORG_INSTANCE", 0),
                "org_name": org_info_json.get("NAME", ""),
                "org_rank_name": org_info_json.get("RANK_TITLE", ""),
                "org_rank_id": org_info_json.get("RANK", 0),
                "source": "people.anarchy-online.com"
            })

            self.save_character_info(char_info)
            return char_info
        else:
            # return cached info from database, even tho it's old
            return char_info

    def get_character_history(self, char):
        pass

    def get_org_info(self, org_id):
        pass

    def load_character_info(self, char_id):
        char_info = self.get_character_info(char_id)
        if not char_info:
            char_info = MapObject({
                "name": "Unknown:" + str(char_id),
                "char_id": char_id,
                "first_name": "",
                "last_name": "",
                "level": 0,
                "breed": "",
                "dimension": 5,
                "gender": "",
                "faction": "",
                "profession": "",
                "profession_title": "",
                "ai_rank": "",
                "ai_level": 0,
                "pvp_rating": 0,
                "pvp_title": "",
                "head_id": 0,
                "org_id": 0,
                "org_name": "",
                "org_rank_name": "",
                "org_rank_id": 6,
                "source": "stub"
            })
            self.save_character_info(char_info)

    def save_character_info(self, char_info):
        # create sql string with db mapping array
        update_sql = "UPDATE player SET "
        insert_sql = "INSERT INTO player ("
        for map_json, map_db in funcom_lookup_json:
            if(map_db != "char_id" and map_db != "last_updated" and char_info.contains(map_db)):
                update_sql += map_db + " = ? ,"
                update_objects.append(char_info.get(map_db))
                insert_sql += map_db + " ,"
                insert_sql_val += " ? ,"
        # dont forget update time
        update_sql += "last_updated = ? WHERE char_id = ? "
        insert_sql += "last_updated , char_id ) VALUES ( " + insert_sql_val + " ? , ?)"
        update_objects.append(int(time.time()))
        update_objects.append(char_info.char_id)

        # update OR insert
        if (self.db.exec(update_sql, update_objects)==0):
            if (self.db.exec(insert_sql, update_objects)):
                return True
            else return False
        else return True

    def get_from_database(self, char_id=None, char_name=None):
        if char_id:
            return self.db.query_single("SELECT *, IFNULL((SELECT max(access_level) FROM player WHERE p.group_id>0 AND group_id = p.group_id), p.access_lvl ) highest_access FROM player p WHERE char_id = ?", [char_id])
        elif char_name:
            return self.db.query_single("SELECT *, IFNULL((SELECT max(access_level) FROM player WHERE p.group_id>0 AND group_id = p.group_id), p.access_lvl ) highest_access FROM player p WHERE name = ?", [char_name])
        else:
            return None

    def update(self, packet):
        # don't update if we didn't get a valid response
        if packet.char_id == 4294967295:
            return

        character = self.get_from_database(char_id=packet.char_id)

        if character:
            if character.name != packet.name:
                self.db.exec("UPDATE player SET name = ? WHERE char_id = ?", [packet.name, packet.char_id])
        else:
            insert_sql = """
                INSERT INTO player ( char_id, name, first_name, last_name, level, breed, gender, faction, profession,
                profession_title, ai_rank, ai_level, org_id, org_name, org_rank_name, org_rank_id, dimension, head_id,
                pvp_rating, pvp_title, source, last_updated)
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"""

            self.db.exec(insert_sql, [packet.char_id, packet.name, "", "", 0, "", "",
                                      "", "", "", "", 0, 0, "", "", 6, 5, 0, 0, "",
                                      "chat_server", int(time.time())])
