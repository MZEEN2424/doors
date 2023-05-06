-- Beyaz listedeki oyuncuların ID'leri
local whitelist = {
  2798833640, -- MZEEN
  4557094575, -- AstroGotNoRizz
  1549894097, -- SonicOfGod
  1172634925, -- Tracia
  4566311775, -- Tracia2
  3608746612, -- IcMe
  3829831367 -- FriendBugu
}

-- GUI'yi oluştur
local gui = Instance.new("ScreenGui")
gui.Name = "Whitelist Check"
gui.ResetOnSpawn = false
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
gui.Enabled = false

local frame = Instance.new("Frame")
frame.Name = "Main"
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.Size = UDim2.new(0, 450, 0, 200)
frame.Parent = gui

local uiListLayout = Instance.new("UIListLayout")
uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uiListLayout.Parent = frame

local title = Instance.new("TextLabel")
title.Name = "Title"
title.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
title.BorderSizePixel = 0
title.Font = Enum.Font.GothamBold
title.Text = "Whitelist Check System"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.Size = UDim2.new(1, 0, 0, 30)
title.Parent = frame

local message = Instance.new("TextLabel")
message.Name = "Message"
message.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
message.BorderSizePixel = 0
message.Font = Enum.Font.GothamBold
message.Text = "Click to check if you are whitelisted."
message.TextColor3 = Color3.fromRGB(255, 255, 255)
message.TextScaled = true
message.Size = UDim2.new(1, 0, 0, 100)
message.Parent = frame

local checkButton = Instance.new("TextButton")
checkButton.Name = "CheckButton"
checkButton.AnchorPoint = Vector2.new(0.5, 0.5)
checkButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
checkButton.BorderSizePixel = 0
checkButton.Font = Enum.Font.GothamBold
checkButton.Text = "Check"
checkButton.TextColor3 = Color3.fromRGB(255, 255, 255)
checkButton.TextScaled = true
checkButton.Size = UDim2.new(0, 200, 0, 50)
checkButton.Parent = frame

-- Check butonuna tıklanınca çalışacak fonksiyon
checkButton.MouseButton1Click:Connect(function()
-- Yükleniyor mesajını göster
message.Text = "Loading..."
wait(2)
-- Kontrol ediliyor mesajını göster
message.Text = "Checking..."
wait(2)

-- Oyuncunun ID'sini al
local playerId = game.Players.LocalPlayer.UserId

-- Oyuncu beyaz listede mi?
local isWhitelisted = false
for i = 1, #whitelist do
    if playerId == whitelist[i] then
        isWhitelisted = true
        break
    end
end

-- Kullanıcının kimlik doğrulamasını kontrol eden bir fonksiyon
local function authenticateUser(player)
    -- Kullanıcının kimliği
    local userId = player.UserId
    -- Kullanıcının beyaz listeye dahil olup olmadığını kontrol edin
    local isWhitelisted = false
    for i = 1, #whitelist do
        if userId == whitelist[i] then
            isWhitelisted = true
            break
        end
    end
    if not isWhitelisted then
        player:Kick("You are not whitelisted.")
    end
end


-- Beyaz listedeyse mesaj yazdır ve devam et
if isWhitelisted then
    message.Text = "Success!"
    wait(2)
    gui:Destroy()
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "Doors GUI v3 Premium",Name = "", HidePremium = false, SaveConfig = true, ConfigFolder = "Doors"})
if game.PlaceId == 6516141723 then
    OrionLib:MakeNotification({
        Name = "Lobby",
        Content = "You are in lobby.",
        Time = 2
    })
end
firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent, 'MADE BY MZEEN',true,3)

-- GUI oluşturma
local gui = Instance.new("ScreenGui")
gui.Name = "ExampleGui"
gui.Parent = game:GetService("CoreGui")

-- Background oluşturma
local background = Instance.new("Frame")
background.AnchorPoint = Vector2.new(0.5, 0.5)
background.Position = UDim2.new(0.5, 0, 0.5, 0)
background.Size = UDim2.new(0, 300, 0, 150)
background.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
background.BorderSizePixel = 0
background.Parent = gui

-- Şeffaf gradient eklemek için Frame oluşturma
local gradientFrame = Instance.new("Frame")
gradientFrame.Size = UDim2.new(1, 0, 1, 0)
gradientFrame.BackgroundTransparency = 1
gradientFrame.Parent = background

-- Gradient'i oluşturmak için UIGradient ekleme
local gradient = Instance.new("UIGradient")
gradient.Rotation = 90
gradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(49, 162, 242)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(1, 125, 211))
})
gradient.Parent = gradientFrame

-- Oyuncunun adını almak için LocalPlayer'ı kullanma
local playerName = game.Players.LocalPlayer.DisplayName

-- TextLabel oluşturma ve oyuncu adını yazdırma
local textLabel = Instance.new("TextLabel")
textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
textLabel.Position = UDim2.new(0.5, 0, 0.45, 0)
textLabel.Size = UDim2.new(1, 0, 0, 50)
textLabel.Text = "Welcome " .. playerName .. "\nBY MZEEN"
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.Font = Enum.Font.GothamBold
textLabel.TextSize = 30
textLabel.BackgroundTransparency = 1
textLabel.Parent = background

-- Animasyon için TweenService'yi al
local tweenService = game:GetService("TweenService")

-- Background için açılış animasyonu
tweenService:Create(background, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0, 400, 0, 200), BackgroundTransparency = 0.9}):Play()

-- TextLabel için açılış animasyonu
tweenService:Create(textLabel, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, 0.4, 0)}):Play()

wait(3)

-- Background için kapanış animasyonu
tweenService:Create(background, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, 0, 0), BackgroundTransparency = 1}):Play()

-- TextLabel için kapanış animasyonu
tweenService:Create(textLabel, TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, 0.55, 0)}):Play()

wait(1)

gui:Destroy()



local VisualsTab = Window:MakeTab({
	Name = "Visuals",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local CF = CFrame.new
local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom
local ChaseStart = game:GetService("ReplicatedStorage").GameData.ChaseStart

local KeyChams = {}
VisualsTab:AddToggle({
	Name = "Key Chams",
	Default = false,
    Flag = "KeyToggle",
    Save = true,
	Callback = function(Value)
		for i,v in pairs(KeyChams) do
            v.Enabled = Value
        end
	end    
})


local function ApplyKeyChams(inst)
    wait()
    local Cham = Instance.new("Highlight")
    Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Cham.FillColor = Color3.new(0.980392, 0.670588, 0)
    Cham.FillTransparency = 1
    Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
    Cham.Parent = game:GetService("CoreGui")
    Cham.Adornee = inst
    Cham.Enabled = OrionLib.Flags["KeyToggle"].Value
    Cham.RobloxLocked = true
    return Cham
end

local KeyCoroutine = coroutine.create(function()
    workspace.CurrentRooms.DescendantAdded:Connect(function(inst)
        if inst.Name == "KeyObtain" then
            table.insert(KeyChams,ApplyKeyChams(inst))
        end
    end)
end)
for i,v in ipairs(workspace:GetDescendants()) do
    if v.Name == "KeyObtain" then
        table.insert(KeyChams,ApplyKeyChams(v))
    end
end
coroutine.resume(KeyCoroutine)

local BookChams = {}
VisualsTab:AddToggle({
	Name = "Book Chams",
	Default = false,
    Flag = "BookToggle",
    Save = true,
	Callback = function(Value)
		for i,v in pairs(BookChams) do
            v.Enabled = Value
        end
	end    
})

local FigureChams = {}
VisualsTab:AddToggle({
	Name = "Figure Chams",
	Default = false,
    Flag = "FigureToggle",
    Save = true,
    Callback = function(Value)
        for i,v in pairs(FigureChams) do
            v.Enabled = Value
        end
    end
})

local function ApplyBookChams(inst)
    if inst:IsDescendantOf(game:GetService("Workspace").CurrentRooms:FindFirstChild("50")) and game:GetService("ReplicatedStorage").GameData.LatestRoom.Value == 50 then
        wait()
        local Cham = Instance.new("Highlight")
        Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        Cham.FillColor = Color3.new(0, 1, 0.749019)
        Cham.FillTransparency = 1
        Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
        Cham.Parent = game:GetService("CoreGui")
        Cham.Enabled = OrionLib.Flags["BookToggle"].Value
        Cham.Adornee = inst
        Cham.RobloxLocked = true
        return Cham
    end
end

local function ApplyEntityChams(inst)
    wait()
    local Cham = Instance.new("Highlight")
    Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Cham.FillColor = Color3.new(1, 0, 0)
    Cham.FillTransparency = 1
    Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
    Cham.Parent = game:GetService("CoreGui")
    Cham.Enabled = OrionLib.Flags["FigureToggle"].Value
    Cham.Adornee = inst
    Cham.RobloxLocked = true
    return Cham
end

local BookCoroutine = coroutine.create(function()
    task.wait(1)
    for i,v in pairs(game:GetService("Workspace").CurrentRooms["50"].Assets:GetDescendants()) do
        if v.Name == "LiveHintBook" then
            table.insert(BookChams,ApplyBookChams(v))
        end
    end
end)
local EntityCoroutine = coroutine.create(function()
    local Entity = game:GetService("Workspace").CurrentRooms["50"].FigureSetup:WaitForChild("FigureRagdoll",5)
    Entity:WaitForChild("Torso",2.5)
    table.insert(FigureChams,ApplyEntityChams(Entity))
end)


local GameTab = Window:MakeTab({
	Name = "Game",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local CharTab = Window:MakeTab({
	Name = "Character",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TargetWalkspeed
CharTab:AddSlider({
	Name = "Speed",
	Min = 0,
	Max = 80,
	Default = 7,
	Color = Color3.fromRGB(0,0,0),
	Increment = 1,
	Callback = function(Value)
		TargetWalkspeed = Value
	end    
})

local pcl = Instance.new("SpotLight")
pcl.Brightness = 1
pcl.Face = Enum.NormalId.Front
pcl.Range = 120
pcl.Parent = game.Players.LocalPlayer.Character.Head
pcl.Enabled = false


CharTab:AddToggle({
	Name = "Headlight",
	Default = false,
    Callback = function(Value)
        pcl.Enabled = Value
    end
})

GameTab:AddToggle({
	Name = "No seek arms/obstructions",
	Default = false,
    Flag = "NoSeek",
    Save = true
})

GameTab:AddToggle({
	Name = "Instant Interact",
	Default = false,
    Flag = "InstantToggle",
    Save = true
})
GameTab:AddButton({
	Name = "Skip level",
	Callback = function()
        pcall(function()
            local HasKey = false
            local CurrentDoor = workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door")
            for i,v in ipairs(CurrentDoor.Parent:GetDescendants()) do
                if v.Name == "KeyObtain" then
                    HasKey = v
                end
            end
            if HasKey then
                game.Players.LocalPlayer.Character:PivotTo(CF(HasKey.Hitbox.Position))
                wait(0.3)
                fireproximityprompt(HasKey.ModulePrompt,0)
                game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                wait(0.3)
                fireproximityprompt(CurrentDoor.Lock.UnlockPrompt,0)
            end
            if LatestRoom == 50 then
                CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
            end
            game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
            wait(0.3)
            CurrentDoor.ClientOpen:FireServer()
        end)
  	end    
})

GameTab:AddToggle({
	Name = "Auto skip level",
	Default = false,
    Save = false,
    Flag = "AutoSkip"
})

GameTab:AddButton({
	Name = "Noclip + Bypass",
	Callback = function()
_G.Keybind = "R"
_G.ClipGui = false  -- GUI kapatıldı
_G.IncludeNoclip = true

local isEnabled = true

local UIS = game:GetService("UserInputService")

local Plr = game.Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()

function getValue()
    local value
    if isEnabled then
        value = "On"
    else
        value = "Off"
    end
    return value
end

UIS.InputBegan:Connect(function(input, gp)
    if gp then return end

    if input.KeyCode == Enum.KeyCode[_G.Keybind] then
        isEnabled = not isEnabled
        task.wait()
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if not Char:FindFirstChild("HumanoidRootPart") then return end
    if _G.IncludeNoclip then
        Char.HumanoidRootPart.CanCollide = not isEnabled
        Char.Collision.CanCollide = not isEnabled
    end

    local HrpCFrame = Char.HumanoidRootPart.CFrame

    local ray = Ray.new(HrpCFrame.Position, HrpCFrame.LookVector * 0.5)
    local part = workspace:FindPartOnRay(ray)
    if part and part.CanCollide == true and isEnabled then
        Char.HumanoidRootPart.Anchored = true
        Char:PivotTo(Char.HumanoidRootPart.CFrame * CFrame.new(0, 1000, 0))
        task.wait()
        Char:PivotTo(Char.HumanoidRootPart.CFrame * CFrame.new(0, 0, -4))
        task.wait()
        Char:PivotTo(Char.HumanoidRootPart.CFrame * CFrame.new(0, -1000, 0))
        task.wait(0.1)
        Char.HumanoidRootPart.Anchored = false
    end
end)
  	end    
})





GameTab:AddButton({
	Name = "Seek Morph",
	Callback = function()
      		MorphedEntity = game:GetObjects("rbxassetid://12388758648")[1]
game:GetService('Players').LocalPlayer.CameraMode = 'Classic'
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
            MorphedEntity.Name = "MorphedEntity"
            MorphedEntity.Parent = game.ReplicatedStorage
            local emergeAnim = MorphedEntity.SeekRig.AnimationController:LoadAnimation(MorphedEntity.SeekRig.Animations.raise)
            game:GetService("Workspace")["Ambience_Seek"]:Play()
            game:GetService("Workspace")["Ambience_Seek"].Looped = true
            MorphedEntity.Figure.CanCollide = false
            task.spawn(function()
                game:GetService("RunService").RenderStepped:Connect(function()
                    
                    MorphedEntity:PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0))
                end)
            end)
            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("MeshPart") then
        v.Transparency = 1
    end
    if v:IsA("Part") then
        v.Transparency = 1
    end
    if v:IsA("Accessory") then
        v:Destroy()
    end
    game.Players.LocalPlayer.Character.Head.face.Transparency = 1
end
            for i,v in pairs(MorphedEntity.SeekRig:GetChildren()) do
                if v.Name == "StringCheese" then
                    v.Enabled = true
                end
            end
            emergeAnim:Play()
            MorphedEntity.Parent = game.Workspace
            wait(6.85)
            for i,v in pairs(MorphedEntity.SeekRig:GetChildren()) do
                if v.Name == "StringCheese" then
                    v.Enabled = false
                end
            end
            wait(.15)
			emergeAnim:Stop()
            MorphedEntity.SeekRig.AnimationController:LoadAnimation(MorphedEntity.SeekRig.Animations.run):Play()
            MorphedEntity.Figure.Footsteps.Looped = true
            MorphedEntity.Figure.Footsteps:Play()
            MorphedEntity.Figure.FootstepsFar.Looped = true
            MorphedEntity.Figure.FootstepsFar:Play()
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            local Pos = MorphedEntity.SeekRig.SeekPuddle.Position.Y - 2.5
            repeat
                MorphedEntity.SeekRig.SeekPuddle.Position = MorphedEntity.SeekRig.SeekPuddle.Position - Vector3.new(0, 0.035, 0) wait()
                MorphedEntity.SeekRig.SeekPuddle.ParticleHitbox.Position = MorphedEntity.SeekRig.SeekPuddle.ParticleHitbox.Position - Vector3.new(0, 0.035, 0) wait()
            until MorphedEntity.SeekRig.SeekPuddle.Position.Y < Pos
            MorphedEntity.SeekRig.SeekPuddle:Destroy()
  	end    
})

GameTab:AddButton({
	Name = "Inf Yield",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})

GameTab:AddButton({
	Name = "PoopDoors Edited Old",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/MZEEN2424/doors/main/poopdoors_edited.lua.txt'))()
  	end    
})

GameTab:AddButton({
	Name = "MSDOORS",
	Callback = function()
      		loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSDOORS.lua"),true))()
  	end    
})

GameTab:AddButton({
	Name = "FE Emoji Gui",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/UniversalDance-AnimGui.lua'))()
  	end    
})

GameTab:AddButton({
	Name = "Entity Morph Gui",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/RmdComunnityScriptsProvider/AngryHub/main/DoorsMorphScript.lua'))()
  	end    
})

GameTab:AddButton({
	Name = "Keyboard Mobile",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})




--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]


local AutoSkipCoro = coroutine.create(function()
        while true do
            task.wait()
            pcall(function()
            if OrionLib.Flags["AutoSkip"].Value == true and game:GetService("ReplicatedStorage").GameData.LatestRoom.Value < 100 then
                local HasKey = false
                local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
                local CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom)]:WaitForChild("Door")
                for i,v in ipairs(CurrentDoor.Parent:GetDescendants()) do
                    if v.Name == "KeyObtain" then
                        HasKey = v
                    end
                end
                if HasKey then
                    game.Players.LocalPlayer.Character:PivotTo(CF(HasKey.Hitbox.Position))
                    task.wait(0.3)
                    fireproximityprompt(HasKey.ModulePrompt,0)
                    game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                    task.wait(0.3)
                    fireproximityprompt(CurrentDoor.Lock.UnlockPrompt,0)
                end
                if LatestRoom == 50 then
                    CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
                end
                game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                task.wait(0.3)
                CurrentDoor.ClientOpen:FireServer()
            end
        end)
        end
end)
coroutine.resume(AutoSkipCoro)

GameTab:AddButton({
	Name = "No jumpscares",
	Callback = function()
        pcall(function()
            game:GetService("ReplicatedStorage").Bricks.Jumpscare:Destroy()
        end)
  	end    
})
GameTab:AddToggle({
	Name = "Avoid Rush/Ambush",
	Default = false,
    Flag = "AvoidRushToggle",
    Save = true
})
GameTab:AddToggle({
	Name = "No Screech",
	Default = false,
    Flag = "ScreechToggle",
    Save = true
})

GameTab:AddToggle({
	Name = "Always win heartbeat",
	Default = false,
    Flag = "HeartbeatWin",
    Save = true
})

GameTab:AddToggle({
	Name = "Predict chases",
	Default = false,
    Flag = "PredictToggle" ,
    Save = true
})
GameTab:AddToggle({
	Name = "Notify when mob spawns",
	Default = false,
    Flag = "MobToggle" ,
    Save = true
})
GameTab:AddButton({
	Name = "Complete breaker box minigame",
	Callback = function()
        game:GetService("ReplicatedStorage").Bricks.EBF:FireServer()
  	end    
})
GameTab:AddButton({
	Name = "Skip level 50",
	Callback = function()
        local CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
        game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
  	end    
})
GameTab:AddParagraph("Warning","You may need to open/close the panel a few times for this to work, fixing soon.")

--// ok actual code starts here

game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * TargetWalkspeed/80)
        end
    end)
end)

game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function(descendant)
    if OrionLib.Flags["NoSeek"].Value == true and descendant.Name == ("Seek_Arm" or "ChandelierObstruction") then
        task.spawn(function()
            wait()
            descendant:Destroy()
        end)
    end
end)

game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
    if OrionLib.Flags["InstantToggle"].Value == true then
        fireproximityprompt(prompt)
    end
end)

local old
old = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local args = {...}
    local method = getnamecallmethod()
    
    if tostring(self) == 'Screech' and method == "FireServer" and OrionLib.Flags["ScreechToggle"].Value == true then
        args[1] = true
        return old(self,unpack(args))
    end
    if tostring(self) == 'ClutchHeartbeat' and method == "FireServer" and OrionLib.Flags["HeartbeatWin"].Value == true then
        args[2] = true
        return old(self,unpack(args))
    end
    
    return old(self,...)
end))

workspace.CurrentCamera.ChildAdded:Connect(function(child)
    if child.Name == "Screech" and OrionLib.Flags["ScreechToggle"].Value == true then
        child:Destroy()
    end
end)

local NotificationCoroutine = coroutine.create(function()
    LatestRoom.Changed:Connect(function()
        if OrionLib.Flags["PredictToggle"].Value == true then
            local n = ChaseStart.Value - LatestRoom.Value
            if 0 < n and n < 4 then
                OrionLib:MakeNotification({
                    Name = "Warning!",
                    Content = "Event in " .. tostring(n) .. " rooms.",
                    Time = 5
                })
            end
        end
        if OrionLib.Flags["BookToggle"].Value == true then
            if LatestRoom.Value == 50 then
                coroutine.resume(BookCoroutine)
            end
        end
        if OrionLib.Flags["FigureToggle"].Value == true then
            if LatestRoom.Value == 50 then
                coroutine.resume(EntityCoroutine)
            end
        end
    end)
    workspace.ChildAdded:Connect(function(inst)
        if inst.Name == "RushMoving" and OrionLib.Flags["MobToggle"].Value == true then
            if OrionLib.Flags["AvoidRushToggle"].Value == true then
                OrionLib:MakeNotification({
                    Name = "Warning!",
                    Content = "Avoiding Rush. Please wait.",
                    Time = 5
                })
                local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                local con = game:GetService("RunService").Heartbeat:Connect(function()
                    game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,45,0))
                end)
                
                inst.Destroying:Wait()
                con:Disconnect()

                game.Players.LocalPlayer.Character:MoveTo(OldPos)
            else
                OrionLib:MakeNotification({
                    Name = "Warning!",
                    Content = "Rush has spawned, hide!",
                    Time = 5
                })
            end
        elseif inst.Name == "AmbushMoving" and OrionLib.Flags["MobToggle"].Value == true then
            if OrionLib.Flags["AvoidRushToggle"].Value == true then
                OrionLib:MakeNotification({
                    Name = "Warning!",
                    Content = "Avoiding Ambush. Please wait.",
                    Time = 5
                })
                local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                local con = game:GetService("RunService").Heartbeat:Connect(function()
                    game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,60,0))
                end)
                
                inst.Destroying:Wait()
                con:Disconnect()
                
                game.Players.LocalPlayer.Character:MoveTo(OldPos)
            else
                OrionLib:MakeNotification({
                    Name = "Warning!",
                    Content = "Ambush has spawned, hide!",
                    Time = 5
                })
            end
        end
    end)
end)

local FuncTab = Window:MakeTab({
	Name = "Functions",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

FuncTab:AddButton({
	Name = "FE Spam Badges [In Lobby] [Need Achievements]",
	Callback = function()
local AchievementsList = game.Players.LocalPlayer.PlayerGui.MainUI.LobbyFrame.Achievements.List:GetChildren()
while task.wait() do
    game:GetService("ReplicatedStorage").EntityInfo.FlexAchievement:FireServer(AchievementsList[math.random(1, #AchievementsList)].Name)
end
  	end    
})

FuncTab:AddButton({
	Name = "Revive [NOT FREE]",
	Callback = function()
      		game:GetService("ReplicatedStorage").EntityInfo.Revive:FireServer()
  	end    
})


FuncTab:AddButton({
	Name = "Scanner/Tablet",
	Callback = function()
      		_G.OnShop = true

loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
  	end    
})

FuncTab:AddButton({
	Name = "Doors Mods",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Cutsences/SteepSteps/main/DoorsMods"))()
  	end    
})

FuncTab:AddToggle({
    Name = "Control Player Items",
    Default = false,
    Callback = function(cpi)
        if cpi == true then
           isChecking = true -- değişken true olarak ayarlanır
local function CheckAllRemotes()
    local remotes = game:GetDescendants()
    for i, remote in pairs(remotes) do
        if remote.Name == "Remote" then
            remote:FireServer()
        end
    end
    wait(0.1)
    if isChecking then
        CheckAllRemotes()
    end
end
CheckAllRemotes()
        elseif cpi == false then
            isChecking = false -- değişken false olarak ayarlanır
            local Descendants = game:GetDescendants()
            for i, v in pairs(Descendants) do
                if v.Name == "Remote" or v.Name == "UnlockEvent" then
                    v:FireServer()
                    wait()
                end
            end
        end
    end
})

FuncTab:AddButton({
	Name = "Prompt Length Bypass",
	Callback = function()
      		-- ProximityPrompt'ların kontrol edileceği aralık (saniye cinsinden)
local checkInterval = 1

-- Yeni eklenen ProximityPrompt nesnelerini kontrol etmek için bir fonksiyon
local function checkNewPrompts(newPrompts)
    for _, prompt in ipairs(newPrompts) do
        if prompt:IsA("ProximityPrompt") then
            prompt.MaxActivationDistance = 25 -- istediğiniz mesafeyi buraya yazabilirsiniz
    prompt.HoldDuration = 0 -- prompt hemen tetiklensin
    prompt.RequiresLineOfSight = false -- prompt için görüş hattı gerektirmeyelim
        end
    end
end

-- Yeni eklenen nesneler için bir bağlantı noktası oluştur
game:GetService("Workspace").DescendantAdded:Connect(function(newObj)
    checkNewPrompts({newObj})
end)

-- Tüm ProximityPrompt nesnelerini kontrol et
checkNewPrompts(game:GetService("Workspace"):GetDescendants("ProximityPrompt"))

-- Belirli aralıklarla yeni eklenen nesnelere bak
game.Workspace.DescendantAdded:Connect(function(obj)
    if obj:IsA("ProximityPrompt") then
        checkNewPrompts({obj}) -- Yeni Prompt'u kontrol etmek için checkNewPrompts() fonksiyonuna eklenir
    end
end)

while true do
    local newPrompts = game.Workspace:GetDescendants():Filter(function(obj)
        return obj:IsA("ProximityPrompt")
    end)
    checkNewPrompts(newPrompts)
    wait(checkInterval)
end


  	end    
})


FuncTab:AddButton({
	Name = "Fire All Remote Functions",
	Callback = function()
      		local function CheckAllRemotes()
    local remotes = game:GetDescendants()
    for i, remote in pairs(remotes) do
        if remote:IsA("RemoteFunction") then
            remote:InvokeServer()
        elseif remote:IsA("RemoteEvent") then
            remote:FireServer()
  
        elseif remote:IsA("RemoteProperty") then
            remote:GetPropertyChangedSignal():Connect(function(prop)
                remote:FireServer(prop)
            end)
        elseif remote:IsA("RemoteInstance") then
            remote.ChildAdded:Connect(function(child)
                child.Parent = remote
                remote:FireServer()
            end)
        end
    end
end

while true do
    CheckAllRemotes()
    wait(0.1)
end


  	end    
})

FuncTab:AddButton({
	Name = "Noonie Hardcore Mode (Leaked version)",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/MZEEN2424/doors/main/Leak.lua.txt'))()
  	end    
})

FuncTab:AddButton({
	Name = "Doors but Furry",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/MZEEN2424/doors/main/doorsbutfurrycomplete-obfuscated_1.lua.txt'))()
  	end    
})

FuncTab:AddButton({
	Name = "Plamen Birthday Mode",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/BirthdayModeDOORS/main/BirthdayModeScript'))()
  	end    
})

FuncTab:AddButton({
	Name = "Plamen Entity Spawner GUI",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/UtilitiesHub/main/UtilitiesGUI'))()
  	end    
})

FuncTab:AddButton({
	Name = "Noonie Hardcore Mode (Original version)",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/MZEEN2424/doors/main/Hardcore_V5_Beta.lua%20(1).txt'))()
  	end    
})

FuncTab:AddButton({
Name = "Remotely Open Door",
Callback = function()
local function openDoor()
    local currentRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
    local door = game.Workspace.CurrentRooms[currentRoom]["Door"]
    if door then
        local event = door.ClientOpen
        event:FireServer()
        door.Func_ForceOpen:Fire()
door.Func_Open:Fire()
door.Func_ForceOpen:Fire()
door.Func_Open:Fire()
door.Func_ForceOpen:Fire()
door.Func_Open:Fire()
door.Func_Close:Fire()

        wait(0.1)
    end
end

while true do
    for i = 1, 10 do
        openDoor()
    end
    wait(0.1)
end
end

})


FuncTab:AddButton({
	Name = "Play Again",
	Callback = function()
      		game:GetService("ReplicatedStorage").EntityInfo.PlayAgain:FireServer()
  	end    
})


FuncTab:AddButton({
	Name = "Control Seek (Execute in cutscene)",
	Callback = function()
local studs_behind = 25
while task.wait() do
    game:GetService("Workspace").SeekMoving.Figure.CFrame = game.Players.LocalPlayer.Character.PrimaryPart.CFrame * CFrame.new(0, 0, studs_behind)
    game:GetService("Workspace").SeekMoving.SeekRig.Root.CFrame = game.Players.LocalPlayer.Character.PrimaryPart.CFrame * CFrame.new(0, 0, studs_behind)
end
  	end    
})

FuncTab:AddButton({
	Name = "Figure Break (Execute in Door 49)",
	Callback = function()
local function teleportFigure()
game.Workspace.CurrentRooms["50"].FigureSetup.FigureRagdoll:PivotTo(game.Players.LocalPlayer.Character.WorldPivot* CFrame.new(0,-50,0))
    game:GetService("Workspace").CurrentRooms["50"].FigureSetup.FigureRagdoll.Root.CFrame = game.Players.LocalPlayer.Character.PrimaryPart.CFrame * CFrame.new(math.huge, math.huge, math.huge)
    game:GetService("Workspace").CurrentRooms["50"].FigureSetup.TeleportPosition.CFrame = game.Players.LocalPlayer.Character.PrimaryPart.CFrame * CFrame.new(math.huge, math.huge, math.huge)
    game:GetService("Workspace").CurrentRooms["50"].FigureSetup.Figure.Root.CFrame = game.Players.LocalPlayer.Character.PrimaryPart.CFrame * CFrame.new(math.huge, math.huge, math.huge)
    print("Figure")
end

game:GetService("RunService").RenderStepped:Connect(function()
    teleportFigure()
end)
  	end    
})


FuncTab:AddButton({
	Name = "Banana Throw",
	Callback = function()
      		local ahh = "https://raw.githubusercontent.com/ArdaEEE000/shsbhshssmejwudhshdhxbdbdbdb/main/Protected_-_2023-04-07T161226.584.lua"
local senpaii = game:HttpGet(ahh)
loadstring(senpaii)()
  	end    
})

FuncTab:AddButton({
	Name = "Banana Gun",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()
  	end    
})



FuncTab:AddButton({
	Name = "[FE] Move Door",
	Callback = function()
      	local funnyLevel = 13 -- komiklik seviyesi, varsayılan olarak 5
local maxDistance = 5 -- maksimum mesafe

-- funnyLevel'e göre seçilebilecek maksimum rastgele offset değerleri
local maxOffset = {
    2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 8
}

-- funnyLevel'e göre seçilebilecek maksimum rastgele açı değerleri
local maxRotation = {
    30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 75, 75, 360
}

-- funnyOffsets tablosunda kullanılabilecek rastgele komik Vector3 değerleri
local function getFunnyOffset()
    -- Rastgele bir yatay açı belirleyelim (0 ile 360 derece arasında)
    local horizontalAngle = math.rad(math.random(0, 360))

    -- Rastgele bir mesafe belirleyerek yatay ve dikey pozisyonları hesaplayalım
    local distance = math.random(-maxOffset[funnyLevel], maxOffset[funnyLevel])
    local horizontalPosition = Vector3.new(distance * math.cos(horizontalAngle), 0, distance * math.sin(horizontalAngle))
    local verticalPosition = Vector3.new(
        math.random(-maxOffset[funnyLevel], maxOffset[funnyLevel]),
        math.random(-maxOffset[funnyLevel], maxOffset[funnyLevel]),
        math.random(-maxOffset[funnyLevel], maxOffset[funnyLevel])
    )

    -- Yatay ve dikey pozisyonları birleştirerek sonuç döndürelim
    return horizontalPosition + verticalPosition
end

-- Her attachment için updateAttachment fonksiyonu
local function updateAttachment(attachment)
    -- Yatay ve dikey konumları rastgele olarak belirleyerek nesnenin konumunu güncelle
    local randomOffset = getFunnyOffset()
    attachment.WorldPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + randomOffset

    -- Biraz eğim vererek nesneyi kır ve bükebileceğimizi simüle et
    local randomRotation = Vector3.new(math.random(-maxRotation[funnyLevel], maxRotation[funnyLevel]), math.random(-maxRotation[funnyLevel], maxRotation[funnyLevel]), math.random(-maxRotation[funnyLevel], maxRotation[funnyLevel]))
    local newCFrame = attachment.CFrame * CFrame.Angles(math.rad(randomRotation.X), math.rad(randomRotation.Y), math.rad(randomRotation.Z))
    if (newCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > maxDistance then
        -- Eğer attachment, maxDistance'den daha uzakta ise, önceki konumu geri yükle
        attachment.CFrame = attachment.CFrame
    else
        attachment.CFrame = newCFrame
    end
end


-- Descendants'ları ve yeni eklenen objeleri güncelle
for i, descendant in pairs(game.Workspace:GetDescendants()) do
    if descendant:IsA("Attachment") then
        updateAttachment(descendant)
    end
end

game.Workspace.DescendantAdded:Connect(function(descendant)
    if descendant:IsA("Attachment") then
        updateAttachment(descendant)
    end
end)

-- Ayrıca, funnyLevel veya diğer ayarları değiştirmek için bir yöntem ekleyebiliriz
local function setFunnyLevel(level)
    if level < 1 then
        funnyLevel = 1
        warn("funnyLevel cannot be lower than 1. Setting to default value.")
    elseif level > #maxOffset then
        funnyLevel = #maxOffset
        warn("funnyLevel cannot be higher than " .. tostring(#maxOffset) .. ". Setting to maximum value.")
    else
        funnyLevel = level
    end
end


-- Uzaklık değerini değiştiren bir set metodu
local function setMaxDistance(distance)
    if distance < 1 then
        maxDistance = 1
        warn("maxDistance cannot be lower than 1. Setting to default value.")
    else
        maxDistance = distance
    end
end


-- Rastgele açı/offset ağırlıklarını değiştiren set metotları
local function setOffsetWeight(weightX, weightY, weightZ)
    offsetWeight = Vector3.new(weightX, weightY, weightZ)
end

local function setRotationWeight(weightX, weightY, weightZ)
    rotationWeight = Vector3.new(weightX, weightY, weightZ)
end

-- Tüm attachment'ları ortadan kaldıran bir fonksiyon da ekleyebiliriz
local function removeAllAttachments()
    for i, descendant in pairs(game.Workspace:GetDescendants()) do
        if descendant:IsA("Attachment") then
            descendant:Destroy()
        end
    end
end

return {
    setFunnyLevel = setFunnyLevel,
    setMaxDistance = setMaxDistance,
    setOffsetWeight = setOffsetWeight,
    setRotationWeight = setRotationWeight,
    removeAllAttachments = removeAllAttachments
}

  	end    
})

local StunGui = nil

local StunGui = nil
local UserInputService = game:GetService("UserInputService")

FuncTab:AddToggle({
    Name = "Stun Gui",
    Default = false,
    Callback = function(stunn)
        if stunn == true then
            -- GUI oluşturma
            StunGui = Instance.new("ScreenGui")
            StunGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
            
            local frame = Instance.new("Frame")
            frame.Size = UDim2.new(0, 200, 0, 50)
            frame.Position = UDim2.new(0.5, -100, 0.8, 0)
            frame.BackgroundColor3 = Color3.new(1, 1, 1)
            frame.BackgroundTransparency = 0.5
            frame.Draggable = true
            frame.Parent = StunGui
            
            local button = Instance.new("TextButton")
            button.Size = UDim2.new(0, 100, 0, 50)
            button.Position = UDim2.new(0.5, -50, 0, 0)
            button.BackgroundColor3 = Color3.new(0, 1, 0)
            button.TextColor3 = Color3.new(1, 1, 1)
            button.Text = "Stun"
            button.Parent = frame
            
            -- Sürükleme işlevi
            local isDragging = false
            local dragStart = nil
            
            frame.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    isDragging = true
                    dragStart = input.Position
                end
            end)
            
            frame.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    isDragging = false
                end
            end)
            
            UserInputService.InputChanged:Connect(function(input)
                if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                    local delta = input.Position - dragStart
                    frame.Position = UDim2.new(frame.Position.X.Scale, frame.Position.X.Offset + delta.X, frame.Position.Y.Scale, frame.Position.Y.Offset + delta.Y)
                    dragStart = input.Position
                end
            end)
            
            -- Stun düğmesi fonksiyonu
            local stunned = false
            button.MouseButton1Click:Connect(function()
                stunned = not stunned
                if stunned then
                    game.Players.LocalPlayer.Character.Humanoid:SetAttribute("Stunned", true)
                    button.Text = "Unstun"
                else
                    game.Players.LocalPlayer.Character.Humanoid:SetAttribute("Stunned", false)
                    button.Text = "Stun"
                end
            end)
        elseif stunn == false and StunGui ~= nil then
            StunGui:Destroy()
            StunGui = nil
        end
    end
})





FuncTab:AddButton({
	Name = "[FE] Move Door 2",
	Callback = function()
      for i, v in pairs(game:GetDescendants()) do
    if v:IsA("Attachment") or v:IsA("Joint") or v:IsA("Root") or v:IsA("ManuelWeld") or v:IsA("FigureAttach") then
    wait(0.001)
        v.WorldCFrame = CFrame.new(60, 60, 60)
    end
end

game.DescendantAdded:Connect(function(v)
    if v:IsA("Attachment") or v:IsA("Joint") or v:IsA("Root") or v:IsA("ManuelWeld") or v:IsA("FigureAttach") then
    wait(0.001)
        v.WorldCFrame = CFrame.new(60, 60, 60)
    end
end)


  	end    
})

FuncTab:AddButton({
	Name = "New God Mode",
	Callback = function()
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "GodModeGUI"

local Frame = Instance.new("Frame")
Frame.Name = "DraggableFrame"
Frame.Size = UDim2.new(0, 80, 0, 40)
Frame.Position = UDim2.new(0.5, -30, 0, -40)
Frame.BackgroundTransparency = 0.5
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

local TextButton = Instance.new("TextButton")
TextButton.Name = "GodModeButton"
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.BackgroundTransparency = 1
TextButton.Text = "GOD MODE: OFF"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.Font = Enum.Font.SourceSans
TextButton.Parent = Frame

ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
local collision = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Collision")

function noclip()
    Clip = false
    local function Nocl()
        if Clip == false and game.Players.LocalPlayer.Character ~= nil then
            for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                    v.CanCollide = false
                end
            end
        end
        wait(0.16)
    end
    Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
    if Noclip then Noclip:Disconnect() end
    Clip = true
end

function activateGodMode()
collision.Position = Vector3.new(collision.Position.X, -5, collision.Position.Z)
collision.Anchored = false
collision.CanCollide = false
TextButton.Text = "GOD MODE: ON"
wait(0.5)
noclip()
end

function deactivateGodMode()
collision.Position = Vector3.new(collision.Position.X, 0.705, collision.Position.Z)
collision.Anchored = false
collision.CanCollide = true
TextButton.Text = "GOD MODE: OFF"
wait(0.5)
clip()
end
local buttonActive = false
local UserInputService = game:GetService("UserInputService")
function handleInput(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.G and not gameProcessedEvent then
        if buttonActive then
            deactivateGodMode()
            buttonActive = false
        else
            activateGodMode()
            buttonActive = true
        end
    end
end

UserInputService.InputBegan:Connect(handleInput)


TextButton.MouseButton1Click:Connect(function()
    if buttonActive then
        deactivateGodMode()
        buttonActive = false
    else
        activateGodMode()
        buttonActive = true
    end
end)
  	end    
})

FuncTab:AddButton({
	Name = "Red Room",
	Callback = function()
      		firesignal(game.ReplicatedStorage.EntityInfo.UseEventModule.OnClientEvent, "tryp", workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value], 10) 
  	end    
})

FuncTab:AddButton({
	Name = "Red Room Every Room",
	Callback = function()
      		local function onRoomChanged()
    local roomNumber = game.ReplicatedStorage.GameData.LatestRoom.Value
    firesignal(game.ReplicatedStorage.EntityInfo.UseEventModule.OnClientEvent, "tryp", workspace.CurrentRooms[roomNumber], 10)
end

onRoomChanged()

game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(onRoomChanged)

  	end    
})

FuncTab:AddButton({
	Name = "Spawn Seek Eyes",
	Callback = function()
      		require(game.ReplicatedStorage.ClientModules.EntityModules.Seek).tease(nil, workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], 100)
  	end    
})

FuncTab:AddButton({
	Name = "Spawn Seek Eyes Every Door",
	Callback = function()
      		game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
   require(game.ReplicatedStorage.ClientModules.EntityModules.Seek).tease(nil, workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], 100)
    end)
  	end    
})

FuncTab:AddButton({
	Name = "Spawn Eyes Every Room",
	Callback = function()
      		local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/Spawner_V2.lua"))()

local Configuration = {
    Kill = false, -- change to "Damage = 0.1," for eyes, doesnt work on other entities
    Speed = 160, -- 60 for rush, doesnt work on other entities
    Time = 3 -- 5 for rush, doesnt work on other entities
}

local function spawnEyes()
    EntitySpawner:Spawn("Eyes", Configuration)
end

game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function(newRoomNumber)
    Configuration.Kill = false -- reset kill setting to default
    Configuration.Speed = 160 -- reset speed setting to default
    Configuration.Time = 3 -- reset time setting to default
    
    spawnEyes()
end)
  	end    
})


FuncTab:AddButton({
	Name = "Figure Pov",
	Callback = function()
      		game:GetService("RunService").RenderStepped:Connect(function() workspace.CurrentCamera.CFrame = workspace.CurrentRooms[50].FigureSetup.FigureRagdoll.Head.CFrame end)
  	end    
})

FuncTab:AddButton({
	Name = "Bypass A-90 [Rooms]",
	Callback = function()
      		local Plr = game.Players.LocalPlayer
local ModuleScripts = {
   MainGame = Plr.PlayerGui.MainUI.Initiator.Main_Game,
}

ModuleScripts.MainGame.RemoteListener.Modules["A90"].Name = "9"
  	end    
})

FuncTab:AddButton({
	Name = "Disable Eyes Damage",
	Callback = function()
      	local motorReplication = game:GetService("ReplicatedStorage").EntityInfo.MotorReplication

if motorReplication then
    motorReplication:Destroy()
end
  	end    
})



FuncTab:AddButton({
	Name = "Lobby",
	Callback = function()
      		game:GetService("ReplicatedStorage").EntityInfo.Lobby:FireServer()
  	end    
})

FuncTab:AddButton({
	Name = "Spawn A90 GUI",
	Callback = function()
      		
local button = Instance.new("TextButton")
button.Name = "Spawn A90"
button.Text = "Spawn A90"
button.Size = UDim2.new(0, 100, 0, 50)
button.Position = UDim2.new(0, 10, 0.7, -80)
button.Parent = game.Players.LocalPlayer.PlayerGui.MainUI

button.Activated:Connect(function()
    require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules["A90"])(
        require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
    )
end)
  	end    
})


FuncTab:AddButton({
	Name = "Remove Figure Door",
	Callback = function()
    -- Workspace servisine eriş
local workspace = game:GetService("Workspace")

-- İlgili odanın varlığını kontrol et
local currentRoom = workspace.CurrentRooms["49"]
if currentRoom then
    -- Kapıyı yok et
    currentRoom.Door:Destroy()
end

  	end    
})

FuncTab:AddButton({
	Name = "Reset Character",
	Callback = function()
      		game.Players.LocalPlayer.Character.Humanoid.Health = 0
  	end    
})

local BetaTab = Window:MakeTab({
	Name = "[BETA]",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local BypassTab = Window:MakeTab({
	Name = "Bypass",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

BypassTab:AddButton({
	Name = "Anti Cheat Bypass",
	Callback = function()
      		local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local colli = character:WaitForChild("Collision")
colli.CanCollide = false

local function animateCollision()
    while true do
        local tween3 = game:GetService("TweenService"):Create(colli, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0), {Size = Vector3.new(2, 2, 2)})
        tween3:Play()
        tween3.Completed:Wait()
        
        local tween4 = game:GetService("TweenService"):Create(colli, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, true, 0), {Size = Vector3.new(3, 4.5, 3)})
        tween4:Play()
        tween4.Completed:Wait()
    end
end

coroutine.wrap(animateCollision)()

  	end    
})
BypassTab:AddParagraph("WARNING","Sometimes Anti Cheat Bypass glitching.")


BetaTab:AddButton({
	Name = "Entity Notifier [BETA]",
	Callback = function()
    local function createLabel(text, position, textColor)
    local guiy = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
    local label = Instance.new("TextLabel")
    label.Text = text
    label.TextColor3 = textColor
    label.Size = UDim2.new(0, 400, 0, 200) -- Increased label size
    label.Position = UDim2.new(position.X.Scale, position.X.Offset, 0, -80) -- Changed Y position to 50
    label.BackgroundTransparency = 1
    label.Font = Enum.Font.Nunito
    label.TextSize = 24 -- Increased font size
    label.Visible = false
    label.Parent = guiy
    return label
end



local rushLabel = createLabel("", UDim2.new(0.5, -200, 0, 50), Color3.new(1, 0, 0))
local ambushLabel = createLabel("", UDim2.new(0.5, -200, 0, 100), Color3.new(0, 1, 0))
local safeLabel = createLabel("", UDim2.new(0.5, -200, 0, 150), Color3.new(0, 0, 1))
local seekLabel = createLabel("", UDim2.new(0.5, -200, 0, 50), Color3.new(0, 0, 0))
local eyesLabel = createLabel("", UDim2.new(0.5, -200, 0, 100), Color3.new(0.5, 0, 0.5))
local deathRipperLabel = createLabel("", UDim2.new(0.5, -200, 0, 50), Color3.new(1, 0, 0))
local deerGodLabel = createLabel("", UDim2.new(0.5, -200, 0, 100), Color3.new(0.5, 0, 0.5))
local rushCounterpartLabel = createLabel("", UDim2.new(0.5, -200, 0, 150), Color3.new(0, 0, 0.5))
local a60Label = createLabel("", UDim2.new(0.5, -200, 0, 50), Color3.new(0.5, 0.25, 0))
local dreadLabel = createLabel("", UDim2.new(0.5, -200, 0, 100), Color3.new(1, 1, 1))
local frostbiteLabel = createLabel("", UDim2.new(0.5, -200, 0, 150), Color3.new(0, 0.5, 1))
local silenceLabel = createLabel("", UDim2.new(0.5, -200, 0, 200), Color3.new(0.5, 0.5, 0.5))
local reboundMovingLabel = createLabel("", UDim2.new(0.5, -200, 0, 250), Color3.new(0, 0, 0.25))


game:GetService("RunService").RenderStepped:Connect(function()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local workspace = game.Workspace
    if character then
        if workspace:FindFirstChild("RushMoving") then
            rushLabel.Visible = true
            rushLabel.Text = "⚠ Rush is coming! Hide!" 
        else
            rushLabel.Visible = false
        end
        if workspace:FindFirstChild("Death") then
            deathRipperLabel.Visible = true
            deathRipperLabel.Text = "⚠ Ripper is coming! Hide!" 
        else
            deathRipperLabel.Visible = false
        end
        if workspace:FindFirstChild("Deer God") then
            deerGodLabel.Visible = true
            deerGodLabel.Text = "⚠ Deer God is coming! Run!" 
        else
            deerGodLabel.Visible = false
        end
        if workspace:FindFirstChild("Frostbite") then
            frostbiteLabel.Visible = true
            frostbiteLabel.Text = "⚠ Frostbite Spawned! Move!" 
        else
            frostbiteLabel.Visible = false
        end
      if workspace:FindFirstChild("RushCounterpart") then
    rushCounterpartLabel.Visible = true
    rushCounterpartLabel.Text = "⚠ Cease is coming! Do not Move!" 
    wait(10)
        rushCounterpartLabel.Text = ""
    else
            rushCounterpartLabel.Visible = false
        end


        if workspace:FindFirstChild("A-60") then
            a60Label.Visible = true
            a60Label.Text = "⚠ A-60 is coming! Hide!" 
        else
            a60Label.Visible = false
        end
        if workspace:FindFirstChild("Dread") then
            dreadLabel.Visible = true
            dreadLabel.Text = "⚠ Dread Spawned! Do not look!" 
        else
            dreadLabel.Visible = false
        end
        if workspace:FindFirstChild("Slience") then
    silenceLabel.Visible = true
    silenceLabel.Text = "⚠ Slience is coming! Hide!" 
else
    silenceLabel.Visible = false
end
if workspace:FindFirstChild("ReboundMoving") then
    reboundMovingLabel.Visible = true
    reboundMovingLabel.Text = "⚠ Rebound is coming! Hide!" 
    wait(10)
        reboundMovingLabel.Text = ""
    else
            reboundMovingLabel.Visible = false
        end

        if workspace:FindFirstChild("AmbushMoving") then
            ambushLabel.Visible = true
            ambushLabel.Text = "⚠ Ambush is coming! Hide!"
        else
            ambushLabel.Visible = false
        end
        
        if character:FindFirstChild("SeekMoving") and workspace:FindFirstChild("SeekMoving") then
            seekLabel.Visible = true
            seekLabel.Text = "⚠ Seek is coming! RUN!"
        else
            seekLabel.Visible = false
        end
        if workspace:FindFirstChild("Eyes") then
            eyesLabel.Visible = true
            eyesLabel.Text = "⚠ Eyes Spawned! Do not look!"
        else
            eyesLabel.Visible = false
        end
        if not rushLabel.Visible and not ambushLabel.Visible and not seekLabel.Visible and not eyesLabel.Visible and not silenceLabel.Visible and not dreadLabel.Visible and not rushCounterpartLabel.Visible and not  frostbiteLabel.Visible and not a60Label.Visible and not reboundMovingLabel.Visible and not deerGodLabel.Visible and not deathRipperLabel.Visible then
            safeLabel.Visible = true
            safeLabel.Text = "Safe Area!"
        else
            safeLabel.Visible = false
        end
    end
end)

  	end    
})



--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]


--// ok actual code ends here

local CreditsTab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://7059344112",
	PremiumOnly = false
})

CreditsTab:AddParagraph("Credits to","OminousVibes - MZEEN - Sonic Of G O D")

coroutine.resume(NotificationCoroutine)

OrionLib:Init()

task.wait(2)
-- ScreenGui oluştur
local gui = Instance.new("ScreenGui")
gui.Parent = game:GetService("Players").LocalPlayer.PlayerGui

-- TextLabel oluştur ve stilini ayarla
local label = Instance.new("TextLabel")
label.Parent = gui
label.Text = "BY MZEEN"
label.Font = Enum.Font.SourceSansBold
label.TextSize = 20
label.Position = UDim2.new(1, 0, 0, -30) -- sağdan başla, üstten 30 piksel uzaklıkta
label.Size = UDim2.new(0, 200, 0, 30) -- 200 piksel genişlikte, 30 piksel yükseklikte
label.TextColor3 = Color3.new(1, 1, 1) -- beyaz renkte
label.BackgroundTransparency = 1 -- arka plan şeffaf

while true do
    local r, g, b = math.random(), math.random(), math.random()
    label.TextColor3 = Color3.new(r, g, b) -- rastgele renk seç
    label.Position = UDim2.new(1, 0, 0, -30) -- sağdan başla, üstten 30 piksel uzaklıkta
    local tweenInfo = TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out) -- 5 saniyede bir sefer tamamla, linear animasyonu
    local tween = game:GetService("TweenService"):Create(label, tweenInfo, {Position = UDim2.new(0, -200, 0, -30)}) -- 200 piksel sola git
    tween:Play()
    tween.Completed:Wait() -- tamamlanınca bekle
end
firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent, 'MADE BY MZEEN',true,5)
   
else
    -- Oyuncuyu oyun dışına at
    game.Players.LocalPlayer:Kick("You are not whitelisted.")
end
end)

-- GUI'yi ekrana getir
gui.Enabled = true
