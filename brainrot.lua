-- Brainrot Loading Screen GUI
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
local frame = Instance.new("Frame", gui)

frame.Size = UDim2.new(1,0,1,0)
frame.BackgroundColor3 = Color3.fromRGB(0,0,0)

local text = Instance.new("TextLabel", frame)
text.Size = UDim2.new(1,0,1,0)
text.Text = "Brainrot Loading..."
text.TextColor3 = Color3.fromRGB(255,255,255)
text.TextScaled = true

wait(15) -- chờ 15 giây
frame:Destroy()button.Text = "Spawn Brainrot"
button.TextScaled = true
button.Font = Enum.Font.SourceSansBold
button.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Parent = frame

-- When button is pressed -> fake check
button.MouseButton1Click:Connect(function()
	fakeBrainrotCheck()
end)
