local module = {}

function module:AddOutput(settingtable,valuetable,gui)
	-- Bugged Somehow
	print("pliz")
	local Command = Instance.new("TextLabel",gui.Frame.ScrollingFrame)
	Command.Name = "Command"
	Command.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Command.BackgroundTransparency = 1.000
	Command.Size = UDim2.new(0, 732, 0, 16)
	print("test")
	Command.Font = Enum.Font.Roboto
	Command.Text = ""
	Command.TextSize = 12.000
	Command.TextWrapped = true
	Command.TextXAlignment = Enum.TextXAlignment.Left
	print("nobug")
	for i,v in pairs(settingtable) do
		Command[v] = valuetable[i]
	end
end

return module
