local module = {}

local Console = Instance.new("ScreenGui")
Console.Name = "Console"
Console.Parent = gethui()
Console.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local Frame = Instance.new("Frame")
Frame.Parent = Console
Frame.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
Frame.Position = UDim2.new(0.282092929, 0, 0.0605417751, 0)
Frame.Size = UDim2.new(0, 778, 0, 545)
local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.0179999992, 0, 0.0120000001, 0)
Title.Size = UDim2.new(0, 45, 0, 20)
Title.ZIndex = 2
Title.Font = Enum.Font.Roboto
Title.Text = "Console"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 13.000
Title.TextWrapped = true
local DwnRgt = Instance.new("Folder")
DwnRgt.Name = "DwnRgt"
DwnRgt.Parent = Frame
local Btm = Instance.new("TextLabel")
Btm.Name = "Btm"
Btm.Parent = DwnRgt
Btm.AnchorPoint = Vector2.new(0.5, 0.5)
Btm.BackgroundColor3 = Color3.fromRGB(161, 161, 161)
Btm.BorderColor3 = Color3.fromRGB(112, 112, 112)
Btm.Position = UDim2.new(0.994000018, 0, 0.99000001, 0)
Btm.Rotation = -45.000
Btm.Size = UDim2.new(0, 5, 0, 1)
Btm.ZIndex = 2
Btm.Font = Enum.Font.Roboto
Btm.Text = ""
Btm.TextColor3 = Color3.fromRGB(255, 255, 255)
Btm.TextSize = 13.000
Btm.TextWrapped = true
local Top = Instance.new("TextLabel")
Top.Name = "Top"
Top.Parent = DwnRgt
Top.AnchorPoint = Vector2.new(0.5, 0.5)
Top.BackgroundColor3 = Color3.fromRGB(161, 161, 161)
Top.BorderColor3 = Color3.fromRGB(112, 112, 112)
Top.Position = UDim2.new(0.984000027, 0, 0.978999972, 0)
Top.Rotation = -45.000
Top.Size = UDim2.new(0, 20, 0, 1)
Top.ZIndex = 2
Top.Font = Enum.Font.Roboto
Top.Text = ""
Top.TextColor3 = Color3.fromRGB(255, 255, 255)
Top.TextSize = 13.000
Top.TextWrapped = true
local Mid = Instance.new("TextLabel")
Mid.Name = "Mid"
Mid.Parent = DwnRgt
Mid.AnchorPoint = Vector2.new(0.5, 0.5)
Mid.BackgroundColor3 = Color3.fromRGB(161, 161, 161)
Mid.BorderColor3 = Color3.fromRGB(112, 112, 112)
Mid.Position = UDim2.new(0.989000022, 0, 0.985000014, 0)
Mid.Rotation = -45.000
Mid.Size = UDim2.new(0, 12, 0, 1)
Mid.ZIndex = 2
Mid.Font = Enum.Font.Roboto
Mid.Text = ""
Mid.TextColor3 = Color3.fromRGB(255, 255, 255)
Mid.TextSize = 13.000
Mid.TextWrapped = true
local Close = Instance.new("ImageButton")
Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(0.971000016, 0, 0.0149999997, 0)
Close.Size = UDim2.new(0, 15, 0, 15)
Close.ZIndex = 2
Close.Modal = true
Close.Image = "http://www.roblox.com/asset/?id=6031094678"
Close.ImageTransparency = 0.300
Close.MouseButton1Click:Connect(function()
	Frame.Visible = false
end)
game:GetService("UserInputService").InputBegan:Connect(function(key,gPE)
	if gPE then return end
	if key.KeyCode == Enum.KeyCode.Equals then
		Frame.Visible = not Frame.Visible
	end
end)
local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
ScrollingFrame.BorderColor3 = Color3.fromRGB(75, 75, 75)
ScrollingFrame.Position = UDim2.new(0.0179948583, 0, 0.0715596303, 0)
ScrollingFrame.Size = UDim2.new(0, 741, 0, 462)
ScrollingFrame.BottomImage = ""
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1, 0)
ScrollingFrame.ScrollBarThickness = 10
ScrollingFrame.TopImage = ""
local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
local FilterBtnText = Instance.new("TextLabel")
FilterBtnText.Name = "FilterBtnText"
FilterBtnText.Parent = Frame
FilterBtnText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FilterBtnText.BackgroundTransparency = 1.000
FilterBtnText.Position = UDim2.new(0.699999988, 0, 0.0209999997, 0)
FilterBtnText.Size = UDim2.new(0, 31, 0, 15)
FilterBtnText.ZIndex = 2
FilterBtnText.Font = Enum.Font.Roboto
FilterBtnText.Text = "Filter"
FilterBtnText.TextColor3 = Color3.fromRGB(255, 255, 255)
FilterBtnText.TextSize = 14.000
FilterBtnText.TextWrapped = true
local FilterTxtBox = Instance.new("TextBox")
FilterTxtBox.Name = "FilterTxtBox"
FilterTxtBox.Parent = Frame
FilterTxtBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FilterTxtBox.Position = UDim2.new(0.755269885, 0, 0.0160000026, 0)
FilterTxtBox.Size = UDim2.new(0, 158, 0, 20)
FilterTxtBox.ZIndex = 2
FilterTxtBox.Font = Enum.Font.Roboto
FilterTxtBox.PlaceholderColor3 = Color3.fromRGB(108, 108, 108)
FilterTxtBox.PlaceholderText = "NO WORK HAHA"
FilterTxtBox.Text = ""
FilterTxtBox.TextColor3 = Color3.fromRGB(0, 0, 0)
FilterTxtBox.TextSize = 14.000
local FilterCheckmark = Instance.new("ImageButton")
FilterCheckmark.Name = "FilterCheckmark"
FilterCheckmark.Parent = Frame
FilterCheckmark.AnchorPoint = Vector2.new(0.5, 0.5)
FilterCheckmark.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FilterCheckmark.Position = UDim2.new(0.676999986, 0, 0.0350000001, 0)
FilterCheckmark.Size = UDim2.new(0, 13, 0, 13)
FilterCheckmark.ZIndex = 2
FilterCheckmark.AutoButtonColor = false
FilterCheckmark.Image = "http://www.roblox.com/asset/?id=6031094667"
FilterCheckmark.ImageColor3 = Color3.fromRGB(0, 0, 0)
FilterCheckmark.MouseEnter:Connect(function()
	FilterCheckmark.Parent.FilterBtnText.TextColor3 = Color3.fromRGB(195,195,195)
end)
FilterCheckmark.MouseLeave:Connect(function()
	FilterCheckmark.Parent.FilterBtnText.TextColor3 = Color3.fromRGB(255,255,255)
end)
FilterCheckmark.MouseButton1Click:Connect(function()
	if FilterCheckmark.ImageTransparency == 0 then
		FilterCheckmark.ImageTransparency = 1
	else
		FilterCheckmark.ImageTransparency = 0
	end
end)
local CmdTxtBox = Instance.new("TextBox")
CmdTxtBox.Name = "CmdTxtBox"
CmdTxtBox.Parent = Frame
CmdTxtBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CmdTxtBox.BorderColor3 = Color3.fromRGB(75, 75, 75)
CmdTxtBox.Position = UDim2.new(0.0180000365, 0, 0.940770566, 0)
CmdTxtBox.Size = UDim2.new(0, 650, 0, 20)
CmdTxtBox.ZIndex = 2
CmdTxtBox.ClearTextOnFocus = false
CmdTxtBox.Font = Enum.Font.Roboto
CmdTxtBox.Text = ""
CmdTxtBox.TextColor3 = Color3.fromRGB(0, 0, 0)
CmdTxtBox.TextSize = 14.000
CmdTxtBox.TextXAlignment = Enum.TextXAlignment.Left
local GoUp = Instance.new("ImageButton")
GoUp.Name = "GoUp"
GoUp.Parent = Frame
GoUp.AnchorPoint = Vector2.new(0.5, 0.5)
GoUp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GoUp.Position = UDim2.new(0.963999987, 0, 0.0810000002, 0)
GoUp.Size = UDim2.new(0, 10, 0, 10)
GoUp.ZIndex = 2
GoUp.AutoButtonColor = false
GoUp.Image = "http://www.roblox.com/asset/?id=6034818379"
GoUp.ImageColor3 = Color3.fromRGB(0, 0, 0)
GoUp.MouseEnter:Connect(function()
	GoUp.BackgroundColor3 = Color3.fromRGB(171, 226, 255)
end)
GoUp.MouseLeave:Connect(function()
	GoUp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
end)
GoUp.MouseButton1Click:Connect(function()
	local pos = ScrollingFrame.CanvasPosition
	ScrollingFrame.CanvasPosition = Vector2.new(pos.X,pos.Y - 50)
end)
local GoDown = Instance.new("ImageButton")
GoDown.Name = "GoDown"
GoDown.Parent = Frame
GoDown.AnchorPoint = Vector2.new(0.5, 0.5)
GoDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GoDown.Position = UDim2.new(0.963999987, 0, 0.910000026, 0)
GoDown.Size = UDim2.new(0, 10, 0, 10)
GoDown.ZIndex = 2
GoDown.AutoButtonColor = false
GoDown.Image = "http://www.roblox.com/asset/?id=6034818372"
GoDown.ImageColor3 = Color3.fromRGB(0, 0, 0)
GoDown.MouseEnter:Connect(function()
	GoDown.BackgroundColor3 = Color3.fromRGB(171, 226, 255)
end)
GoDown.MouseLeave:Connect(function()
	GoDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
end)
GoDown.MouseButton1Click:Connect(function()
	local pos = ScrollingFrame.CanvasPosition
	ScrollingFrame.CanvasPosition = Vector2.new(pos.X,pos.Y + 50)
end)
local CmdEnter = Instance.new("TextButton")
CmdEnter.Name = "CmdEnter"
CmdEnter.Parent = Frame
CmdEnter.AnchorPoint = Vector2.new(0.5, 0.5)
CmdEnter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CmdEnter.Position = UDim2.new(0.919307113, 0, 0.959052801, 0)
CmdEnter.Size = UDim2.new(0, 75, 0, 20)
CmdEnter.ZIndex = 2
CmdEnter.AutoButtonColor = false
CmdEnter.Font = Enum.Font.Roboto
CmdEnter.Text = " Submit"
CmdEnter.TextColor3 = Color3.fromRGB(58, 58, 58)
CmdEnter.TextSize = 14.000
CmdEnter.TextXAlignment = Enum.TextXAlignment.Left
CmdEnter.MouseEnter:Connect(function()
	CmdEnter.TextColor3 = Color3.fromRGB(43, 128, 255)
end)
CmdEnter.MouseLeave:Connect(function()
	CmdEnter.TextColor3 = Color3.fromRGB(58, 58, 58)
end)



function ReturnGui()
	return Console
end
