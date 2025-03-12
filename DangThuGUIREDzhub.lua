loadstring(game:HttpGet(("https://raw.githubusercontent.com/Hoang223-design/GuiHoang01/refs/heads/main/GuiHoang01.lua")))()

local Window = MakeWindow({
    Hub = {
        Title = "HoàngBlackHub Beta v0.2 ( free )",
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
    Image = "http://www.roblox.com/asset/?id=93018818295521",
    Size = {40, 40},
    Color = Color3.fromRGB(10, 10, 10),
    Corner = true,
    Stroke = false,
    StrokeColor = Color3.fromRGB(255, 0, 0)
})

local Tab1o = MakeTab({Name = "Nhạc🥁🎷"})
local Tab2o = MakeTab({Name = "Main👉🏻👈🏻"})
local Tab3o = MakeTab({Name = "Trái cây/raid🤤🍑"})
local Tab4o = MakeTab({Name = "Pvp🥵"})
local Tab5o = MakeTab({Name = "Khác☘️"})
local Tab6o = MakeTab({Name = "Dịch Chuyển🛸"})
local Tab7o = MakeTab({Name = "Server🌐"})

-- Tab Nhạc (giữ nguyên)
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

-- Tab Main (giữ nguyên)
AddButton(Tab2o, {
    Name = "🩸z",
    Callback = function()
        local Settings = {
            JoinTeam = "Pirates",
            Translator = true
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

-- Tab Khác (giữ nguyên)
AddButton(Tab5o, {
    Name = "dành cho máy yếu💥 x3",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
    end
})

-- Tab Server
local function RejoinServer()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Thông báo🔊!",
        Text = "Đang tham gia lại server...",
        Duration = 5
    })
end

local function HopServer()
    local success, error = pcall(function()
        local servers = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
        for _, server in pairs(servers.data) do
            if server.playing < server.maxPlayers and server.id ~= game.JobId then
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, server.id, game.Players.LocalPlayer)
                break
            end
        end
    end)
    if success then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Thông báo🔊!",
            Text = "Đang chuyển sang server mới...",
            Duration = 5
        })
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Thông báo🔊!",
            Text = "Không tìm thấy server mới!",
            Duration = 5
        })
    end
end

local function FindLowPlayerServer()
    local success, error = pcall(function()
        local servers = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
        local lowestPlayers = math.huge
        local targetServer = nil
        
        for _, server in pairs(servers.data) do
            if server.playing < lowestPlayers and server.id ~= game.JobId then
                lowestPlayers = server.playing
                targetServer = server.id
            end
        end
        
        if targetServer then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, targetServer, game.Players.LocalPlayer)
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Đang chuyển đến server ít người (" .. lowestPlayers .. " người)...",
                Duration = 5
            })
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Thông báo🔊!",
                Text = "Không tìm thấy server ít người!",
                Duration = 5
            })
        end
    end)
    if not success then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Thông báo🔊!",
            Text = "Lỗi khi tìm server: " .. tostring(error),
            Duration = 5
        })
    end
end

AddButton(Tab7o, {
    Name = "🔄 Rejoin Server",
    Callback = function()
        RejoinServer()
    end
})

AddButton(Tab7o, {
    Name = "🌍 Chuyển đổi server",
    Callback = function()
        HopServer()
    end
})

AddButton(Tab7o, {
    Name = "👥 Tìm Server Ít Người",
    Callback = function()
        FindLowPlayerServer()
    end
})
