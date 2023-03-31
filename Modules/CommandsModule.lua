local module = {}

local cmdslist = {
	["echo"] = function(text) module:AddOutput({"Text","TextColor3","TextTransparency"},{text,Color3.fromRGB(225, 225, 225),0}) end,
	["clear"] = function() for i,v in pairs(gui.Frame.ScrollingFrame:GetChildren()) do if v.ClassName == "TextLabel" then v:Destroy() end end end,
	["sv_cheats"] = function(val)
		if tonumber(val) then
			if tonumber(val) > 1 then val = 1 end
			--game:GetService("ServerScriptService").ConVar.sv_cheats.Value = tonumber(val)
			module:AddOutput({"Text","TextColor3","TextTransparency"},{"Server cvar 'sv_cheats' changed to "..val,Color3.fromRGB(225, 196, 79),0},gui)
		else -- tostring(game:GetService("ServerScriptService").ConVar.sv_cheats.Value)
			module:AddOutput({"Text","TextColor3","TextTransparency"},{"Server cvar 'sv_cheats' needs 1 integer, Server cvar is currently : nil",Color3.fromRGB(255, 44, 44),0}) 
		end end,
	["credits"] = function()
		module:AddOutput({"Text","TextColor3","TextTransparency"},{"Made by StarLagging, Thanks to Valve Team for Inspiration !",Color3.fromRGB(225, 225, 225),0},gui)
	end,
}

function module:FindCommand(text)
	local spltstr = string.split(text," ")
	return cmdslist[spltstr[1]]
end

return module
