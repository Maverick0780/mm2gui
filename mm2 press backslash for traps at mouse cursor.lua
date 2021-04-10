local whitelistecheck = loadstring(game:HttpGet("https://raw.githubusercontent.com/Maverick0780/mm2gui/main/mm2GuiHandler.Lua", true))()
if whitelistecheck[game:service('Players').LocalPlayer.UserId] then
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
