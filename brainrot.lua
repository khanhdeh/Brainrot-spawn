-- LocalScript inside StarterGui

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
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
loadingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
loadingFrame.Parent = screenGui

local loadingText = Instance.new("TextLabel")
loadingText.Size = UDim2.new(1, 0, 1, 0)
loadingText.BackgroundTransparency = 1
loadingText.Text = "Brainrot Loading..."
loadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
loadingText.TextScaled = true
loadingText.Font = Enum.Font.SourceSansBold
loadingText.Parent = loadingFrame

-- 🔹 Main GUI
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 260, 0, 130)
frame.Position = UDim2.new(0.5, -130, 0.5, -65)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.Active = true
frame.Draggable = true
frame.Visible = false
frame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -30, 0, 30)
title.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
title.Text = "Brainrot Spawner"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.Parent = frame

-- Close button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.Text = "X"
closeButton.TextScaled = true
closeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
closeButton.TextColor3 = Color3.fromRGB(255,255,255)
closeButton.Parent = frame

closeButton.MouseButton1Click:Connect(function()
	frame.Visible = false
end)

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

local spawnButton = Instance.new("TextButton")
spawnButton.Size = UDim2.new(1, -20, 0, 30)
spawnButton.Position = UDim2.new(0, 10, 0, 85)
spawnButton.Text = "Spawn Brainrot"
spawnButton.TextScaled = true
spawnButton.Font = Enum.Font.SourceSansBold
spawnButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
spawnButton.TextColor3 = Color3.fromRGB(255, 255, 255)
spawnButton.Parent = frame

spawnButton.MouseButton1Click:Connect(function()
	fakeBrainrotCheck()
end)

-- 🔹 After loading 5s → show Open button
task.delay(5, function()
	loadingText:Destroy()

	local openButton = Instance.new("TextButton", loadingFrame)
	openButton.Size = UDim2.new(0.3, 0, 0.1, 0)
	openButton.Position = UDim2.new(0.35, 0, 0.45, 0)
	openButton.Text = "Open Brainrot GUI"
	openButton.TextScaled = true
	openButton.Font = Enum.Font.SourceSansBold
	openButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
	openButton.TextColor3 = Color3.fromRGB(255,255,255)

	openButton.MouseButton1Click:Connect(function()
		loadingFrame.Visible = false
		frame.Visible = true
	end)
end)

-- 🔹 Keybind để mở lại GUI (RightShift)
UserInputService.InputBegan:Connect(function(input, gpe)
	if not gpe and input.KeyCode == Enum.KeyCode.RightShift then
		frame.Visible = not frame.Visible
	end
end)
