from core.decorators import instance, command, event
from core.alts.alts_manager import AltsManager
import os
import time


@instance()
class RaidController:
    POINTS_ACTION = [{"add":1}, {"rem":2}, {"mod":3}, {"raid":4}]

    def __init__(self):
        pass

    def inject(self, registry):
        self.db = registry.get_instance("db")
        self.pork_manager = registry.get_instance("pork_manager")

    def start(self):
        #self.db.exec("DELETE FROM online")

    def add_points(self, char_id, value, points):
        if points<1 return False
        sql = "INSERT INTO raid_points (char_id, points, action, value, `time`) VALUES (?,?,?,?,?)"
        self.db.exec(sql, [char_id, points, action["add"], value, time.time()])

    def rem_points(self, char_id, value, points):
        if points<-1 return False
        sql = "INSERT INTO raid_points (char_id, points, action, value, `time`) VALUES (?,?,?,?,?)"
        self.db.exec(sql, [char_id, points, action["rem"], value, time.time()])

    def mod_points(self, char_id, value, points):
        sql = "INSERT INTO raid_points (char_id, points, action, value, `time`) VALUES (?,?,?,?,?)"
        self.db.exec(sql, [char_id, points, action["mod"], value, time.time()])

    def raid_points(self, char_id, raid_status_id, points):
        sql = "INSERT INTO raid_points (char_id, points, action, value, `time`) VALUES (?,?,?,?,?)"
        self.db.exec(sql, [char_id, points, action["raid"], raid_status_id, time.time()])

    def get_points(self, char_id):
        sql = "SELECT SUM(points) AS points FROM raid_points WHERE char_id = ?"
        return self.db.query_single(sql, [char_id])

    def get_all_points(self, char_id):
        sql = "SELECT SUM(p.points) AS points FROM raid_points p WHERE p.char_id IN " \
                "(SELECT ? " \
                "UNION " \
                "SELECT a.char_id FROM alts a WHERE a.group_id = (SELECT group_id FROM alts WHERE char_id = ?) " \
                "AND a.status >0)"
        return self.db.query_single(sql, [char_id, char_id]).points
