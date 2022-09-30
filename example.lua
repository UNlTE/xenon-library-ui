local xenon = library:new({name = "Xenon V2",accent = Color3.fromRGB(105, 67, 255),key = "P"})
-- pages
local aimbot = xenon:page({name = "aimbot"})
local rage = xenon:page({name = "rage"})
local visuals = xenon:page({name = "visuals"})
local sett = xenon:page({name = "settings"})
-- aimbot sections
local aimbot_config = aimbot:section({name = "configuration"})
local aimbot_misc = aimbot:section({name = "miscellaneous",side = "right"})
--
local rage_main = rage:section({name = "main-rage",side = "full"})
--
local visuals_esp = visuals:section({name = "esp-visuals"})
local visuals_other = visuals:section({name = "other-visuals",side = "right"})
--
local settings_main = sett:section({name = "main settings"})
local settings_misc = sett:section({name = "miscellaneous",side = "right"})
--
local aimbot_toggle = aimbot_config:toggle({name = "Aimbot enabled",callback = function(bool)print(bool)end})
local aimbot_walls = aimbot_config:toggle({name = "Wall check",callback = function(bool)print(bool)end})
local aimbot_reaction = aimbot_config:slider({name = "Reaction time",measurement = "ms",decimals = false,def = 150,min = 5,max = 2000,callback = function(val)print(val)end})
local aimbot_aimpart = aimbot_config:dropdown({name = "Aim part",def = 1,options = {"Head","Torso","Arms","Legs","Random"},callback = function(val)print(val)end})
--
local rage_toggle = rage_main:toggle({name = "Ragebot enabled",callback = function(bool)print(bool)end})
local rage_reaction = rage_main:slider({name = "Reaction time",def = 2,min = 1,max = 10,callback = function(val)print(val)end})
local rage_hitpart = rage_main:dropdown({name = "Hit part",def = 2,options = {"Head","Torso","Arms","Legs","Random"},callback = function(val)print(val)end})
local rage_label = rage_main:label({name = "miscellaneous"})
local rage_autoshoot = rage_main:toggle({name = "Auto shoot",callback = function(bool)print(bool)end})
local rage_ammo = rage_main:toggle({name = "Inf ammo",callback = function(bool)print(bool)end})