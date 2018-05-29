from core.decorators import instance
from core.logger import Logger


@instance()
class AccessManager:
    def __init__(self):
        self.logger = Logger("access_manager")

    def inject(self, registry):
        self.db = registry.get_instance("db")
        self.character_manager = registry.get_instance("character_manager")
        self.alts_manager = registry.get_instance("alts_manager")

    def register_access_level(self, label, level, handler):
        self.logger.debug("Registering access level %d with label '%s'" % (level, label))
        self.access_levels.append({"label": label.lower(), "level": level, "handler": handler})
        self.access_levels = sorted(self.access_levels, key=lambda k: k["level"])

    def get_access_levels(self):
        acclvls = self.db.query("SELECT * FROM access_ranks ORDER BY access_level DESC");
        if len(acclvls) > 0:
            for row in acclvls:
                result.append(["name":row.name, "access_level":row.access_level, "name_short":row.name_short, "description":row.description])
        return result

    def get_access_level(self, char):
        return char.access_level

    def get_access_level_by_level(self, level):
        row = self.db.query_single("SELECT * FROM access_ranks WHERE access_level == ?", [level])
        if row:
            return row
        else: return None

    def get_access_level_by_label(self, label):
        row = self.db.query_single("SELECT access_level FROM access_ranks WHERE name LIKE ?", [label])
        if row:
            return row.access_level
        else: return None

    def check_access(self, char, access_level_label):
        return char.highest_access <= self.get_access_level_by_label(access_level_label)["level"]
        #return self.get_access_level(char)["level"] <= self.get_access_level_by_label(access_level_label)["level"]
