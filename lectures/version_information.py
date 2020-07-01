""" 
Module to provide a simple function to gather all loaded
modules in a notebook and display the version information of 
the modules.
"""
import types
import inspect

def version_information():
    """Dynamically gather loaded modules form the current running
    environment and display them with their version information.
    """     
    # first gather information about imported modules and their versions
    module_dict = {}
    caller_globals = inspect.stack()[1][0].f_globals
    for name, module in caller_globals.items():
        if isinstance(module, types.ModuleType) and hasattr(module, '__version__') and module.__name__ != 'builtins':
            key = module.__name__
            version = module.__version__ 
            versions = module_dict.get(key, [])
            if not version in versions:
                versions.append(version)
            module_dict[key] = versions
            
    # now display the imported modules
    keys = list(module_dict.keys())
    keys.sort()
    print('%+15s   %s' % ('Module', 'Versions'))
    print('-' * 15 + '   ' + '-' * 60)
    for key in keys:
        print('%+14s:   %s' % (key, module_dict[key])) 
