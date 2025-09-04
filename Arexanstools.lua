task.spawn(function()
    -- Layanan dan Variabel Global
    local Players = game:GetService("Players")
    local UserInputService = game:GetService("UserInputService")
    local RunService = game:GetService("RunService")
    local Workspace = game:GetService("Workspace")
    local LocalPlayer = Players.LocalPlayer
    local CoreGui = game:GetService("CoreGui")
    local HttpService = game:GetService("HttpService")
    local TweenService = game:GetService("TweenService")
    local Lighting = game:GetService("Lighting")
    local MaterialService = game:GetService("MaterialService")
    
    -- Variabel untuk menyimpan posisi GUI
    local GUISettings = {}
    local GUI_SETTINGS_SAVE_FILE = "ArexansTools_GUISettings_" .. tostring(game.PlaceId) .. ".json"

    -- Pengaturan Default
    local Settings = {
        FlySpeed = 1, WalkSpeed = 16, MaxFlySpeed = 10, MaxWalkSpeed = 500,
        KillAuraRadius = 25, KillAuraDamage = 10, MaxKillAuraRadius = 100, MaxKillAuraDamage = 100,
        AimbotFOV = 90, AimbotPart = "Head", MaxAimbotFOV = 200, TeleportDistance = 100,
    }
    
    -- Variabel Status
    local IsFlying, IsNoclipEnabled, IsGodModeEnabled, IsKillAuraEnabled, IsAimbotEnabled, IsWalkSpeedEnabled = false, false, false, false, false, false
    local OriginalWalkSpeed = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and LocalPlayer.Character.Humanoid.WalkSpeed or 16
    local FlyConnections, PlayerButtons = {}, {}
    local godModeConnection, KillAuraConnection, AimbotConnection, infinityJumpConnection, antiLagConnection = nil, nil, nil, nil, nil
    local AimbotTarget, FOVPart, touchFlingGui = nil, nil, nil
    local IsInfinityJumpEnabled, isUpdatingPlayerList = false, false
    local isMiniToggleDraggable, isEmoteToggleDraggable, isAnimationToggleDraggable = true, true, true
    local IsAntiLagEnabled = false
    
    -- Variabel Teleport
    local savedTeleportLocations = {}
    local TELEPORT_SAVE_FILE = "ArexansTools_Teleports_" .. tostring(game.PlaceId) .. ".json"
    
    -- Variabel AntiFling
    local antifling_velocity_threshold, antifling_angular_threshold = 85, 25
    local antifling_last_safe_cframe, antifling_enabled, antifling_connection = nil, false, nil
    
    -- Variabel Fitur Emote & Animasi
    local isEmoteEnabled, EmoteScreenGui = false, nil
    local isAnimationEnabled, AnimationScreenGui = false, nil 

    -- Fungsi untuk menyimpan dan memuat posisi GUI
    local function saveGUISettings()
        if not writefile then return end
        pcall(function() writefile(GUI_SETTINGS_SAVE_FILE, HttpService:JSONEncode(GUISettings)) end)
    end

    local function loadGUISettings()
        if not readfile or not isfile or not isfile(GUI_SETTINGS_SAVE_FILE) then return end
        local success, result = pcall(function()
            local data = HttpService:JSONDecode(readfile(GUI_SETTINGS_SAVE_FILE))
            if type(data) == "table" then GUISettings = data end
        end)
        if not success then warn("Gagal memuat pengaturan GUI:", result) end
    end
    loadGUISettings()

    -- Membuat GUI utama
    local ScreenGui = Instance.new("ScreenGui", CoreGui)
    ScreenGui.Name = "ArexansToolsGUI"; ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling; ScreenGui.ResetOnSpawn = false
    
    local MiniToggleButton = Instance.new("TextButton", ScreenGui)
    MiniToggleButton.Name = "MiniToggleButton"; MiniToggleButton.Size = UDim2.new(0, 15, 0, 15); local savedPos = GUISettings.MiniToggleButton; MiniToggleButton.Position = savedPos and UDim2.new(unpack(savedPos)) or UDim2.new(1, -25, 0.5, -7.5); MiniToggleButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20); MiniToggleButton.BackgroundTransparency = 1; MiniToggleButton.BorderSizePixel = 0; MiniToggleButton.Text = "▶"; MiniToggleButton.TextColor3 = Color3.fromRGB(0, 200, 255); MiniToggleButton.TextSize = 10; MiniToggleButton.Font = Enum.Font.SourceSansBold; MiniToggleButton.Active = true
    
    local MiniUICorner = Instance.new("UICorner", MiniToggleButton); MiniUICorner.CornerRadius = UDim.new(0, 8)
    local MiniUIStroke = Instance.new("UIStroke", MiniToggleButton); MiniUIStroke.Color = Color3.fromRGB(0, 150, 255); MiniUIStroke.Thickness = 2; MiniUIStroke.Transparency = 0.5
    
    local MainFrame = Instance.new("Frame", ScreenGui)
    MainFrame.Name = "MainFrame"; MainFrame.Size = UDim2.new(0, 230, 0, 320); MainFrame.Position = UDim2.new(0.5, -115, 0.5, -160); MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20); MainFrame.BackgroundTransparency = 0.5; MainFrame.BorderSizePixel = 0; MainFrame.Visible = false
    
    local MainUICorner = Instance.new("UICorner", MainFrame); MainUICorner.CornerRadius = UDim.new(0, 8)
    local UIStroke = Instance.new("UIStroke", MainFrame); UIStroke.Color = Color3.fromRGB(0, 150, 255); UIStroke.Thickness = 2; UIStroke.Transparency = 0.5
    
    local TitleBar = Instance.new("Frame", MainFrame)
    TitleBar.Name = "TitleBar"; TitleBar.Size = UDim2.new(1, 0, 0, 30); TitleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25); TitleBar.BorderSizePixel = 0; TitleBar.Active = true
    
    local TitleLabel = Instance.new("TextLabel", TitleBar)
    TitleLabel.Name = "TitleLabel"; TitleLabel.Size = UDim2.new(1, 0, 1, 0); TitleLabel.BackgroundTransparency = 1; TitleLabel.Text = "Arexans Tools"; TitleLabel.TextColor3 = Color3.fromRGB(0, 200, 255); TitleLabel.TextSize = 14; TitleLabel.Font = Enum.Font.SourceSansBold
    
    local TabsFrame = Instance.new("Frame", MainFrame)
    TabsFrame.Name = "TabsFrame"; TabsFrame.Size = UDim2.new(0, 80, 1, -30); TabsFrame.Position = UDim2.new(0, 0, 0, 30); TabsFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25); TabsFrame.BorderSizePixel = 0
    
    local TabListLayout = Instance.new("UIListLayout", TabsFrame); TabListLayout.Padding = UDim.new(0, 5); TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center; TabListLayout.FillDirection = Enum.FillDirection.Vertical
    
    local ContentFrame = Instance.new("Frame", MainFrame)
    ContentFrame.Name = "ContentFrame"; ContentFrame.Size = UDim2.new(1, -80, 1, -30); ContentFrame.Position = UDim2.new(0, 80, 0, 30); ContentFrame.BackgroundTransparency = 1; ContentFrame.BorderSizePixel = 0
    
    -- ## PERBAIKAN: Cara pembuatan tab diperbaiki
    local PlayerTabContent = Instance.new("Frame", ContentFrame)
    PlayerTabContent.Name = "PlayerTab"; PlayerTabContent.Size = UDim2.new(1, 0, 1, 0); PlayerTabContent.BackgroundTransparency = 1; PlayerTabContent.Visible = false
    
    local PlayerListContainer = Instance.new("ScrollingFrame", PlayerTabContent)
    PlayerListContainer.Name = "PlayerListContainer"; PlayerListContainer.Size = UDim2.new(1, 0, 1, -55); PlayerListContainer.Position = UDim2.new(0, 0, 0, 55); PlayerListContainer.BackgroundTransparency = 1; PlayerListContainer.CanvasSize = UDim2.new(0, 0, 0, 0); PlayerListContainer.ScrollBarThickness = 6; PlayerListContainer.ScrollingDirection = Enum.ScrollingDirection.Y
    
    local function createScrollingTab(name)
        local frame = Instance.new("ScrollingFrame", ContentFrame)
        frame.Name = name; frame.Size = UDim2.new(1, 0, 1, 0); frame.BackgroundTransparency = 1; frame.Visible = false; frame.CanvasSize = UDim2.new(0, 0, 0, 0); frame.ScrollBarThickness = 6; frame.ScrollingDirection = Enum.ScrollingDirection.Y
        return frame
    end
    
    local GeneralTabContent = createScrollingTab("GeneralTab")
    local CombatTabContent = createScrollingTab("CombatTab")
    local TeleportTabContent = createScrollingTab("TeleportTab")
    local VipTabContent = createScrollingTab("VipTab")
    local SettingsTabContent = createScrollingTab("SettingsTab")

    local function setupListLayout(parent, padding)
        local layout = Instance.new("UIListLayout", parent)
        layout.Padding = UDim.new(0, padding)
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        parent:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
            task.wait()
            parent.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y)
        end)
        layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            parent.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y)
        end)
        return layout
    end

    setupListLayout(PlayerListContainer, 5)
    setupListLayout(GeneralTabContent, 5)
    setupListLayout(CombatTabContent, 5)
    setupListLayout(TeleportTabContent, 2)
    setupListLayout(VipTabContent, 5)
    setupListLayout(SettingsTabContent, 5)
    
    local function createButton(parent, name, callback)
        local button = Instance.new("TextButton", parent); button.Size = UDim2.new(1, 0, 0, 30); button.BackgroundColor3 = Color3.fromRGB(0, 120, 255); button.BorderSizePixel = 0; button.Text = name; button.TextColor3 = Color3.fromRGB(255, 255, 255); button.TextSize = 14; button.Font = Enum.Font.SourceSansBold; local c = Instance.new("UICorner", button); c.CornerRadius = UDim.new(0, 5); button.MouseButton1Click:Connect(callback); return button
    end
    
    local updatePlayerList
    -- ## PERBAIKAN: Fungsi switchTab disederhanakan dan diperbaiki
    local function switchTab(tabName)
        for _, child in ipairs(ContentFrame:GetChildren()) do
            if child:IsA("GuiObject") then
                child.Visible = (child.Name == tabName .. "Tab")
            end
        end
        if tabName == "Player" and updatePlayerList then updatePlayerList() end
    end
    
    local function createTabButton(name, parent)
        local btn = Instance.new("TextButton", parent); btn.Size = UDim2.new(1,0,0,25); btn.BackgroundColor3 = Color3.fromRGB(30,30,30); btn.BorderSizePixel = 0; btn.Text = name; btn.TextColor3 = Color3.fromRGB(255,255,255); btn.TextSize = 12; btn.Font = Enum.Font.SourceSansSemibold; local c = Instance.new("UICorner", btn); c.CornerRadius = UDim.new(0,5); btn.MouseButton1Click:Connect(function() switchTab(name) end)
    end
    
    createTabButton("Player", TabsFrame); createTabButton("Umum", TabsFrame); createTabButton("Tempur", TabsFrame); createTabButton("Teleport", TabsFrame); createTabButton("VIP", TabsFrame); createTabButton("Pengaturan", TabsFrame)
    
    -- Bagian fungsi lain (emote, animasi, fitur, dll. tidak berubah secara signifikan, hanya perbaikan kecil)
    local function destroyEmoteGUI() if EmoteScreenGui and EmoteScreenGui.Parent then EmoteScreenGui:Destroy() end; EmoteScreenGui = nil end
    local function initializeEmoteGUI()
        destroyEmoteGUI()
        EmoteScreenGui = Instance.new("ScreenGui", CoreGui); EmoteScreenGui.Name = "EmoteGuiRevised"; EmoteScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        local ToggleButton = Instance.new("TextButton", EmoteScreenGui)
        ToggleButton.Name = "ToggleButton"; ToggleButton.Size = UDim2.new(0, 35, 0, 35); local pos = GUISettings.EmoteToggleButton; ToggleButton.Position = pos and UDim2.new(unpack(pos)) or UDim2.new(1, -55, 0, 20); ToggleButton.AnchorPoint = Vector2.new(1, 0); ToggleButton.BackgroundColor3 = Color3.fromRGB(48, 63, 90); ToggleButton.BorderColor3 = Color3.fromRGB(90, 150, 255); ToggleButton.BorderSizePixel = 1; ToggleButton.Font = Enum.Font.GothamBold; ToggleButton.Text = "🤡"; ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255); ToggleButton.TextSize = 24; ToggleButton.Visible = true;
        local ToggleCorner = Instance.new("UICorner", ToggleButton); ToggleCorner.CornerRadius = UDim.new(0, 8)
        local EmoteMainFrame = Instance.new("Frame", EmoteScreenGui)
        EmoteMainFrame.Name = "MainFrame"; EmoteMainFrame.AnchorPoint = Vector2.new(0.5, 0.5); EmoteMainFrame.Size = UDim2.new(0, 240, 0, 220); EmoteMainFrame.Position = UDim2.new(0.5, 0, 0.5, 0); EmoteMainFrame.BackgroundTransparency = 0.85; EmoteMainFrame.BorderColor3 = Color3.fromRGB(90, 150, 255); EmoteMainFrame.BorderSizePixel = 1; EmoteMainFrame.ClipsDescendants = true; EmoteMainFrame.Visible = false
        local Header = Instance.new("Frame", EmoteMainFrame); Header.Name = "Header"; Header.Size = UDim2.new(1, 0, 0, 30); Header.BackgroundTransparency = 0.8; Header.BorderSizePixel = 0
    end
    local function destroyAnimationGUI() if AnimationScreenGui and AnimationScreenGui.Parent then AnimationScreenGui:Destroy() end; AnimationScreenGui = nil end
    local function initializeAnimationGUI()
        destroyAnimationGUI()
        pcall(function()
            if CoreGui:FindFirstChild("GazeVerificator") then return end
            AnimationScreenGui = Instance.new("ScreenGui", CoreGui); AnimationScreenGui.Name = "GazeVerificator"
            local showButton = Instance.new("TextButton", AnimationScreenGui); showButton.Name = "ShowButton"; showButton.Text = "😀"; showButton.Font = Enum.Font.SourceSansBold; showButton.TextScaled = true; showButton.TextColor3 = Color3.fromRGB(255,255,255); showButton.BackgroundColor3 = Color3.fromRGB(0,120,255); showButton.BackgroundTransparency = 0.3; showButton.Size = UDim2.new(0,35,0,35); local pos = GUISettings.AnimToggleButton; showButton.Position = pos and UDim2.new(unpack(pos)) or UDim2.new(1,-100,0,20); showButton.Visible = true; showButton.Active = true; local c = Instance.new("UICorner", showButton); c.CornerRadius = UDim.new(0.5,0)
        end)
    end
    
    local function CreateTouchFlingGUI()
        if touchFlingGui and touchFlingGui.Parent then return end
        touchFlingGui = Instance.new("ScreenGui", CoreGui); touchFlingGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling; touchFlingGui.ResetOnSpawn = false
        local Frame = Instance.new("Frame", touchFlingGui); local pos = GUISettings.TouchFlingFrame; Frame.Position = pos and UDim2.new(unpack(pos)) or UDim2.new(0.5, -45, 0, 20); Frame.Size=UDim2.new(0,90,0,56); Frame.BackgroundColor3=Color3.fromRGB(170,200,255); Frame.BackgroundTransparency=0.3; Frame.BorderSizePixel=0; Frame.Active=true; local c1=Instance.new("UICorner",Frame);c1.CornerRadius=UDim.new(0,6);
        local TitleBar=Instance.new("Frame",Frame);TitleBar.BackgroundTransparency=0.4;TitleBar.BorderSizePixel=0;TitleBar.Size=UDim2.new(1,0,0,18)
    end
    
    createToggle(VipTabContent, "Aktifkan Emote", isEmoteEnabled, function(v) isEmoteEnabled=v; if v then initializeEmoteGUI() else destroyEmoteGUI() end end)
    createToggle(VipTabContent, "Aktifkan Animasi", isAnimationEnabled, function(v) isAnimationEnabled=v; if v then initializeAnimationGUI() else destroyAnimationGUI() end end)
    createToggle(SettingsTabContent, "Kunci Tombol ◀", not isMiniToggleDraggable, function(v) isMiniToggleDraggable=not v end)
    createToggle(SettingsTabContent, "Kunci Tombol 🤡", not isEmoteToggleDraggable, function(v) isEmoteToggleDraggable=not v end)
    createToggle(SettingsTabContent, "Kunci Tombol 😀", not isAnimationToggleDraggable, function(v) isAnimationToggleDraggable=not v end)
    createButton(SettingsTabContent, "Tutup Skrip", function() ScreenGui:Destroy() end)

    local function MakeDraggable(guiObject, dragHandle, isDraggableCheck, clickCallback, saveKey)
        dragHandle.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                local isDragging, dragStart, startPos = false, input.Position, guiObject.Position
                local changedConn, endedConn
                changedConn = UserInputService.InputChanged:Connect(function(changedInput)
                    if changedInput.UserInputType == input.UserInputType then
                        if not isDragging and (changedInput.Position - dragStart).Magnitude > 5 then if isDraggableCheck and isDraggableCheck() then isDragging = true end end
                        if isDragging then local delta = changedInput.Position - dragStart; guiObject.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y) end
                    end
                end)
                endedConn = UserInputService.InputEnded:Connect(function(endedInput)
                     if endedInput.UserInputType == input.UserInputType then
                        if changedConn then changedConn:Disconnect() end; if endedConn then endedConn:Disconnect() end
                        if not isDragging and clickCallback then clickCallback()
                        elseif isDragging and saveKey then GUISettings[saveKey] = {guiObject.Position.X.Scale, guiObject.Position.X.Offset, guiObject.Position.Y.Scale, guiObject.Position.Y.Offset}; saveGUISettings() end
                     end
                end)
            end
        end)
    end
    
    MakeDraggable(MainFrame, TitleBar, function() return true end, nil, nil)
    MakeDraggable(MiniToggleButton, MiniToggleButton, function() return isMiniToggleDraggable end, function()
        MainFrame.Visible = not MainFrame.Visible
        MiniToggleButton.Text = MainFrame.Visible and "◀" or "▶"
        MiniToggleButton.BackgroundTransparency = MainFrame.Visible and 0.5 or 1
        if MainFrame.Visible then
            local anyTabVisible = false
            for _, tab in ipairs(ContentFrame:GetChildren()) do
                if tab:IsA("GuiObject") and tab.Visible then anyTabVisible = true; break end
            end
            if not anyTabVisible then switchTab("Player") end
        end
    end, "MiniToggleButton")
    
    local origInitEmote = initializeEmoteGUI; initializeEmoteGUI = function(...) origInitEmote(...); if EmoteScreenGui then local btn=EmoteScreenGui:FindFirstChild("ToggleButton",true); local frame=EmoteScreenGui:FindFirstChild("MainFrame",true); if btn and frame then MakeDraggable(btn,btn,function()return isEmoteToggleDraggable end,function()frame.Visible=true;btn.Visible=false end,"EmoteToggleButton") end end end
    local origInitAnim = initializeAnimationGUI; initializeAnimationGUI = function(...) origInitAnim(...); if AnimationScreenGui then local btn=AnimationScreenGui:FindFirstChild("ShowButton",true); local frame=AnimationScreenGui:FindFirstChild("GazeBro",true); if btn and frame then MakeDraggable(btn,btn,function()return isAnimationToggleDraggable end,function()btn.Visible=false;frame.Visible=true end,"AnimToggleButton") end end end

    switchTab("Player")
end)

