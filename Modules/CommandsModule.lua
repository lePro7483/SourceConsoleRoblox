local module = {}
local gui = gethui().Console
local funcmodule = loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/SourceConsoleRoblox/main/Modules/FunctionsModule.lua", true))()

local cmdslist = {
	["echo"] = function(text) funcmodule:AddOutput({"Text","TextColor3","TextTransparency"},{" "..text,Color3.fromRGB(225, 225, 225),0},gui) end,
	["clear"] = function() for i,v in pairs(gui.Frame.ScrollingFrame:GetChildren()) do if v.ClassName == "TextLabel" then v:Destroy() end end end,
	["quit"] = function() gui:Destroy() end,
	["sv_cheats"] = function(val)
		if tonumber(val) then
			if tonumber(val) > 1 then val = 1 end
			gui.Frame.ConVar.sv_cheats.Value = tonumber(val)
			funcmodule:AddOutput({"Text","TextColor3","TextTransparency"},{" Server cvar 'sv_cheats' changed to "..val,Color3.fromRGB(225, 196, 79),0},gui)
		else
			funcmodule:AddOutput({"Text","TextColor3","TextTransparency"},{" Server cvar 'sv_cheats' needs 1 integer, Server cvar is currently : "..tostring(game:GetService("ServerScriptService").ConVar.sv_cheats.Value),Color3.fromRGB(255, 44, 44),0},gui) 
		end end,
	["noclip"] = function() if gui.Frame.ConVar.sv_cheats.Value == 1 then
			gui.Frame.ConVar.noclip.Value = true
			funcmodule:AddOutput({"Text","TextColor3","TextTransparency"},{" Yes",Color3.fromRGB(225, 196, 79),0},gui)
		else
			gui.Frame.ConVar.noclip.Value = false
			funcmodule:AddOutput({"Text","TextColor3","TextTransparency"},{" No",Color3.fromRGB(225, 196, 79),0},gui) 
		end end,
	["credits"] = function()
		funcmodule:AddOutput({"Text","TextColor3","TextTransparency"},{" Made by StarLagging, Thanks to Valve Team for Inspiration !",Color3.fromRGB(225, 225, 225),0},gui)
	end,
}

function module:FindCommand(text)
	local spltstr = string.split(text," ")
	return cmdslist[spltstr[1]]
end

function module:SendGui(NewGui)
	gui = NewGui
end
return module
