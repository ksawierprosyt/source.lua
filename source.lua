-- Initialize GUI
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CustomUI"
screenGui.Parent = player.PlayerGui

-- Window Frame
local windowFrame = Instance.new("Frame")
windowFrame.Size = UDim2.new(0, 500, 0, 300)  -- Adjust size of the window
windowFrame.Position = UDim2.new(0.5, -250, 0.5, -150)  -- Position it in the center
windowFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)  -- Window background color
windowFrame.BorderSizePixel = 0
windowFrame.Parent = screenGui

-- Window Title
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 40)  -- Size of title bar
titleLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)  -- Title bar color
titleLabel.Text = "Custom Script - Info"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Text color
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 18
titleLabel.TextAlign = Enum.TextAlignment.Center
titleLabel.Parent = windowFrame

-- Create Tabs Frame
local tabsFrame = Instance.new("Frame")
tabsFrame.Size = UDim2.new(1, 0, 0, 40)  -- Size of tabs area
tabsFrame.Position = UDim2.new(0, 0, 0, 40)  -- Position it below the title
tabsFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  -- Tabs background
tabsFrame.Parent = windowFrame

-- Info Tab Button
local infoButton = Instance.new("TextButton")
infoButton.Size = UDim2.new(0.33, 0, 1, 0)  -- Button takes 1/3 of the width
infoButton.Text = "Info"
infoButton.TextColor3 = Color3.fromRGB(255, 255, 255)
infoButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
infoButton.Font = Enum.Font.Gotham
infoButton.TextSize = 16
infoButton.Parent = tabsFrame

-- Settings Tab Button (You can add more tabs as needed)
local settingsButton = Instance.new("TextButton")
settingsButton.Size = UDim2.new(0.33, 0, 1, 0)
settingsButton.Position = UDim2.new(0.33, 0, 0, 0)  -- Position it next to the "Info" button
settingsButton.Text = "Settings"
settingsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
settingsButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
settingsButton.Font = Enum.Font.Gotham
settingsButton.TextSize = 16
settingsButton.Parent = tabsFrame

-- Close Button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0.1, 0, 0, 40)
closeButton.Position = UDim2.new(1, -50, 0, 0)  -- Position it at the top-right corner
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 18
closeButton.Parent = windowFrame

-- Close Window Logic
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()  -- Close the GUI when X button is clicked
end)

-- Info Tab Content (You can add more sections here)
local infoFrame = Instance.new("Frame")
infoFrame.Size = UDim2.new(1, 0, 1, -80)  -- Take up the rest of the window space, below tabs
infoFrame.Position = UDim2.new(0, 0, 0, 80)
infoFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
infoFrame.Visible = true  -- Initially visible

local infoLabel = Instance.new("TextLabel")
infoLabel.Size = UDim2.new(1, 0, 0, 100)
infoLabel.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
infoLabel.Text = "Welcome to the Custom Script!"
infoLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
infoLabel.Font = Enum.Font.Gotham
infoLabel.TextSize = 18
infoLabel.TextAlign = Enum.TextAlignment.Center
infoLabel.Parent = infoFrame

infoFrame.Parent = windowFrame

-- Switch between Tabs (Info and Settings)
infoButton.MouseButton1Click:Connect(function()
    infoFrame.Visible = true
    -- You can create other frames for the Settings tab and hide them when switching
end)

settingsButton.MouseButton1Click:Connect(function()
    infoFrame.Visible = false
    -- Show settings frame or other functionality here
end)
