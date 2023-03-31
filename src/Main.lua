local cmdtext = ""
local predictnum = 0
local guimodule = loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/SourceConsoleRoblox/main/Modules/GuiModule.lua", true))()
local cmdmodule = loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/SourceConsoleRoblox/main/Modules/CommandsModule.lua", true))()
local funcmodule = loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/SourceConsoleRoblox/main/Modules/FunctionsModule.lua", true))()
_G.ConsoleGui = ReturnGui()
_G.ConsoleGui.Frame.CmdEnter.MouseButton1Click:Connect(function()
	task.wait()
	_G.ConsoleGui.Frame.CmdTxtBox.Text = ""
end)
_G.ConsoleGui.Frame.CmdTxtBox.Changed:Connect(function()
	cmdtext = gui.Frame.CmdTxtBox.Text
end)
_G.ConsoleGui.Frame.CmdEnter.MouseButton1Click:Connect(function()
	funcmodule:AddOutput({"Text","TextColor3","TextTransparency"},{" ] "..cmdtext,Color3.fromRGB(225, 225, 225),0.4},_G.ConsoleGui)
	local answer = cmdmodule:FindCommand(string.lower(cmdtext))
	local cmdsplt = string.split(cmdtext," ")
	if answer ~= nil then
		if #cmdsplt > 1 then
			answer(cmdsplt[2])
		else
			answer()
		end
		cmdtext = ""
	else
		funcmodule:AddOutput({"Text","TextColor3","TextTransparency"},{' Unknown command "'..string.lower(cmdsplt[1])..'"',Color3.fromRGB(225, 225, 225),0},_G.ConsoleGui)
		cmdtext = ""
	end
end)
