# chain.lua
Library for easily building chained calls in Lua.

## With Argument Table
```lua
local example = chain('a').foo('b', 'c').bar('d')(function(args)
  return args.a + args.b + args.c + args.c
end)

example(1).foo(2, 3).bar(4) --> 10
```

## With Upvalues
```lua
local example = chain('a').foo('b', 'c').bar('d')(function(args)
  return a + b + c + c
end)

example(1).foo(2, 3).bar(4) --> 10
```
