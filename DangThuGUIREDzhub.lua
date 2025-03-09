local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Hoang223-design/testGUI1/refs/heads/main/TestGUI1.lua"))()

local Window = Library:MakeWindow({
    Hub = {
        Title = "Hoàng Hub",
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

Library:MinimizeButton({
    Image = "http://www.roblox.com/asset/?id=136495663671275",
    Size = {25, 25},
    Color = Color3.fromRGB(70, 20, 20), -- Màu đỏ đậm giống Redz Hub
    Corner = true,
    Stroke = false,
    StrokeColor = Color3.fromRGB(255, 0, 0),
    Window = Window
})

------ Tab
local Tab1o = Library:MakeTab({Name = "Nhạc🥁🎷", Window = Window})
local Tab2o = Library:MakeTab({Name = "Main👉🏻👈🏻", Window = Window})
local Tab3o = Library:MakeTab({Name = "Auto Nhặt Trái🤤🍑", Window = Window})
local Tab4o = Library:MakeTab({Name = "Aimbot:)🥵", Window = Window})
local Tab5o = Library:MakeTab({Name = "Giảm Lag☘️", Window = Window})
local Tab6o = Library:MakeTab({Name = "Kaitun🐢", Window = Window})
local Tab7o = Library:MakeTab({Name = "Dịch Chuyển🛸", Window = Window})
local Tab8o = Library:MakeTab({Name = "Auto Farm 🌾", Window = Window}) -- Tab mới cho Auto Farm

------- BUTTON
local currentSound = nil

Library:AddToggle(Tab1o, {
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

Library:AddToggle(Tab1o, {
    Name = "Money🤑Rain (Phonk Remix)",
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

-- Tab2o chỉ giữ các button
Library:AddButton(Tab2o, {
    Name = "🩸z",
    Callback = function()
        local Settings = {
            JoinTeam = "Pirates",
            Translator = true,
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))(Settings)
    end
})

Library:AddButton(Tab2o, {
    Name = "Ve🚗",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dex-Bear/Vxezehub/refs/heads/main/Skidlamcho.txt"))()
    end
})

Library:AddButton(Tab2o, {
    Name = "HoHo",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
    end
})

Library:AddButton(Tab2o, {
    Name = "ASTRAL",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_25.html"))()
    end
})

Library:AddButton(Tab2o, {
    Name = "Xero",
    Callback = function()
        getgenv().Team = "Marines"
        getgenv().Hide_Menu = false
        getgenv().Auto_Execute = false
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()
    end
})

Library:AddButton(Tab3o, {
    Name = "auto Nhặt 🍑🤤",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/marisdeptrai/Script-Free/main/FruitFinder.lua"))()
    end
})

Library:AddButton(Tab4o, {
    Name = "sắp có😍 !!",
    Callback = function()
    end
})

Library:AddButton(Tab5o, {
    Name = "dành cho máy yếu💥 x3",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
    end
})

Library:AddButton(Tab6o, {
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

-- Tab7: Bay đến đảo và Dịch chuyển thông minh
local flySpeed = 175 -- Tốc độ bay
local flyHeight = 75 -- Độ cao bay
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
        local endPos = targetCFrame.Position + Vector3.new(0, flyHeight, 0) -- Bay cao hơn
        
        while flying do
            local currentPos = rootPart.Position
            local distanceToTarget = (currentPos - endPos).Magnitude
            
            -- Dừng lại khi gần đích (khoảng cách < 3)
            if distanceToTarget < 2 then
                rootPart.CFrame = CFrame.new(endPos, targetCFrame.Position)
                stopFly()
                break
            end
            
            -- Điều chỉnh tốc độ khi gần đích
            local adjustedSpeed = flySpeed
            if distanceToTarget < 50 then
                adjustedSpeed = math.max(flySpeed * (distanceToTarget / 50), 10) -- Giảm tốc độ dần
            end
            
            -- Di chuyển về đích
            local direction = (endPos - currentPos).Unit
            bodyVelocity.Velocity = direction * adjustedSpeed
            bodyGyro.CFrame = CFrame.lookAt(currentPos, endPos)
            
            wait(0.03) -- Tăng tần suất cập nhật để chính xác hơn
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
    if level < 700 then
        return 1 -- Sea 1
    elseif level < 1500 then
        return 2 -- Sea 2
    else
        return 3 -- Sea 3
    end
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
    
    -- Xác định Sea của đích đến
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
        -- Dịch chuyển qua cổng ở Sea 3
        if currentSea == 3 or targetSea == 3 then
            local portalPos = CFrame.new(-5000, 314, -3000) -- Castle on the Sea (cổng chính)
            TeleportTo(portalPos)
            wait(1) -- Đợi để qua cổng
        end
    end
    
    -- Bay đến đích
    startFly(targetCFrame)
end

Library:AddDropdown(Tab7o, {
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

Library:AddButton(Tab7o, {
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

Library:AddButton(Tab7o, {
    Name = "🌲🌲Sea 1🛸",
    Callback = function()
        local currentSea = GetCurrentSea()
        if currentSea ~= 1 then
            if currentSea == 3 then
                TeleportTo(CFrame.new(-5000, 314, -3000)) -- Castle on the Sea
                wait(1)
            end
            TeleportTo(CFrame.new(979, 16, 1200)) -- Windmill Village
        end
        game.StarterGui:SetCore("SendNotification", {
            Title = "Thông báo🔊!",
            Text = "Đang dịch chuyển đến Sea 1!",
            Duration = 5
        })
    end
})

Library:AddButton(Tab7o, {
    Name = "🌲☕Sea 2🛸",
    Callback = function()
        local currentSea = GetCurrentSea()
        if currentSea ~= 2 then
            if currentSea == 3 then
                TeleportTo(CFrame.new(-5000, 314, -3000)) -- Castle on the Sea
                wait(1)
            end
            TeleportTo(CFrame.new(-380, 77, 255)) -- Cafe
        end
        game.StarterGui:SetCore("SendNotification", {
            Title = "Thông báo🔊!",
            Text = "Đang dịch chuyển đến Sea 2!",
            Duration = 5
        })
    end
})

Library:AddButton(Tab7o, {
    Name = "🐢Sea 3🛸",
    Callback = function()
        local currentSea = GetCurrentSea()
        if currentSea ~= 3 then
            TeleportTo(CFrame.new(-5000, 314, -3000)) -- Castle on the Sea
            wait(1)
        end
        TeleportTo(CFrame.new(-950, 15, 5500)) -- Port Town
        game.StarterGui:SetCore("SendNotification", {
            Title = "Thông báo🔊!",
            Text = "Đang dịch chuyển đến Sea 3!",
            Duration = 5
        })
    end
})

-- Tab 8: Auto Farm 🌾
local autoFarmLevelEnabled = false
local autoFarmChestsEnabled = false
local farmType = "Level"
local farmSpeed = 0.5 -- Thời gian chờ giữa các lần farm (mặc định 0.5 giây)

-- Hàm tìm quái gần nhất để farm level
local function findNearestEnemy()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return nil end
    
    local rootPart = character.HumanoidRootPart
    local enemies = game.Workspace.Enemies:GetChildren()
    local nearestEnemy = nil
    local minDistance = math.huge
    
    for _, enemy in pairs(enemies) do
        if enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("HumanoidRootPart") and enemy.Humanoid.Health > 0 then
            local distance = (rootPart.Position - enemy.HumanoidRootPart.Position).Magnitude
            if distance < minDistance then
                minDistance = distance
                nearestEnemy = enemy
            end
        end
    end
    
    return nearestEnemy
end

-- Hàm tìm chest gần nhất để farm
local function findNearestChest()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return nil end
    
    local rootPart = character.HumanoidRootPart
    local chests = game.Workspace:GetChildren()
    local nearestChest = nil
    local minDistance = math.huge
    
    for _, obj in pairs(chests) do
        if obj.Name:match("Chest") and obj:IsA("BasePart") then
            local distance = (rootPart.Position - obj.Position).Magnitude
            if distance < minDistance then
                minDistance = distance
                nearestChest = obj
            end
        end
    end
    
    return nearestChest
end

-- Hàm auto farm level
local function autoFarmLevel()
    while autoFarmLevelEnabled and wait(farmSpeed) do
        local player = game.Players.LocalPlayer
        local character = player.Character
        if not character or not character:FindFirstChild("HumanoidRootPart") then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Lỗi",
                Text = "Không tìm thấy nhân vật!",
                Duration = 5
            })
            autoFarmLevelEnabled = false
            return
        end
        
        local enemy = findNearestEnemy()
        if enemy then
            local rootPart = character.HumanoidRootPart
            local enemyPos = enemy.HumanoidRootPart.Position
            
            -- Dịch chuyển đến quái
            rootPart.CFrame = CFrame.new(enemyPos + Vector3.new(0, 5, 0), enemyPos)
            
            -- Giả lập tấn công (tùy game, có thể cần gọi RemoteEvent)
            game:GetService("VirtualUser"):CaptureController()
            game:GetService("VirtualUser"):ClickButton1(Vector2.new())
            
            game.StarterGui:SetCore("SendNotification", {
                Title = "Auto Farm",
                Text = "Đang tấn công " .. enemy.Name .. "!",
                Duration = 3
            })
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Auto Farm",
                Text = "Không tìm thấy quái để farm!",
                Duration = 5
            })
        end
    end
end

-- Hàm auto farm chests
local function autoFarmChests()
    while autoFarmChestsEnabled and wait(farmSpeed) do
        local player = game.Players.LocalPlayer
        local character = player.Character
        if not character or not character:FindFirstChild("HumanoidRootPart") then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Lỗi",
                Text = "Không tìm thấy nhân vật!",
                Duration = 5
            })
            autoFarmChestsEnabled = false
            return
        end
        
        local chest = findNearestChest()
        if chest then
            local rootPart = character.HumanoidRootPart
            local chestPos = chest.Position
            
            -- Dịch chuyển đến chest
            rootPart.CFrame = CFrame.new(chestPos + Vector3.new(0, 5, 0), chestPos)
            
            -- Giả lập thu thập (tùy game, có thể cần gọi RemoteEvent)
            game.StarterGui:SetCore("SendNotification", {
                Title = "Auto Farm",
                Text = "Đã thu thập " .. chest.Name .. "!",
                Duration = 3
            })
            
            -- Chest thường tự động biến mất sau khi thu thập trong Blox Fruits
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Auto Farm",
                Text = "Không tìm thấy chest để farm!",
                Duration = 5
            })
        end
    end
end

-- Toggle Auto Farm Level
Library:AddToggle(Tab8o, {
    Name = "Auto Farm Level 🌟",
    Default = false,
    Callback = function(state)
        autoFarmLevelEnabled = state
        if state then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Auto Farm",
                Text = "Đã bật Auto Farm Level!",
                Duration = 5
            })
            spawn(autoFarmLevel) -- Chạy auto farm trong một luồng riêng
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Auto Farm",
                Text = "Đã tắt Auto Farm Level!",
                Duration = 5
            })
        end
    end
})

-- Toggle Auto Farm Chests
Library:AddToggle(Tab8o, {
    Name = "Auto Farm Chests 💰",
    Default = false,
    Callback = function(state)
        autoFarmChestsEnabled = state
        if state then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Auto Farm",
                Text = "Đã bật Auto Farm Chests!",
                Duration = 5
            })
            spawn(autoFarmChests) -- Chạy auto farm trong một luồng riêng
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Auto Farm",
                Text = "Đã tắt Auto Farm Chests!",
                Duration = 5
            })
        end
    end
})

-- Dropdown chọn loại farm
Library:AddDropdown(Tab8o, {
    Name = "Chọn loại farm 🌾",
    Default = "Level",
    Options = {"Level", "Chests"},
    Callback = function(value)
        farmType = value
        game.StarterGui:SetCore("SendNotification", {
            Title = "Auto Farm",
            Text = "Đã chọn loại farm: " .. value .. "!",
            Duration = 5
        })
    end
})

-- Dropdown chọn tốc độ farm
Library:AddDropdown(Tab8o, {
    Name = "Tốc độ farm ⏩",
    Default = "0.5 giây",
    Options = {"0.1 giây", "0.3 giây", "0.5 giây", "1 giây"},
    Callback = function(value)
        farmSpeed = tonumber(value:match("([%d.]+)"))
        game.StarterGui:SetCore("SendNotification", {
            Title = "Auto Farm",
            Text = "Tốc độ farm: " .. value .. "!",
            Duration = 5
        })
    end
})