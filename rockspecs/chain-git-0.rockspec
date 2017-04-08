package = 'chain'
version = 'git-0'
source = {
  url = 'https://github.com/ryanplusplus/chain.lua/archive/master.zip',
  dir = 'chain.lua-master/src'
}
description = {
  summary = 'Library for easily building chained calls in Lua.',
  homepage = 'https://github.com/ryanplusplus/chain.lua/',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}
dependencies = {
  'lua >= 5.2'
}
build = {
  type = 'builtin',
  modules = {
    ['chain'] = 'chain.lua'
  }
}
