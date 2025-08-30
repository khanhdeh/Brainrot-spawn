-- LocalScript inside StarterGui

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Fake check system
local function fakeBrainrotCheck()
	player:Kick("⚠️ Warning: This is NOT a real brainrot spawner. If you found a script that says it can spawn/dupe brainrot, it's FAKE (visual only). Do NOT trust those scripts.")
end

-- Create main ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "BrainrotGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

-- 🔹 Loading Screen
local loadingFrame = Instance.new("Frame")
loadingFrame.Size = UDim2.new(1, 0, 1, 0)
loadingFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
loadingFrame.Parent = screenGui

local loadingText = Instance.new("TextLabel")
loadingText.Size = UDim2.new(1, 0, 1, 0)
loadingText.BackgroundTransparency = 1
loadingText.Text = "Loading Brainrot GUI..."
loadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
loadingText.TextScaled = true
loadingText.Font = Enum.Font.SourceSansBold
loadingText.Parent = loadingFrame

-- Wait 15 seconds then remove loading screen
task.delay(15, function()
	loadingFrame:Destroy()
end)

-- 🔹 Main GUI
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 260, 0, 130)
frame.Position = UDim2.new(0.5, -130, 0.5, -65)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.Active = true
frame.Draggable = true
frame.Visible = false
frame.Parent = screenGui

-- Show frame after loading ends
task.delay(15, function()
	frame.Visible = true
end)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
title.Text = "Brainrot Spawner"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.Parent = frame

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(1, -20, 0, 40)
textBox.Position = UDim2.new(0, 10, 0, 40)
textBox.PlaceholderText = "Type brainrot here..."
textBox.Text = ""
textBox.TextScaled = true
textBox.Font = Enum.Font.SourceSansBold
textBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.new(1, -20, 0, 30)
button.Position = UDim2.new(0, 10, 0, 85)
button.Text = "Spawn Brainrot"
button.TextScaled = true
button.Font = Enum.Font.SourceSansBold
button.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Parent = frame

-- When button is pressed -> fake check
button.MouseButton1Click:Connect(function()
	fakeBrainrotCheck()
end)
