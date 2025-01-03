local fn_multi_vals_ret = function()
  return true, false, 2
end

if fn_multi_vals_ret() then
  print('enter true branch if, just the first value returned is checked by the if')
else
  print('else branch if')
end

print('fn_multi_vals_ret()', fn_multi_vals_ret())
