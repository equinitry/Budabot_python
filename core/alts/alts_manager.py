from core.decorators import instance
import os
import time


@instance()
class AltsManager:

    def __init__(self):
        pass

    def inject(self, registry):
        self.db = registry.get_instance("db")
        self.character_manager = registry.get_instance("character_manager")
        self.pork_manager = registry.get_instance("pork_manager")

    def start(self):
        pass

    def get_alts(self, char_id):
        player = self.db.query("SELECT * FROM player WHERE char_id = ?", [char_id])
        if player:
            if player.group_id > 0:
                return player
            else
                sql = "SELECT p.* FROM player WHERE p.group_id = ? " \
                    # this shows main as first
                    "ORDER BY (char_id = (SELECT main_id FROM alts a WHERE a.group_id = ? ) ) DESC, level DESC" 
                return self.db.query(sql, [player.group_id, player.group_id])
        else return None;

    def add_alt(self, sender_char_id, alt_char_id, direct_add = False, force_add = False):
        # get char infos
        sender = self.pork_manager.load_character_info(sender_char_id)
        new_alt = self.pork_manager.load_character_info(alt_char_id)
        # if one doesnt exist return -> return extended info...
        if (not sender or not new_alt):
            return False
        # new_alt is already registered to someone else and no force add (for example admin wants change something)
        if (new_alt.group_id > 0 and not force_add):
            return False
        # sender has no alts yet
        if sender.group_id == 0:
            self.create_group_id(sender_char_id)
            sender = self.pork_manager.load_character_info(sender_char_id)
        # add alts without check?
        if not direct_add:
            return self.db.exec("INSERT INTO alts_validate (sender_id , new_alt_id , time) VALUES (? , ? , ?)", [sender_char_id, alt_char_id,time.time()])
        # add without check
        else:
            return self.db.exec("UPDATE player SET group_id = ? WHERE char_id = ?", [sender.group_id, alt_char_id])

    def remove_alt(self, sender_char_id, alt_char_id):
        alt_row = self.get_alt_status(alt_char_id)
        sender_row = self.get_alt_status(sender_char_id)

        # sender and alt do not belong to the same group id
        if not alt_row or not sender_row or alt_row.group_id != sender_row.group_id:
            return False

        # cannot remove alt from an unvalidated sender
        if sender_row.status == self.UNVALIDATED:
            return False

        self.db.exec("DELETE FROM alts WHERE char_id = ?", [alt_char_id])
        return True
    
    def change_main(self, new_main_id):
        # get char infos
        new_main = self.pork_manager.load_character_info(new_main_id)
        # if one doesnt exist return -> return extended info...
        if (not new_main or new_main.group_id == 0):
            return False
        # update database
        return self.db.exec("UPDATE alts SET main_id = ? WHERE group_id = ", [new_main_id, new_main.group_id])

    def create_group_id(self, char_id):
        self.db.exec("INSERT INTO alts (main_id) VALUES (?)", [char_id]);
        # depending on database implementation might this approach might not be threadsafe! add an extra function that directly returns the id
        group_id = self.db.lastrowid
        return self.db.exec("UPDATE player SET group_id = ? WHERE char_id = ?", [group_id, char_id])
    
