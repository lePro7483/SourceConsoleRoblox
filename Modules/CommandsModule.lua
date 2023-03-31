local module = {}
local gui = nil
local funcmodule = loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/SourceConsoleRoblox/main/Modules/FunctionsModule.lua", true))()

local cmdslist = {
	["echo"] = function(text) funcmodule:AddOutput({"Text","TextColor3","TextTransparency"},{" "..text,Color3.fromRGB(225, 225, 225),0},gui) end,
	["clear"] = function() for i,v in pairs(gui.Frame.ScrollingFrame:GetChildren()) do if v.ClassName == "TextLabel" then v:Destroy() end end end,
	["quit"] = function() gui:Destroy() end,
	["sv_cheats"] = function(val)
		if tonumber(val) then
			if tonumber(val) > 1 then val = 1 end
			--game:GetService("ServerScriptService").ConVar.sv_cheats.Value = tonumber(val)
			funcmodule:AddOutput({"Text","TextColor3","TextTransparency"},{" Server cvar 'sv_cheats' changed to "..val,Color3.fromRGB(225, 196, 79),0},gui)
		else -- tostring(game:GetService("ServerScriptService").ConVar.sv_cheats.Value)
			funcmodule:AddOutput({"Text","TextColor3","TextTransparency"},{" Server cvar 'sv_cheats' needs 1 integer, Server cvar is currently : nil",Color3.fromRGB(255, 44, 44),0},gui) 
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
