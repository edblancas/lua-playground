local fnTest = function() error({ code = 121 }) end
local status, err = pcall(fnTest)
print(err.code) -->  121

-- when a function returns multiple values, the if just use the first one
-- e.g.

local fnTest2 = function()
  if false then error() end
  return { val = 'val' }
end
print('pcall(fnTest2)', pcall(fnTest2))
if pcall(fnTest2) then
  print('true')
else
  print('false')
end

local fnTest3 = function()
  error({ error = 'error' }) -- not just a str, can be anyting
end
print('pcall(fnTest3)', pcall(fnTest3))
if pcall(fnTest3) then
  print('true')
else
  print('false')
end
