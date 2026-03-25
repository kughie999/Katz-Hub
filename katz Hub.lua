-- Katz Hub GUI Script para Delta Executor
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local userInputService = game:GetService("UserInputService")

-- Criar ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "KatzHubGUI"
screenGui.Parent = game:GetService("CoreGui")
screenGui.ResetOnSpawn = false

-- Frame principal
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 320, 0, 360)
mainFrame.Position = UDim2.new(0.5, -160, 0.5, -180)
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BackgroundTransparency = 0.1
mainFrame.BorderSizePixel = 3
mainFrame.BorderColor3 = Color3.fromRGB(0, 255, 0)
mainFrame.ClipsDescendants = true
mainFrame.Parent = screenGui

-- Arredondamento das bordas
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = mainFrame

-- Barra de título (para arrastar)
local titleBar = Instance.new("Frame")
titleBar.Name = "TitleBar"
titleBar.Size = UDim2.new(1, 0, 0, 45)
titleBar.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
titleBar.BackgroundTransparency = 0
titleBar.BorderSizePixel = 0
titleBar.Parent = mainFrame

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 12)
titleCorner.Parent = titleBar

-- Título
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -50, 1, 0)
title.Position = UDim2.new(0, 10, 0, 0)
title.BackgroundTransparency = 1
title.Text = "KATZ HUB"
title.TextColor3 = Color3.fromRGB(0, 255, 0)
title.TextSize = 22
title.TextXAlignment = Enum.TextXAlignment.Left
title.Font = Enum.Font.GothamBold
title.Parent = titleBar

-- Botão fechar
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 35, 0, 35)
closeButton.Position = UDim2.new(1, -40, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
closeButton.Text = "✕"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextSize = 18
closeButton.Font = Enum.Font.GothamBold
closeButton.BorderSizePixel = 0
closeButton.Parent = titleBar

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 8)
closeCorner.Parent = closeButton

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Conteúdo principal
local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1, -30, 1, -75)
contentFrame.Position = UDim2.new(0, 15, 0, 55)
contentFrame.BackgroundTransparency = 1
contentFrame.Parent = mainFrame

-- Descrição
local description = Instance.new("TextLabel")
description.Size = UDim2.new(1, 0, 0, 110)
description.Position = UDim2.new(0, 0, 0, 0)
description.BackgroundTransparency = 1
description.Text = "ENTRE NO SERVIDOR DO DISCORD PARA TER ACESSO AO KATZ HUB\n\nOBTENHA:\n• AIMBOT\n• WALLHACK\n• ESP\n• E MUITO MAIS"
description.TextColor3 = Color3.fromRGB(200, 200, 200)
description.TextSize = 13
description.TextWrapped = true
description.TextXAlignment = Enum.TextXAlignment.Center
description.Font = Enum.Font.Gotham
description.Parent = contentFrame

-- Botão Discord
local discordButton = Instance.new("TextButton")
discordButton.Size = UDim2.new(0.8, 0, 0, 50)
discordButton.Position = UDim2.new(0.1, 0, 0.45, 0)
discordButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
discordButton.Text = "COPIAR LINK DO DISCORD"
discordButton.TextColor3 = Color3.fromRGB(0, 255, 0)
discordButton.TextSize = 15
discordButton.Font = Enum.Font.GothamBold
discordButton.BorderSizePixel = 0
discordButton.Parent = contentFrame

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 10)
buttonCorner.Parent = discordButton

-- Texto informativo
local infoText = Instance.new("TextLabel")
infoText.Size = UDim2.new(1, 0, 0, 40)
infoText.Position = UDim2.new(0, 0, 0.7, 0)
infoText.BackgroundTransparency = 1
infoText.Text = "APÓS COPIAR O LINK, ENTRE NO SERVIDOR\nE PEGUE SEU ACESSO"
infoText.TextColor3 = Color3.fromRGB(150, 150, 150)
infoText.TextSize = 10
infoText.TextWrapped = true
infoText.TextXAlignment = Enum.TextXAlignment.Center
infoText.Font = Enum.Font.Gotham
infoText.Parent = contentFrame

-- Efeito hover
discordButton.MouseEnter:Connect(function()
    discordButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
end)

discordButton.MouseLeave:Connect(function()
    discordButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
end)

-- Função para copiar link
discordButton.MouseButton1Click:Connect(function()
    local link = "https://discord.gg/k8DF5Z8cBw"
    
    -- Copiar para área de transferência
    local successClip = pcall(function()
        setclipboard(link)
    end)
    
    if successClip then
        -- Criar notificação de sucesso
        local notification = Instance.new("Frame")
        notification.Size = UDim2.new(0.8, 0, 0, 45)
        notification.Position = UDim2.new(0.1, 0, 0.85, 0)
        notification.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        notification.BackgroundTransparency = 0
        notification.BorderSizePixel = 2
        notification.BorderColor3 = Color3.fromRGB(0, 255, 0)
        notification.Parent = contentFrame
        
        local notifCorner = Instance.new("UICorner")
        notifCorner.CornerRadius = UDim.new(0, 8)
        notifCorner.Parent = notification
        
        local notifText = Instance.new("TextLabel")
        notifText.Size = UDim2.new(1, 0, 1, 0)
        notifText.BackgroundTransparency = 1
        notifText.Text = "✓ LINK COPIADO COM SUCESSO!"
        notifText.TextColor3 = Color3.fromRGB(0, 255, 0)
        notifText.TextSize = 12
        notifText.Font = Enum.Font.GothamBold
        notifText.Parent = notification
        
        -- Aguardar 1.5 segundos e fechar a GUI
        wait(1.5)
        screenGui:Destroy()
    else
        -- Notificação de erro
        local errorNotif = Instance.new("Frame")
        errorNotif.Size = UDim2.new(0.8, 0, 0, 45)
        errorNotif.Position = UDim2.new(0.1, 0, 0.85, 0)
        errorNotif.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        errorNotif.BackgroundTransparency = 0
        errorNotif.BorderSizePixel = 2
        errorNotif.BorderColor3 = Color3.fromRGB(255, 0, 0)
        errorNotif.Parent = contentFrame
        
        local notifCorner = Instance.new("UICorner")
        notifCorner.CornerRadius = UDim.new(0, 8)
        notifCorner.Parent = errorNotif
        
        local notifText = Instance.new("TextLabel")
        notifText.Size = UDim2.new(1, 0, 1, 0)
        notifText.BackgroundTransparency = 1
        notifText.Text = "✗ ERRO AO COPIAR LINK"
        notifText.TextColor3 = Color3.fromRGB(255, 0, 0)
        notifText.TextSize = 12
        notifText.Font = Enum.Font.GothamBold
        notifText.Parent = errorNotif
        
        wait(2)
        errorNotif:Destroy()
    end
end)

-- Sistema de arrastar para mobile
local dragging = false
local dragInput = nil
local dragStart = nil
local startPos = nil

local function updateInput(input)
    local delta = input.Position - dragStart
    mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

titleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

titleBar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch and dragging then
        dragInput = input
        updateInput(input)
    end
end)

userInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        updateInput(input)
    end
end)

-- Animação de entrada
mainFrame.BackgroundTransparency = 1
mainFrame.Position = UDim2.new(0.5, -160, 0.5, -180)
mainFrame:TweenSizeAndPosition(UDim2.new(0, 320, 0, 360), UDim2.new(0.5, -160, 0.5, -180), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.5, true)
mainFrame.BackgroundTransparency = 0.1

print("✅ Katz Hub GUI carregado! Entre no Discord para ter acesso completo ao hub.")
