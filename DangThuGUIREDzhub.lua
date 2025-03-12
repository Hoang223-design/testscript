loadstring(game:HttpGet(("https://raw.githubusercontent.com/Hoang223-design/testGUI1/refs/heads/main/TestGUI1.lua")))()

local Window = MakeWindow({
    Hub = {
        Title = "HoàngBlackHub Beta v0.2",
        Animation = "Cre: NgọcHoàng20?👑"
    },
    Key = {
        KeySystem = false,
        Title = "Nhập key để tiếp tục🌚🥵",
        Description = "Được Tạo Bởi: Huỳnh Ngọc Hoàng👑",
        KeyLink = "Link key không tồn tại muốn sở hữu được key thì phải nhắn admin script!",
        Keys = {"1"},
        Notifi = {
            Notifications = true,
            CorrectKey = "Script Đang Chạy🥵!",
            Incorrectkey = "Key không tồn tại🥵",
            CopyKeyLink = "Đã sao chép, hãy đọc tin nhắn bạn vừa copy🌚"
        }
    }
})

MinimizeButton({
    Image = "http://www.roblox.com/asset/?id=140429082889096",
    Size = {32, 32},
    Color = Color3.fromRGB(10, 10, 10),
    Corner = true,
    Stroke = false,
    StrokeColor = Color3.fromRGB(255, 0, 0)
})

------ Các tab
local Tab1o = MakeTab({Name = "Nhạc🥁🎷"})
local Tab2o = MakeTab({Name = "Main👉🏻👈🏻"})
local Tab3o = MakeTab({Name = "Farm🌾"})
local Tab4o = MakeTab({Name = "Pvp🥵"})
local Tab5o = MakeTab({Name = "Dịch Chuyển🛸"})
local Tab6o = MakeTab({Name = "Trái cây/Raid🤤🍑"})
local Tab7o = MakeTab({Name = "Khác☘️"})
local Tab8o = MakeTab({Name = "Tùy Chọn Server🌐"})

------ Tấn công nhanh (Luôn bật)
local fastAttackActive = true
local attackDistance = 15
local attackSpeed = 0.05

spawn(function()
    while wait(attackSpeed) do
        if fastAttackActive then
            local player = game.Players.LocalPlayer
            local character = player.Character
            if not character or not character:FindFirstChild("HumanoidRootPart") then return end
            local rootPart = character.HumanoidRootPart
            local humanoid = character:FindFirstChild("Humanoid")

            for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    local distance = (rootPart.Position - v.HumanoidRootPart.Position).Magnitude
                    if distance <= attackDistance then
                        game:GetService("VirtualUser"):ClickButton1(Vector2.new())
                        humanoid:ChangeState(Enum.HumanoidStateType.Physics)
                    end
                end
            end

            for _, otherPlayer in pairs(game.Players:GetPlayers()) do
                if otherPlayer ~= player and otherPlayer.Character and otherPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    local distance = (rootPart.Position - otherPlayer.Character.HumanoidRootPart.Position).Magnitude
                    if distance <= attackDistance then
                        game:GetService("VirtualUser"):ClickButton1(Vector2.new())
                    end
                end
            end
        end
    end
end)

------ Tab Nhạc
local currentSound = nil

AddToggle(Tab1o, {
    Name = "Chipi chipi chapa🐱",
    Default = false,
    Callback = function(state)
        if currentSound and currentSound ~= nil then
            currentSound:Stop()
            currentSound = nil
        end
        
        if state then
            local sound = Instance.new("Sound")
            sound.Name = "ChipiMusic"
            sound.Parent = game.Workspace
            sound.SoundId = "rbxassetid://16190783444"
            sound.Volume = 2
            sound.Looped = true
            sound:Play()
            currentSound = sound
            
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo!",
                Text = "Đã bật nhạc Chipi chipi chapa😼!",
                Duration = 5
            })
        end
    end
})

AddToggle(Tab1o, {
    Name = "Money🤑Rain (Phonk)",
    Default = false,
    Callback = function(state)
        if currentSound and currentSound ~= nil then
            currentSound:Stop()
            currentSound = nil
        end
        
        if state then
            local sound = Instance.new("Sound")
            sound.Name = "MoneyRainMusic"
            sound.Parent = game.Workspace
            sound.SoundId = "rbxassetid://9046862941"
            sound.Volume = 2
            sound.Looped = true
            sound:Play()
            currentSound = sound
            
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "🥵Đã bật nhạc Money Rain🥵!",
                Duration = 5
            })
        end
    end
})

------ Tab Main
AddButton(Tab2o, {
    Name = "🩸z",
    Callback = function()
        local Settings = {
            JoinTeam = "Pirates";
            Translator = true;
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))(Settings)
    end
})

AddButton(Tab2o, {
    Name = "Ve🚗",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dex-Bear/Vxezehub/refs/heads/main/Skidlamcho.txt"))()
    end
})

AddButton(Tab2o, {
    Name = "HoHo",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
    end
})

AddButton(Tab2o, {
    Name = "ASTRAL",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_25.html"))()
    end
})

AddButton(Tab2o, {
    Name = "Xero",
    Callback = function()
        getgenv().Team = "Marines"
        getgenv().Hide_Menu = false
        getgenv().Auto_Execute = false
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()
    end
})

------ Tab Farm (Cập nhật cho level tối đa 2600)
local QuestData = {
    -- Sea 1
    {LevelReq = 0, Name = "Bandit", QuestNPC = "BanditQuestGiver", Pos = CFrame.new(1059, 16, 1549), Enemy = "Bandit"},
    {LevelReq = 15, Name = "Monkey", QuestNPC = "JungleQuestGiver", Pos = CFrame.new(-1601, 36, 153), Enemy = "Monkey"},
    {LevelReq = 30, Name = "Gorilla", QuestNPC = "JungleQuestGiver", Pos = CFrame.new(-1601, 36, 153), Enemy = "Gorilla"},
    {LevelReq = 60, Name = "Desert Bandit", QuestNPC = "DesertQuestGiver", Pos = CFrame.new(897, 6, 4388), Enemy = "Desert Bandit"},
    {LevelReq = 90, Name = "Desert Officer", QuestNPC = "DesertQuestGiver", Pos = CFrame.new(897, 6, 4388), Enemy = "Desert Officer"},
    {LevelReq = 120, Name = "Snow Bandit", QuestNPC = "SnowQuestGiver", Pos = CFrame.new(1389, 87, -1298), Enemy = "Snow Bandit"},
    {LevelReq = 150, Name = "Snowman", QuestNPC = "SnowQuestGiver", Pos = CFrame.new(1389, 87, -1298), Enemy = "Snowman"},
    {LevelReq = 190, Name = "Chief Petty Officer", QuestNPC = "MarineQuestGiver", Pos = CFrame.new(-4906, 25, 4587), Enemy = "Chief Petty Officer"},
    {LevelReq = 240, Name = "Sky Bandit", QuestNPC = "SkyQuestGiver", Pos = CFrame.new(-4842, 717, -2620), Enemy = "Sky Bandit"},
    {LevelReq = 300, Name = "Dark Master", QuestNPC = "SkyQuestGiver", Pos = CFrame.new(-4842, 717, -2620), Enemy = "Dark Master"},
    {LevelReq = 350, Name = "Prisoner", QuestNPC = "PrisonQuestGiver", Pos = CFrame.new(4875, 5, 735), Enemy = "Prisoner"},
    {LevelReq = 400, Name = "Dangerous Prisoner", QuestNPC = "PrisonQuestGiver", Pos = CFrame.new(4875, 5, 735), Enemy = "Dangerous Prisoner"},
    {LevelReq = 450, Name = "Toga Warrior", QuestNPC = "ColosseumQuestGiver", Pos = CFrame.new(-1576, 7, -2985), Enemy = "Toga Warrior"},
    {LevelReq = 500, Name = "Gladiator", QuestNPC = "ColosseumQuestGiver", Pos = CFrame.new(-1576, 7, -2985), Enemy = "Gladiator"},
    {LevelReq = 550, Name = "Military Soldier", QuestNPC = "MagmaQuestGiver", Pos = CFrame.new(-5314, 12, 8515), Enemy = "Military Soldier"},
    {LevelReq = 625, Name = "Military Spy", QuestNPC = "MagmaQuestGiver", Pos = CFrame.new(-5314, 12, 8515), Enemy = "Military Spy"},
    {LevelReq = 700, Name = "Fishman Warrior", QuestNPC = "FishmanQuestGiver", Pos = CFrame.new(61122, 18, 1569), Enemy = "Fishman Warrior"},
    -- Sea 2
    {LevelReq = 725, Name = "Raider", QuestNPC = "Area1QuestGiver", Pos = CFrame.new(-429, 72, 1836), Enemy = "Raider"},
    {LevelReq = 775, Name = "Mercenary", QuestNPC = "Area1QuestGiver", Pos = CFrame.new(-429, 72, 1836), Enemy = "Mercenary"},
    {LevelReq = 850, Name = "Swan Pirate", QuestNPC = "Area2QuestGiver", Pos = CFrame.new(912, 81, 1350), Enemy = "Swan Pirate"},
    {LevelReq = 900, Name = "Factory Staff", QuestNPC = "FactoryQuestGiver", Pos = CFrame.new(632, 73, 290), Enemy = "Factory Staff"},
    {LevelReq = 950, Name = "Marine Lieutenant", QuestNPC = "MarineQuestGiver2", Pos = CFrame.new(-2440, 73, -3210), Enemy = "Marine Lieutenant"},
    {LevelReq = 1000, Name = "Marine Captain", QuestNPC = "MarineQuestGiver2", Pos = CFrame.new(-2440, 73, -3210), Enemy = "Marine Captain"},
    {LevelReq = 1050, Name = "Zombie", QuestNPC = "ZombieQuestGiver", Pos = CFrame.new(-5735, 82, -1141), Enemy = "Zombie"},
    {LevelReq = 1150, Name = "Snow Trooper", QuestNPC = "SnowMountainQuestGiver", Pos = CFrame.new(609, 400, -5315), Enemy = "Snow Trooper"},
    {LevelReq = 1200, Name = "Winter Warrior", QuestNPC = "SnowMountainQuestGiver", Pos = CFrame.new(609, 400, -5315), Enemy = "Winter Warrior"},
    {LevelReq = 1250, Name = "Lab Subordinate", QuestNPC = "IceSideQuestGiver", Pos = CFrame.new(-6060, 15, -4902), Enemy = "Lab Subordinate"},
    {LevelReq = 1300, Name = "Horned Warrior", QuestNPC = "IceSideQuestGiver", Pos = CFrame.new(-6060, 15, -4902), Enemy = "Horned Warrior"},
    {LevelReq = 1375, Name = "Magma Ninja", QuestNPC = "FireSideQuestGiver", Pos = CFrame.new(-5428, 15, -5299), Enemy = "Magma Ninja"},
    {LevelReq = 1450, Name = "Lava Pirate", QuestNPC = "FireSideQuestGiver", Pos = CFrame.new(-5428, 15, -5299), Enemy = "Lava Pirate"},
    -- Sea 3
    {LevelReq = 1500, Name = "Pirate Millionaire", QuestNPC = "PiratePortQuestGiver", Pos = CFrame.new(-290, 44, 5577), Enemy = "Pirate Millionaire"},
    {LevelReq = 1575, Name = "Pistol Billionaire", QuestNPC = "PiratePortQuestGiver", Pos = CFrame.new(-290, 44, 5577), Enemy = "Pistol Billionaire"},
    {LevelReq = 1650, Name = "Dragon Crew Warrior", QuestNPC = "HydraQuestGiver", Pos = CFrame.new(5832, 51, -1101), Enemy = "Dragon Crew Warrior"},
    {LevelReq = 1700, Name = "Dragon Crew Archer", QuestNPC = "HydraQuestGiver", Pos = CFrame.new(5832, 51, -1101), Enemy = "Dragon Crew Archer"},
    {LevelReq = 1750, Name = "Female Islander", QuestNPC = "AmazonQuestGiver", Pos = CFrame.new(5448, 601, 751), Enemy = "Female Islander"},
    {LevelReq = 1825, Name = "Giant Islander", QuestNPC = "AmazonQuestGiver", Pos = CFrame.new(5448, 601, 751), Enemy = "Giant Islander"},
    {LevelReq = 1900, Name = "Marine Commodore", QuestNPC = "MarineTreeQuestGiver", Pos = CFrame.new(2180, 28, -6737), Enemy = "Marine Commodore"},
    {LevelReq = 2000, Name = "Marine Rear Admiral", QuestNPC = "MarineTreeQuestGiver", Pos = CFrame.new(2180, 28, -6737), Enemy = "Marine Rear Admiral"},
    {LevelReq = 2100, Name = "Fishman Raider", QuestNPC = "FishmanQuestGiver2", Pos = CFrame.new(-10581, 331, -8758), Enemy = "Fishman Raider"},
    {LevelReq = 2200, Name = "Fishman Captain", QuestNPC = "FishmanQuestGiver2", Pos = CFrame.new(-10581, 331, -8758), Enemy = "Fishman Captain"},
    {LevelReq = 2300, Name = "Forest Pirate", QuestNPC = "TurtleQuestGiver", Pos = CFrame.new(-13206, 332, -7627), Enemy = "Forest Pirate"},
    {LevelReq = 2400, Name = "Mythological Pirate", QuestNPC = "TurtleQuestGiver", Pos = CFrame.new(-13206, 332, -7627), Enemy = "Mythological Pirate"},
    {LevelReq = 2450, Name = "Jungle Pirate", QuestNPC = "TikiQuestGiver", Pos = CFrame.new(-11993, 331, -10420), Enemy = "Jungle Pirate"},
    {LevelReq = 2500, Name = "Musketeer Pirate", QuestNPC = "TikiQuestGiver", Pos = CFrame.new(-11993, 331, -10420), Enemy = "Musketeer Pirate"},
    {LevelReq = 2550, Name = "Peanut Scout", QuestNPC = "PeanutQuestGiver", Pos = CFrame.new(-2104, 38, -10194), Enemy = "Peanut Scout"},
    {LevelReq = 2575, Name = "Peanut Guard", QuestNPC = "PeanutQuestGiver", Pos = CFrame.new(-2104, 38, -10194), Enemy = "Peanut Guard"},
    {LevelReq = 2600, Name = "Cocoa Warrior", QuestNPC = "CocoaQuestGiver", Pos = CFrame.new(-225, 123, -10000), Enemy = "Cocoa Warrior"}
}

local autoFarmActive = false
AddToggle(Tab3o, {
    Name = "Tự Động Farm Level 🌟",
    Default = false,
    Callback = function(state)
        autoFarmActive = state
        if state then
            spawn(function()
                while autoFarmActive do
                    local player = game.Players.LocalPlayer
                    local character = player.Character
                    if not character or not character:FindFirstChild("HumanoidRootPart") then wait(1) return end
                    local rootPart = character.HumanoidRootPart
                    local level = player.Data.Level.Value

                    -- Tìm nhiệm vụ phù hợp với cấp độ
                    local currentQuest = nil
                    for _, quest in pairs(QuestData) do
                        if level >= quest.LevelReq then
                            currentQuest = quest
                        else
                            break
                        end
                    end

                    if currentQuest then
                        -- Kiểm tra xem đã nhận nhiệm vụ chưa
                        local questTitle = player.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if not questTitle:find(currentQuest.Name) then
                            -- Dịch chuyển đến NPC nhận nhiệm vụ
                            rootPart.CFrame = currentQuest.Pos
                            wait(0.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", currentQuest.QuestNPC, currentQuest.Name)
                            game.StarterGui:SetCore("SendNotification", {
                                Title = "Thông báo🔊!",
                                Text = "Đã nhận nhiệm vụ: " .. currentQuest.Name,
                                Duration = 3
                            })
                            wait(1)
                        end

                        -- Farm quái
                        local enemies = game.Workspace.Enemies:GetChildren()
                        local foundEnemy = false
                        for _, enemy in pairs(enemies) do
                            if enemy.Name == currentQuest.Enemy and enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 then
                                foundEnemy = true
                                repeat
                                    if not autoFarmActive then break end
                                    rootPart.CFrame = enemy.HumanoidRootPart.CFrame + Vector3.new(0, 45, 0)
                                    wait(0.1)
                                until enemy.Humanoid.Health <= 0 or not autoFarmActive
                            end
                        end

                        -- Nếu không còn quái, đợi spawn hoặc kiểm tra nhiệm vụ mới
                        if not foundEnemy then
                            rootPart.CFrame = currentQuest.Pos + Vector3.new(0, 50, 0)
                            wait(2)
                        end
                    end
                    wait(0.5)
                end
            end)
        end
    end
})

------ Tab PvP
AddButton(Tab4o, {
    Name = "sắp có😍 !!",
    Callback = function()
    end
})

------ Tab Dịch Chuyển
local flySpeed = 175
local flyHeight = 75
local flying = false
local bodyVelocity, bodyGyro

local function startFly(targetCFrame)
    local player = game.Players.LocalPlayer
    local character = player.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end
    
    local rootPart = character.HumanoidRootPart
    bodyVelocity = Instance.new("BodyVelocity")
    bodyGyro = Instance.new("BodyGyro")
    
    bodyVelocity.MaxForce = Vector3.new(400000, 400000, 400000)
    bodyVelocity.Parent = rootPart
    
    bodyGyro.MaxTorque = Vector3.new(400000, 400000, 400000)
    bodyGyro.Parent = rootPart
    
    flying = true
    
    spawn(function()
        local startPos = rootPart.Position
        local endPos = targetCFrame.Position + Vector3.new(0, flyHeight, 0)
        
        while flying do
            local currentPos = rootPart.Position
            local distanceToTarget = (currentPos - endPos).Magnitude
            
            if distanceToTarget < 2 then
                rootPart.CFrame = CFrame.new(endPos, targetCFrame.Position)
                stopFly()
                break
            end
            
            local adjustedSpeed = flySpeed
            if distanceToTarget < 50 then
                adjustedSpeed = math.max(flySpeed * (distanceToTarget / 50), 10)
            end
            
            local direction = (endPos - currentPos).Unit
            bodyVelocity.Velocity = direction * adjustedSpeed
            bodyGyro.CFrame = CFrame.lookAt(currentPos, endPos)
            
            wait(0.03)
        end
    end)
end

local function stopFly()
    flying = false
    if bodyVelocity then bodyVelocity:Destroy() end
    if bodyGyro then bodyGyro:Destroy() end
end

local function TeleportTo(pos)
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = pos
    end
end

local function GetCurrentSea()
    local player = game.Players.LocalPlayer
    local level = player.Data.Level.Value
    if level < 700 then return 1
    elseif level < 1500 then return 2
    else return 3 end
end

local Sea1Locations = {
    {"Windmill Village", CFrame.new(979, 16, 1200)},
    {"Marine Start", CFrame.new(-2570, 6, 2050)},
    {"Middle Town", CFrame.new(-650, 25, 1800)},
    {"Jungle", CFrame.new(-1200, 37, 280)},
    {"Pirate Village", CFrame.new(-1120, 4, 3870)},
    {"Desert", CFrame.new(950, 7, 4370)},
    {"Frozen Village", CFrame.new(1150, 7, -1130)},
    {"Marine Fortress", CFrame.new(-5000, 20, 4350)},
    {"Skypiea", CFrame.new(-200, 400, -5000)},
    {"Prison", CFrame.new(4870, 5, 735)},
    {"Colosseum", CFrame.new(-1450, 7, -3050)},
    {"Magma Village", CFrame.new(-5250, 8, 8500)},
    {"Underwater City", CFrame.new(4000, 0, -1500)},
    {"Fountain City", CFrame.new(5120, 4, 4050)}
}

local Sea2Locations = {
    {"Cafe", CFrame.new(-380, 77, 255)},
    {"Kingdom of Rose", CFrame.new(-450, 72, 1250)},
    {"Green Zone", CFrame.new(-2250, 72, -1250)},
    {"Graveyard", CFrame.new(-5350, 8, 5150)},
    {"Snow Mountain", CFrame.new(500, 400, -5350)},
    {"Hot and Cold", CFrame.new(-5900, 15, -2850)},
    {"Cursed Ship", CFrame.new(920, 125, 32850)},
    {"Ice Castle", CFrame.new(5500, 40, -6100)},
    {"Forgotten Island", CFrame.new(-3050, 15, -9750)},
    {"Dark Arena", CFrame.new(3800, 15, -3800)},
    {"Usoap Island", CFrame.new(4750, 8, 2850)}
}

local Sea3Locations = {
    {"Port Town", CFrame.new(-950, 15, 5500)},
    {"Hydra Island", CFrame.new(3400, 72, 2000)},
    {"Great Tree", CFrame.new(2200, 300, -1500)},
    {"Floating Turtle", CFrame.new(-10500, 331, -8500)},
    {"Castle on the Sea", CFrame.new(-5000, 314, -3000)},
    {"Haunted Castle", CFrame.new(-9500, 100, 5500)},
    {"Sea of Treats", CFrame.new(-2000, 50, -9000)},
    {"Tiki Outpost", CFrame.new(-16500, 10, 1000)}
}

local function SmartTeleport(targetCFrame)
    local player = game.Players.LocalPlayer
    local currentSea = GetCurrentSea()
    local targetSea = nil
    
    for _, loc in pairs(Sea1Locations) do
        if loc[2] == targetCFrame then targetSea = 1 break end
    end
    for _, loc in pairs(Sea2Locations) do
        if loc[2] == targetCFrame then targetSea = 2 break end
    end
    for _, loc in pairs(Sea3Locations) do
        if loc[2] == targetCFrame then targetSea = 3 break end
    end
    
    if targetSea and currentSea ~= targetSea then
        if currentSea == 3 or targetSea == 3 then
            local portalPos = CFrame.new(-5000, 314, -3000)
            TeleportTo(portalPos)
            wait(1)
        end
    end
    
    startFly(targetCFrame)
end

AddDropdown(Tab5o, {
    Name = "Chọn đảo cần tới🏞️",
    Default = "Chọn đảo🏜️",
    Options = (function()
        local currentSea = GetCurrentSea()
        if currentSea == 1 then
            return {"Windmill Village", "Marine Start", "Middle Town", "Jungle", "Pirate Village", "Desert",
                    "Frozen Village", "Marine Fortress", "Skypiea", "Prison", "Colosseum", "Magma Village",
                    "Underwater City", "Fountain City"}
        elseif currentSea == 2 then
            return {"Cafe", "Kingdom of Rose", "Green Zone", "Graveyard", "Snow Mountain", "Hot and Cold",
                    "Cursed Ship", "Ice Castle", "Forgotten Island", "Dark Arena", "Usoap Island"}
        else
            return {"Port Town", "Hydra Island", "Great Tree", "Floating Turtle", "Castle on the Sea",
                    "Haunted Castle", "Sea of Treats", "Tiki Outpost"}
        end
    end)(),
    Callback = function(value)
        local currentSea = GetCurrentSea()
        local locations = (currentSea == 1 and Sea1Locations) or (currentSea == 2 and Sea2Locations) or Sea3Locations
        
        for _, loc in pairs(locations) do
            if loc[1] == value then
                if flying then stopFly() end
                SmartTeleport(loc[2])
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Thông báo🔊!",
                    Text = "Đang dịch chuyển " .. value .. "!",
                    Duration = 5
                })
                break
            end
        end
    end
})

AddButton(Tab5o, {
    Name = "Dừng Tele🐧",
    Callback = function()
        if flying then
            stopFly()
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Đã dừng dịch chuyển!",
                Duration = 5
            })
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Không có dịch chuyển nào đang hoạt động!",
                Duration = 5
            })
        end
    end
})

AddButton(Tab5o, {
    Name = "🌲🌲Sea 1🛸",
    Callback = function()
        local currentSea = GetCurrentSea()
        if currentSea ~= 1 then
            if currentSea == 3 then
                TeleportTo(CFrame.new(-5000, 314, -3000))
                wait(1)
            end
            TeleportTo(CFrame.new(979, 16, 1200))
        end
        game.StarterGui:SetCore("SendNotification", {
            Title = "Thông báo🔊!",
            Text = "Đang dịch chuyển đến Sea 1!",
            Duration = 5
        })
    end
})

AddButton(Tab5o, {
    Name = "🌲☕Sea 2🛸",
    Callback = function()
        local currentSea = GetCurrentSea()
        if currentSea ~= 2 then
            if currentSea == 3 then
                TeleportTo(CFrame.new(-5000, 314, -3000))
                wait(1)
            end
            TeleportTo(CFrame.new(-380, 77, 255))
        end
        game.StarterGui:SetCore("SendNotification", {
            Title = "Thông báo🔊!",
            Text = "Đang dịch chuyển đến Sea 2!",
            Duration = 5
        })
    end
})

AddButton(Tab5o, {
    Name = "🐢Sea 3🛸",
    Callback = function()
        local currentSea = GetCurrentSea()
        if currentSea ~= 3 then
            TeleportTo(CFrame.new(-5000, 314, -3000))
            wait(1)
        end
        TeleportTo(CFrame.new(-950, 15, 5500))
        game.StarterGui:SetCore("SendNotification", {
            Title = "Thông báo🔊!",
            Text = "Đang dịch chuyển đến Sea 3!",
            Duration = 5
        })
    end
})

------ Tab Trái cây/Raid
AddButton(Tab6o, {
    Name = "auto Nhặt 🍑🤤",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/marisdeptrai/Script-Free/main/FruitFinder.lua"))()
    end
})

------ Tab Khác
AddButton(Tab7o, {
    Name = "dành cho máy yếu💥 x3",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
    end
})

AddButton(Tab7o, {
    Name = "Kaitun simple",
    Callback = function()
        getgenv().simple_settings = {
            ["MASTERY"] = {
                ["ACTIVE"] = true,
                ["METHOD"] = "Half",
            },
            ["OBJECTIVE"] = {
                ["GODHUMAN"] = true,
                ["RACE-V3"] = true,
                ["FRAGMENT"] = 100000,
                ["CANVANDER"] = true,
                ["BUDDY-SWORD"] = true,
                ["CURSED-DUAL-KATANA"] = true,
                ["SHARK-ANCHOR"] = true,
                ["ACIDUM-RIFLE"] = true,
                ["VENOM-BOW"] = true,
                ["SOUL-GUITAR"] = true,
            },
            ["FRUITPURCHASE"] = true,
            ["PRIORITYFRUIT"] = {
                [1] = "Dragon-Dragon",
                [2] = "Flame-Flame",
                [3] = "Rumble-Rumble",
                [4] = "Human-Human: Buddha",
                [5] = "Dark-Dark",
            },
            ["FPSCAP"] = 30,
            ["LOWTEXTURE"] = true
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/simple-hubs/contents/refs/heads/main/bloxfruit-kaitan-main.lua"))()
    end
})

------ Tab Tùy Chọn Server
AddButton(Tab8o, {
    Name = "Server Hop 🌐",
    Callback = function()
        local PlaceID = game.PlaceId
        local HttpService = game:GetService("HttpService")
        local TeleportService = game:GetService("TeleportService")
        
        local servers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100"))
        local serverList = servers.data
        
        if #serverList > 0 then
            local randomServer = serverList[math.random(1, #serverList)]
            TeleportService:TeleportToPlaceInstance(PlaceID, randomServer.id, game.Players.LocalPlayer)
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Đang chuyển sang server mới!",
                Duration = 5
            })
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Không tìm thấy server nào để chuyển!",
                Duration = 5
            })
        end
    end
})

AddButton(Tab8o, {
    Name = "Rejoin Server 🔄",
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
        TeleportService:Teleport(game.PlaceId, game.Players.LocalPlayer)
        game.StarterGui:SetCore("SendNotification", {
            Title = "Thông báo🔊!",
            Text = "Đang quay lại server hiện tại!",
            Duration = 5
        })
    end
})

AddButton(Tab8o, {
    Name = "Kiểm Tra Ping 📡",
    Callback = function()
        local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        game.StarterGui:SetCore("SendNotification", {
            Title = "Thông báo🔊!",
            Text = "Ping hiện tại: " .. ping,
            Duration = 5
        })
    end
})

AddButton(Tab8o, {
    Name = "Chuyển Server Ít Người 👥",
    Callback = function()
        local PlaceID = game.PlaceId
        local HttpService = game:GetService("HttpService")
        local TeleportService = game:GetService("TeleportService")
        
        local servers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100"))
        local serverList = servers.data
        
        if #serverList > 0 then
            local leastPlayersServer = serverList[1]
            for _, server in pairs(serverList) do
                if server.playing < leastPlayersServer.playing then
                    leastPlayersServer = server
                end
            end
            TeleportService:TeleportToPlaceInstance(PlaceID, leastPlayersServer.id, game.Players.LocalPlayer)
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Đang chuyển sang server ít người (" .. leastPlayersServer.playing .. " người)!",
                Duration = 5
            })
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Không tìm thấy server nào để chuyển!",
                Duration = 5
            })
        end
    end
})
