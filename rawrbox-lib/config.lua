name    = 'rawrbox'
configs = {
	{
        name  = 'Lua.runtime.version',
        type  = 'set',
        value = 'Lua 5.3',
    },
	{
        key    = 'Lua.runtime.special',
        action = 'prop',
        prop   = 'include',
        value  = 'require',
    },
}
