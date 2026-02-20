-- 🦈 2FT4 SHARK HUB V1
-- Clique sur le logo 2FT4 pour ouvrir/fermer

local sg = Instance.new("ScreenGui")
sg.Parent = game:GetService("CoreGui")

-- LOGO 2FT4
local logo = Instance.new("TextButton")
logo.Parent = sg
logo.Size = UDim2.new(0, 80, 0, 80)
logo.Position = UDim2.new(0, 20, 0, 20)
logo.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
logo.Text = "2FT4"
logo.TextScaled = true
logo.Font = Enum.Font.GothamBlack
logo.TextColor3 = Color3.fromRGB(255, 215, 0)
logo.BorderSizePixel = 0

-- Fenêtre
local win = Instance.new("Frame")
win.Parent = sg
win.Size = UDim2.new(0, 350, 0, 500)
win.Position = UDim2.new(0, 120, 0, 20)
win.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
win.Visible = false

local scroll = Instance.new("ScrollingFrame")
scroll.Parent = win
scroll.Size = UDim2.new(1, 0, 1, 0)
scroll.BackgroundTransparency = 1
scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
scroll.ScrollBarThickness = 5

local list = Instance.new("UIListLayout")
list.Parent = scroll
list.Padding = UDim.new(0, 5)

local links = {
    {"REDZ HUB", "https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"},
    {"REDZ ALT", "https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"},
    {"ZZZ HUB", "https://api.luarmor.net/files/v3/loaders/a75cb808a172050b60f9a19d0ee7ef75.lua"},
    {"MIRANDA HUB", "https://pastefy.app/JJVhs3rK/raw"},
    {"NAMELESS HUB", "https://raw.githubusercontent.com/ily123950/Vulkan/refs/heads/main/Tr"},
    {"LIPE HUB", "https://pastebin.com/raw/ke146qjn"},
    {"CHILLI HUB", "https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"},
    {"LUMORA", "https://api.luarmor.net/files/v3/loaders/3e7e5539bf07cd98f855ebb0c29c8081.lua"},
    {"KURD HUB", "https://rawscripts.net/raw/Universal-Script-Kurd-Hub-27356"},
    {"LEMON HUB", "https://api.luarmor.net/files/v3/loaders/6d08fbf253529a4fefa32ff404bd5448.lua"},
    {"CRIMSON HUB", "https://raw.githubusercontent.com/Cr1msonFs/Main/refs/heads/main/Main.lua"},
    {"PVP SCRIPT V2", "https://raw.githubusercontent.com/xspeedHub0/Zlhub/main/ZLPVPreview.lua"},
    {"SHARK HUB PREMIUM", "https://pastefy.app/mTKY4Oph/raw"},
    {"ZENIX HUB DUELS", "https://pastefy.app/zSXRSua2/raw"},
    {"22S DUELS", "https://api.jnkie.com/api/v1/luascripts/public/cc40ab217f3e47af17760646bc0c250ce328403950e21fd18cd087dc683ad069/download"},
    {"SUN HUB + TRACKER", "https://api.luarmor.net/files/v4/loaders/623c61e59524bc04f458c6f6dd2c3f8b.lua"},
    {"KNOX HUB DUELS", "https://protected-roblox-scripts.onrender.com/5a5dad0ae01cd0d6c9f1a2c697e2efb7"},
    {"NOVA DUELS", "https://raw.githubusercontent.com/inkgamedymas-ctrl/speed-mobile/refs/heads/main/dyhz"},
    {"LEX DUELS", "https://pastefy.app/TgrXAo7z/raw"},
    {"ROOKIE DUEL", "https://raw.githubusercontent.com/rookieiscute/rookiescripts/refs/heads/main/RookieDuelMobile"},
    {"VYSE HUB", "https://pastefy.app/6waoSpoH/raw"},
    {"VOID HUB V2", "https://pastefy.app/LxjM1AJD/raw"},
    {"MEW HUB", "https://api.luarmor.net/files/v3/loaders/f6e40e83490bff819d3a3eabd8937a4b.lua"},
    {"CRY HUB", "https://gist.githubusercontent.com/ccryxn-gif/837d10fa9d25f0e2c0db02ff721d8ba7/raw/082240dc9eccb737f8645fdcf5a8cc65adae3115/gistfile1.txt"},
    {"ARCEUS HUB V2", "https://pastebin.com/raw/ZRD8JEdr"},
    {"ICE HUB", "https://api.luarmor.net/files/v3/loaders/a305d4fe821c1e02b8fdb34aa06c7408.lua"}, -- VIRGULE AJOUTÉE ICI
    {"AUTO TP", "https://raw.githubusercontent.com/Tokinu/TP-BLOCK/refs/heads/main/GOATED"},
    {"SEMI-TP FREE", "https://raw.githubusercontent.com/Tokinu/Semi-TP/refs/heads/main/Free"} -- NOUVEAU SCRIPT AJOUTÉ
}

for _, link in pairs(links) do
    local btn = Instance.new("TextButton")
    btn.Parent = scroll
    btn.Size = UDim2.new(1, -10, 0, 35)
    btn.Text = " ▶ " .. link[1]
    btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    btn.TextColor3 = Color3.fromRGB(255, 215, 0)
    btn.TextSize = 18
    btn.TextXAlignment = Enum.TextXAlignment.Left
    btn.Font = Enum.Font.GothamMedium
    
    btn.MouseButton1Click:Connect(function()
        pcall(function()
            loadstring(game:HttpGet(link[2]))()
        end)
    end)
end

list:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    scroll.CanvasSize = UDim2.new(0, 0, 0, list.AbsoluteContentSize.Y)
end)

logo.MouseButton1Click:Connect(function()
    win.Visible = not win.Visible
end)

print("🦈 2FT4 SHARK HUB LOADED")
