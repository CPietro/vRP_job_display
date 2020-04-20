local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_job_display")

local cfg = module("vrp_job_display", "cfg/display")

-- job display
AddEventHandler("vRP:playerSpawn",function(user_id, source, first_spawn)
  if first_spawn then
    -- add job display
    vRPclient.setDiv(source,{"job",cfg.display_css,vRP.getUserGroupByType({user_id,"job"})})
    vRPclient.setDiv(source,{"business",cfg.display_css_2,vRP.getUserGroupByType({user_id,"business"})})
    vRPclient.setDiv(source,{"gang",cfg.display_css_3,vRP.getUserGroupByType({user_id,"gang"})})
  end
end)

-- update display
AddEventHandler("vRP:playerJoinGroup", function(user_id, group, gtype)
  local player = vRP.getUserSource({user_id})
  if gtype == "job" then 
	vRPclient.setDivContent(player,{"job",group})
  elseif gtype == "business" then 
    vRPclient.setDivContent(player,{"business",group})
  elseif gtype == "gang" then 
    vRPclient.setDivContent(player,{"gang",group})
  end
end)

AddEventHandler("vRP:playerLeaveGroup", function(user_id, group, gtype)
  local player = vRP.getUserSource({user_id})
  if gtype == "business" then 
    vRPclient.setDivContent(player,{"business",""})
  elseif gtype == "gang" then 
    vRPclient.setDivContent(player,{"gang",""})
  end
end)