# chain.lua
Library for easily building chained calls in Lua.

## With Argument Table
```lua
local example = chain('a').foo('b', 'c').bar('d')(function(args)
  return args.a + args.b + args.c + args.d
end)

example(1).foo(2, 3).bar(4) --> 10
```

## With Upvalues (Lua >=5.2)
```lua
local example = chain('a').foo('b', 'c').bar('d')(function()
  return a + b + c + d
end)

example(1).foo(2, 3).bar(4) --> 10
```
