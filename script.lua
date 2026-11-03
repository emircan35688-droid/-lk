local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

if playerGui:FindFirstChild("CustomXtronPanel") then
    playerGui.CustomXtronPanel:Destroy()
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CustomXtronPanel"
screenGui.Parent = playerGui

-- ==========================================
-- 1. BÖLÜM: KEY GİRİŞ ARAYÜZÜ
-- ==========================================
local keyFrame = Instance.new("Frame")
keyFrame.Size = UDim2.new(0, 320, 0, 210)
keyFrame.Position = UDim2.new(0.5, -160, 0.5, -105)
keyFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
keyFrame.BorderSizePixel = 0
keyFrame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 8)
corner.Parent = keyFrame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 45)
title.Text = "XTRON Özel Panel"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 18
title.Font = Enum.Font.SourceSansBold
title.BackgroundTransparency = 1
title.Parent = keyFrame

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.85, 0, 0, 40)
textBox.Position = UDim2.new(0.075, 0, 0.3, 0)
textBox.PlaceholderText = "Key'inizi buraya girin..."
textBox.Text = ""
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
textBox.TextSize = 15
textBox.Font = Enum.Font.SourceSans
textBox.Parent = keyFrame

local boxCorner = Instance.new("UICorner")
boxCorner.CornerRadius = UDim.new(0, 6)
boxCorner.Parent = textBox

local loginBtn = Instance.new("TextButton")
loginBtn.Size = UDim2.new(0.85, 0, 0, 40)
loginBtn.Position = UDim2.new(0.075, 0, 0.6, 0)
loginBtn.Text = "Giriş Yap"
loginBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
loginBtn.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
loginBtn.TextSize = 16
loginBtn.Font = Enum.Font.SourceSansBold
loginBtn.Parent = keyFrame

local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 6)
btnCorner.Parent = loginBtn


-- ==========================================
-- 2. BÖLÜM: ÖZEL AYARLANABİLİR OYUN MENÜSÜ
-- ==========================================
local function AsilMenuyuAc(sureSaniye, keyTuru)
    keyFrame:Destroy()

    local mainFrame = Instance.new("Frame")
    mainFrame.Size = UDim2.new(0, 360, 0, 420)
    mainFrame.Position = UDim2.new(0.5, -180, 0.5, -210)
    mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    mainFrame.BorderSizePixel = 0
    mainFrame.Parent = screenGui

    local mainCorner = Instance.new("UICorner")
    mainCorner.CornerRadius = UDim.new(0, 8)
    mainCorner.Parent = mainFrame

    local mainTitle = Instance.new("TextLabel")
    mainTitle.Size = UDim2.new(1, 0, 0, 40)
    mainTitle.Text = "XTRON | " .. keyTuru
    mainTitle.TextColor3 = Color3.fromRGB(0, 255, 128)
    mainTitle.TextSize = 18
    mainTitle.Font = Enum.Font.SourceSansBold
    mainTitle.BackgroundTransparency = 1
    mainTitle.Parent = mainFrame

    local timerLabel = Instance.new("TextLabel")
    timerLabel.Size = UDim2.new(1, 0, 0, 25)
    timerLabel.Position = UDim2.new(0, 0, 0.1, 0)
    timerLabel.Text = "Kalan Süre: Hesaplanıyor..."
    timerLabel.TextColor3 = Color3.fromRGB(255, 200, 0)
    timerLabel.TextSize = 13
    timerLabel.Font = Enum.Font.SourceSansBold
    timerLabel.BackgroundTransparency = 1
    timerLabel.Parent = mainFrame

    -- --- 1. KISIM: HIZ AYARI ---
    local speedBox = Instance.new("TextBox")
    speedBox.Size = UDim2.new(0.5, 0, 0, 35)
    speedBox.Position = UDim2.new(0.075, 0, 0.22, 0)
    speedBox.PlaceholderText = "Hız (Örn: 50)"
    speedBox.Text = ""
    speedBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    speedBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    speedBox.TextSize = 14
    speedBox.Parent = mainFrame

    local speedBtn = Instance.new("TextButton")
    speedBtn.Size = UDim2.new(0.3, 0, 0, 35)
    speedBtn.Position = UDim2.new(0.625, 0, 0.22, 0)
    speedBtn.Text = "Hızı Ayarla"
    speedBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    speedBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    speedBtn.TextSize = 14
    speedBtn.Font = Enum.Font.SourceSansBold
    speedBtn.Parent = mainFrame

    speedBtn.MouseButton1Click:Connect(function()
        local sayi = tonumber(speedBox.Text)
        if sayi then
            local
