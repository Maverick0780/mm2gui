if game.PlaceId == 142823291 then
    if game.Players.LocalPlayer.UserId == 978813156 or 150749863 then
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local ghost = Instance.new("TextButton")
local TrapSpam = Instance.new("TextButton")
local TrapToggle = Instance.new("TextButton")
local FakeGun = Instance.new("TextButton")
local close = Instance.new("TextButton")
local TrapSpam2 = Instance.new("TextButton")
local openmain = Instance.new("Frame")
local open = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(255, 148, 17)
main.Position = UDim2.new(0.538694978, 0, 0.087649405, 0)
main.Size = UDim2.new(0, 188, 0, 184)
main.Visible = false
main.Active = true
main.Draggable = true

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.fromRGB(185, 12, 0)
title.Size = UDim2.new(0, 188, 0, 21)
title.Font = Enum.Font.SourceSans
title.Text = "Aidan's Halloween mm2 GUI!"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextSize = 14.000

ghost.Name = "ghost"
ghost.Parent = main
ghost.BackgroundColor3 = Color3.fromRGB(34, 145, 121)
ghost.Position = UDim2.new(0, 0, 0.625, 0)
ghost.Size = UDim2.new(0, 77, 0, 29)
ghost.Font = Enum.Font.SourceSans
ghost.Text = "Ghost Toggle"
ghost.TextColor3 = Color3.fromRGB(0, 0, 0)
ghost.TextSize = 14.000
ghost.MouseButton1Down:connect(function()
	local UIS = game:GetService("UserInputService")
	
	UIS.InputBegan:connect(function(input)
		if input.KeyCode == Enum.KeyCode.Z then -- turns on ghost/change key if you want a different key
			game:GetService("ReplicatedStorage").Remotes.Gameplay.Stealth:FireServer(true)
		end end)
	
	UIS.InputBegan:connect(function(input)
		if input.KeyCode == Enum.KeyCode.X then -- turns off ghost/change key if you want a different key
			game:GetService("ReplicatedStorage").Remotes.Gameplay.Stealth:FireServer(false)
		end end)
end)

TrapSpam.Name = "TrapSpam"
TrapSpam.Parent = main
TrapSpam.BackgroundColor3 = Color3.fromRGB(34, 145, 121)
TrapSpam.Position = UDim2.new(0.585106373, 0, 0.625, 0)
TrapSpam.Size = UDim2.new(0, 78, 0, 29)
TrapSpam.Font = Enum.Font.SourceSans
TrapSpam.Text = "Trap  Spam (on)"
TrapSpam.TextColor3 = Color3.fromRGB(0, 0, 0)
TrapSpam.TextSize = 14.000
TrapSpam.MouseButton1Down:connect(function()
	_G.loop = true
	
	while _G.loop do
		local userdata_1 = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position);
		local Target = game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap;
		Target:InvokeServer(userdata_1);
		wait() -- delay to prevent crashing
	end
end)

TrapToggle.Name = "TrapToggle"
TrapToggle.Parent = main
TrapToggle.BackgroundColor3 = Color3.fromRGB(34, 145, 121)
TrapToggle.Position = UDim2.new(0, 0, 0.326086968, 0)
TrapToggle.Size = UDim2.new(0, 77, 0, 32)
TrapToggle.Font = Enum.Font.SourceSans
TrapToggle.Text = "Trap Toggle"
TrapToggle.TextColor3 = Color3.fromRGB(0, 0, 0)
TrapToggle.TextSize = 14.000
TrapToggle.MouseButton1Down:connect(function()
	for _,v in pairs(game.Players:GetPlayers()) do
if v.Character then
local thing = v.Character
			local userdata_1 = CFrame.new(thing.HumanoidRootPart.Position);
			local Target = game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap;
			Target:InvokeServer(userdata_1);
		end end
end)

FakeGun.Name = "FakeGun"
FakeGun.Parent = main
FakeGun.BackgroundColor3 = Color3.fromRGB(34, 145, 121)
FakeGun.Position = UDim2.new(0.585106373, 0, 0.326086968, 0)
FakeGun.Size = UDim2.new(0, 78, 0, 30)
FakeGun.Font = Enum.Font.SourceSans
FakeGun.Text = "Fake Gun"
FakeGun.TextColor3 = Color3.fromRGB(0, 0, 0)
FakeGun.TextSize = 14.000
FakeGun.MouseButton1Down:connect(function()
	local bool_1 = true;
	local Target = game:GetService("ReplicatedStorage").Remotes.Gameplay.FakeGun;
	Target:FireServer(bool_1);
	
end)

close.Name = "close"
close.Parent = main
close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
close.Position = UDim2.new(0.872340441, 0, 0, 0)
close.Size = UDim2.new(0, 24, 0, 21)
close.Font = Enum.Font.Gotham
close.Text = "X"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true
close.MouseButton1Down:connect(function()
	main.Visible = false
	openmain.Visible = true
end)

TrapSpam2.Name = "TrapSpam2"
TrapSpam2.Parent = main
TrapSpam2.BackgroundColor3 = Color3.fromRGB(34, 145, 121)
TrapSpam2.Position = UDim2.new(0.585106373, 0, 0.826086938, 0)
TrapSpam2.Size = UDim2.new(0, 75, 0, 26)
TrapSpam2.Font = Enum.Font.SourceSans
TrapSpam2.Text = "Trap Spam (off)"
TrapSpam2.TextColor3 = Color3.fromRGB(0, 0, 0)
TrapSpam2.TextSize = 14.000
TrapSpam2.MouseButton1Down:connect(function()
	_G.loop = false
end)

openmain.Name = "openmain"
openmain.Parent = ScreenGui
openmain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
openmain.Position = UDim2.new(0, 0, 0.480079681, 0)
openmain.Size = UDim2.new(0, 69, 0, 19)
openmain.Active = true
openmain.Draggable = true

open.Name = "open"
open.Parent = openmain
open.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
open.Size = UDim2.new(0, 69, 0, 19)
open.Font = Enum.Font.SourceSans
open.Text = "Open"
open.TextColor3 = Color3.fromRGB(0, 0, 0)
open.TextScaled = true
open.TextSize = 14.000
open.TextWrapped = true
open.MouseButton1Down:connect(function()
	openmain.Visible = false
	main.Visible = true
end) end
else
    print(nobux)
    end
