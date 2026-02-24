rockspec_format = "3.0"
package = "lua-sandbox"
version = "dev-1"
source = {
   url = "https://github.com/ladybunne/lua-sandbox"
}
description = {
   homepage = "https://github.com/ladybunne/lua-sandbox",
   license = "*** please specify a license ***"
}
dependencies = {
   "lua >= 5.1, < 5.5",
   "inspect >= 3.1"
}
test_dependencies = {
   "busted >= 2.3"
}
build = {
   type = "builtin",
   modules = {
      ["busted test"] = "src/busted test.lua",
      main = "src/main.lua"
   }
}
