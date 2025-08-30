-- LocalScript inside StarterGui

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- 🔹 Chỉ cho phép chạy trong game "Steal a Brainrot"
if game.PlaceId ~= 1234567890 then
	player:Kick("❌ This script only works in Steal a Brainrot!")
	return
end

-- Fake steal system
local function stealBrainrot()
	player:Kick("🧠 You tried to STEAL a Brainrot... but remember: it's just VISUAL. No real steal works!")
end

-- GUI setup
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "BrainrotGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Main frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 260, 0, 130)
frame.Position = UDim2.new(0.5, -130, 0.5, -65)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
title.Text = "Brainrot Stealer"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.Parent = frame

-- Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(1, -20, 0, 60)
button.Position = UDim2.new(0, 10, 0, 50)
button.Text = "Steal Brainrot"
button.TextScaled = true
button.Font = Enum.Font.SourceSansBold
button.BackgroundColor3 = Color3.fromRGB(180, 50, 50)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Parent = frame

button.MouseButton1Click:Connect(function()
	stealBrainrot()
end)
