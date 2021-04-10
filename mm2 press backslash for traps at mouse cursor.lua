wait(25)
if game.PlaceId == 142823291 then
local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local UIS = game:GetService("UserInputService")
function trap(x,y,z)
game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap:InvokeServer(CFrame.new(Vector3.new(x, y, z)))
end

UIS.InputBegan:Connect(function(input)
if input.KeyCode == Enum.KeyCode.BackSlash then
local pos = mouse.hit.p
trap(pos.X, pos.Y, pos.Z)
end end)
elseif game.PlaceId == 335132309 then
    local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local UIS = game:GetService("UserInputService")
function trap(x,y,z)
game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap:InvokeServer(CFrame.new(Vector3.new(x, y, z)))
end

UIS.InputBegan:Connect(function(input)
if input.KeyCode == Enum.KeyCode.BackSlash then
local pos = mouse.hit.p
trap(pos.X, pos.Y, pos.Z)
end end)
elseif game.PlaceId == 636649648 then
local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local UIS = game:GetService("UserInputService")
function trap(x,y,z)
game:GetService("ReplicatedStorage").TrapSystem.PlaceTrap:InvokeServer(CFrame.new(Vector3.new(x, y, z)))
end

UIS.InputBegan:Connect(function(input)
if input.KeyCode == Enum.KeyCode.BackSlash then
local pos = mouse.hit.p
trap(pos.X, pos.Y, pos.Z)
end end) end