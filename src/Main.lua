local cmdtext = ""
local predictnum = 0
local cmdmodule = loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/SourceConsoleRoblox/main/Modules/CommandsModule.lua", true))()
local funcmodule = loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/SourceConsoleRoblox/main/Modules/FunctionsModule.lua", true))()
local guimodule = loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/SourceConsoleRoblox/main/Modules/GuiModule.lua", true))()
local gui = ReturnGui
gui.Frame.CmdEnter.MouseButton1Click:Connect(function()
	task.wait()
	script.Parent.Parent.CmdTxtBox.Text = ""
end)

gui.Frame.CmdTxtBox.Changed:Connect(function()
	cmdtext = gui.Frame.CmdTxtBox.Text
end)

script.Parent.MouseButton1Click:Connect(function()
	funcmodule:AddOutput({"Text","TextColor3","TextTransparency"},{"] "..cmdtext,Color3.fromRGB(225, 225, 225),0.4})
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
		funcmodule:AddOutput({"Text","TextColor3","TextTransparency"},{'Unknown command "'..string.lower(cmdsplt[1])..'"',Color3.fromRGB(225, 225, 225),0})
		cmdtext = ""
	end
end)
