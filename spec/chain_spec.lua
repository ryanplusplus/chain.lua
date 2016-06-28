local chain = require 'chain'

describe('chain', function()
  it('should work for no chained calls', function()
    local f = chain('a')(function(args)
      return args.a
    end)

    assert.are.equal(5, f(5))
  end)

  it('should allow multiple chained calls', function()
    local f = chain('a').plus('b').and_also('c')(function(args)
      return args.a + args.b + args.c
    end)

    assert.are.equal(6, f(1).plus(2).and_also(3))
  end)

  it('should allow multiple arguments in each chained call', function()
    local f = chain('a', 'b').foo('c', 'd').bar('e', 'f')(function(args)
      return args.a + args.b + args.c + args.d + args.e + args.f
    end)

    assert.are.equal(21, f(1, 2).foo(3, 4).bar(5, 6))
  end)

  it('should make arguments available as upvalues', function()
    local f = chain('a', 'b').foo('c', 'd').bar('e', 'f')(function()
      return a + b + c + d + e + f
    end)

    assert.are.equal(21, f(1, 2).foo(3, 4).bar(5, 6))
  end)

  it('should allow the chained call to occur more than once when using an args object', function()
    local f = chain('a').plus('b')(function(args)
      return args.a + args.b
    end)

    assert.are.equal(3, f(1).plus(2))
    assert.are.equal(3, f(1).plus(2))
  end)

  it('should allow the chained call to occur more than once when using upvalues', function()
    local f = chain('a').plus('b')(function()
      return a + b
    end)

    assert.are.equal(3, f(1).plus(2))
    assert.are.equal(3, f(1).plus(2))
  end)
end)
