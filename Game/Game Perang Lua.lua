--[[
    Skrip Gabungan: lockaim.lua + cit.lua (Versi Mini & Scrollable)
    Deskripsi: Mengubah ukuran kepala, ESP, dan Aimbot dalam jendela mini yang dapat digulir.
    UI Theme terinspirasi dari Arexanstools.lua
    Aimbot & FOV logic oleh r5nd0m_us3r0 dan goofyahh_aleksandr
    
    PERUBAHAN:
    - Memperbaiki pemain lain yang 'freeze' saat head size besar dengan mengatur Massless & CanTouch.
    - Memperbaiki fungsi MakeDraggable agar jendela bisa digeser melalui title bar.
    - (User Req) Memperkecil UI, merapikan judul ke kiri, dan mengubah teks judul.
    - (User Req) Diperkecil lagi menjadi "Super Mini" (180x220), font & label diringkas.
    - (User Req) PERBAIKAN HITBOX: Mengembalikan CanCollide & CanTouch ke aslinya, namun tetap Massless = true.
]]

-- Services
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera

-- Local Player
local LocalPlayer = Players.LocalPlayer

--====================================================================--
--                           PENGATURAN FITUR                         --
--====================================================================--

-- Pengaturan Head Size (dari aimlock.lua)
local isHeadSizeActive = false
local originalHeadSizes = {} -- Store original props { [Player] = {Size, Massless, CanTouch, CanCollide} }
local currentTarget = "All"
local currentSize = 3
local headSizeLoopConnection = nil

-- Pengaturan ESP (dari aimlock.lua)
local IsEspNameEnabled = false
local IsEspBodyEnabled = false
local EspRenderConnection = nil
local espCache = {} -- Cache for ESP GUI elements

-- Pengaturan Aimbot (dari cit.lua)
local AimbotEnabled = false
local WallCheck = true
local TeamCheck = false
local ShowFOV = true
local AimPart = "Head"
local FOV = 150
local Smoothness = 0.2
local AimbotRenderConnection = nil

--====================================================================--
--                          LINGKARAN FOV (cit.lua)                   --
--====================================================================--
local FOVCircle = nil
if Drawing then -- Memeriksa apakah pustaka 'Drawing' ada
    FOVCircle = Drawing.new("Circle")
    FOVCircle.Thickness = 1
    FOVCircle.NumSides = 100
    FOVCircle.Radius = FOV
    FOVCircle.Filled = false
    FOVCircle.Transparency = 0.8
    FOVCircle.Color = Color3.fromRGB(0, 255, 0)
    FOVCircle.Visible = ShowFOV
    FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
else
    print("Peringatan: Pustaka 'Drawing' tidak ditemukan. Lingkaran FOV akan dinonaktifkan.")
    ShowFOV = false -- Paksa nonaktifkan jika tidak ada library
end

--====================================================================--
--                        FUNGSI LOGIKA AIMBOT (cit.lua)              --
--====================================================================--

--// GET CLOSEST TARGET
local function GetClosestPlayer()
    local closestPart = nil
    local shortestDistance = FOV

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild(AimPart) then
            local part = player.Character[AimPart]
            local humanoid = player.Character:FindFirstChild("Humanoid")
            if humanoid and humanoid.Health > 0 then
                if not TeamCheck or player.Team ~= LocalPlayer.Team then
                    local screenPos, onScreen = Camera:WorldToViewportPoint(part.Position)
                    if onScreen then
                        local dist = (Vector2.new(screenPos.X, screenPos.Y) - Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)).Magnitude
                        if dist < shortestDistance then
                            if not WallCheck or #Camera:GetPartsObscuringTarget({part.Position}, {LocalPlayer.Character, player.Character}) == 0 then
                                closestPart = part
                                shortestDistance = dist
                            end
                        end
                    end
                end
            end
        end
    end

    return closestPart
end

--// SMOOTH AIM
local function SmoothLookAt(targetPos)
    local camCF = Camera.CFrame
    local newCF = CFrame.new(camCF.Position, targetPos)
    Camera.CFrame = camCF:Lerp(newCF, Smoothness)
end

--====================================================================--
--                           FUNGSI HELPER (aimlock.lua)              --
--====================================================================--

-- Fungsi untuk mendapatkan pemain berdasarkan input
local function getPlayer(targetName)
    local foundPlayers = {}
    if not targetName or targetName == "" then return {} end -- Handle empty input
    targetName = targetName:lower()

    if targetName == "all" then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                 table.insert(foundPlayers, player)
            end
        end
     elseif targetName == "others" then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                 table.insert(foundPlayers, player)
            end
        end
    elseif targetName == "me" then
         table.insert(foundPlayers, LocalPlayer) -- Specifically include local player if "me"
    else
        for _, player in ipairs(Players:GetPlayers()) do
            if player.Name:lower():find(targetName, 1, true) or player.DisplayName:lower():find(targetName, 1, true) then
                table.insert(foundPlayers, player)
            end
        end
    end
    return foundPlayers
end


-- Fungsi untuk membuat UI draggable (DISEDERHANAKAN & DIPERBAIKI)
local function MakeDraggable(guiObject, dragHandle)
    local dragging = false
    local dragStart = nil
    local startPos = nil

    local moveConnection = nil
    local releaseConnection = nil

    dragHandle.InputBegan:Connect(function(input)
        -- Hanya proses klik kiri mouse atau sentuhan
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = guiObject.Position
            guiObject.ZIndex = 99 -- Bawa ke depan saat di-drag

            -- Putuskan koneksi lama jika ada
            if moveConnection then moveConnection:Disconnect() end
            if releaseConnection then releaseConnection:Disconnect() end

            -- Koneksi untuk memantau pergerakan
            moveConnection = UserInputService.InputChanged:Connect(function(moveInput)
                if dragging and (moveInput.UserInputType == Enum.UserInputType.MouseMovement or moveInput.UserInputType == Enum.UserInputType.Touch) then
                    local delta = moveInput.Position - dragStart
                    guiObject.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
                end
            end)

            -- Koneksi untuk mendeteksi akhir drag (lepas klik atau lepas sentuhan)
            releaseConnection = UserInputService.InputEnded:Connect(function(endInput)
                -- Periksa apakah input yang berakhir adalah tipe yang sama dengan yang memulai
                if endInput.UserInputType == input.UserInputType then
                    dragging = false
                    guiObject.ZIndex = 10 -- Kembalikan ZIndex normal
                    
                    -- Putuskan koneksi
                    if moveConnection then moveConnection:Disconnect(); moveConnection = nil end
                    if releaseConnection then releaseConnection:Disconnect(); releaseConnection = nil end
                end
            end)
        end
    end)
end

-- Fungsi untuk membuat Toggle Switch (Gaya ArexansTools)
local function createToggleSwitch(parent, labelText, initialState, callback)
    local toggleFrame = Instance.new("Frame")
    toggleFrame.Name = labelText:gsub("%s+", "") .. "ToggleFrame"
    toggleFrame.Size = UDim2.new(1, 0, 0, 25)
    toggleFrame.BackgroundTransparency = 1
    toggleFrame.Parent = parent

    local featureLabel = Instance.new("TextLabel")
    featureLabel.Name = "FeatureLabel"
    featureLabel.Size = UDim2.new(0.7, -5, 1, 0) -- Adjust size to make space for switch
    featureLabel.Position = UDim2.new(0, 0, 0, 0)
    featureLabel.BackgroundTransparency = 1
    featureLabel.Text = labelText .. ":"
    featureLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
    featureLabel.TextSize = 11 -- <<< (MINI) Font diperkecil
    featureLabel.TextXAlignment = Enum.TextXAlignment.Left
    featureLabel.Font = Enum.Font.SourceSans
    featureLabel.Parent = toggleFrame

    local switchTrack = Instance.new("TextButton")
    switchTrack.Name = "SwitchTrack"
    switchTrack.Size = UDim2.new(0, 40, 0, 20)
    switchTrack.Position = UDim2.new(1, -45, 0.5, -10) -- Position to the right
    switchTrack.BackgroundColor3 = Color3.fromRGB(60, 60, 60) -- Off color
    switchTrack.BorderSizePixel = 0
    switchTrack.Text = ""
    switchTrack.AutoButtonColor = false
    switchTrack.Parent = toggleFrame
    local switchCorner = Instance.new("UICorner", switchTrack)
    switchCorner.CornerRadius = UDim.new(1, 0) -- Fully rounded

    local switchThumb = Instance.new("Frame")
    switchThumb.Name = "SwitchThumb"
    switchThumb.Size = UDim2.new(0, 16, 0, 16)
    switchThumb.Position = UDim2.new(0, 2, 0.5, -8) -- Initial off position
    switchThumb.BackgroundColor3 = Color3.fromRGB(220, 220, 220) -- Thumb color
    switchThumb.BorderSizePixel = 0
    switchThumb.Parent = switchTrack
    local thumbCorner = Instance.new("UICorner", switchThumb)
    thumbCorner.CornerRadius = UDim.new(1, 0) -- Fully rounded

    local onColor = Color3.fromRGB(0, 150, 255) -- Blue for ON
    local offColor = Color3.fromRGB(60, 60, 60) -- Dark gray for OFF
    local onPosition = UDim2.new(1, -18, 0.5, -8) -- Thumb position when ON
    local offPosition = UDim2.new(0, 2, 0.5, -8) -- Thumb position when OFF
    local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
    local isToggled = initialState or false

    local function updateVisuals(isOn, isInstant)
        local goalPosition = isOn and onPosition or offPosition
        local goalColor = isOn and onColor or offColor
        if isInstant then
            switchThumb.Position = goalPosition
            switchTrack.BackgroundColor3 = goalColor
        else
            TweenService:Create(switchThumb, tweenInfo, {Position = goalPosition}):Play()
            TweenService:Create(switchTrack, tweenInfo, {BackgroundColor3 = goalColor}):Play()
        end
    end

    switchTrack.MouseButton1Click:Connect(function()
        isToggled = not isToggled
        updateVisuals(isToggled, false)
        if callback then
            callback(isToggled)
        end
    end)

    -- Set initial visual state
    updateVisuals(isToggled, true)

    -- Return the frame and a function to manually set state if needed
    return toggleFrame, function(newState)
        if isToggled ~= newState then
            isToggled = newState
            updateVisuals(isToggled, true)
            -- Note: This manual update does NOT call the callback
        end
    end
end

--====================================================================--
--                        LOGIKA HEAD SIZE (aimlock.lua)              --
--====================================================================--

-- Fungsi utama untuk mengubah ukuran kepala
local function applyHeadSizeToPlayer(targetPlayer, size)
    -- *** Exclude LocalPlayer ***
    if targetPlayer == LocalPlayer then return false end

    local character = targetPlayer.Character
    local head = character and character:FindFirstChild("Head")

    if head and head:IsA("BasePart") then
        -- Store original size/properties if not already stored
        if not originalHeadSizes[targetPlayer] then
            originalHeadSizes[targetPlayer] = {
                Size = head.Size,
                Massless = head.Massless,
                CanTouch = head.CanTouch,
                CanCollide = head.CanCollide
            }
        end

        -- Apply new size
        local newSizeVector = Vector3.new(size, size, size)
        head.Size = newSizeVector
        head.Massless = true  -- <<< PERBAIKAN: Buat tidak bermassa agar tidak 'freeze'
        
        -- <<< PERBAIKAN HITBOX: Kembalikan properti asli agar bisa di-raycast (ditembak)
        head.CanCollide = originalHeadSizes[targetPlayer].CanCollide
        head.CanTouch = originalHeadSizes[targetPlayer].CanTouch
        
        return true -- Applied successfully
    end
    return false -- Failed to apply
end

-- Fungsi loop untuk memastikan ukuran kepala tetap
local function startHeadSizeLoop()
    if headSizeLoopConnection then
        headSizeLoopConnection:Disconnect()
        headSizeLoopConnection = nil
    end

    headSizeLoopConnection = RunService.Heartbeat:Connect(function()
        if not isHeadSizeActive then return end -- Stop if feature is off

        local playersToModify = getPlayer(currentTarget)
        for _, targetPlayer in ipairs(playersToModify) do
             -- *** Exclude LocalPlayer in loop too ***
             if targetPlayer == LocalPlayer then continue end

            local character = targetPlayer.Character
            local head = character and character:FindFirstChild("Head")
            if head and head:IsA("BasePart") and originalHeadSizes[targetPlayer] then -- Pastikan props asli ada
                local expectedSize = Vector3.new(currentSize, currentSize, currentSize)
                
                -- Terapkan properti hanya jika berbeda untuk menghindari pembaruan yang tidak perlu
                if head.Size ~= expectedSize then
                    head.Size = expectedSize
                end
                
                -- <<< PERBAIKAN: Pertahankan Massless = true (anti-freeze)
                if head.Massless ~= true then
                    head.Massless = true
                end
                
                -- <<< PERBAIKAN HITBOX: Pertahankan CanCollide & CanTouch asli (agar bisa ditembak)
                local originalProps = originalHeadSizes[targetPlayer]
                if head.CanCollide ~= originalProps.CanCollide then
                    head.CanCollide = originalProps.CanCollide
                end
                if head.CanTouch ~= originalProps.CanTouch then
                    head.CanTouch = originalProps.CanTouch
                end
            end
        end
    end)
end


-- Fungsi untuk mengembalikan ukuran kepala ke semula
local function revertHeadSize()
    if headSizeLoopConnection then -- Stop the loop first
        headSizeLoopConnection:Disconnect()
        headSizeLoopConnection = nil
    end

    local revertedCount = 0
    local playersToClear = {} -- Kumpulkan pemain untuk dihapus dari originalHeadSizes setelah iterasi

    for player, originalProps in pairs(originalHeadSizes) do
        if player ~= LocalPlayer then
             local character = player.Character
             local head = character and character:FindFirstChild("Head")
             if head and head:IsA("BasePart") then
                 -- Hanya kembalikan jika properti asli tersimpan sebagai tabel
                 if type(originalProps) == "table" then
                     head.Size = originalProps.Size
                     head.CanCollide = originalProps.CanCollide
                     head.Massless = originalProps.Massless
                     head.CanTouch = originalProps.CanTouch
                     revertedCount = revertedCount + 1
                 end
                 table.insert(playersToClear, player) -- Tandai untuk dihapus dari pelacakan
             else
                -- Pemain tidak memiliki kepala atau karakter, tandai untuk dihapus
                table.insert(playersToClear, player)
             end
        else
            -- Pemain lokal entah bagaimana masuk ke daftar, tandai untuk dihapus
             table.insert(playersToClear, player)
        end
    end

    -- Hapus pemain yang dilacak
    for _, player in ipairs(playersToClear) do
        originalHeadSizes[player] = nil
    end

    if revertedCount > 0 then
        print("Reverted head size for " .. revertedCount .. " players.")
    end
end


-- Fungsi toggle utama
local function toggleHeadSizeFeature(activate)
    isHeadSizeActive = activate
    if isHeadSizeActive then
        -- Apply initial size immediately
        local playersToModify = getPlayer(currentTarget)
        local appliedCount = 0
        for _, player in ipairs(playersToModify) do
             if player ~= LocalPlayer then
                 if applyHeadSizeToPlayer(player, currentSize) then
                     appliedCount = appliedCount + 1
                 end
             end
        end
        print("Head size applied initially to " .. appliedCount .. " players.")
        startHeadSizeLoop() -- Start the loop to maintain the size
    else
        revertHeadSize() -- Revert sizes and stops the loop
    end
end


--====================================================================--
--                             LOGIKA ESP (aimlock.lua)               --
--====================================================================--

local function UpdateESP()
    -- Only run if either ESP is enabled
    if not IsEspNameEnabled and not IsEspBodyEnabled then return end

    local localPlayerTeam = LocalPlayer.Team

    -- Create a set of players currently needing ESP update this frame
    local playersToUpdate = {}
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            playersToUpdate[player] = true -- Mark player for update
        end
    end

    -- Update existing ESP elements or create new ones
    for player, _ in pairs(playersToUpdate) do
        local char = player.Character
        local head = char and char:FindFirstChild("Head")

        -- Check if player is valid and alive for ESP
        if head and char:FindFirstChild("Humanoid") and char.Humanoid.Health > 0 then
            local espElements = espCache[player] -- Use player object as key
            if not espElements then
                espElements = {}
                espCache[player] = espElements
            end

            -- === ESP Name Logic ===
            if IsEspNameEnabled then
                if not espElements.billboard or not espElements.billboard.Parent then
                    -- Create Billboard GUI if it doesn't exist or was removed
                    local billboardGui = Instance.new("BillboardGui")
                    billboardGui.Name = "PlayerESP_Name_" .. player.UserId -- Unique name
                    billboardGui.AlwaysOnTop = true
                    billboardGui.Size = UDim2.new(0, 150, 0, 40)
                    billboardGui.StudsOffset = Vector3.new(0, 2.5, 0) -- Offset above head
                    billboardGui.Adornee = head
                    billboardGui.Parent = CoreGui -- Parent directly to CoreGui

                    local textLabel = Instance.new("TextLabel", billboardGui)
                    textLabel.Name = "NameLabel"
                    textLabel.Size = UDim2.new(1, 0, 0.5, 0)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Font = Enum.Font.SourceSansBold
                    textLabel.TextSize = 14
                    textLabel.Text = player.DisplayName
                    textLabel.TextStrokeTransparency = 0.5 -- Add slight stroke for visibility

                    local distLabel = Instance.new("TextLabel", billboardGui)
                    distLabel.Name = "DistanceLabel"
                    distLabel.Size = UDim2.new(1, 0, 0.5, 0)
                    distLabel.Position = UDim2.new(0, 0, 0.5, 0)
                    distLabel.BackgroundTransparency = 1
                    distLabel.Font = Enum.Font.SourceSans
                    distLabel.TextSize = 12
                    distLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
                    distLabel.TextStrokeTransparency = 0.5

                    espElements.billboard = billboardGui
                end

                -- Update existing Billboard GUI
                local billboard = espElements.billboard
                if billboard.Adornee ~= head then billboard.Adornee = head end -- Re-Adorn if needed

                -- Update distance
                local localRoot = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if localRoot then
                    local distance = math.floor((localRoot.Position - head.Position).Magnitude)
                    billboard.DistanceLabel.Text = "[" .. tostring(distance) .. "m]"
                else
                     billboard.DistanceLabel.Text = "[?m]"
                end

                -- Update color based on team
                if player.Team == localPlayerTeam and localPlayerTeam ~= nil then
                    billboard.NameLabel.TextColor3 = Color3.fromRGB(100, 255, 100) -- Green for team
                else
                    billboard.NameLabel.TextColor3 = Color3.fromRGB(255, 100, 100) -- Red for enemy/neutral (Changed from blue)
                end
            elseif espElements.billboard then
                -- Destroy if ESP Name is disabled but element exists
                espElements.billboard:Destroy()
                espElements.billboard = nil
            end

            -- === ESP Body Logic (Highlight) ===
            if IsEspBodyEnabled then
                if not espElements.highlight or not espElements.highlight.Parent then
                    -- Create Highlight if it doesn't exist or was removed
                    local highlight = Instance.new("Highlight")
                    highlight.Name = "ESPHighlight_" .. player.UserId -- Unique name
                    highlight.FillTransparency = 0.7
                    highlight.OutlineTransparency = 0.3 -- Make outline slightly more visible
                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop -- Ensure visibility through walls
                    highlight.Parent = char -- Parent to character model
                    espElements.highlight = highlight
                end

                -- Ensure Highlight is parented correctly (might reparent if character reloads)
                if espElements.highlight.Parent ~= char then
                    espElements.highlight.Parent = char
                end

                -- Update color based on team
                if player.Team == localPlayerTeam and localPlayerTeam ~= nil then
                    espElements.highlight.FillColor = Color3.fromRGB(0, 1, 0) -- Green
                    espElements.highlight.OutlineColor = Color3.fromRGB(0, 0.5, 0) -- Darker Green Outline
                else
                    espElements.highlight.FillColor = Color3.fromRGB(1, 0, 0) -- Red
                    espElements.highlight.OutlineColor = Color3.fromRGB(0.5, 0, 0) -- Darker Red Outline
                end
            elseif espElements.highlight then
                -- Destroy if ESP Body is disabled but element exists
                espElements.highlight:Destroy()
                espElements.highlight = nil
            end

        else
            -- Player is invalid, dead, or has no head - Clean up their ESP elements
            local espElements = espCache[player]
            if espElements then
                if espElements.billboard then espElements.billboard:Destroy() end
                if espElements.highlight then espElements.highlight:Destroy() end
                espCache[player] = nil -- Remove player from cache
            end
        end
    end

    -- Clean up cache entries for players who left or are no longer valid
    for player, elements in pairs(espCache) do
        if not playersToUpdate[player] then
            if elements.billboard then elements.billboard:Destroy() end
            if elements.highlight then elements.highlight:Destroy() end
            espCache[player] = nil
        end
    end
end


-- Function to manage the RunService connection for ESP
local function manageEspConnection()
    if (IsEspNameEnabled or IsEspBodyEnabled) and not EspRenderConnection then
        -- Connect if either ESP is enabled and not already connected
        EspRenderConnection = RunService.RenderStepped:Connect(UpdateESP)
    elseif not IsEspNameEnabled and not IsEspBodyEnabled and EspRenderConnection then
        -- Disconnect if both ESPs are disabled and connection exists
        EspRenderConnection:Disconnect()
        EspRenderConnection = nil
        -- Clean up all existing ESP elements immediately
        for player, elements in pairs(espCache) do
            if elements.billboard then elements.billboard:Destroy() end
            if elements.highlight then elements.highlight:Destroy() end
        end
        espCache = {} -- Clear the cache
    end
end

-- Toggle functions for ESP Name and Body
local function ToggleESPName(enabled)
    IsEspNameEnabled = enabled
    manageEspConnection() -- Start or stop the RenderStepped connection
end

local function ToggleESPBody(enabled)
    IsEspBodyEnabled = enabled
    manageEspConnection() -- Start or stop the RenderStepped connection
end

--====================================================================--
--                          LOOP AIMBOT/FOV (cit.lua)                 --
--====================================================================--

AimbotRenderConnection = RunService.RenderStepped:Connect(function()
    if FOVCircle then -- Hanya update jika FOVCircle berhasil dibuat
        FOVCircle.Visible = ShowFOV
        FOVCircle.Radius = FOV
        FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    end

    if AimbotEnabled then
        local target = GetClosestPlayer()
        if target then
            SmoothLookAt(target.Position)
        end
    end
end)


--====================================================================--
--                               GUI GABUNGAN                         --
--====================================================================--
-- Hapus GUI lama jika ada
local oldGui = CoreGui:FindFirstChild("CombinedFeaturesGUI")
if oldGui then
    oldGui:Destroy()
end

-- Main ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "CombinedFeaturesGUI"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
ScreenGui.DisplayOrder = 11 -- Ensure it's above default UI

-- Main Frame (Window)
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 180, 0, 220) -- <<< (MINI) UKURAN DIPERKECIL
MainFrame.Position = UDim2.new(0.5, -90, 0.5, -110) -- <<< (MINI) Posisi disesuaikan
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 40) -- Dark blue-ish
MainFrame.BackgroundTransparency = 0.3
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true -- Clip content if window is minimized
MainFrame.Parent = ScreenGui
MainFrame.Visible = true
MainFrame.ZIndex = 10

-- Corner and Stroke for MainFrame
local MainUICorner = Instance.new("UICorner")
MainUICorner.CornerRadius = UDim.new(0, 8)
MainUICorner.Parent = MainFrame

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(0, 150, 255) -- Blue stroke
UIStroke.Thickness = 1.5
UIStroke.Transparency = 0.5
UIStroke.Parent = MainFrame

-- Title Bar (Draggable Handle)
local TitleBar = Instance.new("TextButton")
TitleBar.Name = "TitleBar"
TitleBar.Size = UDim2.new(1, 0, 0, 25)
TitleBar.Position = UDim2.new(0, 0, 0, 0)
TitleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 45)
TitleBar.BorderSizePixel = 0
TitleBar.Text = ""
TitleBar.AutoButtonColor = false
TitleBar.Parent = MainFrame
MakeDraggable(MainFrame, TitleBar) -- Make the window draggable

-- Title Label
local TitleLabel = Instance.new("TextLabel")
TitleLabel.Name = "TitleLabel"
TitleLabel.Size = UDim2.new(1, -50, 1, 0) -- <<< (MINI) Disesuaikan (Tombol 45px)
TitleLabel.Position = UDim2.new(0, 8, 0, 0) -- 8px Left padding
TitleLabel.BackgroundTransparency = 1
TitleLabel.Font = Enum.Font.SourceSansBold
TitleLabel.TextSize = 14
TitleLabel.Text = "Game Perang By Arexans" -- <<< (MINI) Judul Diperbarui
TitleLabel.TextColor3 = Color3.fromRGB(0, 200, 255)
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left -- Rata Kiri
TitleLabel.Parent = TitleBar
TitleLabel.Active = false -- <<< PERBAIKAN: Agar tidak memblokir input drag

-- Minimize Button
local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Size = UDim2.new(0, 20, 0, 20)
MinimizeButton.Position = UDim2.new(1, -45, 0.5, -10) -- Position left of close
MinimizeButton.BackgroundTransparency = 1
MinimizeButton.Font = Enum.Font.SourceSansBold
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.fromRGB(200, 200, 200) -- Gray minimize
MinimizeButton.TextSize = 20
MinimizeButton.Parent = TitleBar

-- Close Button
local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Size = UDim2.new(0, 20, 0, 20)
CloseButton.Position = UDim2.new(1, -22.5, 0.5, -10)
CloseButton.BackgroundTransparency = 1
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 100, 100)
CloseButton.TextSize = 16
CloseButton.Parent = TitleBar

-- Content Area Frame (DIUBAH MENJADI SCROLLINGFRAME)
local ContentFrame = Instance.new("ScrollingFrame")
ContentFrame.Name = "ContentFrame"
ContentFrame.Size = UDim2.new(1, -10, 1, -30) -- Padding
ContentFrame.Position = UDim2.new(0, 5, 0, 25)
ContentFrame.BackgroundTransparency = 1
ContentFrame.Parent = MainFrame
ContentFrame.ScrollingDirection = Enum.ScrollingDirection.Y -- <<< HANYA BISA SCROLL VERTIKAL
ContentFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y -- <<< UKURAN CANVAS OTOMATIS
ContentFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 150, 255) -- <<< WARNA SCROLLBAR
ContentFrame.ScrollBarThickness = 6 -- <<< KETEBALAN SCROLLBAR

-- UIListLayout for Content (Parentnya adalah ContentFrame yang baru)
local ContentLayout = Instance.new("UIListLayout")
ContentLayout.Padding = UDim.new(0, 3) -- <<< (MINI) Mengurangi padding
ContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
ContentLayout.Parent = ContentFrame

-- == Head Size Feature UI (Toggle Switch) ==
local HeadSizeToggleFrame, setHeadSizeSwitchState = createToggleSwitch(ContentFrame, "Head Size", isHeadSizeActive, function(state) -- <<< (MINI) Teks diringkas
    toggleHeadSizeFeature(state)
end)
HeadSizeToggleFrame.LayoutOrder = 1

-- == Head Size Input Frame ==
local InputFrame = Instance.new("Frame")
InputFrame.Name = "InputFrame"
InputFrame.Size = UDim2.new(1, 0, 0, 25)
InputFrame.BackgroundTransparency = 1
InputFrame.LayoutOrder = 2 -- Below Head Size Toggle
InputFrame.Parent = ContentFrame

local InputLayout = Instance.new("UIListLayout")
InputLayout.FillDirection = Enum.FillDirection.Horizontal
InputLayout.VerticalAlignment = Enum.VerticalAlignment.Center
InputLayout.Padding = UDim.new(0, 5)
InputLayout.Parent = InputFrame

local TargetTextBox = Instance.new("TextBox")
TargetTextBox.Name = "TargetTextBox"
TargetTextBox.Size = UDim2.new(0.6, -2.5, 1, 0)
TargetTextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
TargetTextBox.PlaceholderText = "Nickname / All / Others"
TargetTextBox.Text = currentTarget
TargetTextBox.ClearTextOnFocus = false
TargetTextBox.Font = Enum.Font.SourceSans
TargetTextBox.TextSize = 11 -- <<< (MINI) Font diperkecil
TargetTextBox.TextColor3 = Color3.new(1,1,1)
TargetTextBox.Parent = InputFrame
local ttCorner = Instance.new("UICorner", TargetTextBox); ttCorner.CornerRadius = UDim.new(0, 4)

local SizeTextBox = Instance.new("TextBox")
SizeTextBox.Name = "SizeTextBox"
SizeTextBox.Size = UDim2.new(0.4, -2.5, 1, 0)
SizeTextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
SizeTextBox.PlaceholderText = "Size (e.g., 3)"
SizeTextBox.Text = tostring(currentSize)
SizeTextBox.ClearTextOnFocus = false
SizeTextBox.Font = Enum.Font.SourceSans
SizeTextBox.TextSize = 11 -- <<< (MINI) Font diperkecil
SizeTextBox.TextColor3 = Color3.new(1,1,1)
SizeTextBox.Parent = InputFrame
local stCorner = Instance.new("UICorner", SizeTextBox); stCorner.CornerRadius = UDim.new(0, 4)

-- == ESP Toggles ==
local EspNameToggleFrame, setEspNameSwitchState = createToggleSwitch(ContentFrame, "ESP Nama", IsEspNameEnabled, function(state) -- <<< (MINI) Teks diringkas
    ToggleESPName(state)
end)
EspNameToggleFrame.LayoutOrder = 3

local EspBodyToggleFrame, setEspBodySwitchState = createToggleSwitch(ContentFrame, "ESP Tubuh", IsEspBodyEnabled, function(state) -- <<< (MINI) Teks diringkas
    ToggleESPBody(state)
end)
EspBodyToggleFrame.LayoutOrder = 4

-- == Aimbot Toggles (BARU dari cit.lua) ==
local AimbotToggleFrame, setAimbotSwitchState = createToggleSwitch(ContentFrame, "Aimbot", AimbotEnabled, function(state) -- <<< (MINI) Teks diringkas
    AimbotEnabled = state
end)
AimbotToggleFrame.LayoutOrder = 5

local WallCheckToggleFrame, setWallCheckSwitchState = createToggleSwitch(ContentFrame, "WallCheck", WallCheck, function(state) -- <<< (MINI) Teks diringkas
    WallCheck = state
end)
WallCheckToggleFrame.LayoutOrder = 6

local TeamCheckToggleFrame, setTeamCheckSwitchState = createToggleSwitch(ContentFrame, "TeamCheck", TeamCheck, function(state) -- <<< (MINI) Teks diringkas
    TeamCheck = state
end)
TeamCheckToggleFrame.LayoutOrder = 7

local ShowFovToggleFrame, setShowFovSwitchState = createToggleSwitch(ContentFrame, "Show FOV", ShowFOV, function(state) -- <<< (MINI) Teks diringkas
    ShowFOV = state
end)
ShowFovToggleFrame.LayoutOrder = 8
if not FOVCircle then
    ShowFovToggleFrame.Visible = false -- Sembunyikan toggle jika Drawing lib tidak ada
end

-- == AimPart Button (BARU dari cit.lua) ==
local aimPartButton = Instance.new("TextButton")
aimPartButton.Name = "AimPartButton"
aimPartButton.Size = UDim2.new(1, 0, 0, 25)
aimPartButton.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
aimPartButton.Font = Enum.Font.SourceSans
aimPartButton.TextSize = 11 -- <<< (MINI) Font diperkecil
aimPartButton.TextColor3 = Color3.new(1,1,1)
aimPartButton.LayoutOrder = 9
aimPartButton.Parent = ContentFrame
local apCorner = Instance.new("UICorner", aimPartButton); apCorner.CornerRadius = UDim.new(0, 4)
local parts = {"Head", "Torso", "UpperTorso", "LowerTorso"}
aimPartButton.Text = "Part: " .. AimPart -- <<< (MINI) Teks diringkas
aimPartButton.MouseButton1Click:Connect(function()
    local i = table.find(parts, AimPart) or 1
    i = i % #parts + 1
    AimPart = parts[i]
    aimPartButton.Text = "Part: " .. AimPart -- <<< (MINI) Teks diringkas
end)

-- == FOV Adjust (BARU dari cit.lua) ==
local FovFrame = Instance.new("Frame")
FovFrame.Name = "FovFrame"
FovFrame.Size = UDim2.new(1, 0, 0, 25)
FovFrame.BackgroundTransparency = 1
FovFrame.LayoutOrder = 10
FovFrame.Parent = ContentFrame
local FovLayout = Instance.new("UIListLayout")
FovLayout.FillDirection = Enum.FillDirection.Horizontal
FovLayout.VerticalAlignment = Enum.VerticalAlignment.Center
FovLayout.Padding = UDim.new(0, 5)
FovLayout.Parent = FovFrame

local FovLabel = Instance.new("TextLabel")
FovLabel.Size = UDim2.new(0.5, -5, 1, 0)
FovLabel.BackgroundTransparency = 1
FovLabel.Font = Enum.Font.SourceSans
FovLabel.TextSize = 11 -- <<< (MINI) Font diperkecil
FovLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
FovLabel.Text = "FOV: " .. FOV
FovLabel.TextXAlignment = Enum.TextXAlignment.Left
FovLabel.Parent = FovFrame

local FovPlusBtn = Instance.new("TextButton")
FovPlusBtn.Size = UDim2.new(0.25, -2.5, 1, 0)
FovPlusBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
FovPlusBtn.Text = "+"
FovPlusBtn.Font = Enum.Font.SourceSansBold
FovPlusBtn.TextSize = 12 -- <<< (MINI) Font diperkecil
FovPlusBtn.TextColor3 = Color3.new(1,1,1)
FovPlusBtn.Parent = FovFrame
local fpCorner = Instance.new("UICorner", FovPlusBtn); fpCorner.CornerRadius = UDim.new(0, 4)

local FovMinusBtn = Instance.new("TextButton")
FovMinusBtn.Size = UDim2.new(0.25, -2.5, 1, 0)
FovMinusBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
FovMinusBtn.Text = "-"
FovMinusBtn.Font = Enum.Font.SourceSansBold
FovMinusBtn.TextSize = 12 -- <<< (MINI) Font diperkecil
FovMinusBtn.TextColor3 = Color3.new(1,1,1)
FovMinusBtn.Parent = FovFrame
local fmCorner = Instance.new("UICorner", FovMinusBtn); fmCorner.CornerRadius = UDim.new(0, 4)

FovPlusBtn.MouseButton1Click:Connect(function()
    FOV = math.clamp(FOV + 10, 50, 500)
    FovLabel.Text = "FOV: " .. FOV
end)
FovMinusBtn.MouseButton1Click:Connect(function()
    FOV = math.clamp(FOV - 10, 50, 500)
    FovLabel.Text = "FOV: " .. FOV
end)

-- == Smoothness Adjust (BARU dari cit.lua) ==
local SmoothFrame = Instance.new("Frame")
SmoothFrame.Name = "SmoothFrame"
SmoothFrame.Size = UDim2.new(1, 0, 0, 25)
SmoothFrame.BackgroundTransparency = 1
SmoothFrame.LayoutOrder = 11
SmoothFrame.Parent = ContentFrame
local SmoothLayout = Instance.new("UIListLayout")
SmoothLayout.FillDirection = Enum.FillDirection.Horizontal
SmoothLayout.VerticalAlignment = Enum.VerticalAlignment.Center
SmoothLayout.Padding = UDim.new(0, 5)
SmoothLayout.Parent = SmoothFrame

local SmoothLabel = Instance.new("TextLabel")
SmoothLabel.Size = UDim2.new(0.5, -5, 1, 0)
SmoothLabel.BackgroundTransparency = 1
SmoothLabel.Font = Enum.Font.SourceSans
SmoothLabel.TextSize = 11 -- <<< (MINI) Font diperkecil
SmoothLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
SmoothLabel.Text = "Smooth: " .. Smoothness
SmoothLabel.TextXAlignment = Enum.TextXAlignment.Left
SmoothLabel.Parent = SmoothFrame

local SmoothPlusBtn = Instance.new("TextButton")
SmoothPlusBtn.Size = UDim2.new(0.25, -2.5, 1, 0)
SmoothPlusBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
SmoothPlusBtn.Text = "+"
SmoothPlusBtn.Font = Enum.Font.SourceSansBold
SmoothPlusBtn.TextSize = 12 -- <<< (MINI) Font diperkecil
SmoothPlusBtn.TextColor3 = Color3.new(1,1,1)
SmoothPlusBtn.Parent = SmoothFrame
local spCorner = Instance.new("UICorner", SmoothPlusBtn); spCorner.CornerRadius = UDim.new(0, 4)

local SmoothMinusBtn = Instance.new("TextButton")
SmoothMinusBtn.Size = UDim2.new(0.25, -2.5, 1, 0)
SmoothMinusBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
SmoothMinusBtn.Text = "-"
SmoothMinusBtn.Font = Enum.Font.SourceSansBold
SmoothMinusBtn.TextSize = 12 -- <<< (MINI) Font diperkecil
SmoothMinusBtn.TextColor3 = Color3.new(1,1,1)
SmoothMinusBtn.Parent = SmoothFrame
local smCorner = Instance.new("UICorner", SmoothMinusBtn); smCorner.CornerRadius = UDim.new(0, 4)

SmoothPlusBtn.MouseButton1Click:Connect(function()
    Smoothness = math.clamp(Smoothness + 0.05, 0.01, 1)
    SmoothLabel.Text = "Smooth: " .. string.format("%.2f", Smoothness)
end)
SmoothMinusBtn.MouseButton1Click:Connect(function()
    Smoothness = math.clamp(Smoothness - 0.05, 0.01, 1)
    SmoothLabel.Text = "Smooth: " .. string.format("%.2f", Smoothness)
end)

-- == Info Label ==
local InfoLabel = Instance.new("TextLabel")
InfoLabel.Name = "InfoLabel"
InfoLabel.Size = UDim2.new(1, 0, 0, 20)
InfoLabel.BackgroundTransparency = 1
InfoLabel.Font = Enum.Font.SourceSansItalic
InfoLabel.TextSize = 10
InfoLabel.Text = "Target: All, Others, Me, Nick" -- <<< (MINI) Teks diringkas
InfoLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
InfoLabel.TextXAlignment = Enum.TextXAlignment.Left
InfoLabel.TextWrapped = true
InfoLabel.LayoutOrder = 12
InfoLabel.Parent = ContentFrame

--====================================================================--
--                           KONEKSI EVENT                          --
--====================================================================--

-- Minimize Button Logic
local isMinimized = false
local originalSize = MainFrame.Size -- <-- Mengambil ukuran 'mini' (180x220) sebagai ukuran asli
local minimizedSize = UDim2.new(originalSize.X.Scale, originalSize.X.Offset, 0, TitleBar.Size.Y.Offset)
local minimizeTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)

MinimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    local targetSize = isMinimized and minimizedSize or originalSize
    ContentFrame.Visible = not isMinimized -- Hide/show content instantly
    TweenService:Create(MainFrame, minimizeTweenInfo, {Size = targetSize}):Play()
    MinimizeButton.Text = isMinimized and "+" or "-" -- Change button text
end)

-- Close Button Logic
CloseButton.MouseButton1Click:Connect(function()
    if isHeadSizeActive then toggleHeadSizeFeature(false) end
    if IsEspNameEnabled then ToggleESPName(false) end -- Turn off ESP on close
    if IsEspBodyEnabled then ToggleESPBody(false) end
    AimbotEnabled = false -- Turn off Aimbot on close
    if FOVCircle then FOVCircle.Visible = false end
    ScreenGui:Destroy()
end)

-- Target TextBox Logic (Head Size)
TargetTextBox.FocusLost:Connect(function(enterPressed)
    local newTarget = TargetTextBox.Text
    if newTarget ~= currentTarget then
        if isHeadSizeActive then
            revertHeadSize() -- Revert previous target(s)
        end
        currentTarget = newTarget
        if isHeadSizeActive then
             local playersToModify = getPlayer(currentTarget)
             local appliedCount = 0
             for _, player in ipairs(playersToModify) do
                 if player ~= LocalPlayer then
                     if applyHeadSizeToPlayer(player, currentSize) then
                         appliedCount = appliedCount + 1
                     end
                 end
             end
             print("Target changed. Applied initially to " .. appliedCount .. " players.")
            startHeadSizeLoop()
        end
        print("Target set to:", currentTarget)
    end
end)

-- Size TextBox Logic (Head Size)
SizeTextBox.FocusLost:Connect(function(enterPressed)
    local newSize = tonumber(SizeTextBox.Text)
    if newSize and newSize > 0 then
        if newSize ~= currentSize then
            currentSize = newSize
            if isHeadSizeActive then
                 local playersToModify = getPlayer(currentTarget)
                 local appliedCount = 0
                 for _, player in ipairs(playersToModify) do
                      if player ~= LocalPlayer then
                         if applyHeadSizeToPlayer(player, currentSize) then
                             appliedCount = appliedCount + 1
                         end
                     end
                 end
                 print("Size changed. Re-applied to " .. appliedCount .. " players.")
                 -- Loop will update automatically
            end
            print("Size set to:", currentSize)
        end
    else
        SizeTextBox.Text = tostring(currentSize)
        print("Invalid size input, reverting text to:", currentSize)
    end
end)

-- Cleanup on character removal or player leaving
local function playerRemoving(player)
    if player == LocalPlayer then return end
    if originalHeadSizes[player] then
        originalHeadSizes[player] = nil
    end
    -- Clean up ESP cache for the leaving player
    local espElements = espCache[player]
    if espElements then
        if espElements.billboard then espElements.billboard:Destroy() end
        if espElements.highlight then espElements.highlight:Destroy() end
        espCache[player] = nil
    end
end
local playerRemovingConn = Players.PlayerRemoving:Connect(playerRemoving)

-- Handle character respawns
local function characterAdded(character)
    local player = Players:GetPlayerFromCharacter(character)
    if player and player ~= LocalPlayer then
        -- Reapply Head Size if active and player is target
        if isHeadSizeActive then
            local playersToModify = getPlayer(currentTarget)
            local isTarget = false
            for _, p in ipairs(playersToModify) do
                if p == player then isTarget = true; break end
            end
            if isTarget then
                task.wait(0.5)
                applyHeadSizeToPlayer(player, currentSize)
            end
        end
        -- ESP will be handled automatically by the UpdateESP loop
    end
end

local characterAddedConnections = {}
local function setupCharacterAdded(player)
	if characterAddedConnections[player] then characterAddedConnections[player]:Disconnect() end
	if player.Character then characterAdded(player.Character) end
	characterAddedConnections[player] = player.CharacterAdded:Connect(characterAdded)
end
local playerAddedConn = Players.PlayerAdded:Connect(setupCharacterAdded)
for _, player in ipairs(Players:GetPlayers()) do setupCharacterAdded(player) end

-- Cleanup when script stops
ScreenGui.Destroying:Connect(function()
    -- Matikan semua fitur
    if isHeadSizeActive then toggleHeadSizeFeature(false) end
    if IsEspNameEnabled then ToggleESPName(false) end
    if IsEspBodyEnabled then ToggleESPBody(false) end
    AimbotEnabled = false
    if FOVCircle then FOVCircle.Visible = false; FOVCircle:Destroy() end
    
    -- Hentikan semua koneksi
    if EspRenderConnection then EspRenderConnection:Disconnect() end
    if AimbotRenderConnection then AimbotRenderConnection:Disconnect() end
    if headSizeLoopConnection then headSizeLoopConnection:Disconnect() end
    
    if playerRemovingConn then playerRemovingConn:Disconnect() end
    if playerAddedConn then playerAddedConn:Disconnect() end
    for player, conn in pairs(characterAddedConnections) do if conn then conn:Disconnect() end end
    characterAddedConnections = {}

    -- Hapus semua cache ESP
    for player, elements in pairs(espCache) do
        if elements.billboard then elements.billboard:Destroy() end
        if elements.highlight then elements.highlight:Destroy() end
    end
    espCache = {}
    
    print("Skrip Gabungan dibersihkan.")
end)

-- Initial State Updates
setHeadSizeSwitchState(isHeadSizeActive) -- Set initial visual state for switches
setEspNameSwitchState(IsEspNameEnabled)
setEspBodySwitchState(IsEspBodyEnabled)
setAimbotSwitchState(AimbotEnabled)
setWallCheckSwitchState(WallCheck)
setTeamCheckSwitchState(TeamCheck)
setShowFovSwitchState(ShowFOV)

manageEspConnection() -- Start ESP loop if needed on load

print("GUI Gabungan (Super Mini) dimuat.")


