
description "vRP job display"
--ui_page "ui/index.html"

dependency "vrp"

server_scripts{ 
  "@vrp/lib/utils.lua",
  "server.lua"
}
files{
  "cfg/font/Pdown.woff",
  "cfg/font/Pricedown.woff"
}
