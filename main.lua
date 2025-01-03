require('module')
-- just the first time will run the code, the second time only return the cached module
require('module')

local t = {
  {
    'owner1/repo1'
  },
  -- this will add the table and another entry to the table with the module
  require('module-table'),
}

local print_table = function(my_table)
  for i, x in pairs(my_table) do
    print('key=', i, 'val=', x, 'type(val)=', type(x))
  end
end

print('t=', print_table(t))
print('t=', print_table(t))

-- so at the end the table will be like this
-- {
--   {
--     'owner1/repo1'
--   },
--   {
--     {
--       'owner/repo'
--     }
--   }
--   './module-table.lua'
-- }
