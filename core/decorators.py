from core.registry import Registry


# taken from: https://stackoverflow.com/a/26151604/280574
def parametrized(dec):
    def layer(*args, **kwargs):
        def repl(f):
            return dec(f, *args, **kwargs)
        return repl
    return layer


@parametrized
def instance(cls, name=None):
    instance_name = cls.__name__ if name is None else name
    Registry.add_instance(instance_name, cls())
    return cls


@parametrized
def command(handler, cmd_name, regex, access_level, sub_command=None):
    handler.command = [cmd_name, regex, access_level, sub_command]
    return handler


@parametrized
def event(handler, event_type):
    handler.event = [event_type]
    return handler