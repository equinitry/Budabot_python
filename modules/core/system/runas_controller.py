from core.decorators import instance, command
from core.command_param_types import Any


@instance()
class RunasController:
    def __init__(self):
        pass

    def inject(self, registry):
        self.bot = registry.get_instance("bot")
        self.character_manager = registry.get_instance("character_manager")
        self.command_manager = registry.get_instance("command_manager")

    def start(self):
        pass

    @command(command="runas", params=[Any("character"), Any("command")], access_level="superadmin",
             description="Run a command as another character")
    def shutdown_cmd(self, channel, sender, reply, args):
        char_name = args[0].capitalize()
        command_str = args[1]
        char_id = self.character_manager.resolve_char_to_id(char_name)
        self.command_manager.process_command(command_str, channel, char_id, reply)
