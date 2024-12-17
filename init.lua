-- init.lua of the module-dir/ loaded
-- if we have both module-dir/init.lua and module-dir.lua, the later it's only called
require("module-dir")

local other_module = require "other_module"

print('from init.lua', local_var_to_file)

print("global from other module=")
print(global_var)

local local_var_to_file = "local val to file init"

print(local_var_to_file)

local global_var = "obscure global_var"

print(global_var)

print("------------")

global_fn_from_other_mod()

-- local_fn_from_other_mod()
-- the above gives next error:
--[[
lua: init.lua:20: attempt to call a nil value (global 'local_fn_
from_other_mod')
stack traceback:
        init.lua:20: in main chunk
        [C]: in ?
--]]

other_module.fn_added_to_M()

other_module.local_fn_added_to_M()

-- Lua 5.4.7  Copyright (C) 1994-2024 Lua.org, PUC-Rio
-- > false and true or nil
-- nil
-- > function test(a,b,c)
-- >> print(a,b,c)
-- >> end
-- > test(1,2,3)
-- 1	2	3
-- > test(1,2,nil)
-- 1	2	nil
-- > test(1,2)
-- 1	2	nil
-- > test(1)
-- 1	nil	nil
-- > test()
-- nil	nil	nil
