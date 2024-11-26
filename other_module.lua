global_var = "global varrrr"
local local_var_to_file = "local val to file other_module"
print('from other_module.lua', local_var_to_file)

-- as seen in the book Programming in lua ch.17
local M = {}         -- the module

function global_fn_from_other_mod ()
  print("Hi form global_fn_from_other_mod")
end

local function local_fn_from_other_mod ()
  print("Hi form local_fn_from_other_mod")
end

function M.fn_added_to_M ()
  print("Hi from fn_added_to_M")
end

local function local_fn_from_other_mod_added_to_M ()
  print("hi from local_fn_from_other_mod_added_to_M")
end

M.local_fn_added_to_M = local_fn_from_other_mod_added_to_M;

return M
