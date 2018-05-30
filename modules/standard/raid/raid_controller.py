from core.decorators import instance, command, event
from core.alts.alts_manager import AltsManager
from core.chat_blob import ChatBlob
import os
import time


@instance()
class RaidController:
    RAID_ACTION = {"start":1, "pause":2, "end":3, "restart":4, "name":5, "description":6, "min_level":7, "max_level":8
                    , "min_player":9, "max_player":10, "lock":11, "points":12}

    def __init__(self):
        pass

    def inject(self, registry):
        self.db = registry.get_instance("db")
        self.pork_manager = registry.get_instance("pork_manager")

    def start(self):
        self.db.exec("DELETE FROM online")

    @command(command="raid start", params=[Any("name")], access_level="raidleader",
             description="Start a raid")
    def raid_start_cmd(self, channel, sender, reply, args):
        name = args[0].capitalize()
        #check if raid is already running
        reply(ChatBlob("Online (%d)" % count, blob))

    def get_running_raid(self, channel):
        sql = "SELECT rs.* FROM raids r LEFT JOIN raid_status rs ON rs.raid_id = r.raid_id WHERE r.channel = ? ORDER BY `time` DESC"
        data = self.db.query(sql, [channel])
        #have to look how python uses maps dictionarys
        raid_info = {}
        raid_active = 0
        for (row in data):
            #iterate infos and create raid object containing infos, overwrite default infosself.
            #stop if raid end is befor start/restart and return None
            if (row.action == raid_status.get("start") or row.action == raid_status["restart"]):
                raid_active = row.time
            if (row.action == raid_status["end"] and row.time > raid_active):
                return None
            #add
            raid_info.

    def get_running_raid(self, channel):
        sql = "SELECT * FROM raids r LEFT JOIN raid_status rs ON rs.raid_id = r.raid_id WHERE rs.action"
        # ? raid end
        sql = "SELECT * FROM raids WHERE raid_id NOT IN (SELECT raid_id FROM raid_status WHERE action = ?)"

    def get_latest_raid_id(self, channel):
        return raid_id = self.db.query_single("SELECT raid_id FROM raids WHERE channel = ? ORDER BY raid_id DESC", [channel]).raid_id

    @event(PrivateChannelManager.JOINED_PRIVATE_CHANNEL_EVENT, "Record in database when someone joins private channel")
    def private_channel_joined_event(self, event_type, event_data):
        self.pork_manager.load_character_info(event_data.char_id)
        self.db.exec("INSERT INTO online (char_id, afk, channel, dt) VALUES (?, ?, ?, ?)",
                     [event_data.char_id, "", self.PRIVATE_CHANNEL, int(time.time())])

    @event(PrivateChannelManager.LEFT_PRIVATE_CHANNEL_EVENT, "Record in database when someone leaves private channel")
    def private_channel_left_event(self, event_type, event_data):
        self.db.exec("DELETE FROM online WHERE char_id = ? AND channel = ?",
                     [event_data.char_id, self.PRIVATE_CHANNEL])
