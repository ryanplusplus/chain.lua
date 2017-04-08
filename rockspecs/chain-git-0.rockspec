package = 'chain'
version = 'git-0'
source = {
  url = 'git://github.com/ryanplusplus/chain.lua.git'
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
