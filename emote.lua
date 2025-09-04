--[[
    Skrip Emote Sederhana oleh Gemini
    Direvisi dengan perbaikan bug duplikat, fitur pembatalan emote, dan ikon mini.
]]

-- Pastikan game sudah dimuat sepenuhnya dan hapus UI lama jika ada
if game:GetService("CoreGui"):FindFirstChild("EmoteGuiRevised") then
    game:GetService("CoreGui").EmoteGuiRevised:Destroy()
end
if not game:IsLoaded() then
    game.Loaded:Wait()
end

-- Layanan yang Digunakan
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

-- Variabel Lokal
local Player = Players.LocalPlayer
local EmoteList = {}
local Draggable, DragStart, StartPosition
local DraggableIcon, DragStartIcon, StartPositionIcon
local currentTrack = nil
local currentAnimId = nil

-- Buat UI utama
local EmoteGui = Instance.new("ScreenGui")
EmoteGui.Name = "EmoteGuiRevised"
EmoteGui.Parent = CoreGui
EmoteGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Ikon Badut untuk Tampilkan/Sembunyikan UI (awalnya tidak terlihat)
local ToggleButton = Instance.new("TextButton")
ToggleButton.Name = "ToggleButton"
ToggleButton.Size = UDim2.new(0, 35, 0, 35) -- Ukuran ikon diperkecil (sangat mini)
ToggleButton.Position = UDim2.new(1, -60, 1, -60) -- Pojok kanan bawah
ToggleButton.AnchorPoint = Vector2.new(1, 1)
ToggleButton.BackgroundColor3 = Color3.fromRGB(48, 63, 90)
ToggleButton.BorderColor3 = Color3.fromRGB(90, 150, 255)
ToggleButton.BorderSizePixel = 1
ToggleButton.Font = Enum.Font.GothamBold
ToggleButton.Text = "🤡" -- Mengganti ikon menjadi badut
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.TextSize = 24 -- Ukuran teks disesuaikan untuk emoji
ToggleButton.Visible = false -- Sembunyikan saat awal
ToggleButton.Parent = EmoteGui

local ToggleCorner = Instance.new("UICorner", ToggleButton)
ToggleCorner.CornerRadius = UDim.new(0, 8)

-- Frame Utama
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Size = UDim2.new(0, 200, 0, 280) -- Ukuran diperkecil (mini)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(28, 43, 70)
MainFrame.BorderColor3 = Color3.fromRGB(90, 150, 255)
MainFrame.BorderSizePixel = 1
MainFrame.ClipsDescendants = true
MainFrame.Parent = EmoteGui

local UICorner = Instance.new("UICorner", MainFrame)
UICorner.CornerRadius = UDim.new(0, 8)

-- Header untuk menyeret window
local Header = Instance.new("Frame")
Header.Name = "Header"
Header.Size = UDim2.new(1, 0, 0, 30)
Header.BackgroundColor3 = Color3.fromRGB(48, 63, 90)
Header.BorderSizePixel = 0
Header.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(1, -40, 1, 0)
Title.Position = UDim2.new(0, 10, 0, 0)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.Text = "Emotes"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Header

-- Tombol Tutup (X)
local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Size = UDim2.new(0, 20, 0, 20)
CloseButton.Position = UDim2.new(1, -15, 0.5, 0)
CloseButton.AnchorPoint = Vector2.new(0.5, 0.5)
CloseButton.BackgroundTransparency = 1
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 18
CloseButton.Parent = Header

-- Kotak Pencarian
local SearchBox = Instance.new("TextBox")
SearchBox.Name = "SearchBox"
SearchBox.Size = UDim2.new(1, -20, 0, 30)
SearchBox.Position = UDim2.new(0, 10, 0, 40)
SearchBox.BackgroundColor3 = Color3.fromRGB(48, 63, 90)
SearchBox.PlaceholderText = "Cari emote..."
SearchBox.PlaceholderColor3 = Color3.fromRGB(180, 190, 210)
SearchBox.Font = Enum.Font.Gotham
SearchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SearchBox.ClearTextOnFocus = false
SearchBox.Parent = MainFrame

local SearchCorner = Instance.new("UICorner", SearchBox)
SearchCorner.CornerRadius = UDim.new(0, 6)

local SearchPadding = Instance.new("UIPadding", SearchBox)
SearchPadding.PaddingLeft = UDim.new(0, 10)
SearchPadding.PaddingRight = UDim.new(0, 10)

-- Area Gulir Emote
local EmoteArea = Instance.new("ScrollingFrame")
EmoteArea.Name = "EmoteArea"
EmoteArea.Size = UDim2.new(1, 0, 1, -80)
EmoteArea.Position = UDim2.new(0, 0, 0, 80)
EmoteArea.BackgroundTransparency = 1
EmoteArea.BorderSizePixel = 0
EmoteArea.ScrollBarImageColor3 = Color3.fromRGB(90, 150, 255)
EmoteArea.ScrollBarThickness = 5
EmoteArea.Parent = MainFrame

local UIPadding = Instance.new("UIPadding", EmoteArea)
UIPadding.PaddingLeft = UDim.new(0, 10)
UIPadding.PaddingRight = UDim.new(0, 10)
UIPadding.PaddingTop = UDim.new(0, 5)
UIPadding.PaddingBottom = UDim.new(0, 10) -- Menambahkan padding bawah

local UIGridLayout = Instance.new("UIGridLayout")
UIGridLayout.CellPadding = UDim2.new(0, 8, 0, 8)
UIGridLayout.CellSize = UDim2.new(0, 65, 0, 85)
UIGridLayout.SortOrder = Enum.SortOrder.Name
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.Parent = EmoteArea

-- Fungsi untuk memperbaiki ukuran canvas scroll
local function updateCanvasSize()
    task.wait() -- Memberi waktu untuk UI Grid menghitung ukuran konten
    local contentHeight = UIGridLayout.AbsoluteContentSize.Y
    EmoteArea.CanvasSize = UDim2.new(0, 0, 0, contentHeight)
end

-- Fungsi untuk memainkan atau menghentikan animasi
local function toggleAnimation(animId)
    local char = Player.Character
    if not char or not char:FindFirstChild("Humanoid") then return end
    local humanoid = char.Humanoid

    -- Jika emote yang sama diklik lagi, hentikan dan keluar
    if currentTrack and currentAnimId == animId then
        currentTrack:Stop(0.2)
        currentTrack = nil
        currentAnimId = nil
        return
    end

    -- Hentikan emote yang sedang berjalan jika ada
    if currentTrack then
        currentTrack:Stop(0.2)
    end

    -- Mainkan emote baru
    local anim = Instance.new("Animation")
    anim.AnimationId = animId
    
    local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid
    if animator then
        local track = animator:LoadAnimation(anim)
        track:Play(0.1)
        currentTrack = track
        currentAnimId = animId
        
        -- Hapus referensi saat animasi selesai secara alami
        track.Stopped:Once(function()
            if currentTrack == track then
                currentTrack = nil
                currentAnimId = nil
            end
        end)
    end
    
    anim:Destroy()
end

-- Fungsi untuk membuat tombol emote
local function createEmoteButton(emoteData)
    local button = Instance.new("ImageButton")
    button.Name = emoteData.name
    button.BackgroundColor3 = Color3.fromRGB(48, 63, 90)
    button.Size = UDim2.new(0, 65, 0, 85)
    button.Parent = EmoteArea

    local corner = Instance.new("UICorner", button)
    corner.CornerRadius = UDim.new(0, 6)

    local image = Instance.new("ImageLabel", button)
    image.Size = UDim2.new(1, -10, 0, 55)
    image.Position = UDim2.new(0, 5, 0, 5)
    image.BackgroundTransparency = 1
    image.Image = "rbxthumb://type=Asset&id=" .. tostring(emoteData.id) .. "&w=420&h=420"
    
    local nameLabel = Instance.new("TextLabel", button)
    nameLabel.Size = UDim2.new(1, -4, 0, 20)
    nameLabel.Position = UDim2.new(0, 2, 0, 63)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Font = Enum.Font.Gotham
    nameLabel.Text = emoteData.name
    nameLabel.TextScaled = true
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

    button.MouseButton1Click:Connect(function()
        toggleAnimation(emoteData.animationid)
    end)
    return button
end

-- Fungsi untuk mengisi daftar emote dan filter
local function populateEmotes(filter)
    filter = filter and filter:lower() or ""
    EmoteArea.CanvasPosition = Vector2.zero
    
    for _, button in pairs(EmoteArea:GetChildren()) do
        if button:IsA("ImageButton") then
            button.Visible = (filter == "" or button.Name:lower():find(filter, 1, true))
        end
    end
    updateCanvasSize() -- Update scroll setiap kali filter berubah
end

-- Ambil daftar emote dari sumber
task.spawn(function()
    local success, result = pcall(function()
        return HttpService:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/AREXANS/emoteff/main/emote.json"))
    end)
    
    if success and type(result) == "table" then
        EmoteList = result
        -- [PERBAIKAN BUG DUPLIKAT DIMULAI DI SINI]
        local existingEmotes = {} -- Tabel untuk melacak nama emote yang sudah ditambahkan
        for _, emote in pairs(EmoteList) do
            -- Periksa apakah semua data yang diperlukan ada dan nama emote belum pernah ditambahkan sebelumnya
            if emote.name and emote.animationid and emote.id and not existingEmotes[emote.name:lower()] then
                createEmoteButton(emote)
                existingEmotes[emote.name:lower()] = true -- Tandai nama emote ini sebagai sudah ditambahkan
            end
        end
        -- [PERBAIKAN BUG DUPLIKAT BERAKHIR DI SINI]
    else
        warn("Gagal mengambil daftar emote:", result)
        -- Tambahkan emote default jika gagal
        createEmoteButton({id = 14353423348, animationid = "rbxassetid://14352343065", name = "Bouncy"})
    end
    updateCanvasSize() -- Update scroll setelah semua emote dimuat
end)

-- Event untuk pencarian
SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
    populateEmotes(SearchBox.Text)
end)

-- Logika untuk menyeret Header GUI
Header.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        Draggable = true
        DragStart = input.Position
        StartPosition = MainFrame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                Draggable = false
            end
        end)
    end
end)

-- Logika untuk menyeret Ikon Badut
ToggleButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        DraggableIcon = true
        DragStartIcon = input.Position
        StartPositionIcon = ToggleButton.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                DraggableIcon = false
            end
        end)
    end
end)

-- Menggabungkan logika pergerakan untuk mouse dan sentuhan
UserInputService.InputChanged:Connect(function(input)
    if input.UserInputType ~= Enum.UserInputType.MouseMovement and input.UserInputType ~= Enum.UserInputType.Touch then return end

    -- Menyeret jendela utama
    if Draggable then
        local delta = input.Position - DragStart
        MainFrame.Position = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + delta.Y)
    end

    -- Menyeret ikon
    if DraggableIcon then
        local delta = input.Position - DragStartIcon
        ToggleButton.Position = UDim2.new(StartPositionIcon.X.Scale, StartPositionIcon.X.Offset + delta.X, StartPositionIcon.Y.Scale, StartPositionIcon.Y.Offset + delta.Y)
    end
end)

-- Logika untuk Tombol Tutup dan Tampilkan
CloseButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
    ToggleButton.Visible = true
end)

ToggleButton.MouseButton1Click:Connect(function()
    -- Cek ini untuk mencegah UI terbuka saat menyeret ikon
    if not DraggableIcon then
        MainFrame.Visible = true
        ToggleButton.Visible = false
    end
end)
