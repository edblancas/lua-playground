print('x before add', x)

function add(x)
  -- will redefine so x will be nil
  -- local x  -- [lsp] tip: redefined local x
  print('x inside add', x)
  return function (y)
           return x+y
         end
end

add2 = add(2)
print(add2(5))

print('x after add2', x)
