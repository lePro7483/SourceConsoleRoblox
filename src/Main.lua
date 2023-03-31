local cmdtext = ""
local predictnum = 0
local guimodule = loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/SourceConsoleRoblox/main/Modules/GuiModule.lua", true))()
local cmdmodule = loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/SourceConsoleRoblox/main/Modules/CommandsModule.lua", true))()
local funcmodule = loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/SourceConsoleRoblox/main/Modules/FunctionsModule.lua", true))()
gui = ReturnGui()
gui.Frame.CmdEnter.MouseButton1Click:Connect(function()
	task.wait()
	gui.Frame.CmdTxtBox.Text = ""
end)
gui.Frame.CmdTxtBox.Changed:Connect(function()
	cmdtext = gui.Frame.CmdTxtBox.Text
end)
gui.Frame.CmdEnter.MouseButton1Click:Connect(function()
	funcmodule:AddOutput({"Text","TextColor3","TextTransparency"},{" ] "..cmdtext,Color3.fromRGB(225, 225, 225),0.4},gui)
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
		funcmodule:AddOutput({"Text","TextColor3","TextTransparency"},{' Unknown command "'..string.lower(cmdsplt[1])..'"',Color3.fromRGB(225, 225, 225),0},gui)
		cmdtext = ""
	end
end)
