local fn_unpack = function()
  return { 1, 2, 3 }
end

-- this doesn't work
local a, b = fn_unpack()
print(a, b)

-- this works
local a, b = table.unpack(fn_unpack())
print(a, b)


-- only works for fn's returning multiple values, that what unpacks solves for destructuring
local fn_mult = function()
  return 4, 5, 6
end

local c, d, f = fn_mult()

print(c, d, f)
