package = "kong-plugin-extended-log-serializer"
version = "0.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/peterbsmith2/kong-plugin-extended-log-serializer",
  tag = "v0.1-1"
}
description = {
  summary = "The Extended Log Serializer Plugin",
  license = "Apache 2.0",
  homepage = "https://github.com/peterbsmith2/kong-plugin-extended-log-serializer",
  detailed = [[
    A plugin for extending log serializer to log request bodies.

    Based off the "Hello World" plugin developed by brndmg.
  ]],
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.extended-log-serializer.handler"] = "src/handler.lua",
    ["kong.plugins.extended-log-serializer.schema"] = "src/schema.lua"
  }
}
