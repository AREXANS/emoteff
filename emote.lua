-- afem 2.1 by yarhm team
-- thanks everyone !

if not game:IsLoaded() then
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Script loading",
		Text = "Waiting for the game to finish loading!",
		Duration = 5
	})
	game.Loaded:Wait()
end
		-- Instances:
local Converted = {
	["_AFEM"] = Instance.new("ScreenGui");
	["_Init"] = Instance.new("LocalScript");
	["_FUNCTIONS"] = Instance.new("ModuleScript");
	["_DraggableObject"] = Instance.new("ModuleScript");
	["_ClickAndHold"] = Instance.new("ModuleScript");
	["_Spring"] = Instance.new("ModuleScript");
	["_EmoteList"] = Instance.new("LocalScript");
	["_PointSave"] = Instance.new("ModuleScript");
	["_Notifications"] = Instance.new("Frame");
	["_UIListLayout"] = Instance.new("UIListLayout");
	["_UIPadding"] = Instance.new("UIPadding");
	["_Placeholder"] = Instance.new("Frame");
	["_UICorner"] = Instance.new("UICorner");
	["_TextLabel"] = Instance.new("TextLabel");
	["_SetCustomButtonEmote"] = Instance.new("Frame");
	["_Controller"] = Instance.new("LocalScript");
	["_UICorner1"] = Instance.new("UICorner");
	["_UIStroke"] = Instance.new("UIStroke");
	["_UIGradient"] = Instance.new("UIGradient");
	["_UIGradient1"] = Instance.new("UIGradient");
	["_UIScale"] = Instance.new("UIScale");
	["_TextLabel1"] = Instance.new("TextLabel");
	["_TextBox"] = Instance.new("TextBox");
	["_UICorner2"] = Instance.new("UICorner");
	["_UIPadding1"] = Instance.new("UIPadding");
	["_Add"] = Instance.new("TextButton");
	["_UICorner3"] = Instance.new("UICorner");
	["_UIPadding2"] = Instance.new("UIPadding");
	["_UIStroke1"] = Instance.new("UIStroke");
	["_Cancel"] = Instance.new("TextButton");
	["_LocalScript"] = Instance.new("LocalScript");
	["_UICorner4"] = Instance.new("UICorner");
	["_UIPadding3"] = Instance.new("UIPadding");
	["_UIStroke2"] = Instance.new("UIStroke");
	["_Marketplace"] = Instance.new("ScrollingFrame");
	["_Template"] = Instance.new("TextButton");
	["_UICorner5"] = Instance.new("UICorner");
	["_UIPadding4"] = Instance.new("UIPadding");
	["_ImageLabel"] = Instance.new("ImageLabel");
	["_Label"] = Instance.new("TextLabel");
	["_LoadMore"] = Instance.new("TextButton");
	["_UICorner6"] = Instance.new("UICorner");
	["_ImageLabel1"] = Instance.new("ImageLabel");
	["_UIListLayout1"] = Instance.new("UIListLayout");
	["_Loading"] = Instance.new("CanvasGroup");
	["_UICorner7"] = Instance.new("UICorner");
	["_Spinner"] = Instance.new("ImageLabel");
	["_LocalScript1"] = Instance.new("LocalScript");
	["_Block"] = Instance.new("TextButton");
	["_FSLoading"] = Instance.new("CanvasGroup");
	["_UICorner8"] = Instance.new("UICorner");
	["_Spinner1"] = Instance.new("ImageLabel");
	["_LocalScript2"] = Instance.new("LocalScript");
	["_Block1"] = Instance.new("TextButton");
	["_Search"] = Instance.new("TextBox");
	["_UICorner9"] = Instance.new("UICorner");
	["_UIPadding5"] = Instance.new("UIPadding");
	["_Menu"] = Instance.new("Frame");
	["_UICorner10"] = Instance.new("UICorner");
	["_UIStroke3"] = Instance.new("UIStroke");
	["_UIGradient2"] = Instance.new("UIGradient");
	["_Animator"] = Instance.new("LocalScript");
	["_HubCredits"] = Instance.new("TextLabel");
	["_HubDesc"] = Instance.new("TextLabel");
	["_HubName"] = Instance.new("TextLabel");
	["_Area"] = Instance.new("Frame");
	["_Search1"] = Instance.new("LocalScript");
	["_Area1"] = Instance.new("ScrollingFrame");
	["_UIGridLayout"] = Instance.new("UIGridLayout");
	["_Sample"] = Instance.new("ImageButton");
	["_UICorner11"] = Instance.new("UICorner");
	["_UIStroke4"] = Instance.new("UIStroke");
	["_CustomEffect"] = Instance.new("UIGradient");
	["_UIPadding6"] = Instance.new("UIPadding");
	["_ImageLabel2"] = Instance.new("ImageLabel");
	["_TextLabel2"] = Instance.new("TextLabel");
	["_Favorite"] = Instance.new("ImageButton");
	["_Delete"] = Instance.new("ImageButton");
	["_UIPadding7"] = Instance.new("UIPadding");
	["_TextLabel3"] = Instance.new("TextLabel");
	["_TextBox1"] = Instance.new("TextBox");
	["_UICorner12"] = Instance.new("UICorner");
	["_UIPadding8"] = Instance.new("UIPadding");
	["_Switch"] = Instance.new("TextButton");
	["_Switch1"] = Instance.new("LocalScript");
	["_UICorner13"] = Instance.new("UICorner");
	["_UIPadding9"] = Instance.new("UIPadding");
	["_UIStroke5"] = Instance.new("UIStroke");
	["_UIGradient3"] = Instance.new("UIGradient");
	["_SettingsButton"] = Instance.new("ImageButton");
	["_SettingsButtonScript"] = Instance.new("LocalScript");
	["_UICorner14"] = Instance.new("UICorner");
	["_UIPadding10"] = Instance.new("UIPadding");
	["_UIStroke6"] = Instance.new("UIStroke");
	["_UIGradient4"] = Instance.new("UIGradient");
	["_ImageLabel3"] = Instance.new("ImageLabel");
	["_UIScale1"] = Instance.new("UIScale");
	["_SearchUpdate"] = Instance.new("BindableEvent");
	["_Toolbar"] = Instance.new("Frame");
	["_UIListLayout2"] = Instance.new("UIListLayout");
	["_AddNewEmotes"] = Instance.new("ImageButton");
	["_AddEmote"] = Instance.new("LocalScript");
	["_UICorner15"] = Instance.new("UICorner");
	["_UIPadding11"] = Instance.new("UIPadding");
	["_UIStroke7"] = Instance.new("UIStroke");
	["_UIGradient5"] = Instance.new("UIGradient");
	["_ImageLabel4"] = Instance.new("ImageLabel");
	["_UIPadding12"] = Instance.new("UIPadding");
	["_Filter"] = Instance.new("ImageButton");
	["_FilterController"] = Instance.new("LocalScript");
	["_UICorner16"] = Instance.new("UICorner");
	["_UIPadding13"] = Instance.new("UIPadding");
	["_UIStroke8"] = Instance.new("UIStroke");
	["_UIGradient6"] = Instance.new("UIGradient");
	["_ImageLabel5"] = Instance.new("ImageLabel");
	["_UIGradient7"] = Instance.new("UIGradient");
	["_CloseArea"] = Instance.new("TextButton");
	["_CloseOpen"] = Instance.new("LocalScript");
	["_Frame"] = Instance.new("Frame");
	["_UICorner17"] = Instance.new("UICorner");
	["_TextLabel4"] = Instance.new("TextLabel");
	["_UICorner18"] = Instance.new("UICorner");
	["_Close"] = Instance.new("BindableEvent");
	["_HubVersion"] = Instance.new("TextLabel");
	["_Settings"] = Instance.new("CanvasGroup");
	["_SettingsScript"] = Instance.new("LocalScript");
	["_UICorner19"] = Instance.new("UICorner");
	["_TextLabel5"] = Instance.new("TextLabel");
	["_Back"] = Instance.new("ImageButton");
	["_Back1"] = Instance.new("LocalScript");
	["_UICorner20"] = Instance.new("UICorner");
	["_UIPadding14"] = Instance.new("UIPadding");
	["_UIStroke9"] = Instance.new("UIStroke");
	["_UIGradient8"] = Instance.new("UIGradient");
	["_ImageLabel6"] = Instance.new("ImageLabel");
	["_UIScale2"] = Instance.new("UIScale");
	["_ScrollingFrame"] = Instance.new("ScrollingFrame");
	["_UICorner21"] = Instance.new("UICorner");
	["_UIListLayout3"] = Instance.new("UIListLayout");
	["_StayOpen"] = Instance.new("Frame");
	["_UIListLayout4"] = Instance.new("UIListLayout");
	["_Checkbox"] = Instance.new("TextButton");
	["_UICorner22"] = Instance.new("UICorner");
	["_UIStroke10"] = Instance.new("UIStroke");
	["_TextLabel6"] = Instance.new("TextLabel");
	["_UIPadding15"] = Instance.new("UIPadding");
	["_ClearPersistent"] = Instance.new("Frame");
	["_UIListLayout5"] = Instance.new("UIListLayout");
	["_Button"] = Instance.new("TextButton");
	["_UICorner23"] = Instance.new("UICorner");
	["_UIStroke11"] = Instance.new("UIStroke");
	["_ImageLabel7"] = Instance.new("ImageLabel");
	["_UIPadding16"] = Instance.new("UIPadding");
	["_TextLabel7"] = Instance.new("TextLabel");
	["_RemoveFavorites"] = Instance.new("Frame");
	["_UIListLayout6"] = Instance.new("UIListLayout");
	["_Button1"] = Instance.new("TextButton");
	["_UICorner24"] = Instance.new("UICorner");
	["_UIStroke12"] = Instance.new("UIStroke");
	["_ImageLabel8"] = Instance.new("ImageLabel");
	["_UIPadding17"] = Instance.new("UIPadding");
	["_TextLabel8"] = Instance.new("TextLabel");
	["_MoreSpace"] = Instance.new("Frame");
	["_UIListLayout7"] = Instance.new("UIListLayout");
	["_Checkbox1"] = Instance.new("TextButton");
	["_UICorner25"] = Instance.new("UICorner");
	["_UIStroke13"] = Instance.new("UIStroke");
	["_TextLabel9"] = Instance.new("TextLabel");
	["_MinimizeStart"] = Instance.new("Frame");
	["_UIListLayout8"] = Instance.new("UIListLayout");
	["_Checkbox2"] = Instance.new("TextButton");
	["_UICorner26"] = Instance.new("UICorner");
	["_UIStroke14"] = Instance.new("UIStroke");
	["_TextLabel10"] = Instance.new("TextLabel");
	["_QuickMethod"] = Instance.new("Frame");
	["_UICorner27"] = Instance.new("UICorner");
	["_UIListLayout9"] = Instance.new("UIListLayout");
	["_UIPadding18"] = Instance.new("UIPadding");
	["_QuickSelector"] = Instance.new("TextButton");
	["_UICorner28"] = Instance.new("UICorner");
	["_UIStroke15"] = Instance.new("UIStroke");
	["_QuickSelectorFrame"] = Instance.new("Frame");
	["_UICorner29"] = Instance.new("UICorner");
	["_UIStroke16"] = Instance.new("UIStroke");
	["_Animatable"] = Instance.new("Frame");
	["_UICorner30"] = Instance.new("UICorner");
	["_UIStroke17"] = Instance.new("UIStroke");
	["_UIScale3"] = Instance.new("UIScale");
	["_UIGridLayout1"] = Instance.new("UIGridLayout");
	["_Animatable1"] = Instance.new("Frame");
	["_UICorner31"] = Instance.new("UICorner");
	["_UIStroke18"] = Instance.new("UIStroke");
	["_UIScale4"] = Instance.new("UIScale");
	["_Animatable2"] = Instance.new("Frame");
	["_UICorner32"] = Instance.new("UICorner");
	["_UIStroke19"] = Instance.new("UIStroke");
	["_UIScale5"] = Instance.new("UIScale");
	["_UIPadding19"] = Instance.new("UIPadding");
	["_TextLabel11"] = Instance.new("TextLabel");
	["_FloatingButtons"] = Instance.new("TextButton");
	["_UICorner33"] = Instance.new("UICorner");
	["_UIStroke20"] = Instance.new("UIStroke");
	["_TextLabel12"] = Instance.new("TextLabel");
	["_Animatable3"] = Instance.new("Frame");
	["_UICorner34"] = Instance.new("UICorner");
	["_UIStroke21"] = Instance.new("UIStroke");
	["_UIScale6"] = Instance.new("UIScale");
	["_Animatable4"] = Instance.new("Frame");
	["_UICorner35"] = Instance.new("UICorner");
	["_UIStroke22"] = Instance.new("UIStroke");
	["_UIScale7"] = Instance.new("UIScale");
	["_Animatable5"] = Instance.new("Frame");
	["_UICorner36"] = Instance.new("UICorner");
	["_UIStroke23"] = Instance.new("UIStroke");
	["_UIScale8"] = Instance.new("UIScale");
	["_UIPadding20"] = Instance.new("UIPadding");
	["_QuickSelector1"] = Instance.new("CanvasGroup");
	["_UICorner37"] = Instance.new("UICorner");
	["_UIStroke24"] = Instance.new("UIStroke");
	["_UIScale9"] = Instance.new("UIScale");
	["_UISizeConstraint"] = Instance.new("UISizeConstraint");
	["_UIPadding21"] = Instance.new("UIPadding");
	["_UIGridLayout2"] = Instance.new("UIGridLayout");
	["_Sample1"] = Instance.new("ImageButton");
	["_UICorner38"] = Instance.new("UICorner");
	["_UIStroke25"] = Instance.new("UIStroke");
	["_UIPadding22"] = Instance.new("UIPadding");
	["_ImageLabel9"] = Instance.new("ImageLabel");
	["_TextLabel13"] = Instance.new("TextLabel");
	["_Filter1"] = Instance.new("CanvasGroup");
	["_Controller1"] = Instance.new("LocalScript");
	["_UICorner39"] = Instance.new("UICorner");
	["_UIStroke26"] = Instance.new("UIStroke");
	["_UIGradient9"] = Instance.new("UIGradient");
	["_TextLabel14"] = Instance.new("TextLabel");
	["_UIPadding23"] = Instance.new("UIPadding");
	["_ShowOnly"] = Instance.new("Frame");
	["_UIListLayout10"] = Instance.new("UIListLayout");
	["_TextLabel15"] = Instance.new("TextLabel");
	["_Exclude"] = Instance.new("Frame");
	["_UIFlexItem"] = Instance.new("UIFlexItem");
	["_UIGridLayout3"] = Instance.new("UIGridLayout");
	["_Loaded"] = Instance.new("TextButton");
	["_UICorner40"] = Instance.new("UICorner");
	["_UIPadding24"] = Instance.new("UIPadding");
	["_Favorites"] = Instance.new("TextButton");
	["_UICorner41"] = Instance.new("UICorner");
	["_UIPadding25"] = Instance.new("UIPadding");
	["_Custom"] = Instance.new("TextButton");
	["_UICorner42"] = Instance.new("UICorner");
	["_UIPadding26"] = Instance.new("UIPadding");
	["_CanvasGroup"] = Instance.new("CanvasGroup");
	["_UICorner43"] = Instance.new("UICorner");
	["_ImageLabel10"] = Instance.new("ImageLabel");
	["_Opener"] = Instance.new("TextButton");
	["_Close1"] = Instance.new("TextButton");
	["_UICorner44"] = Instance.new("UICorner");
	["_UIPadding27"] = Instance.new("UIPadding");
	["_UIScale10"] = Instance.new("UIScale");
	["_Open"] = Instance.new("BindableEvent");
	["_CloseEv"] = Instance.new("BindableEvent");
	["_CanvasGroup1"] = Instance.new("CanvasGroup");
	["_UICorner45"] = Instance.new("UICorner");
	["_ImageLabel11"] = Instance.new("ImageLabel");
	["_Opener1"] = Instance.new("TextButton");
	["_HubSubVersion"] = Instance.new("TextLabel");
	["_FloatingButtons1"] = Instance.new("Frame");
	["_PackEditor"] = Instance.new("Frame");
	["_Controller2"] = Instance.new("LocalScript");
	["_Open1"] = Instance.new("BindableEvent");
	["_Group"] = Instance.new("Frame");
	["_Backdrop"] = Instance.new("Frame");
	["_Frame1"] = Instance.new("Frame");
	["_UISizeConstraint1"] = Instance.new("UISizeConstraint");
	["_UICorner46"] = Instance.new("UICorner");
	["_UIGradient10"] = Instance.new("UIGradient");
	["_UIStroke27"] = Instance.new("UIStroke");
	["_UIGradient11"] = Instance.new("UIGradient");
	["_UIScale11"] = Instance.new("UIScale");
	["_Applied"] = Instance.new("Frame");
	["_UIListLayout11"] = Instance.new("UIListLayout");
	["_UIFlexItem1"] = Instance.new("UIFlexItem");
	["_idle"] = Instance.new("TextButton");
	["_Label1"] = Instance.new("TextLabel");
	["_UICorner47"] = Instance.new("UICorner");
	["_UIListLayout12"] = Instance.new("UIListLayout");
	["_UIPadding28"] = Instance.new("UIPadding");
	["_Thumbnail"] = Instance.new("Frame");
	["_UIFlexItem2"] = Instance.new("UIFlexItem");
	["_UIAspectRatioConstraint"] = Instance.new("UIAspectRatioConstraint");
	["_UICorner48"] = Instance.new("UICorner");
	["_ImageLabel12"] = Instance.new("ImageLabel");
	["_PackName"] = Instance.new("TextLabel");
	["_walk"] = Instance.new("TextButton");
	["_Label2"] = Instance.new("TextLabel");
	["_UICorner49"] = Instance.new("UICorner");
	["_UIListLayout13"] = Instance.new("UIListLayout");
	["_UIPadding29"] = Instance.new("UIPadding");
	["_Thumbnail1"] = Instance.new("Frame");
	["_UIFlexItem3"] = Instance.new("UIFlexItem");
	["_UIAspectRatioConstraint1"] = Instance.new("UIAspectRatioConstraint");
	["_UICorner50"] = Instance.new("UICorner");
	["_ImageLabel13"] = Instance.new("ImageLabel");
	["_PackName1"] = Instance.new("TextLabel");
	["_run"] = Instance.new("TextButton");
	["_Label3"] = Instance.new("TextLabel");
	["_UICorner51"] = Instance.new("UICorner");
	["_UIListLayout14"] = Instance.new("UIListLayout");
	["_UIPadding30"] = Instance.new("UIPadding");
	["_Thumbnail2"] = Instance.new("Frame");
	["_UIFlexItem4"] = Instance.new("UIFlexItem");
	["_UIAspectRatioConstraint2"] = Instance.new("UIAspectRatioConstraint");
	["_UICorner52"] = Instance.new("UICorner");
	["_ImageLabel14"] = Instance.new("ImageLabel");
	["_PackName2"] = Instance.new("TextLabel");
	["_jump"] = Instance.new("TextButton");
	["_Label4"] = Instance.new("TextLabel");
	["_UICorner53"] = Instance.new("UICorner");
	["_UIListLayout15"] = Instance.new("UIListLayout");
	["_UIPadding31"] = Instance.new("UIPadding");
	["_Thumbnail3"] = Instance.new("Frame");
	["_UIFlexItem5"] = Instance.new("UIFlexItem");
	["_UIAspectRatioConstraint3"] = Instance.new("UIAspectRatioConstraint");
	["_UICorner54"] = Instance.new("UICorner");
	["_ImageLabel15"] = Instance.new("ImageLabel");
	["_PackName3"] = Instance.new("TextLabel");
	["_fall"] = Instance.new("TextButton");
	["_Label5"] = Instance.new("TextLabel");
	["_UICorner55"] = Instance.new("UICorner");
	["_UIListLayout16"] = Instance.new("UIListLayout");
	["_UIPadding32"] = Instance.new("UIPadding");
	["_Thumbnail4"] = Instance.new("Frame");
	["_UIFlexItem6"] = Instance.new("UIFlexItem");
	["_UIAspectRatioConstraint4"] = Instance.new("UIAspectRatioConstraint");
	["_UICorner56"] = Instance.new("UICorner");
	["_ImageLabel16"] = Instance.new("ImageLabel");
	["_PackName4"] = Instance.new("TextLabel");
	["_climb"] = Instance.new("TextButton");
	["_Label6"] = Instance.new("TextLabel");
	["_UICorner57"] = Instance.new("UICorner");
	["_UIListLayout17"] = Instance.new("UIListLayout");
	["_UIPadding33"] = Instance.new("UIPadding");
	["_Thumbnail5"] = Instance.new("Frame");
	["_UIFlexItem7"] = Instance.new("UIFlexItem");
	["_UIAspectRatioConstraint5"] = Instance.new("UIAspectRatioConstraint");
	["_UICorner58"] = Instance.new("UICorner");
	["_ImageLabel17"] = Instance.new("ImageLabel");
	["_PackName5"] = Instance.new("TextLabel");
	["_swim"] = Instance.new("TextButton");
	["_Label7"] = Instance.new("TextLabel");
	["_UICorner59"] = Instance.new("UICorner");
	["_UIListLayout18"] = Instance.new("UIListLayout");
	["_UIPadding34"] = Instance.new("UIPadding");
	["_Thumbnail6"] = Instance.new("Frame");
	["_UIFlexItem8"] = Instance.new("UIFlexItem");
	["_UIAspectRatioConstraint6"] = Instance.new("UIAspectRatioConstraint");
	["_UICorner60"] = Instance.new("UICorner");
	["_ImageLabel18"] = Instance.new("ImageLabel");
	["_PackName6"] = Instance.new("TextLabel");
	["_UIListLayout19"] = Instance.new("UIListLayout");
	["_div"] = Instance.new("Frame");
	["_UICorner61"] = Instance.new("UICorner");
	["_UIPadding35"] = Instance.new("UIPadding");
	["_Bar"] = Instance.new("Frame");
	["_Close2"] = Instance.new("TextButton");
	["_UICorner62"] = Instance.new("UICorner");
	["_UIPadding36"] = Instance.new("UIPadding");
	["_UIListLayout20"] = Instance.new("UIListLayout");
	["_UIPadding37"] = Instance.new("UIPadding");
	["_Tip"] = Instance.new("TextLabel");
	["_UIFlexItem9"] = Instance.new("UIFlexItem");
	["_TakeFrom"] = Instance.new("ScrollingFrame");
	["_UIFlexItem10"] = Instance.new("UIFlexItem");
	["_UIListLayout21"] = Instance.new("UIListLayout");
	["_template"] = Instance.new("Frame");
	["_UIListLayout22"] = Instance.new("UIListLayout");
	["_Thumbnail7"] = Instance.new("Frame");
	["_UIFlexItem11"] = Instance.new("UIFlexItem");
	["_UIAspectRatioConstraint7"] = Instance.new("UIAspectRatioConstraint");
	["_UICorner63"] = Instance.new("UICorner");
	["_ImageLabel19"] = Instance.new("ImageLabel");
	["_Label8"] = Instance.new("TextLabel");
	["_UIPadding38"] = Instance.new("UIPadding");
	["_TextButton"] = Instance.new("TextButton");
	["_UICorner64"] = Instance.new("UICorner");
	["_UIPadding39"] = Instance.new("UIPadding");
}
-- Properties:
Converted["_AFEM"].DisplayOrder = 3
Converted["_AFEM"].IgnoreGuiInset = true
Converted["_AFEM"].ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
Converted["_AFEM"].ResetOnSpawn = false
Converted["_AFEM"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_AFEM"].Name = "AFEM"
Converted["_AFEM"].Parent = game:GetService("CoreGui")
Converted["_Notifications"].AnchorPoint = Vector2.new(1, 0.5)
Converted["_Notifications"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Notifications"].BackgroundTransparency = 1
Converted["_Notifications"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Notifications"].BorderSizePixel = 0
Converted["_Notifications"].Position = UDim2.new(0.99000001, 0, 0.5, 0)
Converted["_Notifications"].Size = UDim2.new(0, 242, 1, 0)
Converted["_Notifications"].ZIndex = 999999999
Converted["_Notifications"].Name = "Notifications"
Converted["_Notifications"].Parent = Converted["_AFEM"]
Converted["_UIListLayout"].Padding = UDim.new(0, 10)
Converted["_UIListLayout"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout"].VerticalAlignment = Enum.VerticalAlignment.Bottom
Converted["_UIListLayout"].Parent = Converted["_Notifications"]
Converted["_UIPadding"].PaddingBottom = UDim.new(0, 10)
Converted["_UIPadding"].PaddingLeft = UDim.new(0, 10)
Converted["_UIPadding"].Parent = Converted["_Notifications"]
Converted["_Placeholder"].AnchorPoint = Vector2.new(0.5, 0)
Converted["_Placeholder"].BackgroundColor3 = Color3.fromRGB(31.000001952052116, 31.000001952052116, 31.000001952052116)
Converted["_Placeholder"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Placeholder"].BorderSizePixel = 0
Converted["_Placeholder"].Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
Converted["_Placeholder"].Visible = false
Converted["_Placeholder"].ZIndex = 999999999
Converted["_Placeholder"].Name = "Placeholder"
Converted["_Placeholder"].Parent = Converted["_Notifications"]
Converted["_UICorner"].Parent = Converted["_Placeholder"]
Converted["_TextLabel"].Font = Enum.Font.Gotham
Converted["_TextLabel"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel"].TextScaled = true
Converted["_TextLabel"].TextSize = 14
Converted["_TextLabel"].TextWrapped = true
Converted["_TextLabel"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextLabel"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_TextLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel"].BackgroundTransparency = 1
Converted["_TextLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel"].BorderSizePixel = 0
Converted["_TextLabel"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_TextLabel"].Size = UDim2.new(0.899999976, 0, 0.800000012, 0)
Converted["_TextLabel"].Parent = Converted["_Placeholder"]
Converted["_SetCustomButtonEmote"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_SetCustomButtonEmote"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_SetCustomButtonEmote"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_SetCustomButtonEmote"].BorderSizePixel = 0
Converted["_SetCustomButtonEmote"].ClipsDescendants = true
Converted["_SetCustomButtonEmote"].Position = UDim2.new(0.5, 0, -0.5, 0)
Converted["_SetCustomButtonEmote"].Size = UDim2.new(0, 440, 0, 268)
Converted["_SetCustomButtonEmote"].ZIndex = 3
Converted["_SetCustomButtonEmote"].Name = "SetCustomButtonEmote"
Converted["_SetCustomButtonEmote"].Parent = Converted["_AFEM"]
Converted["_UICorner1"].Parent = Converted["_SetCustomButtonEmote"]
Converted["_UIStroke"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke"].Thickness = 2
Converted["_UIStroke"].Parent = Converted["_SetCustomButtonEmote"]
Converted["_UIGradient"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(53.00000064074993, 53.00000064074993, 53.00000064074993)),
	ColorSequenceKeypoint.new(0.15224914252758026, Color3.fromRGB(50.69031357765198, 50.69031357765198, 50.69031357765198)),
	ColorSequenceKeypoint.new(0.4723183512687683, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(0.7577854990959167, Color3.fromRGB(50.13314567506313, 50.13314567506313, 50.13314567506313)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(48.000000938773155, 48.000000938773155, 48.000000938773155))
}
Converted["_UIGradient"].Rotation = 62
Converted["_UIGradient"].Parent = Converted["_UIStroke"]
Converted["_UIGradient1"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(36.00000165402889, 36.00000165402889, 36.00000165402889)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(68.00000354647636, 68.00000354647636, 68.00000354647636))
}
Converted["_UIGradient1"].Rotation = 68
Converted["_UIGradient1"].Parent = Converted["_SetCustomButtonEmote"]
Converted["_UIScale"].Parent = Converted["_SetCustomButtonEmote"]
Converted["_TextLabel1"].Font = Enum.Font.Gotham
Converted["_TextLabel1"].Text = "Add UGC emote"
Converted["_TextLabel1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel1"].TextScaled = true
Converted["_TextLabel1"].TextSize = 14
Converted["_TextLabel1"].TextWrapped = true
Converted["_TextLabel1"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextLabel1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel1"].BackgroundTransparency = 1
Converted["_TextLabel1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel1"].BorderSizePixel = 0
Converted["_TextLabel1"].Position = UDim2.new(0.043181818, 0, 0.0485074632, 0)
Converted["_TextLabel1"].Size = UDim2.new(0.465644658, 0, 0.0947164297, 0)
Converted["_TextLabel1"].Parent = Converted["_SetCustomButtonEmote"]
Converted["_TextBox"].ClearTextOnFocus = false
Converted["_TextBox"].Font = Enum.Font.Gotham
Converted["_TextBox"].PlaceholderText = "Emote marketplace link"
Converted["_TextBox"].Text = ""
Converted["_TextBox"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextBox"].TextScaled = true
Converted["_TextBox"].TextSize = 14
Converted["_TextBox"].TextWrapped = true
Converted["_TextBox"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_TextBox"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
Converted["_TextBox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextBox"].BorderSizePixel = 0
Converted["_TextBox"].Position = UDim2.new(0.499648482, 0, 0.277268648, 0)
Converted["_TextBox"].Size = UDim2.new(0.804988801, 0, 0.173820958, 0)
Converted["_TextBox"].Parent = Converted["_SetCustomButtonEmote"]
Converted["_UICorner2"].Parent = Converted["_TextBox"]
Converted["_UIPadding1"].PaddingBottom = UDim.new(0, 10)
Converted["_UIPadding1"].PaddingLeft = UDim.new(0, 10)
Converted["_UIPadding1"].PaddingRight = UDim.new(0, 10)
Converted["_UIPadding1"].PaddingTop = UDim.new(0, 10)
Converted["_UIPadding1"].Parent = Converted["_TextBox"]
Converted["_Add"].Font = Enum.Font.Gotham
Converted["_Add"].Text = "Add"
Converted["_Add"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Add"].TextScaled = true
Converted["_Add"].TextSize = 14
Converted["_Add"].TextWrapped = true
Converted["_Add"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Add"].BackgroundColor3 = Color3.fromRGB(50.00000461935997, 50.00000461935997, 50.00000461935997)
Converted["_Add"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Add"].BorderSizePixel = 0
Converted["_Add"].Position = UDim2.new(0.108492024, 0, 0.927298486, 0)
Converted["_Add"].Size = UDim2.new(0.163265288, 0, 0.0858208984, 0)
Converted["_Add"].Name = "Add"
Converted["_Add"].Parent = Converted["_SetCustomButtonEmote"]
Converted["_UICorner3"].Parent = Converted["_Add"]
Converted["_UIPadding2"].PaddingBottom = UDim.new(0, 5)
Converted["_UIPadding2"].PaddingLeft = UDim.new(0, 5)
Converted["_UIPadding2"].PaddingRight = UDim.new(0, 5)
Converted["_UIPadding2"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding2"].Parent = Converted["_Add"]
Converted["_UIStroke1"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke1"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke1"].Parent = Converted["_Add"]
Converted["_Cancel"].Font = Enum.Font.Gotham
Converted["_Cancel"].Text = "Cancel"
Converted["_Cancel"].TextColor3 = Color3.fromRGB(255, 0, 0)
Converted["_Cancel"].TextScaled = true
Converted["_Cancel"].TextSize = 14
Converted["_Cancel"].TextWrapped = true
Converted["_Cancel"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Cancel"].BackgroundColor3 = Color3.fromRGB(50.00000461935997, 50.00000461935997, 50.00000461935997)
Converted["_Cancel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Cancel"].BorderSizePixel = 0
Converted["_Cancel"].Position = UDim2.new(0.899875283, 0, 0.931029797, 0)
Converted["_Cancel"].Size = UDim2.new(0.163265288, 0, 0.0858208984, 0)
Converted["_Cancel"].Name = "Cancel"
Converted["_Cancel"].Parent = Converted["_SetCustomButtonEmote"]
Converted["_UICorner4"].Parent = Converted["_Cancel"]
Converted["_UIPadding3"].PaddingBottom = UDim.new(0, 5)
Converted["_UIPadding3"].PaddingLeft = UDim.new(0, 5)
Converted["_UIPadding3"].PaddingRight = UDim.new(0, 5)
Converted["_UIPadding3"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding3"].Parent = Converted["_Cancel"]
Converted["_UIStroke2"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke2"].Color = Color3.fromRGB(255, 0, 0)
Converted["_UIStroke2"].Parent = Converted["_Cancel"]
Converted["_Marketplace"].AutomaticCanvasSize = Enum.AutomaticSize.X
Converted["_Marketplace"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_Marketplace"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Marketplace"].ScrollBarImageTransparency = 0.5
Converted["_Marketplace"].ScrollBarThickness = 2
Converted["_Marketplace"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Marketplace"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Marketplace"].BackgroundTransparency = 1
Converted["_Marketplace"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Marketplace"].BorderSizePixel = 0
Converted["_Marketplace"].ClipsDescendants = false
Converted["_Marketplace"].Position = UDim2.new(0.5, 0, 0.600000024, 0)
Converted["_Marketplace"].Selectable = false
Converted["_Marketplace"].Size = UDim2.new(1, -50, 0, 100)
Converted["_Marketplace"].Name = "Marketplace"
Converted["_Marketplace"].Parent = Converted["_SetCustomButtonEmote"]
Converted["_Template"].Text = ""
Converted["_Template"].Active = false
Converted["_Template"].BackgroundColor3 = Color3.fromRGB(29.000000171363354, 29.000000171363354, 29.000000171363354)
Converted["_Template"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Template"].BorderSizePixel = 0
Converted["_Template"].Selectable = false
Converted["_Template"].Size = UDim2.new(0, 100, 1, 0)
Converted["_Template"].Visible = false
Converted["_Template"].Name = "Template"
Converted["_Template"].Parent = Converted["_Marketplace"]
Converted["_UICorner5"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner5"].Parent = Converted["_Template"]
Converted["_UIPadding4"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding4"].PaddingLeft = UDim.new(0, 6)
Converted["_UIPadding4"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding4"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding4"].Parent = Converted["_Template"]
Converted["_ImageLabel"].Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
-- Converted["_ImageLabel"].ImageContent = Content
Converted["_ImageLabel"].AnchorPoint = Vector2.new(0.5, 1)
Converted["_ImageLabel"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel"].BackgroundTransparency = 1
Converted["_ImageLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel"].BorderSizePixel = 0
Converted["_ImageLabel"].Position = UDim2.new(0.5, 0, 1, 0)
Converted["_ImageLabel"].Size = UDim2.new(0, 65, 0, 65)
Converted["_ImageLabel"].Parent = Converted["_Template"]
Converted["_Label"].Font = Enum.Font.Gotham
Converted["_Label"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label"].TextScaled = true
Converted["_Label"].TextSize = 14
Converted["_Label"].TextWrapped = true
Converted["_Label"].BackgroundColor3 = Color3.fromRGB(46.000001057982445, 46.000001057982445, 46.000001057982445)
Converted["_Label"].BackgroundTransparency = 1
Converted["_Label"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Label"].BorderSizePixel = 0
Converted["_Label"].Size = UDim2.new(1, 0, 0, 20)
Converted["_Label"].Name = "Label"
Converted["_Label"].Parent = Converted["_Template"]
Converted["_LoadMore"].Font = Enum.Font.Gotham
Converted["_LoadMore"].Text = ""
Converted["_LoadMore"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_LoadMore"].TextScaled = true
Converted["_LoadMore"].TextSize = 14
Converted["_LoadMore"].TextWrapped = true
Converted["_LoadMore"].BackgroundColor3 = Color3.fromRGB(29.000000171363354, 29.000000171363354, 29.000000171363354)
Converted["_LoadMore"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_LoadMore"].BorderSizePixel = 0
Converted["_LoadMore"].LayoutOrder = 999999999
Converted["_LoadMore"].Size = UDim2.new(0, 25, 1, 0)
Converted["_LoadMore"].Name = "LoadMore"
Converted["_LoadMore"].Parent = Converted["_Marketplace"]
Converted["_UICorner6"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner6"].Parent = Converted["_LoadMore"]
Converted["_ImageLabel1"].Image = "rbxassetid://16686518302"
-- Converted["_ImageLabel1"].ImageContent = Content
Converted["_ImageLabel1"].ScaleType = Enum.ScaleType.Fit
Converted["_ImageLabel1"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ImageLabel1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel1"].BackgroundTransparency = 1
Converted["_ImageLabel1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel1"].BorderSizePixel = 0
Converted["_ImageLabel1"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_ImageLabel1"].Rotation = -90
Converted["_ImageLabel1"].Size = UDim2.new(1, -10, 0, 20)
Converted["_ImageLabel1"].Parent = Converted["_LoadMore"]
Converted["_UIListLayout1"].Padding = UDim.new(0, 6)
Converted["_UIListLayout1"].FillDirection = Enum.FillDirection.Horizontal
Converted["_UIListLayout1"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout1"].Parent = Converted["_Marketplace"]
Converted["_Loading"].GroupTransparency = 1
Converted["_Loading"].Active = true
Converted["_Loading"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Loading"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Loading"].BackgroundTransparency = 0.5
Converted["_Loading"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Loading"].BorderSizePixel = 0
Converted["_Loading"].Interactable = false
Converted["_Loading"].Position = UDim2.new(0.5, 0, 0.600000024, 0)
Converted["_Loading"].Size = UDim2.new(1, -40, 0, 110)
Converted["_Loading"].SelectionGroup = true
Converted["_Loading"].Name = "Loading"
Converted["_Loading"].Parent = Converted["_SetCustomButtonEmote"]
Converted["_UICorner7"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner7"].Parent = Converted["_Loading"]
Converted["_Spinner"].Image = "rbxassetid://17119858971"
-- Converted["_Spinner"].ImageContent = Content
Converted["_Spinner"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Spinner"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Spinner"].BackgroundTransparency = 1
Converted["_Spinner"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Spinner"].BorderSizePixel = 0
Converted["_Spinner"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_Spinner"].Rotation = -180
Converted["_Spinner"].Size = UDim2.new(0, 50, 0, 50)
Converted["_Spinner"].Name = "Spinner"
Converted["_Spinner"].Parent = Converted["_Loading"]
Converted["_Block"].Font = Enum.Font.SourceSans
Converted["_Block"].Text = ""
Converted["_Block"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Block"].TextSize = 14
Converted["_Block"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Block"].BackgroundTransparency = 1
Converted["_Block"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Block"].BorderSizePixel = 0
Converted["_Block"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Block"].Name = "Block"
Converted["_Block"].Parent = Converted["_Loading"]
Converted["_FSLoading"].GroupTransparency = 1
Converted["_FSLoading"].Active = true
Converted["_FSLoading"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_FSLoading"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_FSLoading"].BackgroundTransparency = 0.4000000059604645
Converted["_FSLoading"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_FSLoading"].BorderSizePixel = 0
Converted["_FSLoading"].Interactable = false
Converted["_FSLoading"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_FSLoading"].Size = UDim2.new(1, -10, 1, -10)
Converted["_FSLoading"].SelectionGroup = true
Converted["_FSLoading"].Name = "FSLoading"
Converted["_FSLoading"].Parent = Converted["_SetCustomButtonEmote"]
Converted["_UICorner8"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner8"].Parent = Converted["_FSLoading"]
Converted["_Spinner1"].Image = "rbxassetid://17119858971"
-- Converted["_Spinner1"].ImageContent = Content
Converted["_Spinner1"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Spinner1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Spinner1"].BackgroundTransparency = 1
Converted["_Spinner1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Spinner1"].BorderSizePixel = 0
Converted["_Spinner1"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_Spinner1"].Rotation = -180
Converted["_Spinner1"].Size = UDim2.new(0, 50, 0, 50)
Converted["_Spinner1"].Name = "Spinner"
Converted["_Spinner1"].Parent = Converted["_FSLoading"]
Converted["_Block1"].Font = Enum.Font.SourceSans
Converted["_Block1"].Text = ""
Converted["_Block1"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Block1"].TextSize = 14
Converted["_Block1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Block1"].BackgroundTransparency = 1
Converted["_Block1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Block1"].BorderSizePixel = 0
Converted["_Block1"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Block1"].Name = "Block"
Converted["_Block1"].Parent = Converted["_FSLoading"]
Converted["_Search"].Font = Enum.Font.Gotham
Converted["_Search"].PlaceholderText = "Search"
Converted["_Search"].Text = ""
Converted["_Search"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Search"].TextScaled = true
Converted["_Search"].TextSize = 14
Converted["_Search"].TextWrapped = true
Converted["_Search"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Search"].AnchorPoint = Vector2.new(0.5, 1)
Converted["_Search"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
Converted["_Search"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Search"].BorderSizePixel = 0
Converted["_Search"].Position = UDim2.new(0.5, 0, 1, -10)
Converted["_Search"].Size = UDim2.new(0, 125, 0, 30)
Converted["_Search"].Name = "Search"
Converted["_Search"].Parent = Converted["_SetCustomButtonEmote"]
Converted["_UICorner9"].Parent = Converted["_Search"]
Converted["_UIPadding5"].PaddingBottom = UDim.new(0, 7)
Converted["_UIPadding5"].PaddingLeft = UDim.new(0, 7)
Converted["_UIPadding5"].PaddingRight = UDim.new(0, 7)
Converted["_UIPadding5"].PaddingTop = UDim.new(0, 7)
Converted["_UIPadding5"].Parent = Converted["_Search"]
Converted["_Menu"].AnchorPoint = Vector2.new(1, 1)
Converted["_Menu"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Menu"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Menu"].BorderSizePixel = 0
Converted["_Menu"].Position = UDim2.new(1, -20, 0.699999988, 0)
Converted["_Menu"].Size = UDim2.new(0, 309, 0, 188)
Converted["_Menu"].Name = "Menu"
Converted["_Menu"].Parent = Converted["_AFEM"]
Converted["_UICorner10"].Parent = Converted["_Menu"]
Converted["_UIStroke3"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke3"].Thickness = 2
Converted["_UIStroke3"].Parent = Converted["_Menu"]
Converted["_UIGradient2"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(53.00000064074993, 53.00000064074993, 53.00000064074993)),
	ColorSequenceKeypoint.new(0.15224914252758026, Color3.fromRGB(50.69031357765198, 50.69031357765198, 50.69031357765198)),
	ColorSequenceKeypoint.new(0.4723183512687683, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(0.7577854990959167, Color3.fromRGB(50.13314567506313, 50.13314567506313, 50.13314567506313)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(48.000000938773155, 48.000000938773155, 48.000000938773155))
}
Converted["_UIGradient2"].Rotation = 180
Converted["_UIGradient2"].Parent = Converted["_UIStroke3"]
Converted["_HubCredits"].Font = Enum.Font.GothamBold
Converted["_HubCredits"].Text = "made and open sourced by imperial"
Converted["_HubCredits"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_HubCredits"].TextScaled = true
Converted["_HubCredits"].TextSize = 14
Converted["_HubCredits"].TextTransparency = 0.699999988079071
Converted["_HubCredits"].TextWrapped = true
Converted["_HubCredits"].TextXAlignment = Enum.TextXAlignment.Right
Converted["_HubCredits"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_HubCredits"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_HubCredits"].BackgroundTransparency = 1
Converted["_HubCredits"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_HubCredits"].BorderSizePixel = 0
Converted["_HubCredits"].Position = UDim2.new(0.785926819, 0, 0.160157606, 0)
Converted["_HubCredits"].Size = UDim2.new(0.316320807, 0, 0.0585099049, 0)
Converted["_HubCredits"].Name = "HubCredits"
Converted["_HubCredits"].Parent = Converted["_Menu"]
Converted["_HubDesc"].Font = Enum.Font.GothamBold
Converted["_HubDesc"].Text = "a free emotes menu"
Converted["_HubDesc"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_HubDesc"].TextSize = 14
Converted["_HubDesc"].TextWrapped = true
Converted["_HubDesc"].TextXAlignment = Enum.TextXAlignment.Right
Converted["_HubDesc"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_HubDesc"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_HubDesc"].BackgroundTransparency = 1
Converted["_HubDesc"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_HubDesc"].BorderSizePixel = 0
Converted["_HubDesc"].Position = UDim2.new(0.708829343, 0, 0.116141364, 0)
Converted["_HubDesc"].Size = UDim2.new(0.470515788, 0, 0.082417585, 0)
Converted["_HubDesc"].Name = "HubDesc"
Converted["_HubDesc"].Parent = Converted["_Menu"]
Converted["_HubName"].Font = Enum.Font.GothamBold
Converted["_HubName"].Text = "AFEM"
Converted["_HubName"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_HubName"].TextScaled = true
Converted["_HubName"].TextSize = 14
Converted["_HubName"].TextWrapped = true
Converted["_HubName"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_HubName"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_HubName"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_HubName"].BackgroundTransparency = 1
Converted["_HubName"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_HubName"].BorderSizePixel = 0
Converted["_HubName"].Position = UDim2.new(0.186153606, 0, 0.112410031, 0)
Converted["_HubName"].Size = UDim2.new(0.259631485, 0, 0.0824175924, 0)
Converted["_HubName"].Name = "HubName"
Converted["_HubName"].Parent = Converted["_Menu"]
Converted["_Area"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Area"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Area"].BackgroundTransparency = 1
Converted["_Area"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Area"].BorderSizePixel = 0
Converted["_Area"].ClipsDescendants = true
Converted["_Area"].Position = UDim2.new(0.5, 0, 0.606000006, 0)
Converted["_Area"].Size = UDim2.new(1, 0, 0.783999979, 0)
Converted["_Area"].Name = "Area"
Converted["_Area"].Parent = Converted["_Menu"]
Converted["_Area1"].AutomaticCanvasSize = Enum.AutomaticSize.Y
Converted["_Area1"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_Area1"].ScrollBarThickness = 0
Converted["_Area1"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Area1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Area1"].BackgroundTransparency = 1
Converted["_Area1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Area1"].BorderSizePixel = 0
Converted["_Area1"].Position = UDim2.new(0.50000006, 0, 0.598377109, 0)
Converted["_Area1"].Selectable = false
Converted["_Area1"].Size = UDim2.new(0.900000036, 0, 0.803245783, 0)
Converted["_Area1"].Name = "Area"
Converted["_Area1"].Parent = Converted["_Area"]
Converted["_UIGridLayout"].CellSize = UDim2.new(0, 110, 0, 110)
Converted["_UIGridLayout"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIGridLayout"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIGridLayout"].Parent = Converted["_Area1"]
Converted["_Sample"].BackgroundColor3 = Color3.fromRGB(46.000001057982445, 46.000001057982445, 46.000001057982445)
Converted["_Sample"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Sample"].BorderSizePixel = 0
Converted["_Sample"].Size = UDim2.new(0, 80, 0, 80)
Converted["_Sample"].Visible = false
Converted["_Sample"].Name = "Sample"
Converted["_Sample"].Parent = Converted["_Area1"]
Converted["_UICorner11"].Parent = Converted["_Sample"]
Converted["_UIStroke4"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke4"].Parent = Converted["_Sample"]
Converted["_CustomEffect"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 111.00000098347664, 224.000001847744)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(160.00000566244125, 219.0000021457672, 255))
}
Converted["_CustomEffect"].Enabled = false
Converted["_CustomEffect"].Rotation = -37
Converted["_CustomEffect"].Name = "CustomEffect"
Converted["_CustomEffect"].Parent = Converted["_UIStroke4"]
Converted["_UIPadding6"].PaddingBottom = UDim.new(0, 5)
Converted["_UIPadding6"].Parent = Converted["_Sample"]
Converted["_ImageLabel2"].Image = "rbxthumb://type=Asset&id=14353423348&w=420&h=420"
-- Converted["_ImageLabel2"].ImageContent = Content
Converted["_ImageLabel2"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ImageLabel2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel2"].BackgroundTransparency = 1
Converted["_ImageLabel2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel2"].BorderSizePixel = 0
Converted["_ImageLabel2"].Position = UDim2.new(0.5, 0, 0.400000006, 0)
Converted["_ImageLabel2"].Size = UDim2.new(0.75, 0, 0.75, 0)
Converted["_ImageLabel2"].Parent = Converted["_Sample"]
Converted["_TextLabel2"].Font = Enum.Font.Gotham
Converted["_TextLabel2"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel2"].TextScaled = true
Converted["_TextLabel2"].TextSize = 14
Converted["_TextLabel2"].TextWrapped = true
Converted["_TextLabel2"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_TextLabel2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel2"].BackgroundTransparency = 1
Converted["_TextLabel2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel2"].BorderSizePixel = 0
Converted["_TextLabel2"].Position = UDim2.new(0.5, 0, 0.874418736, 0)
Converted["_TextLabel2"].Size = UDim2.new(1, 0, 0.251162499, 0)
Converted["_TextLabel2"].Parent = Converted["_Sample"]
Converted["_Favorite"].Image = "rbxassetid://13332356065"
-- Converted["_Favorite"].ImageContent = Content
Converted["_Favorite"].AnchorPoint = Vector2.new(1, 0)
Converted["_Favorite"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Favorite"].BackgroundTransparency = 1
Converted["_Favorite"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Favorite"].BorderSizePixel = 0
Converted["_Favorite"].Position = UDim2.new(1, -4, 0, 4)
Converted["_Favorite"].Size = UDim2.new(0, 24, 0, 24)
Converted["_Favorite"].Name = "Favorite"
Converted["_Favorite"].Parent = Converted["_Sample"]
Converted["_Delete"].Image = "rbxassetid://111704740561400"
-- Converted["_Delete"].ImageContent = Content
Converted["_Delete"].AnchorPoint = Vector2.new(1, 1)
Converted["_Delete"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Delete"].BackgroundTransparency = 1
Converted["_Delete"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Delete"].BorderSizePixel = 0
Converted["_Delete"].Position = UDim2.new(1, -4, 1, -4)
Converted["_Delete"].Size = UDim2.new(0, 20, 0, 20)
Converted["_Delete"].Visible = false
Converted["_Delete"].Name = "Delete"
Converted["_Delete"].Parent = Converted["_Sample"]
Converted["_UIPadding7"].PaddingBottom = UDim.new(0, 5)
Converted["_UIPadding7"].PaddingLeft = UDim.new(0, 5)
Converted["_UIPadding7"].PaddingRight = UDim.new(0, 5)
Converted["_UIPadding7"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding7"].Parent = Converted["_Area1"]
Converted["_TextLabel3"].Font = Enum.Font.Gotham
Converted["_TextLabel3"].Text = "Loading..."
Converted["_TextLabel3"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel3"].TextScaled = true
Converted["_TextLabel3"].TextSize = 14
Converted["_TextLabel3"].TextTransparency = 0.41999998688697815
Converted["_TextLabel3"].TextWrapped = true
Converted["_TextLabel3"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_TextLabel3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel3"].BackgroundTransparency = 1
Converted["_TextLabel3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel3"].BorderSizePixel = 0
Converted["_TextLabel3"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_TextLabel3"].Size = UDim2.new(0, 100, 0, 50)
Converted["_TextLabel3"].Parent = Converted["_Area"]
Converted["_TextBox1"].Font = Enum.Font.Gotham
Converted["_TextBox1"].PlaceholderText = "Search..."
Converted["_TextBox1"].Text = ""
Converted["_TextBox1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextBox1"].TextScaled = true
Converted["_TextBox1"].TextSize = 14
Converted["_TextBox1"].TextWrapped = true
Converted["_TextBox1"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextBox1"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_TextBox1"].BackgroundColor3 = Color3.fromRGB(31.000001952052116, 31.000001952052116, 31.000001952052116)
Converted["_TextBox1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextBox1"].BorderSizePixel = 0
Converted["_TextBox1"].Position = UDim2.new(0.727198064, 0, 0.092922166, 0)
Converted["_TextBox1"].Size = UDim2.new(0, 132, 0, 22)
Converted["_TextBox1"].Parent = Converted["_Area"]
Converted["_UICorner12"].CornerRadius = UDim.new(1, 0)
Converted["_UICorner12"].Parent = Converted["_TextBox1"]
Converted["_UIPadding8"].PaddingBottom = UDim.new(0, 5)
Converted["_UIPadding8"].PaddingLeft = UDim.new(0, 5)
Converted["_UIPadding8"].PaddingRight = UDim.new(0, 5)
Converted["_UIPadding8"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding8"].Parent = Converted["_TextBox1"]
Converted["_Switch"].Font = Enum.Font.Gotham
Converted["_Switch"].Text = "Emotes"
Converted["_Switch"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Switch"].TextScaled = true
Converted["_Switch"].TextSize = 14
Converted["_Switch"].TextWrapped = true
Converted["_Switch"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
Converted["_Switch"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Switch"].BorderSizePixel = 0
Converted["_Switch"].Position = UDim2.new(0.0550160818, 0, 0.0135692572, 0)
Converted["_Switch"].Size = UDim2.new(0, 89, 0, 22)
Converted["_Switch"].Name = "Switch"
Converted["_Switch"].Parent = Converted["_Area"]
Converted["_UICorner13"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner13"].Parent = Converted["_Switch"]
Converted["_UIPadding9"].PaddingBottom = UDim.new(0, 3)
Converted["_UIPadding9"].PaddingLeft = UDim.new(0, 7)
Converted["_UIPadding9"].PaddingRight = UDim.new(0, 7)
Converted["_UIPadding9"].PaddingTop = UDim.new(0, 3)
Converted["_UIPadding9"].Parent = Converted["_Switch"]
Converted["_UIStroke5"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke5"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke5"].Thickness = 1.600000023841858
Converted["_UIStroke5"].Parent = Converted["_Switch"]
Converted["_UIGradient3"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
}
Converted["_UIGradient3"].Rotation = -90
Converted["_UIGradient3"].Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(1, 1)
}
Converted["_UIGradient3"].Parent = Converted["_UIStroke5"]
Converted["_SettingsButton"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
Converted["_SettingsButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_SettingsButton"].BorderSizePixel = 0
Converted["_SettingsButton"].Position = UDim2.new(0.378640771, 0, 0.0135692572, 0)
Converted["_SettingsButton"].Size = UDim2.new(0, 29, 0, 22)
Converted["_SettingsButton"].Name = "SettingsButton"
Converted["_SettingsButton"].Parent = Converted["_Area"]
Converted["_UICorner14"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner14"].Parent = Converted["_SettingsButton"]
Converted["_UIPadding10"].PaddingBottom = UDim.new(0, 3)
Converted["_UIPadding10"].PaddingLeft = UDim.new(0, 7)
Converted["_UIPadding10"].PaddingRight = UDim.new(0, 7)
Converted["_UIPadding10"].PaddingTop = UDim.new(0, 3)
Converted["_UIPadding10"].Parent = Converted["_SettingsButton"]
Converted["_UIStroke6"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke6"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke6"].Thickness = 1.600000023841858
Converted["_UIStroke6"].Parent = Converted["_SettingsButton"]
Converted["_UIGradient4"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
}
Converted["_UIGradient4"].Rotation = -90
Converted["_UIGradient4"].Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(1, 1)
}
Converted["_UIGradient4"].Parent = Converted["_UIStroke6"]
Converted["_ImageLabel3"].Image = "rbxassetid://9753762469"
-- Converted["_ImageLabel3"].ImageContent = Content
Converted["_ImageLabel3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel3"].BackgroundTransparency = 1
Converted["_ImageLabel3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel3"].BorderSizePixel = 0
Converted["_ImageLabel3"].Size = UDim2.new(0, 15, 0, 15)
Converted["_ImageLabel3"].Parent = Converted["_SettingsButton"]
Converted["_UIScale1"].Parent = Converted["_Area"]
Converted["_SearchUpdate"].Name = "SearchUpdate"
Converted["_SearchUpdate"].Parent = Converted["_Area"]
Converted["_Toolbar"].AnchorPoint = Vector2.new(1, 0.5)
Converted["_Toolbar"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Toolbar"].BackgroundTransparency = 1
Converted["_Toolbar"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Toolbar"].BorderSizePixel = 0
Converted["_Toolbar"].Position = UDim2.new(1, 0, 0.5, 0)
Converted["_Toolbar"].Size = UDim2.new(0, 40, 1, 0)
Converted["_Toolbar"].Name = "Toolbar"
Converted["_Toolbar"].Parent = Converted["_Area"]
Converted["_UIListLayout2"].Padding = UDim.new(0, 5)
Converted["_UIListLayout2"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout2"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout2"].VerticalAlignment = Enum.VerticalAlignment.Bottom
Converted["_UIListLayout2"].Parent = Converted["_Toolbar"]
Converted["_AddNewEmotes"].AnchorPoint = Vector2.new(1, 1)
Converted["_AddNewEmotes"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
Converted["_AddNewEmotes"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_AddNewEmotes"].BorderSizePixel = 0
Converted["_AddNewEmotes"].LayoutOrder = 1
Converted["_AddNewEmotes"].Position = UDim2.new(1, -5, 1, -5)
Converted["_AddNewEmotes"].Size = UDim2.new(0, 29, 0, 22)
Converted["_AddNewEmotes"].Name = "AddNewEmotes"
Converted["_AddNewEmotes"].Parent = Converted["_Toolbar"]
Converted["_UICorner15"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner15"].Parent = Converted["_AddNewEmotes"]
Converted["_UIPadding11"].PaddingBottom = UDim.new(0, 3)
Converted["_UIPadding11"].PaddingLeft = UDim.new(0, 7)
Converted["_UIPadding11"].PaddingRight = UDim.new(0, 7)
Converted["_UIPadding11"].PaddingTop = UDim.new(0, 3)
Converted["_UIPadding11"].Parent = Converted["_AddNewEmotes"]
Converted["_UIStroke7"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke7"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke7"].Thickness = 1.600000023841858
Converted["_UIStroke7"].Parent = Converted["_AddNewEmotes"]
Converted["_UIGradient5"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
}
Converted["_UIGradient5"].Rotation = -90
Converted["_UIGradient5"].Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(1, 1)
}
Converted["_UIGradient5"].Parent = Converted["_UIStroke7"]
Converted["_ImageLabel4"].Image = "rbxassetid://14915516955"
-- Converted["_ImageLabel4"].ImageContent = Content
Converted["_ImageLabel4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel4"].BackgroundTransparency = 1
Converted["_ImageLabel4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel4"].BorderSizePixel = 0
Converted["_ImageLabel4"].Size = UDim2.new(0, 15, 0, 15)
Converted["_ImageLabel4"].Parent = Converted["_AddNewEmotes"]
Converted["_UIPadding12"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding12"].Parent = Converted["_Toolbar"]
Converted["_Filter"].AnchorPoint = Vector2.new(1, 1)
Converted["_Filter"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
Converted["_Filter"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Filter"].BorderSizePixel = 0
Converted["_Filter"].Position = UDim2.new(1, -5, 1, -5)
Converted["_Filter"].Size = UDim2.new(0, 29, 0, 22)
Converted["_Filter"].Name = "Filter"
Converted["_Filter"].Parent = Converted["_Toolbar"]
Converted["_UICorner16"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner16"].Parent = Converted["_Filter"]
Converted["_UIPadding13"].PaddingBottom = UDim.new(0, 3)
Converted["_UIPadding13"].PaddingLeft = UDim.new(0, 7)
Converted["_UIPadding13"].PaddingRight = UDim.new(0, 7)
Converted["_UIPadding13"].PaddingTop = UDim.new(0, 3)
Converted["_UIPadding13"].Parent = Converted["_Filter"]
Converted["_UIStroke8"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke8"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke8"].Thickness = 1.600000023841858
Converted["_UIStroke8"].Parent = Converted["_Filter"]
Converted["_UIGradient6"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
}
Converted["_UIGradient6"].Rotation = -90
Converted["_UIGradient6"].Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(1, 1)
}
Converted["_UIGradient6"].Parent = Converted["_UIStroke8"]
Converted["_ImageLabel5"].Image = "rbxassetid://7964618035"
-- Converted["_ImageLabel5"].ImageContent = Content
Converted["_ImageLabel5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel5"].BackgroundTransparency = 1
Converted["_ImageLabel5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel5"].BorderSizePixel = 0
Converted["_ImageLabel5"].Size = UDim2.new(0, 15, 0, 15)
Converted["_ImageLabel5"].Parent = Converted["_Filter"]
Converted["_UIGradient7"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(36.00000165402889, 36.00000165402889, 36.00000165402889)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(68.00000354647636, 68.00000354647636, 68.00000354647636))
}
Converted["_UIGradient7"].Rotation = 68
Converted["_UIGradient7"].Parent = Converted["_Menu"]
Converted["_CloseArea"].Text = ""
Converted["_CloseArea"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_CloseArea"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_CloseArea"].BackgroundTransparency = 1
Converted["_CloseArea"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_CloseArea"].BorderSizePixel = 0
Converted["_CloseArea"].Position = UDim2.new(0.5, 0, 0.00295135868, 0)
Converted["_CloseArea"].Size = UDim2.new(0.326999992, 0, 0.184, 0)
Converted["_CloseArea"].Name = "CloseArea"
Converted["_CloseArea"].Parent = Converted["_Menu"]
Converted["_Frame"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Frame"].BackgroundTransparency = 0.6499999761581421
Converted["_Frame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame"].BorderSizePixel = 0
Converted["_Frame"].Position = UDim2.new(0.5, 0, 0.699999988, 0)
Converted["_Frame"].Size = UDim2.new(0.699999988, 0, 0.100000001, 0)
Converted["_Frame"].Parent = Converted["_CloseArea"]
Converted["_UICorner17"].CornerRadius = UDim.new(0, 9999)
Converted["_UICorner17"].Parent = Converted["_Frame"]
Converted["_TextLabel4"].Font = Enum.Font.Gotham
Converted["_TextLabel4"].Text = "Tap here to minimize."
Converted["_TextLabel4"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel4"].TextSize = 15
Converted["_TextLabel4"].TextWrapped = true
Converted["_TextLabel4"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_TextLabel4"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel4"].BackgroundTransparency = 0.4000000059604645
Converted["_TextLabel4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel4"].BorderSizePixel = 0
Converted["_TextLabel4"].Position = UDim2.new(0.5, 0, 0.600000024, 0)
Converted["_TextLabel4"].Size = UDim2.new(2, 0, 0.841000021, 0)
Converted["_TextLabel4"].Parent = Converted["_CloseArea"]
Converted["_UICorner18"].Parent = Converted["_TextLabel4"]
Converted["_Close"].Name = "Close"
Converted["_Close"].Parent = Converted["_Menu"]
Converted["_HubVersion"].Font = Enum.Font.GothamBold
Converted["_HubVersion"].Text = "2"
Converted["_HubVersion"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_HubVersion"].TextScaled = true
Converted["_HubVersion"].TextSize = 1
Converted["_HubVersion"].TextTransparency = 0.6399999856948853
Converted["_HubVersion"].TextWrapped = true
Converted["_HubVersion"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_HubVersion"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_HubVersion"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_HubVersion"].BackgroundTransparency = 1
Converted["_HubVersion"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_HubVersion"].BorderSizePixel = 0
Converted["_HubVersion"].Position = UDim2.new(0.270295858, 0, 0.112319134, 0)
Converted["_HubVersion"].Size = UDim2.new(0.259631515, 0, 0.224638268, 0)
Converted["_HubVersion"].Name = "HubVersion"
Converted["_HubVersion"].Parent = Converted["_Menu"]
Converted["_Settings"].GroupTransparency = 1
Converted["_Settings"].Active = true
Converted["_Settings"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Settings"].BackgroundColor3 = Color3.fromRGB(24.00000236928463, 24.00000236928463, 24.00000236928463)
Converted["_Settings"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Settings"].BorderSizePixel = 0
Converted["_Settings"].Interactable = false
Converted["_Settings"].Position = UDim2.new(0.5, 0, 0.606000006, 0)
Converted["_Settings"].Size = UDim2.new(1, 0, 0.783999979, 0)
Converted["_Settings"].ZIndex = 2
Converted["_Settings"].Name = "Settings"
Converted["_Settings"].Parent = Converted["_Menu"]
Converted["_UICorner19"].Parent = Converted["_Settings"]
Converted["_TextLabel5"].Font = Enum.Font.GothamBold
Converted["_TextLabel5"].Text = "Settings"
Converted["_TextLabel5"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel5"].TextScaled = true
Converted["_TextLabel5"].TextSize = 14
Converted["_TextLabel5"].TextWrapped = true
Converted["_TextLabel5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel5"].BackgroundTransparency = 1
Converted["_TextLabel5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel5"].BorderSizePixel = 0
Converted["_TextLabel5"].Position = UDim2.new(0.0647249222, 0, 0.0949848071, 0)
Converted["_TextLabel5"].Size = UDim2.new(0, 86, 0, 21)
Converted["_TextLabel5"].Parent = Converted["_Settings"]
Converted["_Back"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
Converted["_Back"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Back"].BorderSizePixel = 0
Converted["_Back"].Position = UDim2.new(0.822006464, 0, 0.0949848071, 0)
Converted["_Back"].Size = UDim2.new(0, 29, 0, 22)
Converted["_Back"].Name = "Back"
Converted["_Back"].Parent = Converted["_Settings"]
Converted["_UICorner20"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner20"].Parent = Converted["_Back"]
Converted["_UIPadding14"].PaddingBottom = UDim.new(0, 3)
Converted["_UIPadding14"].PaddingLeft = UDim.new(0, 7)
Converted["_UIPadding14"].PaddingRight = UDim.new(0, 7)
Converted["_UIPadding14"].PaddingTop = UDim.new(0, 3)
Converted["_UIPadding14"].Parent = Converted["_Back"]
Converted["_UIStroke9"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke9"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke9"].Thickness = 1.600000023841858
Converted["_UIStroke9"].Parent = Converted["_Back"]
Converted["_UIGradient8"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
}
Converted["_UIGradient8"].Rotation = -90
Converted["_UIGradient8"].Transparency = NumberSequence.new{
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(1, 1)
}
Converted["_UIGradient8"].Parent = Converted["_UIStroke9"]
Converted["_ImageLabel6"].Image = "rbxassetid://278543076"
-- Converted["_ImageLabel6"].ImageContent = Content
Converted["_ImageLabel6"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel6"].BackgroundTransparency = 1
Converted["_ImageLabel6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel6"].BorderSizePixel = 0
Converted["_ImageLabel6"].Size = UDim2.new(0, 15, 0, 15)
Converted["_ImageLabel6"].Parent = Converted["_Back"]
Converted["_UIScale2"].Parent = Converted["_Settings"]
Converted["_ScrollingFrame"].AutomaticCanvasSize = Enum.AutomaticSize.Y
Converted["_ScrollingFrame"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_ScrollingFrame"].ScrollBarThickness = 2
Converted["_ScrollingFrame"].Active = true
Converted["_ScrollingFrame"].AnchorPoint = Vector2.new(0.5, 1)
Converted["_ScrollingFrame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ScrollingFrame"].BackgroundTransparency = 1
Converted["_ScrollingFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ScrollingFrame"].BorderSizePixel = 0
Converted["_ScrollingFrame"].Position = UDim2.new(0.5, 0, 1, 0)
Converted["_ScrollingFrame"].Size = UDim2.new(1, 0, 0.699999988, 0)
Converted["_ScrollingFrame"].ZIndex = 0
Converted["_ScrollingFrame"].Parent = Converted["_Settings"]
Converted["_UICorner21"].Parent = Converted["_ScrollingFrame"]
Converted["_UIListLayout3"].Padding = UDim.new(0, 10)
Converted["_UIListLayout3"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout3"].Parent = Converted["_ScrollingFrame"]
Converted["_StayOpen"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_StayOpen"].BackgroundTransparency = 1
Converted["_StayOpen"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_StayOpen"].BorderSizePixel = 0
Converted["_StayOpen"].Size = UDim2.new(1, 0, 0, 30)
Converted["_StayOpen"].Name = "StayOpen"
Converted["_StayOpen"].Parent = Converted["_ScrollingFrame"]
Converted["_UIListLayout4"].Padding = UDim.new(0, 10)
Converted["_UIListLayout4"].FillDirection = Enum.FillDirection.Horizontal
Converted["_UIListLayout4"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout4"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout4"].Parent = Converted["_StayOpen"]
Converted["_Checkbox"].Text = ""
Converted["_Checkbox"].Active = false
Converted["_Checkbox"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Checkbox"].BackgroundTransparency = 1
Converted["_Checkbox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Checkbox"].BorderSizePixel = 0
Converted["_Checkbox"].Selectable = false
Converted["_Checkbox"].Size = UDim2.new(0, 25, 0, 25)
Converted["_Checkbox"].Name = "Checkbox"
Converted["_Checkbox"].Parent = Converted["_StayOpen"]
Converted["_UICorner22"].Parent = Converted["_Checkbox"]
Converted["_UIStroke10"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke10"].Color = Color3.fromRGB(53.00000064074993, 53.00000064074993, 53.00000064074993)
Converted["_UIStroke10"].Thickness = 2.5
Converted["_UIStroke10"].Parent = Converted["_Checkbox"]
Converted["_TextLabel6"].Font = Enum.Font.GothamBold
Converted["_TextLabel6"].Text = "Keep menu open"
Converted["_TextLabel6"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel6"].TextScaled = true
Converted["_TextLabel6"].TextSize = 14
Converted["_TextLabel6"].TextWrapped = true
Converted["_TextLabel6"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextLabel6"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel6"].BackgroundTransparency = 1
Converted["_TextLabel6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel6"].BorderSizePixel = 0
Converted["_TextLabel6"].Size = UDim2.new(1, -35, 1, -10)
Converted["_TextLabel6"].Parent = Converted["_StayOpen"]
Converted["_UIPadding15"].PaddingBottom = UDim.new(0, 10)
Converted["_UIPadding15"].PaddingLeft = UDim.new(0, 10)
Converted["_UIPadding15"].PaddingRight = UDim.new(0, 10)
Converted["_UIPadding15"].PaddingTop = UDim.new(0, 10)
Converted["_UIPadding15"].Parent = Converted["_ScrollingFrame"]
Converted["_ClearPersistent"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ClearPersistent"].BackgroundTransparency = 1
Converted["_ClearPersistent"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ClearPersistent"].BorderSizePixel = 0
Converted["_ClearPersistent"].LayoutOrder = 3
Converted["_ClearPersistent"].Size = UDim2.new(1, 0, 0, 30)
Converted["_ClearPersistent"].Name = "ClearPersistent"
Converted["_ClearPersistent"].Parent = Converted["_ScrollingFrame"]
Converted["_UIListLayout5"].Padding = UDim.new(0, 10)
Converted["_UIListLayout5"].FillDirection = Enum.FillDirection.Horizontal
Converted["_UIListLayout5"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout5"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout5"].Parent = Converted["_ClearPersistent"]
Converted["_Button"].Text = ""
Converted["_Button"].Active = false
Converted["_Button"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Button"].BackgroundTransparency = 0.5
Converted["_Button"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button"].BorderSizePixel = 0
Converted["_Button"].Selectable = false
Converted["_Button"].Size = UDim2.new(0, 50, 1, 0)
Converted["_Button"].Name = "Button"
Converted["_Button"].Parent = Converted["_ClearPersistent"]
Converted["_UICorner23"].Parent = Converted["_Button"]
Converted["_UIStroke11"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke11"].Color = Color3.fromRGB(53.00000064074993, 53.00000064074993, 53.00000064074993)
Converted["_UIStroke11"].Thickness = 2.5
Converted["_UIStroke11"].Parent = Converted["_Button"]
Converted["_ImageLabel7"].Image = "rbxassetid://18279144749"
-- Converted["_ImageLabel7"].ImageContent = Content
Converted["_ImageLabel7"].ScaleType = Enum.ScaleType.Fit
Converted["_ImageLabel7"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel7"].BackgroundTransparency = 1
Converted["_ImageLabel7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel7"].BorderSizePixel = 0
Converted["_ImageLabel7"].Size = UDim2.new(1, 0, 1, 0)
Converted["_ImageLabel7"].Parent = Converted["_Button"]
Converted["_UIPadding16"].PaddingBottom = UDim.new(0, 3)
Converted["_UIPadding16"].PaddingLeft = UDim.new(0, 3)
Converted["_UIPadding16"].PaddingRight = UDim.new(0, 3)
Converted["_UIPadding16"].PaddingTop = UDim.new(0, 3)
Converted["_UIPadding16"].Parent = Converted["_Button"]
Converted["_TextLabel7"].Font = Enum.Font.GothamBold
Converted["_TextLabel7"].Text = "Clear persistent pack"
Converted["_TextLabel7"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel7"].TextScaled = true
Converted["_TextLabel7"].TextSize = 14
Converted["_TextLabel7"].TextWrapped = true
Converted["_TextLabel7"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextLabel7"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel7"].BackgroundTransparency = 1
Converted["_TextLabel7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel7"].BorderSizePixel = 0
Converted["_TextLabel7"].Size = UDim2.new(1, -60, 1, -10)
Converted["_TextLabel7"].Parent = Converted["_ClearPersistent"]
Converted["_RemoveFavorites"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_RemoveFavorites"].BackgroundTransparency = 1
Converted["_RemoveFavorites"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_RemoveFavorites"].BorderSizePixel = 0
Converted["_RemoveFavorites"].LayoutOrder = 4
Converted["_RemoveFavorites"].Size = UDim2.new(1, 0, 0, 30)
Converted["_RemoveFavorites"].Name = "RemoveFavorites"
Converted["_RemoveFavorites"].Parent = Converted["_ScrollingFrame"]
Converted["_UIListLayout6"].Padding = UDim.new(0, 10)
Converted["_UIListLayout6"].FillDirection = Enum.FillDirection.Horizontal
Converted["_UIListLayout6"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout6"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout6"].Parent = Converted["_RemoveFavorites"]
Converted["_Button1"].Text = ""
Converted["_Button1"].Active = false
Converted["_Button1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Button1"].BackgroundTransparency = 0.5
Converted["_Button1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button1"].BorderSizePixel = 0
Converted["_Button1"].Selectable = false
Converted["_Button1"].Size = UDim2.new(0, 50, 1, 0)
Converted["_Button1"].Name = "Button"
Converted["_Button1"].Parent = Converted["_RemoveFavorites"]
Converted["_UICorner24"].Parent = Converted["_Button1"]
Converted["_UIStroke12"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke12"].Color = Color3.fromRGB(53.00000064074993, 53.00000064074993, 53.00000064074993)
Converted["_UIStroke12"].Thickness = 2.5
Converted["_UIStroke12"].Parent = Converted["_Button1"]
Converted["_ImageLabel8"].Image = "rbxassetid://18279144749"
-- Converted["_ImageLabel8"].ImageContent = Content
Converted["_ImageLabel8"].ScaleType = Enum.ScaleType.Fit
Converted["_ImageLabel8"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel8"].BackgroundTransparency = 1
Converted["_ImageLabel8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel8"].BorderSizePixel = 0
Converted["_ImageLabel8"].Size = UDim2.new(1, 0, 1, 0)
Converted["_ImageLabel8"].Parent = Converted["_Button1"]
Converted["_UIPadding17"].PaddingBottom = UDim.new(0, 3)
Converted["_UIPadding17"].PaddingLeft = UDim.new(0, 3)
Converted["_UIPadding17"].PaddingRight = UDim.new(0, 3)
Converted["_UIPadding17"].PaddingTop = UDim.new(0, 3)
Converted["_UIPadding17"].Parent = Converted["_Button1"]
Converted["_TextLabel8"].Font = Enum.Font.GothamBold
Converted["_TextLabel8"].Text = "Remove all favorited emotes"
Converted["_TextLabel8"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel8"].TextScaled = true
Converted["_TextLabel8"].TextSize = 14
Converted["_TextLabel8"].TextWrapped = true
Converted["_TextLabel8"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextLabel8"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel8"].BackgroundTransparency = 1
Converted["_TextLabel8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel8"].BorderSizePixel = 0
Converted["_TextLabel8"].Size = UDim2.new(1, -60, 1, -10)
Converted["_TextLabel8"].Parent = Converted["_RemoveFavorites"]
Converted["_MoreSpace"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_MoreSpace"].BackgroundTransparency = 1
Converted["_MoreSpace"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_MoreSpace"].BorderSizePixel = 0
Converted["_MoreSpace"].LayoutOrder = 2
Converted["_MoreSpace"].Size = UDim2.new(1, 0, 0, 30)
Converted["_MoreSpace"].Name = "MoreSpace"
Converted["_MoreSpace"].Parent = Converted["_ScrollingFrame"]
Converted["_UIListLayout7"].Padding = UDim.new(0, 10)
Converted["_UIListLayout7"].FillDirection = Enum.FillDirection.Horizontal
Converted["_UIListLayout7"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout7"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout7"].Parent = Converted["_MoreSpace"]
Converted["_Checkbox1"].Text = ""
Converted["_Checkbox1"].Active = false
Converted["_Checkbox1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Checkbox1"].BackgroundTransparency = 1
Converted["_Checkbox1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Checkbox1"].BorderSizePixel = 0
Converted["_Checkbox1"].Selectable = false
Converted["_Checkbox1"].Size = UDim2.new(0, 25, 0, 25)
Converted["_Checkbox1"].Name = "Checkbox"
Converted["_Checkbox1"].Parent = Converted["_MoreSpace"]
Converted["_UICorner25"].Parent = Converted["_Checkbox1"]
Converted["_UIStroke13"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke13"].Color = Color3.fromRGB(53.00000064074993, 53.00000064074993, 53.00000064074993)
Converted["_UIStroke13"].Thickness = 2.5
Converted["_UIStroke13"].Parent = Converted["_Checkbox1"]
Converted["_TextLabel9"].Font = Enum.Font.GothamBold
Converted["_TextLabel9"].Text = "More items per row"
Converted["_TextLabel9"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel9"].TextScaled = true
Converted["_TextLabel9"].TextSize = 14
Converted["_TextLabel9"].TextWrapped = true
Converted["_TextLabel9"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextLabel9"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel9"].BackgroundTransparency = 1
Converted["_TextLabel9"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel9"].BorderSizePixel = 0
Converted["_TextLabel9"].Size = UDim2.new(1, -35, 1, -10)
Converted["_TextLabel9"].Parent = Converted["_MoreSpace"]
Converted["_MinimizeStart"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_MinimizeStart"].BackgroundTransparency = 1
Converted["_MinimizeStart"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_MinimizeStart"].BorderSizePixel = 0
Converted["_MinimizeStart"].Size = UDim2.new(1, 0, 0, 30)
Converted["_MinimizeStart"].Name = "MinimizeStart"
Converted["_MinimizeStart"].Parent = Converted["_ScrollingFrame"]
Converted["_UIListLayout8"].Padding = UDim.new(0, 10)
Converted["_UIListLayout8"].FillDirection = Enum.FillDirection.Horizontal
Converted["_UIListLayout8"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout8"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout8"].Parent = Converted["_MinimizeStart"]
Converted["_Checkbox2"].Text = ""
Converted["_Checkbox2"].Active = false
Converted["_Checkbox2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Checkbox2"].BackgroundTransparency = 1
Converted["_Checkbox2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Checkbox2"].BorderSizePixel = 0
Converted["_Checkbox2"].Selectable = false
Converted["_Checkbox2"].Size = UDim2.new(0, 25, 0, 25)
Converted["_Checkbox2"].Name = "Checkbox"
Converted["_Checkbox2"].Parent = Converted["_MinimizeStart"]
Converted["_UICorner26"].Parent = Converted["_Checkbox2"]
Converted["_UIStroke14"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke14"].Color = Color3.fromRGB(53.00000064074993, 53.00000064074993, 53.00000064074993)
Converted["_UIStroke14"].Thickness = 2.5
Converted["_UIStroke14"].Parent = Converted["_Checkbox2"]
Converted["_TextLabel10"].Font = Enum.Font.GothamBold
Converted["_TextLabel10"].Text = "Minimize on execute"
Converted["_TextLabel10"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel10"].TextScaled = true
Converted["_TextLabel10"].TextSize = 14
Converted["_TextLabel10"].TextWrapped = true
Converted["_TextLabel10"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextLabel10"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel10"].BackgroundTransparency = 1
Converted["_TextLabel10"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel10"].BorderSizePixel = 0
Converted["_TextLabel10"].Size = UDim2.new(1, -35, 1, -10)
Converted["_TextLabel10"].Parent = Converted["_MinimizeStart"]
Converted["_QuickMethod"].BackgroundColor3 = Color3.fromRGB(16.000000946223736, 16.000000946223736, 16.000000946223736)
Converted["_QuickMethod"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_QuickMethod"].BorderSizePixel = 0
Converted["_QuickMethod"].LayoutOrder = -1
Converted["_QuickMethod"].Size = UDim2.new(1, 0, 0, 120)
Converted["_QuickMethod"].Name = "QuickMethod"
Converted["_QuickMethod"].Parent = Converted["_ScrollingFrame"]
Converted["_UICorner27"].Parent = Converted["_QuickMethod"]
Converted["_UIListLayout9"].Padding = UDim.new(0, 16)
Converted["_UIListLayout9"].FillDirection = Enum.FillDirection.Horizontal
Converted["_UIListLayout9"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout9"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout9"].Parent = Converted["_QuickMethod"]
Converted["_UIPadding18"].PaddingBottom = UDim.new(0, 8)
Converted["_UIPadding18"].PaddingLeft = UDim.new(0, 8)
Converted["_UIPadding18"].PaddingRight = UDim.new(0, 8)
Converted["_UIPadding18"].PaddingTop = UDim.new(0, 8)
Converted["_UIPadding18"].Parent = Converted["_QuickMethod"]
Converted["_QuickSelector"].Text = ""
Converted["_QuickSelector"].Active = false
Converted["_QuickSelector"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_QuickSelector"].BackgroundTransparency = 0.8999999761581421
Converted["_QuickSelector"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_QuickSelector"].BorderSizePixel = 0
Converted["_QuickSelector"].Selectable = false
Converted["_QuickSelector"].Size = UDim2.new(0, 120, 1, 0)
Converted["_QuickSelector"].Name = "QuickSelector"
Converted["_QuickSelector"].Parent = Converted["_QuickMethod"]
Converted["_UICorner28"].Parent = Converted["_QuickSelector"]
Converted["_UIStroke15"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke15"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke15"].Parent = Converted["_QuickSelector"]
Converted["_QuickSelectorFrame"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_QuickSelectorFrame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_QuickSelectorFrame"].BackgroundTransparency = 1
Converted["_QuickSelectorFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_QuickSelectorFrame"].BorderSizePixel = 0
Converted["_QuickSelectorFrame"].Position = UDim2.new(0.5, 0, 0.400000006, 0)
Converted["_QuickSelectorFrame"].Size = UDim2.new(0.800000012, 0, 0.400000006, 0)
Converted["_QuickSelectorFrame"].Name = "QuickSelectorFrame"
Converted["_QuickSelectorFrame"].Parent = Converted["_QuickSelector"]
Converted["_UICorner29"].Parent = Converted["_QuickSelectorFrame"]
Converted["_UIStroke16"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke16"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke16"].Thickness = 4
Converted["_UIStroke16"].Parent = Converted["_QuickSelectorFrame"]
Converted["_Animatable"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Animatable"].BackgroundTransparency = 1
Converted["_Animatable"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Animatable"].BorderSizePixel = 0
Converted["_Animatable"].Size = UDim2.new(0, 100, 0, 100)
Converted["_Animatable"].Name = "Animatable"
Converted["_Animatable"].Parent = Converted["_QuickSelectorFrame"]
Converted["_UICorner30"].CornerRadius = UDim.new(0, 4)
Converted["_UICorner30"].Parent = Converted["_Animatable"]
Converted["_UIStroke17"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke17"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke17"].Thickness = 2
Converted["_UIStroke17"].Parent = Converted["_Animatable"]
Converted["_UIScale3"].Parent = Converted["_Animatable"]
Converted["_UIGridLayout1"].CellSize = UDim2.new(0.300000012, -1, 1, 0)
Converted["_UIGridLayout1"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIGridLayout1"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIGridLayout1"].Parent = Converted["_QuickSelectorFrame"]
Converted["_Animatable1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Animatable1"].BackgroundTransparency = 1
Converted["_Animatable1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Animatable1"].BorderSizePixel = 0
Converted["_Animatable1"].LayoutOrder = 1
Converted["_Animatable1"].Size = UDim2.new(0, 100, 0, 100)
Converted["_Animatable1"].Name = "Animatable"
Converted["_Animatable1"].Parent = Converted["_QuickSelectorFrame"]
Converted["_UICorner31"].CornerRadius = UDim.new(0, 4)
Converted["_UICorner31"].Parent = Converted["_Animatable1"]
Converted["_UIStroke18"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke18"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke18"].Thickness = 2
Converted["_UIStroke18"].Parent = Converted["_Animatable1"]
Converted["_UIScale4"].Parent = Converted["_Animatable1"]
Converted["_Animatable2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Animatable2"].BackgroundTransparency = 1
Converted["_Animatable2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Animatable2"].BorderSizePixel = 0
Converted["_Animatable2"].LayoutOrder = 2
Converted["_Animatable2"].Size = UDim2.new(0, 100, 0, 100)
Converted["_Animatable2"].Name = "Animatable"
Converted["_Animatable2"].Parent = Converted["_QuickSelectorFrame"]
Converted["_UICorner32"].CornerRadius = UDim.new(0, 4)
Converted["_UICorner32"].Parent = Converted["_Animatable2"]
Converted["_UIStroke19"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke19"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke19"].Thickness = 2
Converted["_UIStroke19"].Parent = Converted["_Animatable2"]
Converted["_UIScale5"].Parent = Converted["_Animatable2"]
Converted["_UIPadding19"].PaddingBottom = UDim.new(0, 8)
Converted["_UIPadding19"].PaddingLeft = UDim.new(0, 5)
Converted["_UIPadding19"].PaddingRight = UDim.new(0, 5)
Converted["_UIPadding19"].PaddingTop = UDim.new(0, 8)
Converted["_UIPadding19"].Parent = Converted["_QuickSelectorFrame"]
Converted["_TextLabel11"].Font = Enum.Font.Gotham
Converted["_TextLabel11"].Text = "Quick selector"
Converted["_TextLabel11"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel11"].TextScaled = true
Converted["_TextLabel11"].TextSize = 14
Converted["_TextLabel11"].TextWrapped = true
Converted["_TextLabel11"].AnchorPoint = Vector2.new(0.5, 1)
Converted["_TextLabel11"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel11"].BackgroundTransparency = 1
Converted["_TextLabel11"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel11"].BorderSizePixel = 0
Converted["_TextLabel11"].Position = UDim2.new(0.5, 1, 1, -4)
Converted["_TextLabel11"].Size = UDim2.new(1, -20, 0, 20)
Converted["_TextLabel11"].Parent = Converted["_QuickSelector"]
Converted["_FloatingButtons"].Text = ""
Converted["_FloatingButtons"].Active = false
Converted["_FloatingButtons"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_FloatingButtons"].BackgroundTransparency = 1
Converted["_FloatingButtons"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_FloatingButtons"].BorderSizePixel = 0
Converted["_FloatingButtons"].Selectable = false
Converted["_FloatingButtons"].Size = UDim2.new(0, 120, 1, 0)
Converted["_FloatingButtons"].Name = "FloatingButtons"
Converted["_FloatingButtons"].Parent = Converted["_QuickMethod"]
Converted["_UICorner33"].Parent = Converted["_FloatingButtons"]
Converted["_UIStroke20"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke20"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke20"].Parent = Converted["_FloatingButtons"]
Converted["_TextLabel12"].Font = Enum.Font.Gotham
Converted["_TextLabel12"].Text = "Floating buttons"
Converted["_TextLabel12"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel12"].TextScaled = true
Converted["_TextLabel12"].TextSize = 14
Converted["_TextLabel12"].TextWrapped = true
Converted["_TextLabel12"].AnchorPoint = Vector2.new(0.5, 1)
Converted["_TextLabel12"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel12"].BackgroundTransparency = 1
Converted["_TextLabel12"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel12"].BorderSizePixel = 0
Converted["_TextLabel12"].Position = UDim2.new(0.5, 1, 1, -4)
Converted["_TextLabel12"].Size = UDim2.new(1, -20, 0, 20)
Converted["_TextLabel12"].Parent = Converted["_FloatingButtons"]
Converted["_Animatable3"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Animatable3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Animatable3"].BackgroundTransparency = 1
Converted["_Animatable3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Animatable3"].BorderSizePixel = 0
Converted["_Animatable3"].Position = UDim2.new(0.383666486, 0, 0.260922939, 0)
Converted["_Animatable3"].Size = UDim2.new(0, 20, 0, 20)
Converted["_Animatable3"].Name = "Animatable"
Converted["_Animatable3"].Parent = Converted["_FloatingButtons"]
Converted["_UICorner34"].CornerRadius = UDim.new(0, 4)
Converted["_UICorner34"].Parent = Converted["_Animatable3"]
Converted["_UIStroke21"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke21"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke21"].Thickness = 2
Converted["_UIStroke21"].Parent = Converted["_Animatable3"]
Converted["_UIScale6"].Parent = Converted["_Animatable3"]
Converted["_Animatable4"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Animatable4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Animatable4"].BackgroundTransparency = 1
Converted["_Animatable4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Animatable4"].BorderSizePixel = 0
Converted["_Animatable4"].LayoutOrder = 2
Converted["_Animatable4"].Position = UDim2.new(0.308333337, 0, 0.673076928, 0)
Converted["_Animatable4"].Size = UDim2.new(0, 20, 0, 20)
Converted["_Animatable4"].Name = "Animatable"
Converted["_Animatable4"].Parent = Converted["_FloatingButtons"]
Converted["_UICorner35"].CornerRadius = UDim.new(0, 4)
Converted["_UICorner35"].Parent = Converted["_Animatable4"]
Converted["_UIStroke22"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke22"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke22"].Thickness = 2
Converted["_UIStroke22"].Parent = Converted["_Animatable4"]
Converted["_UIScale7"].Parent = Converted["_Animatable4"]
Converted["_Animatable5"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Animatable5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Animatable5"].BackgroundTransparency = 1
Converted["_Animatable5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Animatable5"].BorderSizePixel = 0
Converted["_Animatable5"].LayoutOrder = 1
Converted["_Animatable5"].Position = UDim2.new(0.691666663, 0, 0.557692289, 0)
Converted["_Animatable5"].Size = UDim2.new(0, 20, 0, 20)
Converted["_Animatable5"].Name = "Animatable"
Converted["_Animatable5"].Parent = Converted["_FloatingButtons"]
Converted["_UICorner36"].CornerRadius = UDim.new(0, 4)
Converted["_UICorner36"].Parent = Converted["_Animatable5"]
Converted["_UIStroke23"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke23"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke23"].Thickness = 2
Converted["_UIStroke23"].Parent = Converted["_Animatable5"]
Converted["_UIScale8"].Parent = Converted["_Animatable5"]
Converted["_UIPadding20"].PaddingBottom = UDim.new(0, 5)
Converted["_UIPadding20"].PaddingLeft = UDim.new(0, 5)
Converted["_UIPadding20"].PaddingRight = UDim.new(0, 5)
Converted["_UIPadding20"].Parent = Converted["_Settings"]
Converted["_QuickSelector1"].GroupTransparency = 1
Converted["_QuickSelector1"].AnchorPoint = Vector2.new(0.5, 0)
Converted["_QuickSelector1"].AutomaticSize = Enum.AutomaticSize.Y
Converted["_QuickSelector1"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_QuickSelector1"].BackgroundTransparency = 0.550000011920929
Converted["_QuickSelector1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_QuickSelector1"].BorderSizePixel = 0
Converted["_QuickSelector1"].Position = UDim2.new(0.5, 0, 1, 10)
Converted["_QuickSelector1"].Size = UDim2.new(1, 0, 0, 61)
Converted["_QuickSelector1"].SizeConstraint = Enum.SizeConstraint.RelativeXX
Converted["_QuickSelector1"].Name = "QuickSelector"
Converted["_QuickSelector1"].Parent = Converted["_Menu"]
Converted["_UICorner37"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner37"].Parent = Converted["_QuickSelector1"]
Converted["_UIStroke24"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke24"].Thickness = 0
Converted["_UIStroke24"].Parent = Converted["_QuickSelector1"]
Converted["_UIScale9"].Scale = 0.800000011920929
Converted["_UIScale9"].Parent = Converted["_QuickSelector1"]
Converted["_UISizeConstraint"].MinSize = Vector2.new(200, 0)
Converted["_UISizeConstraint"].Parent = Converted["_QuickSelector1"]
Converted["_UIPadding21"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding21"].PaddingLeft = UDim.new(0, 6)
Converted["_UIPadding21"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding21"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding21"].Parent = Converted["_QuickSelector1"]
Converted["_UIGridLayout2"].CellSize = UDim2.new(0, 60, 0, 60)
Converted["_UIGridLayout2"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIGridLayout2"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIGridLayout2"].Parent = Converted["_QuickSelector1"]
Converted["_Sample1"].BackgroundColor3 = Color3.fromRGB(46.000001057982445, 46.000001057982445, 46.000001057982445)
Converted["_Sample1"].BackgroundTransparency = 1
Converted["_Sample1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Sample1"].BorderSizePixel = 0
Converted["_Sample1"].Size = UDim2.new(0, 50, 1, 0)
Converted["_Sample1"].Visible = false
Converted["_Sample1"].Name = "Sample"
Converted["_Sample1"].Parent = Converted["_QuickSelector1"]
Converted["_UICorner38"].Parent = Converted["_Sample1"]
Converted["_UIStroke25"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke25"].Parent = Converted["_Sample1"]
Converted["_UIPadding22"].PaddingBottom = UDim.new(0, 5)
Converted["_UIPadding22"].Parent = Converted["_Sample1"]
Converted["_ImageLabel9"].Image = "rbxthumb://type=Asset&id=14353423348&w=420&h=420"
-- Converted["_ImageLabel9"].ImageContent = Content
Converted["_ImageLabel9"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ImageLabel9"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel9"].BackgroundTransparency = 1
Converted["_ImageLabel9"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel9"].BorderSizePixel = 0
Converted["_ImageLabel9"].Position = UDim2.new(0.5, 0, 0.400000006, 0)
Converted["_ImageLabel9"].Size = UDim2.new(0.75, 0, 0.75, 0)
Converted["_ImageLabel9"].Parent = Converted["_Sample1"]
Converted["_TextLabel13"].Font = Enum.Font.Gotham
Converted["_TextLabel13"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel13"].TextScaled = true
Converted["_TextLabel13"].TextSize = 14
Converted["_TextLabel13"].TextWrapped = true
Converted["_TextLabel13"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_TextLabel13"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel13"].BackgroundTransparency = 1
Converted["_TextLabel13"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel13"].BorderSizePixel = 0
Converted["_TextLabel13"].Position = UDim2.new(0.5, 0, 0.874418736, 0)
Converted["_TextLabel13"].Size = UDim2.new(1, 0, 0.251162499, 0)
Converted["_TextLabel13"].Parent = Converted["_Sample1"]
Converted["_Filter1"].GroupTransparency = 1
Converted["_Filter1"].AnchorPoint = Vector2.new(1, 1)
Converted["_Filter1"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Filter1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Filter1"].BorderSizePixel = 0
Converted["_Filter1"].Interactable = false
Converted["_Filter1"].Position = UDim2.new(1, -3, 1.00000024, -3)
Converted["_Filter1"].Size = UDim2.new(0, 147, 0, 109)
Converted["_Filter1"].Name = "Filter"
Converted["_Filter1"].Parent = Converted["_Menu"]
Converted["_UICorner39"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner39"].Parent = Converted["_Filter1"]
Converted["_UIStroke26"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke26"].Thickness = 0
Converted["_UIStroke26"].Parent = Converted["_Filter1"]
Converted["_UIGradient9"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
}
Converted["_UIGradient9"].Rotation = 73
Converted["_UIGradient9"].Parent = Converted["_UIStroke26"]
Converted["_TextLabel14"].Font = Enum.Font.GothamBold
Converted["_TextLabel14"].Text = "Filter"
Converted["_TextLabel14"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel14"].TextScaled = true
Converted["_TextLabel14"].TextSize = 14
Converted["_TextLabel14"].TextWrapped = true
Converted["_TextLabel14"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextLabel14"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel14"].BackgroundTransparency = 1
Converted["_TextLabel14"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel14"].BorderSizePixel = 0
Converted["_TextLabel14"].Size = UDim2.new(1, 0, 0, 15)
Converted["_TextLabel14"].Parent = Converted["_Filter1"]
Converted["_UIPadding23"].PaddingBottom = UDim.new(0, 12)
Converted["_UIPadding23"].PaddingLeft = UDim.new(0, 12)
Converted["_UIPadding23"].PaddingRight = UDim.new(0, 12)
Converted["_UIPadding23"].PaddingTop = UDim.new(0, 12)
Converted["_UIPadding23"].Parent = Converted["_Filter1"]
Converted["_ShowOnly"].AnchorPoint = Vector2.new(0.5, 1)
Converted["_ShowOnly"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ShowOnly"].BackgroundTransparency = 1
Converted["_ShowOnly"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ShowOnly"].BorderSizePixel = 0
Converted["_ShowOnly"].Position = UDim2.new(0.5, 0, 1, 0)
Converted["_ShowOnly"].Size = UDim2.new(1, 0, 0, 60)
Converted["_ShowOnly"].Name = "ShowOnly"
Converted["_ShowOnly"].Parent = Converted["_Filter1"]
Converted["_UIListLayout10"].Padding = UDim.new(0, 6)
Converted["_UIListLayout10"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout10"].Parent = Converted["_ShowOnly"]
Converted["_TextLabel15"].Font = Enum.Font.Gotham
Converted["_TextLabel15"].Text = "Only show emotes from"
Converted["_TextLabel15"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel15"].TextScaled = true
Converted["_TextLabel15"].TextSize = 14
Converted["_TextLabel15"].TextWrapped = true
Converted["_TextLabel15"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_TextLabel15"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel15"].BackgroundTransparency = 1
Converted["_TextLabel15"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel15"].BorderSizePixel = 0
Converted["_TextLabel15"].Size = UDim2.new(1, 0, 0, 10)
Converted["_TextLabel15"].Parent = Converted["_ShowOnly"]
Converted["_Exclude"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Exclude"].BackgroundTransparency = 1
Converted["_Exclude"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Exclude"].BorderSizePixel = 0
Converted["_Exclude"].Size = UDim2.new(1, 0, 0, 0)
Converted["_Exclude"].Name = "Exclude"
Converted["_Exclude"].Parent = Converted["_ShowOnly"]
Converted["_UIFlexItem"].FlexMode = Enum.UIFlexMode.Fill
Converted["_UIFlexItem"].Parent = Converted["_Exclude"]
Converted["_UIGridLayout3"].CellSize = UDim2.new(0.5, -3, 0, 20)
Converted["_UIGridLayout3"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIGridLayout3"].Parent = Converted["_Exclude"]
Converted["_Loaded"].Font = Enum.Font.Gotham
Converted["_Loaded"].Text = "Loaded"
Converted["_Loaded"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Loaded"].TextScaled = true
Converted["_Loaded"].TextSize = 14
Converted["_Loaded"].TextWrapped = true
Converted["_Loaded"].BackgroundColor3 = Color3.fromRGB(232.00001657009125, 232.00001657009125, 232.00001657009125)
Converted["_Loaded"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Loaded"].BorderSizePixel = 0
Converted["_Loaded"].Size = UDim2.new(0, 200, 0, 50)
Converted["_Loaded"].Name = "Loaded"
Converted["_Loaded"].Parent = Converted["_Exclude"]
Converted["_UICorner40"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner40"].Parent = Converted["_Loaded"]
Converted["_UIPadding24"].PaddingBottom = UDim.new(0, 3)
Converted["_UIPadding24"].PaddingLeft = UDim.new(0, 3)
Converted["_UIPadding24"].PaddingRight = UDim.new(0, 3)
Converted["_UIPadding24"].PaddingTop = UDim.new(0, 3)
Converted["_UIPadding24"].Parent = Converted["_Loaded"]
Converted["_Favorites"].Font = Enum.Font.Gotham
Converted["_Favorites"].Text = "Favorites"
Converted["_Favorites"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Favorites"].TextScaled = true
Converted["_Favorites"].TextSize = 14
Converted["_Favorites"].TextWrapped = true
Converted["_Favorites"].BackgroundColor3 = Color3.fromRGB(232.00000137090683, 232.00000137090683, 232.00000137090683)
Converted["_Favorites"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Favorites"].BorderSizePixel = 0
Converted["_Favorites"].Size = UDim2.new(0, 200, 0, 50)
Converted["_Favorites"].Name = "Favorites"
Converted["_Favorites"].Parent = Converted["_Exclude"]
Converted["_UICorner41"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner41"].Parent = Converted["_Favorites"]
Converted["_UIPadding25"].PaddingBottom = UDim.new(0, 3)
Converted["_UIPadding25"].PaddingLeft = UDim.new(0, 3)
Converted["_UIPadding25"].PaddingRight = UDim.new(0, 3)
Converted["_UIPadding25"].PaddingTop = UDim.new(0, 3)
Converted["_UIPadding25"].Parent = Converted["_Favorites"]
Converted["_Custom"].Font = Enum.Font.Gotham
Converted["_Custom"].Text = "Custom"
Converted["_Custom"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Custom"].TextScaled = true
Converted["_Custom"].TextSize = 14
Converted["_Custom"].TextWrapped = true
Converted["_Custom"].BackgroundColor3 = Color3.fromRGB(232.00001657009125, 232.00001657009125, 232.00001657009125)
Converted["_Custom"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Custom"].BorderSizePixel = 0
Converted["_Custom"].Size = UDim2.new(0, 200, 0, 50)
Converted["_Custom"].Name = "Custom"
Converted["_Custom"].Parent = Converted["_Exclude"]
Converted["_UICorner42"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner42"].Parent = Converted["_Custom"]
Converted["_UIPadding26"].PaddingBottom = UDim.new(0, 3)
Converted["_UIPadding26"].PaddingLeft = UDim.new(0, 3)
Converted["_UIPadding26"].PaddingRight = UDim.new(0, 3)
Converted["_UIPadding26"].PaddingTop = UDim.new(0, 3)
Converted["_UIPadding26"].Parent = Converted["_Custom"]
Converted["_CanvasGroup"].GroupTransparency = 1
Converted["_CanvasGroup"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_CanvasGroup"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_CanvasGroup"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_CanvasGroup"].BorderSizePixel = 0
Converted["_CanvasGroup"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_CanvasGroup"].Size = UDim2.new(1, 0, 1, 0)
Converted["_CanvasGroup"].Visible = false
Converted["_CanvasGroup"].ZIndex = 999999998
Converted["_CanvasGroup"].Parent = Converted["_Filter1"]
Converted["_UICorner43"].Parent = Converted["_CanvasGroup"]
Converted["_ImageLabel10"].Image = "rbxassetid://6567073136"
Converted["_ImageLabel10"].ImageColor3 = Color3.fromRGB(0, 0, 0)
-- Converted["_ImageLabel10"].ImageContent = Content
Converted["_ImageLabel10"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ImageLabel10"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel10"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel10"].BorderSizePixel = 0
Converted["_ImageLabel10"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_ImageLabel10"].Size = UDim2.new(0, 20, 0, 20)
Converted["_ImageLabel10"].Parent = Converted["_CanvasGroup"]
Converted["_Opener"].Font = Enum.Font.SourceSans
Converted["_Opener"].Text = ""
Converted["_Opener"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Opener"].TextSize = 14
Converted["_Opener"].Modal = true
Converted["_Opener"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Opener"].BackgroundTransparency = 1
Converted["_Opener"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Opener"].BorderSizePixel = 0
Converted["_Opener"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Opener"].ZIndex = 999999999
Converted["_Opener"].Name = "Opener"
Converted["_Opener"].Parent = Converted["_CanvasGroup"]
Converted["_Close1"].Font = Enum.Font.GothamBold
Converted["_Close1"].Text = "Close"
Converted["_Close1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Close1"].TextScaled = true
Converted["_Close1"].TextSize = 14
Converted["_Close1"].TextWrapped = true
Converted["_Close1"].AnchorPoint = Vector2.new(1, 0)
Converted["_Close1"].BackgroundColor3 = Color3.fromRGB(46.000001057982445, 0, 0)
Converted["_Close1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Close1"].BorderSizePixel = 0
Converted["_Close1"].Position = UDim2.new(1, 0, 0, 0)
Converted["_Close1"].Size = UDim2.new(0, 35, 0, 15)
Converted["_Close1"].Name = "Close"
Converted["_Close1"].Parent = Converted["_Filter1"]
Converted["_UICorner44"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner44"].Parent = Converted["_Close1"]
Converted["_UIPadding27"].PaddingBottom = UDim.new(0, 3)
Converted["_UIPadding27"].PaddingLeft = UDim.new(0, 3)
Converted["_UIPadding27"].PaddingRight = UDim.new(0, 3)
Converted["_UIPadding27"].PaddingTop = UDim.new(0, 3)
Converted["_UIPadding27"].Parent = Converted["_Close1"]
Converted["_UIScale10"].Scale = 0.800000011920929
Converted["_UIScale10"].Parent = Converted["_Filter1"]
Converted["_Open"].Name = "Open"
Converted["_Open"].Parent = Converted["_Filter1"]
Converted["_CloseEv"].Name = "CloseEv"
Converted["_CloseEv"].Parent = Converted["_Filter1"]
Converted["_CanvasGroup1"].GroupTransparency = 1
Converted["_CanvasGroup1"].Active = true
Converted["_CanvasGroup1"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_CanvasGroup1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_CanvasGroup1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_CanvasGroup1"].BorderSizePixel = 0
Converted["_CanvasGroup1"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_CanvasGroup1"].Size = UDim2.new(1, 0, 1, 0)
Converted["_CanvasGroup1"].Visible = false
Converted["_CanvasGroup1"].ZIndex = 999999998
Converted["_CanvasGroup1"].Parent = Converted["_Menu"]
Converted["_UICorner45"].Parent = Converted["_CanvasGroup1"]
Converted["_ImageLabel11"].Image = "rbxassetid://6567073136"
Converted["_ImageLabel11"].ImageColor3 = Color3.fromRGB(0, 0, 0)
-- Converted["_ImageLabel11"].ImageContent = Content
Converted["_ImageLabel11"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ImageLabel11"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel11"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel11"].BorderSizePixel = 0
Converted["_ImageLabel11"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_ImageLabel11"].Size = UDim2.new(0, 20, 0, 20)
Converted["_ImageLabel11"].Parent = Converted["_CanvasGroup1"]
Converted["_Opener1"].Font = Enum.Font.SourceSans
Converted["_Opener1"].Text = ""
Converted["_Opener1"].TextColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Opener1"].TextSize = 14
Converted["_Opener1"].Modal = true
Converted["_Opener1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Opener1"].BackgroundTransparency = 1
Converted["_Opener1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Opener1"].BorderSizePixel = 0
Converted["_Opener1"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Opener1"].ZIndex = 999999999
Converted["_Opener1"].Name = "Opener"
Converted["_Opener1"].Parent = Converted["_CanvasGroup1"]
Converted["_HubSubVersion"].Font = Enum.Font.GothamBold
Converted["_HubSubVersion"].Text = ".1"
Converted["_HubSubVersion"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_HubSubVersion"].TextScaled = true
Converted["_HubSubVersion"].TextSize = 1
Converted["_HubSubVersion"].TextTransparency = 0.6399999856948853
Converted["_HubSubVersion"].TextWrapped = true
Converted["_HubSubVersion"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_HubSubVersion"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_HubSubVersion"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_HubSubVersion"].BackgroundTransparency = 1
Converted["_HubSubVersion"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_HubSubVersion"].BorderSizePixel = 0
Converted["_HubSubVersion"].Position = UDim2.new(0.239999995, 0, 0.164000005, 0)
Converted["_HubSubVersion"].Size = UDim2.new(0.0619238205, 0, 0.0672880933, 0)
Converted["_HubSubVersion"].Name = "HubSubVersion"
Converted["_HubSubVersion"].Parent = Converted["_Menu"]
Converted["_FloatingButtons1"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_FloatingButtons1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_FloatingButtons1"].BackgroundTransparency = 1
Converted["_FloatingButtons1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_FloatingButtons1"].BorderSizePixel = 0
Converted["_FloatingButtons1"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_FloatingButtons1"].Size = UDim2.new(1, 0, 1, 0)
Converted["_FloatingButtons1"].Name = "FloatingButtons"
Converted["_FloatingButtons1"].Parent = Converted["_AFEM"]
Converted["_PackEditor"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_PackEditor"].BackgroundTransparency = 1
Converted["_PackEditor"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_PackEditor"].BorderSizePixel = 0
Converted["_PackEditor"].Size = UDim2.new(1, 0, 1, 0)
Converted["_PackEditor"].ZIndex = 2
Converted["_PackEditor"].Name = "PackEditor"
Converted["_PackEditor"].Parent = Converted["_AFEM"]
Converted["_Open1"].Name = "Open"
Converted["_Open1"].Parent = Converted["_PackEditor"]
Converted["_Group"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Group"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Group"].BackgroundTransparency = 1
Converted["_Group"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Group"].BorderSizePixel = 0
Converted["_Group"].ClipsDescendants = true
Converted["_Group"].Interactable = false
Converted["_Group"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_Group"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Group"].Name = "Group"
Converted["_Group"].Parent = Converted["_PackEditor"]
Converted["_Backdrop"].Active = true
Converted["_Backdrop"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Backdrop"].BackgroundTransparency = 1
Converted["_Backdrop"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Backdrop"].BorderSizePixel = 0
Converted["_Backdrop"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Backdrop"].Name = "Backdrop"
Converted["_Backdrop"].Parent = Converted["_Group"]
Converted["_Frame1"].Active = true
Converted["_Frame1"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Frame1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Frame1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Frame1"].BorderSizePixel = 0
Converted["_Frame1"].ClipsDescendants = true
Converted["_Frame1"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_Frame1"].Size = UDim2.new(1, 0, 0, 300)
Converted["_Frame1"].Visible = false
Converted["_Frame1"].ZIndex = 2
Converted["_Frame1"].Parent = Converted["_Group"]
Converted["_UISizeConstraint1"].MaxSize = Vector2.new(700, math.huge)
Converted["_UISizeConstraint1"].Parent = Converted["_Frame1"]
Converted["_UICorner46"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner46"].Parent = Converted["_Frame1"]
Converted["_UIGradient10"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(36.00000165402889, 36.00000165402889, 36.00000165402889)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(68.00000354647636, 68.00000354647636, 68.00000354647636))
}
Converted["_UIGradient10"].Rotation = 68
Converted["_UIGradient10"].Parent = Converted["_Frame1"]
Converted["_UIStroke27"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke27"].Thickness = 2
Converted["_UIStroke27"].Parent = Converted["_Frame1"]
Converted["_UIGradient11"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(53.00000064074993, 53.00000064074993, 53.00000064074993)),
	ColorSequenceKeypoint.new(0.15224914252758026, Color3.fromRGB(50.69031357765198, 50.69031357765198, 50.69031357765198)),
	ColorSequenceKeypoint.new(0.4723183512687683, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(0.7577854990959167, Color3.fromRGB(50.13314567506313, 50.13314567506313, 50.13314567506313)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(48.000000938773155, 48.000000938773155, 48.000000938773155))
}
Converted["_UIGradient11"].Rotation = 111
Converted["_UIGradient11"].Parent = Converted["_UIStroke27"]
Converted["_UIScale11"].Scale = 1.100000023841858
Converted["_UIScale11"].Parent = Converted["_Frame1"]
Converted["_Applied"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Applied"].BackgroundTransparency = 1
Converted["_Applied"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Applied"].BorderSizePixel = 0
Converted["_Applied"].Size = UDim2.new(1, 0, 0, 0)
Converted["_Applied"].Name = "Applied"
Converted["_Applied"].Parent = Converted["_Frame1"]
Converted["_UIListLayout11"].HorizontalFlex = Enum.UIFlexAlignment.SpaceAround
Converted["_UIListLayout11"].FillDirection = Enum.FillDirection.Horizontal
Converted["_UIListLayout11"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout11"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout11"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout11"].Parent = Converted["_Applied"]
Converted["_UIFlexItem1"].FlexMode = Enum.UIFlexMode.Fill
Converted["_UIFlexItem1"].Parent = Converted["_Applied"]
Converted["_idle"].Text = ""
Converted["_idle"].Active = false
Converted["_idle"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_idle"].BackgroundTransparency = 1
Converted["_idle"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_idle"].BorderSizePixel = 0
Converted["_idle"].Selectable = false
Converted["_idle"].Size = UDim2.new(0, 90, 1, 0)
Converted["_idle"].Name = "idle"
Converted["_idle"].Parent = Converted["_Applied"]
Converted["_Label1"].Font = Enum.Font.GothamBold
Converted["_Label1"].Text = "Idle"
Converted["_Label1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label1"].TextScaled = true
Converted["_Label1"].TextSize = 14
Converted["_Label1"].TextWrapped = true
Converted["_Label1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label1"].BackgroundTransparency = 1
Converted["_Label1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Label1"].BorderSizePixel = 0
Converted["_Label1"].Size = UDim2.new(1, 0, 0, 20)
Converted["_Label1"].Name = "Label"
Converted["_Label1"].Parent = Converted["_idle"]
Converted["_UICorner47"].Parent = Converted["_idle"]
Converted["_UIListLayout12"].Padding = UDim.new(0, 6)
Converted["_UIListLayout12"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout12"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout12"].Parent = Converted["_idle"]
Converted["_UIPadding28"].PaddingLeft = UDim.new(0, 5)
Converted["_UIPadding28"].PaddingRight = UDim.new(0, 5)
Converted["_UIPadding28"].Parent = Converted["_idle"]
Converted["_Thumbnail"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Thumbnail"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Thumbnail"].BorderSizePixel = 0
Converted["_Thumbnail"].LayoutOrder = 1
Converted["_Thumbnail"].Size = UDim2.new(1, 0, 0, 0)
Converted["_Thumbnail"].Name = "Thumbnail"
Converted["_Thumbnail"].Parent = Converted["_idle"]
Converted["_UIFlexItem2"].FlexMode = Enum.UIFlexMode.Fill
Converted["_UIFlexItem2"].Parent = Converted["_Thumbnail"]
Converted["_UIAspectRatioConstraint"].Parent = Converted["_Thumbnail"]
Converted["_UICorner48"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner48"].Parent = Converted["_Thumbnail"]
Converted["_ImageLabel12"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ImageLabel12"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel12"].BackgroundTransparency = 1
Converted["_ImageLabel12"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel12"].BorderSizePixel = 0
Converted["_ImageLabel12"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_ImageLabel12"].Size = UDim2.new(1, -10, 1, -10)
Converted["_ImageLabel12"].Parent = Converted["_Thumbnail"]
Converted["_PackName"].Font = Enum.Font.Gotham
Converted["_PackName"].Text = "Pack name"
Converted["_PackName"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_PackName"].TextScaled = true
Converted["_PackName"].TextSize = 14
Converted["_PackName"].TextWrapped = true
Converted["_PackName"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_PackName"].BackgroundTransparency = 1
Converted["_PackName"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_PackName"].BorderSizePixel = 0
Converted["_PackName"].LayoutOrder = 2
Converted["_PackName"].Size = UDim2.new(1, 0, 0, 8)
Converted["_PackName"].Name = "PackName"
Converted["_PackName"].Parent = Converted["_idle"]
Converted["_walk"].Text = ""
Converted["_walk"].Active = false
Converted["_walk"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_walk"].BackgroundTransparency = 1
Converted["_walk"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_walk"].BorderSizePixel = 0
Converted["_walk"].Selectable = false
Converted["_walk"].Size = UDim2.new(0, 90, 1, 0)
Converted["_walk"].Name = "walk"
Converted["_walk"].Parent = Converted["_Applied"]
Converted["_Label2"].Font = Enum.Font.GothamBold
Converted["_Label2"].Text = "Walk"
Converted["_Label2"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label2"].TextScaled = true
Converted["_Label2"].TextSize = 14
Converted["_Label2"].TextWrapped = true
Converted["_Label2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label2"].BackgroundTransparency = 1
Converted["_Label2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Label2"].BorderSizePixel = 0
Converted["_Label2"].Size = UDim2.new(1, 0, 0, 20)
Converted["_Label2"].Name = "Label"
Converted["_Label2"].Parent = Converted["_walk"]
Converted["_UICorner49"].Parent = Converted["_walk"]
Converted["_UIListLayout13"].Padding = UDim.new(0, 6)
Converted["_UIListLayout13"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout13"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout13"].Parent = Converted["_walk"]
Converted["_UIPadding29"].PaddingLeft = UDim.new(0, 5)
Converted["_UIPadding29"].PaddingRight = UDim.new(0, 5)
Converted["_UIPadding29"].Parent = Converted["_walk"]
Converted["_Thumbnail1"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Thumbnail1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Thumbnail1"].BorderSizePixel = 0
Converted["_Thumbnail1"].LayoutOrder = 1
Converted["_Thumbnail1"].Size = UDim2.new(1, 0, 0, 0)
Converted["_Thumbnail1"].Name = "Thumbnail"
Converted["_Thumbnail1"].Parent = Converted["_walk"]
Converted["_UIFlexItem3"].FlexMode = Enum.UIFlexMode.Fill
Converted["_UIFlexItem3"].Parent = Converted["_Thumbnail1"]
Converted["_UIAspectRatioConstraint1"].Parent = Converted["_Thumbnail1"]
Converted["_UICorner50"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner50"].Parent = Converted["_Thumbnail1"]
Converted["_ImageLabel13"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ImageLabel13"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel13"].BackgroundTransparency = 1
Converted["_ImageLabel13"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel13"].BorderSizePixel = 0
Converted["_ImageLabel13"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_ImageLabel13"].Size = UDim2.new(1, -10, 1, -10)
Converted["_ImageLabel13"].Parent = Converted["_Thumbnail1"]
Converted["_PackName1"].Font = Enum.Font.Gotham
Converted["_PackName1"].Text = "Pack name"
Converted["_PackName1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_PackName1"].TextScaled = true
Converted["_PackName1"].TextSize = 14
Converted["_PackName1"].TextWrapped = true
Converted["_PackName1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_PackName1"].BackgroundTransparency = 1
Converted["_PackName1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_PackName1"].BorderSizePixel = 0
Converted["_PackName1"].LayoutOrder = 2
Converted["_PackName1"].Size = UDim2.new(1, 0, 0, 8)
Converted["_PackName1"].Name = "PackName"
Converted["_PackName1"].Parent = Converted["_walk"]
Converted["_run"].Text = ""
Converted["_run"].Active = false
Converted["_run"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_run"].BackgroundTransparency = 1
Converted["_run"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_run"].BorderSizePixel = 0
Converted["_run"].Selectable = false
Converted["_run"].Size = UDim2.new(0, 90, 1, 0)
Converted["_run"].Name = "run"
Converted["_run"].Parent = Converted["_Applied"]
Converted["_Label3"].Font = Enum.Font.GothamBold
Converted["_Label3"].Text = "Run"
Converted["_Label3"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label3"].TextScaled = true
Converted["_Label3"].TextSize = 14
Converted["_Label3"].TextWrapped = true
Converted["_Label3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label3"].BackgroundTransparency = 1
Converted["_Label3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Label3"].BorderSizePixel = 0
Converted["_Label3"].Size = UDim2.new(1, 0, 0, 20)
Converted["_Label3"].Name = "Label"
Converted["_Label3"].Parent = Converted["_run"]
Converted["_UICorner51"].Parent = Converted["_run"]
Converted["_UIListLayout14"].Padding = UDim.new(0, 6)
Converted["_UIListLayout14"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout14"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout14"].Parent = Converted["_run"]
Converted["_UIPadding30"].PaddingLeft = UDim.new(0, 5)
Converted["_UIPadding30"].PaddingRight = UDim.new(0, 5)
Converted["_UIPadding30"].Parent = Converted["_run"]
Converted["_Thumbnail2"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Thumbnail2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Thumbnail2"].BorderSizePixel = 0
Converted["_Thumbnail2"].LayoutOrder = 1
Converted["_Thumbnail2"].Size = UDim2.new(1, 0, 0, 0)
Converted["_Thumbnail2"].Name = "Thumbnail"
Converted["_Thumbnail2"].Parent = Converted["_run"]
Converted["_UIFlexItem4"].FlexMode = Enum.UIFlexMode.Fill
Converted["_UIFlexItem4"].Parent = Converted["_Thumbnail2"]
Converted["_UIAspectRatioConstraint2"].Parent = Converted["_Thumbnail2"]
Converted["_UICorner52"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner52"].Parent = Converted["_Thumbnail2"]
Converted["_ImageLabel14"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ImageLabel14"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel14"].BackgroundTransparency = 1
Converted["_ImageLabel14"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel14"].BorderSizePixel = 0
Converted["_ImageLabel14"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_ImageLabel14"].Size = UDim2.new(1, -10, 1, -10)
Converted["_ImageLabel14"].Parent = Converted["_Thumbnail2"]
Converted["_PackName2"].Font = Enum.Font.Gotham
Converted["_PackName2"].Text = "Pack name"
Converted["_PackName2"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_PackName2"].TextScaled = true
Converted["_PackName2"].TextSize = 14
Converted["_PackName2"].TextWrapped = true
Converted["_PackName2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_PackName2"].BackgroundTransparency = 1
Converted["_PackName2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_PackName2"].BorderSizePixel = 0
Converted["_PackName2"].LayoutOrder = 2
Converted["_PackName2"].Size = UDim2.new(1, 0, 0, 8)
Converted["_PackName2"].Name = "PackName"
Converted["_PackName2"].Parent = Converted["_run"]
Converted["_jump"].Text = ""
Converted["_jump"].Active = false
Converted["_jump"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_jump"].BackgroundTransparency = 1
Converted["_jump"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_jump"].BorderSizePixel = 0
Converted["_jump"].Selectable = false
Converted["_jump"].Size = UDim2.new(0, 90, 1, 0)
Converted["_jump"].Name = "jump"
Converted["_jump"].Parent = Converted["_Applied"]
Converted["_Label4"].Font = Enum.Font.GothamBold
Converted["_Label4"].Text = "Jump"
Converted["_Label4"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label4"].TextScaled = true
Converted["_Label4"].TextSize = 14
Converted["_Label4"].TextWrapped = true
Converted["_Label4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label4"].BackgroundTransparency = 1
Converted["_Label4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Label4"].BorderSizePixel = 0
Converted["_Label4"].Size = UDim2.new(1, 0, 0, 20)
Converted["_Label4"].Name = "Label"
Converted["_Label4"].Parent = Converted["_jump"]
Converted["_UICorner53"].Parent = Converted["_jump"]
Converted["_UIListLayout15"].Padding = UDim.new(0, 6)
Converted["_UIListLayout15"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout15"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout15"].Parent = Converted["_jump"]
Converted["_UIPadding31"].PaddingLeft = UDim.new(0, 5)
Converted["_UIPadding31"].PaddingRight = UDim.new(0, 5)
Converted["_UIPadding31"].Parent = Converted["_jump"]
Converted["_Thumbnail3"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Thumbnail3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Thumbnail3"].BorderSizePixel = 0
Converted["_Thumbnail3"].LayoutOrder = 1
Converted["_Thumbnail3"].Size = UDim2.new(1, 0, 0, 0)
Converted["_Thumbnail3"].Name = "Thumbnail"
Converted["_Thumbnail3"].Parent = Converted["_jump"]
Converted["_UIFlexItem5"].FlexMode = Enum.UIFlexMode.Fill
Converted["_UIFlexItem5"].Parent = Converted["_Thumbnail3"]
Converted["_UIAspectRatioConstraint3"].Parent = Converted["_Thumbnail3"]
Converted["_UICorner54"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner54"].Parent = Converted["_Thumbnail3"]
Converted["_ImageLabel15"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ImageLabel15"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel15"].BackgroundTransparency = 1
Converted["_ImageLabel15"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel15"].BorderSizePixel = 0
Converted["_ImageLabel15"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_ImageLabel15"].Size = UDim2.new(1, -10, 1, -10)
Converted["_ImageLabel15"].Parent = Converted["_Thumbnail3"]
Converted["_PackName3"].Font = Enum.Font.Gotham
Converted["_PackName3"].Text = "Pack name"
Converted["_PackName3"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_PackName3"].TextScaled = true
Converted["_PackName3"].TextSize = 14
Converted["_PackName3"].TextWrapped = true
Converted["_PackName3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_PackName3"].BackgroundTransparency = 1
Converted["_PackName3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_PackName3"].BorderSizePixel = 0
Converted["_PackName3"].LayoutOrder = 2
Converted["_PackName3"].Size = UDim2.new(1, 0, 0, 8)
Converted["_PackName3"].Name = "PackName"
Converted["_PackName3"].Parent = Converted["_jump"]
Converted["_fall"].Text = ""
Converted["_fall"].Active = false
Converted["_fall"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_fall"].BackgroundTransparency = 1
Converted["_fall"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_fall"].BorderSizePixel = 0
Converted["_fall"].Selectable = false
Converted["_fall"].Size = UDim2.new(0, 90, 1, 0)
Converted["_fall"].Name = "fall"
Converted["_fall"].Parent = Converted["_Applied"]
Converted["_Label5"].Font = Enum.Font.GothamBold
Converted["_Label5"].Text = "Fall"
Converted["_Label5"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label5"].TextScaled = true
Converted["_Label5"].TextSize = 14
Converted["_Label5"].TextWrapped = true
Converted["_Label5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label5"].BackgroundTransparency = 1
Converted["_Label5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Label5"].BorderSizePixel = 0
Converted["_Label5"].Size = UDim2.new(1, 0, 0, 20)
Converted["_Label5"].Name = "Label"
Converted["_Label5"].Parent = Converted["_fall"]
Converted["_UICorner55"].Parent = Converted["_fall"]
Converted["_UIListLayout16"].Padding = UDim.new(0, 6)
Converted["_UIListLayout16"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout16"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout16"].Parent = Converted["_fall"]
Converted["_UIPadding32"].PaddingLeft = UDim.new(0, 5)
Converted["_UIPadding32"].PaddingRight = UDim.new(0, 5)
Converted["_UIPadding32"].Parent = Converted["_fall"]
Converted["_Thumbnail4"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Thumbnail4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Thumbnail4"].BorderSizePixel = 0
Converted["_Thumbnail4"].LayoutOrder = 1
Converted["_Thumbnail4"].Size = UDim2.new(1, 0, 0, 0)
Converted["_Thumbnail4"].Name = "Thumbnail"
Converted["_Thumbnail4"].Parent = Converted["_fall"]
Converted["_UIFlexItem6"].FlexMode = Enum.UIFlexMode.Fill
Converted["_UIFlexItem6"].Parent = Converted["_Thumbnail4"]
Converted["_UIAspectRatioConstraint4"].Parent = Converted["_Thumbnail4"]
Converted["_UICorner56"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner56"].Parent = Converted["_Thumbnail4"]
Converted["_ImageLabel16"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ImageLabel16"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel16"].BackgroundTransparency = 1
Converted["_ImageLabel16"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel16"].BorderSizePixel = 0
Converted["_ImageLabel16"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_ImageLabel16"].Size = UDim2.new(1, -10, 1, -10)
Converted["_ImageLabel16"].Parent = Converted["_Thumbnail4"]
Converted["_PackName4"].Font = Enum.Font.Gotham
Converted["_PackName4"].Text = "Pack name"
Converted["_PackName4"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_PackName4"].TextScaled = true
Converted["_PackName4"].TextSize = 14
Converted["_PackName4"].TextWrapped = true
Converted["_PackName4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_PackName4"].BackgroundTransparency = 1
Converted["_PackName4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_PackName4"].BorderSizePixel = 0
Converted["_PackName4"].LayoutOrder = 2
Converted["_PackName4"].Size = UDim2.new(1, 0, 0, 8)
Converted["_PackName4"].Name = "PackName"
Converted["_PackName4"].Parent = Converted["_fall"]
Converted["_climb"].Text = ""
Converted["_climb"].Active = false
Converted["_climb"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_climb"].BackgroundTransparency = 1
Converted["_climb"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_climb"].BorderSizePixel = 0
Converted["_climb"].Selectable = false
Converted["_climb"].Size = UDim2.new(0, 90, 1, 0)
Converted["_climb"].Name = "climb"
Converted["_climb"].Parent = Converted["_Applied"]
Converted["_Label6"].Font = Enum.Font.GothamBold
Converted["_Label6"].Text = "Climb"
Converted["_Label6"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label6"].TextScaled = true
Converted["_Label6"].TextSize = 14
Converted["_Label6"].TextWrapped = true
Converted["_Label6"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label6"].BackgroundTransparency = 1
Converted["_Label6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Label6"].BorderSizePixel = 0
Converted["_Label6"].Size = UDim2.new(1, 0, 0, 20)
Converted["_Label6"].Name = "Label"
Converted["_Label6"].Parent = Converted["_climb"]
Converted["_UICorner57"].Parent = Converted["_climb"]
Converted["_UIListLayout17"].Padding = UDim.new(0, 6)
Converted["_UIListLayout17"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout17"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout17"].Parent = Converted["_climb"]
Converted["_UIPadding33"].PaddingLeft = UDim.new(0, 5)
Converted["_UIPadding33"].PaddingRight = UDim.new(0, 5)
Converted["_UIPadding33"].Parent = Converted["_climb"]
Converted["_Thumbnail5"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Thumbnail5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Thumbnail5"].BorderSizePixel = 0
Converted["_Thumbnail5"].LayoutOrder = 1
Converted["_Thumbnail5"].Size = UDim2.new(1, 0, 0, 0)
Converted["_Thumbnail5"].Name = "Thumbnail"
Converted["_Thumbnail5"].Parent = Converted["_climb"]
Converted["_UIFlexItem7"].FlexMode = Enum.UIFlexMode.Fill
Converted["_UIFlexItem7"].Parent = Converted["_Thumbnail5"]
Converted["_UIAspectRatioConstraint5"].Parent = Converted["_Thumbnail5"]
Converted["_UICorner58"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner58"].Parent = Converted["_Thumbnail5"]
Converted["_ImageLabel17"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ImageLabel17"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel17"].BackgroundTransparency = 1
Converted["_ImageLabel17"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel17"].BorderSizePixel = 0
Converted["_ImageLabel17"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_ImageLabel17"].Size = UDim2.new(1, -10, 1, -10)
Converted["_ImageLabel17"].Parent = Converted["_Thumbnail5"]
Converted["_PackName5"].Font = Enum.Font.Gotham
Converted["_PackName5"].Text = "Pack name"
Converted["_PackName5"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_PackName5"].TextScaled = true
Converted["_PackName5"].TextSize = 14
Converted["_PackName5"].TextWrapped = true
Converted["_PackName5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_PackName5"].BackgroundTransparency = 1
Converted["_PackName5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_PackName5"].BorderSizePixel = 0
Converted["_PackName5"].LayoutOrder = 2
Converted["_PackName5"].Size = UDim2.new(1, 0, 0, 8)
Converted["_PackName5"].Name = "PackName"
Converted["_PackName5"].Parent = Converted["_climb"]
Converted["_swim"].Text = ""
Converted["_swim"].Active = false
Converted["_swim"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_swim"].BackgroundTransparency = 1
Converted["_swim"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_swim"].BorderSizePixel = 0
Converted["_swim"].Selectable = false
Converted["_swim"].Size = UDim2.new(0, 90, 1, 0)
Converted["_swim"].Name = "swim"
Converted["_swim"].Parent = Converted["_Applied"]
Converted["_Label7"].Font = Enum.Font.GothamBold
Converted["_Label7"].Text = "Swim"
Converted["_Label7"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label7"].TextScaled = true
Converted["_Label7"].TextSize = 14
Converted["_Label7"].TextWrapped = true
Converted["_Label7"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label7"].BackgroundTransparency = 1
Converted["_Label7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Label7"].BorderSizePixel = 0
Converted["_Label7"].Size = UDim2.new(1, 0, 0, 20)
Converted["_Label7"].Name = "Label"
Converted["_Label7"].Parent = Converted["_swim"]
Converted["_UICorner59"].Parent = Converted["_swim"]
Converted["_UIListLayout18"].Padding = UDim.new(0, 6)
Converted["_UIListLayout18"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout18"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout18"].Parent = Converted["_swim"]
Converted["_UIPadding34"].PaddingLeft = UDim.new(0, 5)
Converted["_UIPadding34"].PaddingRight = UDim.new(0, 5)
Converted["_UIPadding34"].Parent = Converted["_swim"]
Converted["_Thumbnail6"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Thumbnail6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Thumbnail6"].BorderSizePixel = 0
Converted["_Thumbnail6"].LayoutOrder = 1
Converted["_Thumbnail6"].Size = UDim2.new(1, 0, 0, 0)
Converted["_Thumbnail6"].Name = "Thumbnail"
Converted["_Thumbnail6"].Parent = Converted["_swim"]
Converted["_UIFlexItem8"].FlexMode = Enum.UIFlexMode.Fill
Converted["_UIFlexItem8"].Parent = Converted["_Thumbnail6"]
Converted["_UIAspectRatioConstraint6"].Parent = Converted["_Thumbnail6"]
Converted["_UICorner60"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner60"].Parent = Converted["_Thumbnail6"]
Converted["_ImageLabel18"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ImageLabel18"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel18"].BackgroundTransparency = 1
Converted["_ImageLabel18"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel18"].BorderSizePixel = 0
Converted["_ImageLabel18"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_ImageLabel18"].Size = UDim2.new(1, -10, 1, -10)
Converted["_ImageLabel18"].Parent = Converted["_Thumbnail6"]
Converted["_PackName6"].Font = Enum.Font.Gotham
Converted["_PackName6"].Text = "Pack name"
Converted["_PackName6"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_PackName6"].TextScaled = true
Converted["_PackName6"].TextSize = 14
Converted["_PackName6"].TextWrapped = true
Converted["_PackName6"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_PackName6"].BackgroundTransparency = 1
Converted["_PackName6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_PackName6"].BorderSizePixel = 0
Converted["_PackName6"].LayoutOrder = 2
Converted["_PackName6"].Size = UDim2.new(1, 0, 0, 8)
Converted["_PackName6"].Name = "PackName"
Converted["_PackName6"].Parent = Converted["_swim"]
Converted["_UIListLayout19"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout19"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout19"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout19"].Parent = Converted["_Frame1"]
Converted["_div"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_div"].BackgroundTransparency = 0.8999999761581421
Converted["_div"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_div"].BorderSizePixel = 0
Converted["_div"].LayoutOrder = 1
Converted["_div"].Size = UDim2.new(0, 100, 0, 5)
Converted["_div"].Name = "div"
Converted["_div"].Parent = Converted["_Frame1"]
Converted["_UICorner61"].Parent = Converted["_div"]
Converted["_UIPadding35"].PaddingBottom = UDim.new(0, 8)
Converted["_UIPadding35"].PaddingLeft = UDim.new(0, 6)
Converted["_UIPadding35"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding35"].PaddingTop = UDim.new(0, 8)
Converted["_UIPadding35"].Parent = Converted["_Frame1"]
Converted["_Bar"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Bar"].BackgroundTransparency = 1
Converted["_Bar"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Bar"].BorderSizePixel = 0
Converted["_Bar"].LayoutOrder = 10
Converted["_Bar"].Size = UDim2.new(1, 0, 0, 15)
Converted["_Bar"].Name = "Bar"
Converted["_Bar"].Parent = Converted["_Frame1"]
Converted["_Close2"].Font = Enum.Font.GothamBold
Converted["_Close2"].Text = "Close"
Converted["_Close2"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Close2"].TextScaled = true
Converted["_Close2"].TextSize = 14
Converted["_Close2"].TextWrapped = true
Converted["_Close2"].BackgroundColor3 = Color3.fromRGB(46.000001057982445, 0, 0)
Converted["_Close2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Close2"].BorderSizePixel = 0
Converted["_Close2"].Size = UDim2.new(0, 50, 1, 0)
Converted["_Close2"].Name = "Close"
Converted["_Close2"].Parent = Converted["_Bar"]
Converted["_UICorner62"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner62"].Parent = Converted["_Close2"]
Converted["_UIPadding36"].PaddingBottom = UDim.new(0, 3)
Converted["_UIPadding36"].PaddingLeft = UDim.new(0, 3)
Converted["_UIPadding36"].PaddingRight = UDim.new(0, 3)
Converted["_UIPadding36"].PaddingTop = UDim.new(0, 3)
Converted["_UIPadding36"].Parent = Converted["_Close2"]
Converted["_UIListLayout20"].FillDirection = Enum.FillDirection.Horizontal
Converted["_UIListLayout20"].HorizontalAlignment = Enum.HorizontalAlignment.Right
Converted["_UIListLayout20"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout20"].Parent = Converted["_Bar"]
Converted["_UIPadding37"].PaddingLeft = UDim.new(0, 8)
Converted["_UIPadding37"].PaddingRight = UDim.new(0, 8)
Converted["_UIPadding37"].Parent = Converted["_Bar"]
Converted["_Tip"].Font = Enum.Font.Unknown
Converted["_Tip"].MaxVisibleGraphemes = 0
Converted["_Tip"].Text = ""
Converted["_Tip"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Tip"].TextScaled = true
Converted["_Tip"].TextSize = 14
Converted["_Tip"].TextWrapped = true
Converted["_Tip"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Tip"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Tip"].BackgroundTransparency = 1
Converted["_Tip"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Tip"].BorderSizePixel = 0
Converted["_Tip"].LayoutOrder = -1
Converted["_Tip"].Size = UDim2.new(0, 0, 1, 0)
Converted["_Tip"].Name = "Tip"
Converted["_Tip"].Parent = Converted["_Bar"]
Converted["_UIFlexItem9"].FlexMode = Enum.UIFlexMode.Fill
Converted["_UIFlexItem9"].Parent = Converted["_Tip"]
Converted["_TakeFrom"].AutomaticCanvasSize = Enum.AutomaticSize.X
Converted["_TakeFrom"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_TakeFrom"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TakeFrom"].ScrollBarImageTransparency = 0.6000000238418579
Converted["_TakeFrom"].ScrollBarThickness = 3
Converted["_TakeFrom"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TakeFrom"].BackgroundTransparency = 1
Converted["_TakeFrom"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TakeFrom"].BorderSizePixel = 0
Converted["_TakeFrom"].ClipsDescendants = false
Converted["_TakeFrom"].LayoutOrder = 2
Converted["_TakeFrom"].Selectable = false
Converted["_TakeFrom"].Size = UDim2.new(1, 0, 0, 0)
Converted["_TakeFrom"].Name = "TakeFrom"
Converted["_TakeFrom"].Parent = Converted["_Frame1"]
Converted["_UIFlexItem10"].FlexMode = Enum.UIFlexMode.Fill
Converted["_UIFlexItem10"].Parent = Converted["_TakeFrom"]
Converted["_UIListLayout21"].FillDirection = Enum.FillDirection.Horizontal
Converted["_UIListLayout21"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout21"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout21"].Parent = Converted["_TakeFrom"]
Converted["_template"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_template"].BackgroundTransparency = 1
Converted["_template"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_template"].BorderSizePixel = 0
Converted["_template"].Size = UDim2.new(0, 100, 1, 0)
Converted["_template"].Visible = false
Converted["_template"].Name = "template"
Converted["_template"].Parent = Converted["_TakeFrom"]
Converted["_UIListLayout22"].Padding = UDim.new(0, 6)
Converted["_UIListLayout22"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout22"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout22"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout22"].Parent = Converted["_template"]
Converted["_Thumbnail7"].BackgroundColor3 = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
Converted["_Thumbnail7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Thumbnail7"].BorderSizePixel = 0
Converted["_Thumbnail7"].LayoutOrder = 1
Converted["_Thumbnail7"].Size = UDim2.new(1, 0, 0, 0)
Converted["_Thumbnail7"].Name = "Thumbnail"
Converted["_Thumbnail7"].Parent = Converted["_template"]
Converted["_UIFlexItem11"].FlexMode = Enum.UIFlexMode.Fill
Converted["_UIFlexItem11"].Parent = Converted["_Thumbnail7"]
Converted["_UIAspectRatioConstraint7"].Parent = Converted["_Thumbnail7"]
Converted["_UICorner63"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner63"].Parent = Converted["_Thumbnail7"]
Converted["_ImageLabel19"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_ImageLabel19"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageLabel19"].BackgroundTransparency = 1
Converted["_ImageLabel19"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageLabel19"].BorderSizePixel = 0
Converted["_ImageLabel19"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_ImageLabel19"].Size = UDim2.new(1, -10, 1, -10)
Converted["_ImageLabel19"].Parent = Converted["_Thumbnail7"]
Converted["_Label8"].Font = Enum.Font.Gotham
Converted["_Label8"].Text = "Pack"
Converted["_Label8"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label8"].TextScaled = true
Converted["_Label8"].TextSize = 14
Converted["_Label8"].TextWrapped = true
Converted["_Label8"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label8"].BackgroundTransparency = 1
Converted["_Label8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Label8"].BorderSizePixel = 0
Converted["_Label8"].Size = UDim2.new(1, 0, 0, 20)
Converted["_Label8"].Name = "Label"
Converted["_Label8"].Parent = Converted["_template"]
Converted["_UIPadding38"].PaddingBottom = UDim.new(0, 8)
Converted["_UIPadding38"].PaddingTop = UDim.new(0, 8)
Converted["_UIPadding38"].Parent = Converted["_template"]
Converted["_TextButton"].Font = Enum.Font.Gotham
Converted["_TextButton"].Text = "Select"
Converted["_TextButton"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextButton"].TextScaled = true
Converted["_TextButton"].TextSize = 14
Converted["_TextButton"].TextWrapped = true
Converted["_TextButton"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
Converted["_TextButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextButton"].BorderSizePixel = 0
Converted["_TextButton"].LayoutOrder = 2
Converted["_TextButton"].Size = UDim2.new(1, -20, 0, 15)
Converted["_TextButton"].Parent = Converted["_template"]
Converted["_UICorner64"].CornerRadius = UDim.new(0, 16)
Converted["_UICorner64"].Parent = Converted["_TextButton"]
Converted["_UIPadding39"].PaddingBottom = UDim.new(0, 3)
Converted["_UIPadding39"].PaddingLeft = UDim.new(0, 3)
Converted["_UIPadding39"].PaddingRight = UDim.new(0, 3)
Converted["_UIPadding39"].PaddingTop = UDim.new(0, 3)
Converted["_UIPadding39"].Parent = Converted["_TextButton"]
-- Module Scripts:
local module_scripts = {}
do -- Module: StarterGui.AFEM.FUNCTIONS
    local script = Instance.new("ModuleScript")
    script.Name = "FUNCTIONS"
    script.Parent = Converted["_AFEM"]
    local function module_script()
		local FUNCTIONSmodule = {}
		
		local ts = game:GetService("TweenService")
		local uis = game:GetService("UserInputService")
		local http = game:GetService("HttpService")
		
		local area = script.Parent.Menu.Area.Area
		local quickselector = script.Parent.Menu.QuickSelector
		
		local function draggableobjectF()
			local function a(b,c,d)local e=d.AbsoluteSize;local f=b.X.Scale*e.X+b.X.Offset;local g=b.Y.Scale*e.Y+b.Y.Offset;local h=c.X.Scale*e.X+c.X.Offset;local i=c.Y.Scale*e.Y+c.Y.Offset;local j=f+h<=0;local k=f>=e.X;local l=g+i<=0;local m=g>=e.Y;return j or k or l or m end;local n=UDim2.new;local o=game:GetService("UserInputService")local p=game:GetService("TweenService")local q={}q.__index=q;function q.new(r,s,t,u)local self={}self.Object=r;self.ToMove=s;self.Smooth=t;self.CallbackOnly=u;self.DragStarted=nil;self.DragEnded=nil;self.Dragged=nil;self.Dragging=false;self.LastPosition=nil;self.Velocity=Vector2.new(0,0)setmetatable(self,q)return self end;function q:Enable()local v=self.Object;local w=self.ToMove;local x=nil;local y=nil;local z=nil;local A=false;local function B(C)local D=C.Position-y;local E=UDim2.new(z.X.Scale,z.X.Offset+D.X,z.Y.Scale,z.Y.Offset+D.Y)if a(E,v.Size,v:FindFirstAncestorWhichIsA("ScreenGui"))then warn("UDim2 is offscreen.")return E end;if self.CallbackOnly then else if(self.Smooth==nil or self.Smooth==true)and self.Smooth~=false then p:Create(w and w or v,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out),{Position=E}):Play()else local F=w and w or v;F.Position=E end end;return E end;self.InputBegan=v.InputBegan:Connect(function(C)if C.UserInputType==Enum.UserInputType.MouseButton1 or C.UserInputType==Enum.UserInputType.Touch then A=true;local G;G=C.Changed:Connect(function()if C.UserInputState==Enum.UserInputState.End and(self.Dragging or A)then self.Dragging=false;G:Disconnect()if self.DragEnded and not A then self.DragEnded(self.Velocity)end;A=false end end)end end)self.InputChanged=v.InputChanged:Connect(function(C)if C.UserInputType==Enum.UserInputType.MouseMovement or C.UserInputType==Enum.UserInputType.Touch then x=C end end)self.InputChanged2=o.InputChanged:Connect(function(C)if v.Parent==nil then self:Disable()return end;if A then A=false;if self.DragStarted then self.DragStarted()end;self.Dragging=true;y=C.Position;if w then z=w.Position else z=v.Position end;self.LastPosition=C.Position end;if C==x and self.Dragging then local E=B(C)self.Velocity=C.Position-self.LastPosition;self.LastPosition=C.Position;if self.Dragged then self.Dragged(E)end end end)end;function q:Disable()self.InputBegan:Disconnect()self.InputChanged:Disconnect()self.InputChanged2:Disconnect()if self.Dragging then self.Dragging=false;if self.DragEnded then self.DragEnded(self.Velocity)end end end;return q
		end
		local draggableobject = draggableobjectF()
		
		local function clickandholdF()
			local a={}a.__index=a;local b=game:GetService("UserInputService")function a.new(c,d)local self=setmetatable({},a)self.textButton=c;self.holdTime=d or 0.5;self.holdTask=nil;self.initialPosition=nil;self.Holded=Instance.new("BindableEvent")local function e(f,g)return math.sqrt((g.X-f.X)^2+(g.Y-f.Y)^2)end;self.textButton.MouseButton1Down:Connect(function(h,i)self.initialPosition=Vector2.new(h,i)self.holdTask=task.spawn(function()task.wait(self.holdTime)if self.holdTask then self.Holded:Fire()end end)end)b.InputChanged:Connect(function(j)if j.UserInputType==Enum.UserInputType.MouseMovement or j.UserInputType==Enum.UserInputType.Touch then if self.holdTask and self.initialPosition then local k=j.Position;local l=e(self.initialPosition,k)if l>10 then coroutine.close(self.holdTask)self.holdTask=nil end end end end)b.InputEnded:Connect(function(j)if j.UserInputType==Enum.UserInputType.MouseButton1 or j.UserInputType==Enum.UserInputType.Touch then if self.holdTask then coroutine.close(self.holdTask)self.holdTask=nil end;self.initialPosition=nil end end)return self end;return a	
		end
		local clickandhold = clickandholdF()
		
		local function pointsaveF()
			local a=false;local function b(...)if a then print("[PointSave DEBUG]:",...)end end;_G._FOLDERS=_G._FOLDERS or{}_G._FILES=_G._FILES or{}isfolder=isfolder or function(c)b("Checking if folder exists:",c)return _G._FOLDERS[c]~=nil end;makefolder=makefolder or function(c)b("Creating folder:",c)_G._FOLDERS[c]={}return _G._FOLDERS[c]end;isfile=isfile or function(c)b("Checking if file exists:",c)return _G._FILES[c]~=nil end;writefile=writefile or function(c,d)b("Writing file:",c,"with content:",d)_G._FILES[c]=d;return _G._FILES[c]end;readfile=readfile or function(c)b("Reading file:",c)return _G._FILES[c]end;delfile=delfile or function(c)b("Deleting file:",c)_G._FILES[c]=nil end;listfiles=listfiles or function(e)b("Listing files in folder:",e)local f=_G._FOLDERS[e]if f then local g={}for h,i in pairs(_G._FILES)do if h:sub(1,#e+1)==e.."/"then local j=h:sub(#e+2)b("Found file in folder:",j)table.insert(g,j)end end;return g end;b("Folder does not exist:",e)return{}end;local k={}k.__index=k;local l="PointSaveData"local function m()if not isfolder(l)then b("Base folder not found, creating:",l)makefolder(l)else b("Base folder already exists:",l)end end;function k.new(n)b("Initializing new PointSave instance for namespace:",n)m()local self=setmetatable({},k)self.namespace=n;self.folderPath=l.."/"..n;if not isfolder(self.folderPath)then b("Namespace folder does not exist, creating:",self.folderPath)makefolder(self.folderPath)else b("Namespace folder already exists:",self.folderPath)end;return self end;function k:set(o,p)local h=self.folderPath.."/"..o..".txt"b("Setting value for key:",o,"->",p)writefile(h,tostring(p))end;function k:get(o)local h=self.folderPath.."/"..o..".txt"b("Getting value for key:",o)if isfile(h)then local p=readfile(h)b("Found value for key:",o,"->",p)return p end;b("Key not found:",o)return nil end;function k:remove(o)local h=self.folderPath.."/"..o..".txt"b("Removing key:",o)if isfile(h)then delfile(h)b("Removed file for key:",o)else b("File for key does not exist:",o)end end;function k:clear()b("Clearing all keys in namespace:",self.namespace)local g=listfiles(self.folderPath)for i,q in ipairs(g)do local h=self.folderPath.."/"..q;if isfile(h)then b("Deleting file:",h)delfile(h)end end end;function k.deleteNamespace(n)local e=l.."/"..n;b("Deleting namespace:",n)local g=listfiles(e)for i,q in ipairs(g)do local h=e.."/"..q;if isfile(h)then b("Deleting file from namespace:",h)delfile(h)end end;_G._FOLDERS[e]=nil;b("Deleted folder for namespace:",n)end;function k.listNamespaces()b("Listing all namespaces")m()local r={}for e,i in pairs(_G._FOLDERS)do if e:sub(1,#l+1)==l.."/"then local n=e:sub(#l+2)b("Found namespace:",n)table.insert(r,n)end end;return r end;return k
		
		end
		local pointsave = pointsaveF()
		
		local function udim2Serializer(value)
			if typeof(value) == "UDim2" then
				return string.format("%g,%g,%g,%g", value.X.Scale, value.X.Offset, value.Y.Scale, value.Y.Offset)
			elseif typeof(value) == "string" then
				local xScale, xOffset, yScale, yOffset = string.match(value, "([^,]+),([^,]+),([^,]+),([^,]+)")
				assert(xScale and xOffset and yScale and yOffset, "Invalid UDim2 string format")
				return UDim2.new(tonumber(xScale), tonumber(xOffset), tonumber(yScale), tonumber(yOffset))
			end
		end
		
		
		local emoteBindings = {}
		
		function FUNCTIONSmodule.notification(s)
			task.spawn(function()
				local notif = script.Parent.Notifications.Placeholder:Clone()
				notif.Parent = script.Parent.Notifications
				notif.Visible = true
				notif.Name = "notification"
				notif.TextLabel.Text = s
				ts:Create(notif, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					Size = UDim2.new(1,0,0,math.clamp(#s, 40, 300))
				}):Play()
				task.wait(3)
				local dismiss = ts:Create(notif, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					Size = UDim2.new(0,0,0,0)
				})
				dismiss:Play()
				dismiss.Completed:Wait()
				notif:Destroy()
			end)
		end
		
		local pointSaveAFEM = pointsave.new("AFEMConf")
		
		
		local mainEquippedPack = nil
		local categoryEquippedPacks = {} 
		
		
		
		local animplaying = false
		local stopOnWalk
		local stopOnEnd
		function FUNCTIONSmodule.playanim(id)
			local anim
			anim = Instance.new("Animation")
			anim.AnimationId = id
				
			
			local animator = game.Players.LocalPlayer.Character.Humanoid:FindFirstChild("Animator")
			local animate = game.Players.LocalPlayer.Character:FindFirstChild("Animate")
			for _, tr in pairs(animator:GetPlayingAnimationTracks()) do
				tr:Stop(0)
			end
			
			animate.PlayEmote:Invoke(anim)
		
		
			
			if pointSaveAFEM:get("MenuStayOpen") ~= "1" then
				script.Parent.Menu.Close:Fire()
			end
		end
		
		
		uis.InputBegan:Connect(function(inp, proc)
			if proc then return end
			if emoteBindings[inp.KeyCode] then
				emoteBindings[inp.KeyCode]()
			end
		end)
		
		
		
		
		function getAnimationPackFromBundleId(bID)
			repeat task.wait() until getgenv().AFEMAnimationPacksList
			local animPackList = getgenv().AFEMAnimationPacksList
			for _, v in ipairs(animPackList) do
				if v["BundleId"] == bID then
					return v
				end
			end
			return nil
		end
		
		function getAnimatorScript()
			local char = game.Players.LocalPlayer.Character
			if not char then warn("[AFEM] - No character. Waiting for one...") char = game.Players.LocalPlayer.CharacterAdded:Wait() end
			local hum = char:WaitForChild("Humanoid", 10)
			if not hum then warn("[AFEM] - No humanoid in character.") return end
			if hum.RigType.Name ~= "R15" then warn("[AFEM] - Your character is not R15")  return end -- FUNCTIONSmodule.notification("Your character needs to be R15.")
			local animateScript = char:FindFirstChild("Animate")
			if not animateScript then warn("[AFEM] - Your character does not have the Animate script!") return end
			return animateScript
		end
		
		
		function FUNCTIONSmodule.loadPack(save)
			if mainEquippedPack then
				FUNCTIONSmodule.applyPack(mainEquippedPack, false, save)
			end
		
			local animateScript = getAnimatorScript()
			if not animateScript then return end
		
			for _, animObj in ipairs(animateScript:GetChildren()) do
				local categoryName = animObj.Name
				local savedOverride = pointSaveAFEM:get("EquippedPack_" .. categoryName)
				if savedOverride then
					FUNCTIONSmodule.applySingularAnimPack(savedOverride, categoryName, save)
				end
			end
		end
		
		function FUNCTIONSmodule.applyPack(bID, new, save)
			mainEquippedPack = bID
			local animPack = getAnimationPackFromBundleId(tonumber(bID))
			if not animPack then
				warn("[AFEM] - Can't find this animation pack.")
				return
			end
		
			local animateScript = getAnimatorScript()
			if not animateScript then return end
		
			for _, animObj in ipairs(animateScript:GetChildren()) do
				if animPack["Animations"][animObj.Name] then
					if new then
						pointSaveAFEM:remove("EquippedPack_" .. animObj.Name)
						categoryEquippedPacks[animObj.Name] = nil
					end
					for _, animAsset in ipairs(animObj:GetChildren()) do
						if animPack["Animations"][animObj.Name][animAsset.Name] then
							animAsset.AnimationId = animPack["Animations"][animObj.Name][animAsset.Name]
						end
					end
				end
			end
		
			print("[AFEM] - Animation pack applied!")
			if save then
				local s, e = pcall(function()
					pointSaveAFEM:set("MainEquippedPack", tostring(bID))
					print("[AFEM] - Current main pack persistently saved")
				end)
				if not s then
					warn("[AFEM] - Failed to save persistent main pack, not supported?")
					warn(e)
				end
			end
		end
		
		function FUNCTIONSmodule.applySingularAnimPack(bID, ctgr, save)
			categoryEquippedPacks[ctgr] = bID
			local animPack = getAnimationPackFromBundleId(tonumber(bID))
			if not animPack then
				warn("[AFEM] - Can't find this animation pack.")
				return
			end
		
			local animateScript = getAnimatorScript()
			if not animateScript then return end
		
			for _, animObj in ipairs(animateScript:GetChildren()) do
				if animPack["Animations"][animObj.Name] and animObj.Name == ctgr then
					for _, animAsset in ipairs(animObj:GetChildren()) do
						if animPack["Animations"][animObj.Name][animAsset.Name] then
							animAsset.AnimationId = animPack["Animations"][animObj.Name][animAsset.Name]
						end
					end
				end
			end
		
			print("[AFEM] - Animation pack (single category) applied!")
			if save then
				local s, e = pcall(function()
					pointSaveAFEM:set("EquippedPack_" .. ctgr, tostring(bID))
					print("[AFEM] - Single category pack persistently saved")
				end)
				if not s then
					warn("[AFEM] - Failed to save persistent category pack, not supported?")
					warn(e)
				end
			end
		end
		
		
		game.Players.LocalPlayer.CharacterAdded:Connect(function()
			FUNCTIONSmodule.loadPack()
		end)
		
		
		local equippedPack = nil
		local s, e = pcall(function()
			equippedPack = pointSaveAFEM:get("EquippedPack")
			warn(equippedPack)
			if equippedPack then
				task.delay(1.5, function()
					FUNCTIONSmodule.loadPack()
				end)
			end
		end)
		if not s then
			warn("[AFEM] - Reading persistent pack file failed. Not supported?")
			warn(e)
		end
		
		
		local inFloatingButton = nil
		function FUNCTIONSmodule.refresh()
			repeat task.wait() until getgenv().AFEMEmoteList and getgenv().AFEMAnimationPacksList
			area.Parent.TextLabel.Visible = false
			local emoteList = getgenv().AFEMEmoteList
			local animPackList = getgenv().AFEMAnimationPacksList
			for _, v in ipairs(area:GetChildren()) do
				if v:IsA("ImageButton") and v.Name ~= "Sample" then
					v:Destroy()
				end
			end
			
			
			for _, emote in ipairs(emoteList) do
				if emote["_comment"] then continue end
				local buttonClone = area.Sample:Clone()
				buttonClone.Name = emote["name"] .. "EMOTE"
				buttonClone.Visible = true
				
				local buttonProperties = {loaded = emote["_special"] ~= "custom", custom = emote["_special"] == "custom"}
		
				buttonClone.TextLabel.Text = emote["name"]
				buttonClone.ImageLabel.Image = "rbxthumb://type=Asset&id=" .. emote["id"] .. "&w=420&h=420"
		
				buttonClone.LayoutOrder = 100
		
				if pointSaveAFEM:get("FAVORITE" .. emote["id"]) then
					buttonClone.Favorite.Image = "rbxassetid://17298934556"
					buttonClone.LayoutOrder = 0
					buttonProperties["favorites"] = true
				end
				
				buttonClone:SetAttribute("prop", http:JSONEncode(buttonProperties))
				--print(buttonClone:GetAttribute("prop"))
		
				buttonClone.MouseButton1Click:Connect(function()
					FUNCTIONSmodule.playanim(emote["animationid"], emote["visualR6"])
				end)
		
				buttonClone.Favorite.MouseButton1Click:Connect(function()
					local key = "FAVORITE" .. emote["id"]
					if not pointSaveAFEM:get(key) then
						pointSaveAFEM:set(key, "1")
						buttonClone.Favorite.Image = "rbxassetid://17298934556"
						--buttonClone.LayoutOrder = 0
					else
						pointSaveAFEM:remove(key)
						buttonClone.Favorite.Image = "rbxassetid://13332356065"
						--buttonClone.LayoutOrder = 100
					end
				end)
				
				if emote["_special"] == "custom" then
					buttonClone.Delete.Visible = true
					buttonClone.UIStroke.CustomEffect.Enabled = true
					buttonClone.Delete.MouseButton1Click:Connect(function()
						local extraEmotes = http:JSONDecode(pointSaveAFEM:get("ExtraEmotes") or "[]")
						
						
						for ind, em in pairs(extraEmotes) do
							if em.id == emote.id then
								table.remove(extraEmotes, ind)
								break
							end
						end
						
						for ind, em in pairs(getgenv().AFEMEmoteList) do
							if em.id == emote.id then
								table.remove(getgenv().AFEMEmoteList, ind)
								break
							end
						end
						
						pointSaveAFEM:set("ExtraEmotes", http:JSONEncode(extraEmotes))
						
						FUNCTIONSmodule.refresh()
						script.Parent.Menu.Area.SearchUpdate:Fire()
					end)
				end
		
		
				local floatingButtonDragger = nil
		
				buttonClone.Parent = area
				
				local function makeQuickSelectorButton()
					local quickSelectorButtonClone = quickselector.Sample:Clone()
					quickSelectorButtonClone.Parent = quickselector
		
					quickSelectorButtonClone.Visible = true
					quickSelectorButtonClone.Name = buttonClone.Name
		
					quickSelectorButtonClone.TextLabel.Text = emote["name"]
					quickSelectorButtonClone.ImageLabel.Image = "rbxthumb://type=Asset&id=" .. emote["id"] .. "&w=420&h=420"
		
					
		
					uis.InputEnded:Connect(function(input, gameProcessed)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
							local mousePos = uis:GetMouseLocation()
							local guiInset = game:GetService("GuiService"):GetGuiInset()
							local adjustedPos = Vector2.new(mousePos.X, mousePos.Y - guiInset.Y)
		
							local btnPos = quickSelectorButtonClone.AbsolutePosition
							local btnSize = quickSelectorButtonClone.AbsoluteSize
		
							local insideX = adjustedPos.X >= btnPos.X and adjustedPos.X <= btnPos.X + btnSize.X
							local insideY = adjustedPos.Y >= btnPos.Y and adjustedPos.Y <= btnPos.Y + btnSize.Y
		
							if insideX and insideY and quickselector:GetAttribute("visible") then
								FUNCTIONSmodule.playanim(emote["animationid"])
							end
						end
					end)
				end
				
				local function makeFloatingButton(initialUdim2)
					local floatingButtonClone = buttonClone:Clone()
					floatingButtonClone.Parent = script.Parent.FloatingButtons
					floatingButtonClone.AnchorPoint = Vector2.zero
		
					local guiInset = game:GetService("GuiService"):GetGuiInset()
					floatingButtonClone.Position = initialUdim2 or UDim2.fromOffset(buttonClone.AbsolutePosition.X, buttonClone.AbsolutePosition.Y + guiInset.Y)
		
					floatingButtonClone.TextLabel.Visible = false
					floatingButtonClone.Favorite.Visible = false
			                floatingButtonClone.Delete.Visible = false
					floatingButtonClone.UIPadding.PaddingBottom = UDim.new()
		
					floatingButtonClone.ImageLabel.Position = UDim2.fromScale(0.5, 0.5)
		
					ts:Create(floatingButtonClone, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
						AnchorPoint = Vector2.new(0.5,0.5),
						Position = initialUdim2 or UDim2.fromScale(0.5, 0.2),
						Size = UDim2.fromOffset(40, 40)
					}):Play()
		
					floatingButtonDragger = draggableobject.new(floatingButtonClone, nil, true)
					floatingButtonDragger:Enable()
		
					floatingButtonDragger.Dragged = function(pos)
						pointSaveAFEM:set("FloatingButtonEmote" .. emote["id"], udim2Serializer(pos))
					end
		
					floatingButtonClone.MouseButton1Click:Connect(function()
						FUNCTIONSmodule.playanim(emote["animationid"])
						--local anim = Instance.new("Animation")
						--anim.AnimationId = emote["animationid"]
						--game.Players.LocalPlayer.Character:FindFirstChild("Animate").PlayEmote:Invoke(anim)
					end)
		
					if uis.KeyboardEnabled and uis.MouseEnabled then
						floatingButtonClone.MouseEnter:Connect(function()
							inFloatingButton = floatingButtonClone
						end)
		
						floatingButtonClone.MouseLeave:Connect(function()
							inFloatingButton = nil
						end)
		
						uis.InputBegan:Connect(function(inp, proc)
							if proc then return end
							if inFloatingButton == floatingButtonClone then
		
								FUNCTIONSmodule.notification("Emote " .. emote['name'] .. " binded to key " .. inp.KeyCode.Name)
								task.wait(0.2)
								emoteBindings[inp.KeyCode] = function()
									FUNCTIONSmodule.playanim(emote["animationid"])
								end
		
							end
						end)
					end
				end
				
				if pointSaveAFEM:get("QuickSelectorEmote" .. emote["id"]) and not quickselector:FindFirstChild(buttonClone.Name) then
					makeQuickSelectorButton()
				end
				
				
				if pointSaveAFEM:get("FloatingButtonEmote" .. emote["id"]) and not script.Parent.FloatingButtons:FindFirstChild(buttonClone.Name) then
					makeFloatingButton(udim2Serializer(pointSaveAFEM:get("FloatingButtonEmote" .. emote["id"])))
				end
				
				clickandhold.new(buttonClone).Holded.Event:Connect(function()
					if pointSaveAFEM:get("QuickMethodType") == "QuickSelector" then
						if quickselector:FindFirstChild(buttonClone.Name) then
							pointSaveAFEM:remove("QuickSelectorEmote" .. emote["id"])
							quickselector:FindFirstChild(buttonClone.Name):Destroy()
							FUNCTIONSmodule.notification("Emote " .. emote["name"] .. " removed from quick selector.")
						else
							FUNCTIONSmodule.notification("Emote " .. emote["name"] .. " added to quick selector.")
							pointSaveAFEM:set("QuickSelectorEmote" .. emote["id"], "1")
							makeQuickSelectorButton()
						end
					elseif pointSaveAFEM:get("QuickMethodType") == "FloatingButtons" then
						if script.Parent.FloatingButtons:FindFirstChild(buttonClone.Name) then
							local closeanim = ts:Create(script.Parent.FloatingButtons:FindFirstChild(buttonClone.Name), TweenInfo.new(0.7, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
								Size = UDim2.new()
							})
							closeanim:Play()
							closeanim.Completed:Connect(function()
								script.Parent.FloatingButtons:FindFirstChild(buttonClone.Name):Destroy()
							end)
		
							pointSaveAFEM:remove("FloatingButtonEmote" .. emote["id"])
		
							floatingButtonDragger:Disable()
							floatingButtonDragger = nil
						else
							pointSaveAFEM:set("FloatingButtonEmote" .. emote["id"], udim2Serializer(UDim2.fromScale(0.5, 0.2)))
							makeFloatingButton()
						end
					end
						
					
					
					
				end)
				
				buttonClone.Parent = area
			end
			
			for _, animPack in ipairs(animPackList) do
				if animPack["_comment"] then continue end
				local buttonClone = area.Sample:Clone()
				buttonClone.Name = animPack["Name"] .. "ANPACK"
				buttonClone.Visible = false
		
				buttonClone.Favorite.Visible = false
		
				buttonClone.TextLabel.Text = animPack["Name"]
				if animPack["CustomImage"] then
					buttonClone.ImageLabel.Image = animPack["CustomImage"]
				else
					buttonClone.ImageLabel.Image = "rbxthumb://type=BundleThumbnail&id=" .. animPack["BundleId"] .. "&w=420&h=420"
				end
				buttonClone.MouseButton1Click:Connect(function()
					FUNCTIONSmodule.applyPack(animPack['BundleId'], true, true)
		
					FUNCTIONSmodule.notification("Animation pack applied! Try moving around.")
				end)
		
				
				buttonClone.Parent = area
			end
		end
		
		local lastExc = { loaded = false, favorites = false, custom = false }
		function FUNCTIONSmodule.updateEmoteExclusions(exc)
			if not exc then exc = lastExc else lastExc = exc end
			if area:GetAttribute("showing") ~= "e" then return end
			for _, button in ipairs(area:GetChildren()) do
				if button.Name == "Sample" then continue end
				if not button:IsA("ImageButton") then continue end
				
				local propR = button:GetAttribute("prop")
				if propR then
					local prop = http:JSONDecode(propR)
					
					local declaredGone = false
					for k,v in pairs(exc) do
						if v and prop[k] then
							button.Visible = false
							declaredGone = true
						else
							if not declaredGone then
								button.Visible = true
							end
						end
					end
				end
			end
		end
		
		if pointSaveAFEM:get("MinimizeOnStartup") then
			script.Parent.Menu.Close:Fire()
		end
		
		getgenv().AFEMFUNCTIONS = FUNCTIONSmodule
		return FUNCTIONSmodule
		
    end
    module_scripts[script] = module_script
end
do -- Module: StarterGui.AFEM.DraggableObject
    local script = Instance.new("ModuleScript")
    script.Name = "DraggableObject"
    script.Parent = Converted["_AFEM"]
    local function module_script()
		local function a(b,c,d)local e=d.AbsoluteSize;local f=b.X.Scale*e.X+b.X.Offset;local g=b.Y.Scale*e.Y+b.Y.Offset;local h=c.X.Scale*e.X+c.X.Offset;local i=c.Y.Scale*e.Y+c.Y.Offset;local j=f+h<=0;local k=f>=e.X;local l=g+i<=0;local m=g>=e.Y;return j or k or l or m end;local n=UDim2.new;local o=game:GetService("UserInputService")local p=game:GetService("TweenService")local q={}q.__index=q;function q.new(r,s,t,u)local self={}self.Object=r;self.ToMove=s;self.Smooth=t;self.CallbackOnly=u;self.DragStarted=nil;self.DragEnded=nil;self.Dragged=nil;self.Dragging=false;self.LastPosition=nil;self.Velocity=Vector2.new(0,0)setmetatable(self,q)return self end;function q:Enable()local v=self.Object;local w=self.ToMove;local x=nil;local y=nil;local z=nil;local A=false;local function B(C)local D=C.Position-y;local E=UDim2.new(z.X.Scale,z.X.Offset+D.X,z.Y.Scale,z.Y.Offset+D.Y)if a(E,v.Size,v:FindFirstAncestorWhichIsA("ScreenGui"))then warn("UDim2 is offscreen.")return E end;if self.CallbackOnly then else if(self.Smooth==nil or self.Smooth==true)and self.Smooth~=false then p:Create(w and w or v,TweenInfo.new(0.5,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out),{Position=E}):Play()else local F=w and w or v;F.Position=E end end;return E end;self.InputBegan=v.InputBegan:Connect(function(C)if C.UserInputType==Enum.UserInputType.MouseButton1 or C.UserInputType==Enum.UserInputType.Touch then A=true;local G;G=C.Changed:Connect(function()if C.UserInputState==Enum.UserInputState.End and(self.Dragging or A)then self.Dragging=false;G:Disconnect()if self.DragEnded and not A then self.DragEnded(self.Velocity)end;A=false end end)end end)self.InputChanged=v.InputChanged:Connect(function(C)if C.UserInputType==Enum.UserInputType.MouseMovement or C.UserInputType==Enum.UserInputType.Touch then x=C end end)self.InputChanged2=o.InputChanged:Connect(function(C)if v.Parent==nil then self:Disable()return end;if A then A=false;if self.DragStarted then self.DragStarted()end;self.Dragging=true;y=C.Position;if w then z=w.Position else z=v.Position end;self.LastPosition=C.Position end;if C==x and self.Dragging then local E=B(C)self.Velocity=C.Position-self.LastPosition;self.LastPosition=C.Position;if self.Dragged then self.Dragged(E)end end end)end;function q:Disable()self.InputBegan:Disconnect()self.InputChanged:Disconnect()self.InputChanged2:Disconnect()if self.Dragging then self.Dragging=false;if self.DragEnded then self.DragEnded(self.Velocity)end end end;return q
    end
    module_scripts[script] = module_script
end
do -- Module: StarterGui.AFEM.ClickAndHold
    local script = Instance.new("ModuleScript")
    script.Name = "ClickAndHold"
    script.Parent = Converted["_AFEM"]
    local function module_script()
		local a={}a.__index=a;local b=game:GetService("UserInputService")function a.new(c,d)local self=setmetatable({},a)self.textButton=c;self.holdTime=d or 0.5;self.holdTask=nil;self.initialPosition=nil;self.Holded=Instance.new("BindableEvent")local function e(f,g)return math.sqrt((g.X-f.X)^2+(g.Y-f.Y)^2)end;self.textButton.MouseButton1Down:Connect(function(h,i)self.initialPosition=Vector2.new(h,i)self.holdTask=task.spawn(function()task.wait(self.holdTime)if self.holdTask then self.Holded:Fire()end end)end)b.InputChanged:Connect(function(j)if j.UserInputType==Enum.UserInputType.MouseMovement or j.UserInputType==Enum.UserInputType.Touch then if self.holdTask and self.initialPosition then local k=j.Position;local l=e(self.initialPosition,k)if l>10 then coroutine.close(self.holdTask)self.holdTask=nil end end end end)b.InputEnded:Connect(function(j)if j.UserInputType==Enum.UserInputType.MouseButton1 or j.UserInputType==Enum.UserInputType.Touch then if self.holdTask then coroutine.close(self.holdTask)self.holdTask=nil end;self.initialPosition=nil end end)return self end;return a
    end
    module_scripts[script] = module_script
end
do -- Module: StarterGui.AFEM.Spring
    local script = Instance.new("ModuleScript")
    script.Name = "Spring"
    script.Parent = Converted["_AFEM"]
    local function module_script()
		local a=game:GetService("RunService")local b={}function OverDamping(c,d,e,f,g,h)local i=d*d-4*e/c;local j=-1/2;local k=d+math.sqrt(i)local l=d-math.sqrt(i)local m,n=j*k,j*l;local o,p=(n*f-g)/(n-m),(m*f-g)/(m-n)local q=h/e;return{Offset=function(r)return o*math.exp(m*r)+p*math.exp(n*r)+q end,Velocity=function(r)return o*m*math.exp(m*r)+p*n*math.exp(n*r)end,Acceleration=function(r)return o*m*m*math.exp(m*r)+p*n*n*math.exp(n*r)end}end;function CriticalDamping(c,d,e,f,g,h)local s=-d/2;local o,p=f,g-s*f;local q=h/e;return{Offset=function(r)return math.exp(s*r)*(o+p*r)+q end,Velocity=function(r)return math.exp(s*r)*(p*s*r+o*s+p)end,Acceleration=function(r)return s*math.exp(s*r)*(p*s*r+o*s+2*p)end}end;function UnderDamping(c,d,e,f,g,h)local i=d*d-4*e/c;local s=-d/2;local t=math.sqrt(-i)local o,p=f,(g-s*f)/t;local q=h/e;return{Offset=function(r)return math.exp(s*r)*(o*math.cos(t*r)+p*math.sin(t*r))+q end,Velocity=function(r)return-math.exp(s*r)*((o*t-p*s)*math.sin(t*r)+(-p*t-o*s)*math.cos(t*r))end,Acceleration=function(r)return-math.exp(s*r)*((p*t*t+2*o*s*t-p*s*s)*math.sin(t*r)+(o*t*t-2*p*s*t-o*s*s)*math.cos(t*r))end}end;function b.F(u)local f,g,h=u.InitialOffset,u.InitialVelocity,u.ExternalForce;local c,d,e=u.Mass,u.Damping,u.Constant;local i=d*d-4*e/c;if i>0 then return OverDamping(c,d,e,f,g,h)elseif i==0 then return CriticalDamping(c,d,e,f,g,h)else return UnderDamping(c,d,e,f,g,h)end end;local v=b;local w=math.sqrt;local x=math.pi;local y={OFFSET="Offset",VELOCITY="Velocity",ACCELERATION="Acceleration",GOAL="Goal",FREQUENCY="Frequency"}local z=[[.]]local A=[[.]]local u={}local B={}B.__index=function(self,C)local D={[y.OFFSET]=function()local r=tick()-self.StartTick;local E=self.F;local F=E.Offset(r)return F end,[y.VELOCITY]=function()local r=tick()-self.StartTick;local E=self.F;local G=E.Velocity(r)return G end,[y.ACCELERATION]=function()local r=tick()-self.StartTick;local E=self.F;local H=E.Acceleration(r)return H end,[y.GOAL]=function()local I=self.ExternalForce;local J=self.Constant;return I/J end,[y.FREQUENCY]=function()local K=self.Damping;local L=self.Constant;local M=self.Mass;return w(-K*K+4*L/M)/(2*x)end}local N=rawget(self,C)if N~=nil then return N end;local O=D[C]if O~=nil then return O()end;return B[C]end;B.__tostring=function(self)local r=tick()-self.StartTick;local E=self.F;local P=self.AdvancedObjectStringEnabled;local Q;if P==false then Q=string.format(z,E.Offset(r),E.Velocity(r),E.Acceleration(r))elseif P==true then Q=string.format(A,self.Mass,self.Damping,self.Constant,self.Goal,self.Frequency,self.InitialOffset,self.InitialVelocity,self.ExternalForce,self.StartTick,E.Offset(r),E.Velocity(r),E.Acceleration(r))end;return Q end;function u.new(M,K,L,f,g,R)assert(M>0,"Mass for spring system cannot be less than or equal to 0")assert(L>0,"Spring constant for spring system cannot be less than or equal to 0")f=f or 0;g=g or 0;R=R or 0;local S=R*L;local T={Mass=M,Damping=K,Constant=L,InitialOffset=f-R,InitialVelocity=g,ExternalForce=S,AdvancedObjectStringEnabled=false,StartTick=0}setmetatable(T,B)T:Reset()return T end;function u.fromFrequency(M,K,U,f,g,R)assert(M>0,"Mass for spring system cannot be less than or equal to 0")assert(U>0,"Spring frequency for spring system cannot be less than or equal to 0")local L=0.25*M*(4*x*x*U*U+K*K)f=f or 0;g=g or 0;R=R or 0;local S=R*L;local T={Mass=M,Damping=K,Constant=L,InitialOffset=f-R,InitialVelocity=g,ExternalForce=S,AdvancedObjectStringEnabled=false,StartTick=0}setmetatable(T,B)T:Reset()return T end;function B:Reset()self.F=v.F(self)self.StartTick=tick()end;function B:SetExternalForce(V)self.ExternalForce=V;self.InitialOffset=self.Offset-V/self.Constant;self.InitialVelocity=self.Velocity;self:Reset()end;function B:SetGoal(R)self.ExternalForce=R*self.Constant;self.InitialOffset=self.Offset-R;self.InitialVelocity=self.Velocity;self:Reset()end;function B:SetFrequency(U)self.Constant=0.25*self.Mass*(4*x*x*U*U+self.Damping*self.Damping)self.InitialOffset=self.Offset;self.InitialVelocity=self.Velocity;self:Reset()end;function B:SnapToCriticalDamping()self.Damping=2*w(self.Constant/self.Mass)self.InitialOffset=self.Offset;self.InitialVelocity=self.Velocity;self:Reset()end;function B:SetOffset(F,W)self.InitialOffset=F-self.Goal;self.InitialVelocity=W and 0 or self.Velocity;self:Reset()end;function B:AddOffset(F)self.InitialOffset=self.Offset+F;self.InitialVelocity=self.Velocity;self:Reset()end;function B:SetVelocity(G)self.InitialOffset=self.Offset;self.InitialVelocity=G;self:Reset()end;function B:AddVelocity(G)self.InitialOffset=self.Offset;self.InitialVelocity=self.Velocity+G;self:Reset()end;function B:Print()local X=tostring(self)print(X)end;return u
    end
    module_scripts[script] = module_script
end
do -- Module: StarterGui.AFEM.PointSave
    local script = Instance.new("ModuleScript")
    script.Name = "PointSave"
    script.Parent = Converted["_AFEM"]
    local function module_script()
		local a=false;local function b(...)if a then print("[PointSave DEBUG]:",...)end end;_G._FOLDERS=_G._FOLDERS or{}_G._FILES=_G._FILES or{}isfolder=isfolder or function(c)b("Checking if folder exists:",c)return _G._FOLDERS[c]~=nil end;makefolder=makefolder or function(c)b("Creating folder:",c)_G._FOLDERS[c]={}return _G._FOLDERS[c]end;isfile=isfile or function(c)b("Checking if file exists:",c)return _G._FILES[c]~=nil end;writefile=writefile or function(c,d)b("Writing file:",c,"with content:",d)_G._FILES[c]=d;return _G._FILES[c]end;readfile=readfile or function(c)b("Reading file:",c)return _G._FILES[c]end;delfile=delfile or function(c)b("Deleting file:",c)_G._FILES[c]=nil end;listfiles=listfiles or function(e)b("Listing files in folder:",e)local f=_G._FOLDERS[e]if f then local g={}for h,i in pairs(_G._FILES)do if h:sub(1,#e+1)==e.."/"then local j=h:sub(#e+2)b("Found file in folder:",j)table.insert(g,j)end end;return g end;b("Folder does not exist:",e)return{}end;local k={}k.__index=k;local l="PointSaveData"local function m()if not isfolder(l)then b("Base folder not found, creating:",l)makefolder(l)else b("Base folder already exists:",l)end end;function k.new(n)b("Initializing new PointSave instance for namespace:",n)m()local self=setmetatable({},k)self.namespace=n;self.folderPath=l.."/"..n;if not isfolder(self.folderPath)then b("Namespace folder does not exist, creating:",self.folderPath)makefolder(self.folderPath)else b("Namespace folder already exists:",self.folderPath)end;return self end;function k:set(o,p)local h=self.folderPath.."/"..o..".txt"b("Setting value for key:",o,"->",p)writefile(h,tostring(p))end;function k:get(o)local h=self.folderPath.."/"..o..".txt"b("Getting value for key:",o)if isfile(h)then local p=readfile(h)b("Found value for key:",o,"->",p)return p end;b("Key not found:",o)return nil end;function k:remove(o)local h=self.folderPath.."/"..o..".txt"b("Removing key:",o)if isfile(h)then delfile(h)b("Removed file for key:",o)else b("File for key does not exist:",o)end end;function k:clear()b("Clearing all keys in namespace:",self.namespace)local g=listfiles(self.folderPath)for i,q in ipairs(g)do local h=self.folderPath.."/"..q;if isfile(h)then b("Deleting file:",h)delfile(h)end end end;function k.deleteNamespace(n)local e=l.."/"..n;b("Deleting namespace:",n)local g=listfiles(e)for i,q in ipairs(g)do local h=e.."/"..q;if isfile(h)then b("Deleting file from namespace:",h)delfile(h)end end;_G._FOLDERS[e]=nil;b("Deleted folder for namespace:",n)end;function k.listNamespaces()b("Listing all namespaces")m()local r={}for e,i in pairs(_G._FOLDERS)do if e:sub(1,#l+1)==l.."/"then local n=e:sub(#l+2)b("Found namespace:",n)table.insert(r,n)end end;return r end;return k
		
    end
    module_scripts[script] = module_script
end
-- Routine Local Scripts:
local function YFDLLH_routine() -- Script: StarterGui.AFEM.Init
    local script = Instance.new("LocalScript")
    script.Name = "Init"
    script.Parent = Converted["_AFEM"]
    local req = require
    local require = function(obj)
        local fake = module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end
	local ts = game:GetService("TweenService")
	local pointsave = require(script.Parent.PointSave)
	
	local pSAFEM = pointsave.new("AFEMConf")
	
	getgenv().AFEM = script.Parent
	local COREGUI = game:GetService("CoreGui")
	function randomString()
		local length = math.random(10,20)
		local array = {}
		for i = 1, length do
			array[i] = string.char(math.random(32, 126))
		end
		return table.concat(array)
	end
	local s, e = pcall(function()
		if get_hidden_gui or gethui then
			local hiddenUI = get_hidden_gui or gethui
			script.Parent.Name = randomString()
			script.Parent.Parent = hiddenUI()
			--print("[AFEM] - Using get_hidden_gui for anti-detection.")
		elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
			script.Parent.Name = randomString()
			syn.protect_gui(script.Parent)
			script.Parent.Parent = COREGUI
			--print("[AFEM] - Using syn.protect_gui for anti-detection.")
		elseif COREGUI:FindFirstChild('RobloxGui') then
			script.Parent.Parent = COREGUI.RobloxGui
			--print("[AFEM] - Using RobloxGui for anti-detection.")
		else
			--warn("[AFEM] - Using CoreGui as anti-detection. This is the most basic coverage and can still be detected.")
		end
	end)
	
	--print("[AFEM] - AFEM is now in " .. tostring(script.Parent:GetFullName()))
	if not s then
		--warn("[AFEM] - Attempts at anti-detection failed. Using CoreGui as anti-detection.")
		--warn(e)	
	end
	
	script.Parent.SafeAreaCompatibility = Enum.SafeAreaCompatibility.None
	script.Parent.ScreenInsets = Enum.ScreenInsets.None
	script.Parent.ResetOnSpawn = false
	
	
	script.Parent.Menu.Position = UDim2.fromScale(1.2, 0.968)
	
	ts:Create(getgenv().AFEM.Menu, TweenInfo.new(0.7, Enum.EasingStyle.Back, Enum.EasingDirection.Out), 
		{Position = UDim2.fromScale(0.986, 0.968)}
	):Play()
	
	repeat task.wait() until getgenv().AFEMEmoteList
	
	--repeat
	--	task.wait()
	--until #getgenv().AFEMEmoteList > 10
	
	require(script.Parent.FUNCTIONS).refresh()
	
	local refs = 0
	repeat task.wait(1) script.Parent.Menu.Area.SearchUpdate:Fire() refs = refs + 1 until refs == 5 
	
	--if pSAFEM:get("MoreMenuItems") == "1" then
	--	script.Parent.Menu.Area.Area.UIGridLayout.CellSize = UDim2.fromOffset(80, 80)
	--end
	
	--require(script.Parent.FUNCTIONS).notification("Welcome to AFEM v1.0!")
	
	
	
end
local function ZPXB_routine() -- Script: StarterGui.AFEM.EmoteList
    local script = Instance.new("LocalScript")
    script.Name = "EmoteList"
    script.Parent = Converted["_AFEM"]
    local req = require
    local require = function(obj)
        local fake = module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end
	--task.wait(5)
	local http = game:GetService("HttpService")
	
	local ps = require(script.Parent.PointSave)
	local pointSaveAFEM = ps.new("AFEMConf")
	
	local emList
	local packList
	
	local s = pcall(function()
		print("[AFEM] -  Pulling emotes from YARHM website...")
		emList = http:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/AREXANS/emoteff/refs/heads/main/emote.json"))
	end)
	if not s then
		print("[AFEM] - Getting from website failed. Using fallback...")
		-- There's no fallback.
		emList = http:JSONDecode('[{"id":14353423348,"animationid":"http://www.roblox.com/asset/?id=14352343065","name":"BabyQueen-BouncyTwirl"},{"id":14353421343,"animationid":"http://www.roblox.com/asset/?id=14352340648","name":"BabyQueen-FaceFrame"},{"id":16553249658,"animationid":"http://www.roblox.com/asset/?id=16553163212","name":"MaeStephens-PianoHands"},{"id":99999999999991,"animationid":"rbxassetid://123879987357276","name":"Harika","visualR6":true}]')
	end
	print("[AFEM] - Emote list listed.")
	
	local s = pcall(function()
		print("[AFEM] -  Pulling animation packs from YARHM website...")
		packList = http:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/AFEM/refs/heads/main/animationpacks.json"))
	end)
	if not s then
		print("[AFEM] - Getting from website failed. Using fallback...")
		-- There's no fallback.
		packList = http:JSONDecode('[{"_comment":"All animation IDs has been pulled independently by the YARHM Team. If you are gonna use this for your own emotes menu, please credit us. We will be updating this list periodically and automatically."},{"Animations":{"idle":{"Animation2":"http://www.roblox.com/asset/?id=10921248831","Animation1":"http://www.roblox.com/asset/?id=10921248039"},"climb":{"ClimbAnim":"http://www.roblox.com/asset/?id=10921247141"},"run":{"RunAnim":"http://www.roblox.com/asset/?id=10921250460"},"swim":{"Swim":"http://www.roblox.com/asset/?id=10921253142"},"swimidle":{"SwimIdle":"http://www.roblox.com/asset/?id=10921253767"},"jump":{"JumpAnim":"http://www.roblox.com/asset/?id=10921252123"},"fall":{"FallAnim":"http://www.roblox.com/asset/?id=10921251156"},"pose":{"RobotPose":"http://www.roblox.com/asset/?id=10921249579"},"walk":{"WalkAnim":"http://www.roblox.com/asset/?id=10921255446"}},"BundleId":82,"Name":"Robot ","ProductId":8429510719773869},{"Animations":{"idle":{"Animation2":"http://www.roblox.com/asset/?id=10921302207","Animation1":"http://www.roblox.com/asset/?id=10921301576"},"jump":{"JumpAnim":"http://www.roblox.com/asset/?id=10921308158"},"run":{"RunAnim":"http://www.roblox.com/asset/?id=10921306285"},"swim":{"Swim":"http://www.roblox.com/asset/?id=10921309319"},"swimidle":{"SwimIdle":"http://www.roblox.com/asset/?id=10921310341"},"climb":{"ClimbAnim":"http://www.roblox.com/asset/?id=10921300839"},"fall":{"FallAnim":"http://www.roblox.com/asset/?id=10921307241"},"pose":{"ToyPose":"http://www.roblox.com/asset/?id=10921303913"},"walk":{"WalkAnim":"http://www.roblox.com/asset/?id=10921312010"}},"BundleId":43,"Name":"Toy ","ProductId":8219948665726147},{"Animations":{"idle":{"Animation2":"http://www.roblox.com/asset/?id=16738334710","Animation1":"http://www.roblox.com/asset/?id=16738333868"},"climb":{"ClimbAnim":"http://www.roblox.com/asset/?id=16738332169"},"run":{"RunAnim":"http://www.roblox.com/asset/?id=16738337225"},"swim":{"Swim":"http://www.roblox.com/asset/?id=16738339158"},"swimidle":{"SwimIdle":"http://www.roblox.com/asset/?id=16738339817"},"jump":{"JumpAnim":"http://www.roblox.com/asset/?id=16738336650"},"fall":{"FallAnim":"http://www.roblox.com/asset/?id=16738333171"},"pose":{"BoldPose":"http://www.roblox.com/asset/?id=16738335517"},"walk":{"WalkAnim":"http://www.roblox.com/asset/?id=16738340646"}},"BundleId":331856,"Name":"Bold  by e.l.f.","ProductId":2977352377333129},{"Animations":{"idle":{"Animation2":"http://www.roblox.com/asset/?id=18537371272","Animation1":"http://www.roblox.com/asset/?id=18537376492"},"jump":{"JumpAnim":"http://www.roblox.com/asset/?id=18537380791"},"run":{"RunAnim":"http://www.roblox.com/asset/?id=18537384940"},"swim":{"Swim":"http://www.roblox.com/asset/?id=18537389531"},"swimidle":{"SwimIdle":"http://www.roblox.com/asset/?id=18537387180"},"climb":{"ClimbAnim":"http://www.roblox.com/asset/?id=18537363391"},"fall":{"FallAnim":"http://www.roblox.com/asset/?id=18537367238"},"pose":{"StylishPose":"http://www.roblox.com/asset/?id=18537374150"},"walk":{"WalkAnim":"http://www.roblox.com/asset/?id=18537392113"}},"BundleId":427999,"Name":"adidas Sports ","ProductId":5740554516327710}]')
	end
	print("[AFEM] - Animation packs listed.")
	
	print("[AFEM] - Finding added custom emotes...")
	if pointSaveAFEM:get("ExtraEmotes") then
		local extraEmotes = http:JSONDecode(pointSaveAFEM:get("ExtraEmotes"), "[]")
		
		table.move(extraEmotes, 1, #extraEmotes, #emList + 1, emList)	
	end
	
	
	getgenv().AFEMEmoteList = emList
	getgenv().AFEMAnimationPacksList = packList
end
local function JYLVLV_routine() -- Script: StarterGui.AFEM.SetCustomButtonEmote.Controller
    local script = Instance.new("LocalScript")
    script.Name = "Controller"
    script.Parent = Converted["_SetCustomButtonEmote"]
    local req = require
    local require = function(obj)
        local fake = module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end
	local ts = game:GetService("TweenService")
	local http = game:GetService("HttpService")
	
	local fnc = require(getgenv().AFEM.FUNCTIONS)
	local ps = require(getgenv().AFEM.PointSave)
	local pointSaveAFEM = ps.new("AFEMConf")
	
	
	local endpoint = "https://catalog.roblox.com/v1/search/items/details?Category=12&SortType=Updated&Limit=30"
	local searchEndpoint = "https://catalog.roblox.com/v1/search/items/details?Category=12&SortType=Relevance&Limit=30&Keyword=%s"
	local nextCursor = ""
	
	local searchQuery = ""
	
	local searchInputPatience = 100
	
	local detailsEndpoint = "https://catalog.roblox.com/v1/catalog/items/%d/details?itemType=Asset"
	
	
	local function fetchEmotes(next, new)
		script.Parent.Loading.Interactable = true
		ts:Create(script.Parent.Loading, TweenInfo.new(0.2), {
			GroupTransparency = 0
		}):Play()
		
		
		local fetch
		if searchQuery ~= "" then
			if next then
				fetch = game:HttpGet(string.format(searchEndpoint, searchQuery) .. "&cursor=" .. nextCursor)
			else
				fetch = game:HttpGet(string.format(searchEndpoint, searchQuery))
			end
		else
			if next then
				fetch = game:HttpGet(endpoint .. "&cursor=" .. nextCursor)
			else
				fetch = game:HttpGet(endpoint)
			end
		end
		
		if new then
			--nextCursor = ""
			for _, b in ipairs(script.Parent.Marketplace:GetChildren()) do
				if b.Name == "EMOTE" then
					b:Destroy()
				end
			end
		end
	
		script.Parent.Loading.Interactable = false
		ts:Create(script.Parent.Loading, TweenInfo.new(0.2), {
			GroupTransparency = 1
		}):Play()
		
		local dFetch = http:JSONDecode(fetch)
		
		nextCursor = dFetch["nextPageCursor"]
		if nextCursor then
			script.Parent.Marketplace.LoadMore.Visible = true else
			script.Parent.Marketplace.LoadMore.Visible = false
		end
		
		for _, emoteAsset in dFetch["data"] do
			local emote = script.Parent.Marketplace.Template:Clone()
			emote.Name = "EMOTE"
			emote.Label.Text = emoteAsset["name"]
			emote.ImageLabel.Image = "rbxthumb://type=Asset&id=" .. emoteAsset["id"] .. "&w=420&h=420"
			emote.Parent = script.Parent.Marketplace
			emote.Visible = true
	
			emote.MouseButton1Click:Connect(function()
				script.Parent.TextBox.Text = "roblox.com/catalog/" .. emoteAsset["id"]
			end)
		end
	end
	
	fetchEmotes()
	
	task.spawn(function()
		while task.wait() do
			if searchInputPatience > 0 then
				searchInputPatience = searchInputPatience - 1
			end
			if searchInputPatience == 0 then
				fetchEmotes(false, true)
				searchInputPatience = math.pi * -1 -- lol
			end
		end
	end)
	script.Parent.Search.Changed:Connect(function(prop)
		if prop ~= "Text" then return end
		
		searchQuery = script.Parent.Search.Text
		searchInputPatience = 60
	end)
	
	
	script.Parent.Marketplace.LoadMore.MouseButton1Click:Connect(function()
		fetchEmotes(true)
	end)
	
	script.Parent.Add.MouseButton1Click:Connect(function()
		if string.match(script.Parent.TextBox.Text, "%d+") then
			local id = tonumber(string.match(script.Parent.TextBox.Text, "%d+"))
			
			local extraEmotes = http:JSONDecode(pointSaveAFEM:get("ExtraEmotes") or "[]")
			
			script.Parent.FSLoading.Interactable = true
			ts:Create(script.Parent.FSLoading, TweenInfo.new(0.2), {
				GroupTransparency = 0
			}):Play()
			
			local animObj = game:GetObjects("rbxassetid://" ..  id)[1]
			
			local fetchDetails = game:HttpGet(string.format(detailsEndpoint, id))
			local dDetails = http:JSONDecode(fetchDetails)
			
			if animObj:IsA("Animation") then
				table.insert(extraEmotes, {id = id, animationid = animObj.AnimationId, name = dDetails["name"]})
				table.insert(getgenv().AFEMEmoteList, {id = id, animationid = animObj.AnimationId, name = dDetails["name"], _special = "custom"})
				
				for _, v in extraEmotes do
					if not v['_special'] then
						v['_special'] = "custom"
					end
				end
				
				
				getgenv().AFEM.Menu.Area.SearchUpdate:Fire()
				
				pointSaveAFEM:set("ExtraEmotes", http:JSONEncode(extraEmotes))
				fnc.notification("Emote " .. dDetails["name"] .. " has been added to list!")
				fnc.refresh()
				script.Parent.FSLoading.Interactable = false
				ts:Create(script.Parent.FSLoading, TweenInfo.new(0.2), {
					GroupTransparency = 1
				}):Play()
				
				ts:Create(script.Parent, TweenInfo.new(0.6, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
					Position = UDim2.fromScale(0.5, -0.5)
				}):Play()
			end
		end
	end)
end
local function VCJCU_routine() -- Script: StarterGui.AFEM.SetCustomButtonEmote.Cancel.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_Cancel"]
    local req = require
    local require = function(obj)
        local fake = module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end
	local ts = game:GetService("TweenService")
	
	script.Parent.MouseButton1Click:Connect(function()
		ts:Create(script.Parent.Parent, TweenInfo.new(0.6, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			Position = UDim2.fromScale(0.5, -0.5)
		}):Play()
	end)
end
local function BNPBMC_routine() -- Script: StarterGui.AFEM.SetCustomButtonEmote.Loading.Spinner.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_Spinner"]
    local req = require
    local require = function(obj)
        local fake = module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end
	local ts = game:GetService("TweenService")
	
	
	local ti = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1, false, 0)
	ts:Create(script.Parent, ti, {
		Rotation = 180
	}):Play()
end
local function XUKFKW_routine() -- Script: StarterGui.AFEM.SetCustomButtonEmote.FSLoading.Spinner.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = Converted["_Spinner1"]
    local req = require
    local require = function(obj)
        local fake = module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end
	local ts = game:GetService("TweenService")
	
	
	local ti = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1, false, 0)
	ts:Create(script.Parent, ti, {
		Rotation = 180
	}):Play()
end
local function ENOPXB_routine() -- Script: StarterGui.AFEM.Menu.UIStroke.UIGradient.Animator
    local script = Instance.new("LocalScript")
    script.Name = "Animator"
    script.Parent = Converted["_UIGradient2"]
    local req = require
    local require = function(obj)
        local fake = module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end
	local ts = game:GetService("TweenService")
	
	ts:Create(script.Parent, TweenInfo.new(
		10, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut,
		math.huge, false), {
			Rotation = -180
		}):Play()
end
local function WIFO_routine() -- Script: StarterGui.AFEM.Menu.Area.Search
    local script = Instance.new("LocalScript")
    script.Name = "Search"
    script.Parent = Converted["_Area"]
    local req = require
    local require = function(obj)
        local fake = module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end
	function levenshtein(str1, str2)
		local len1 = #str1
		local len2 = #str2
		local matrix = {}
	
		for i = 0, len1 do
			matrix[i] = {}
			matrix[i][0] = i
		end
		for j = 0, len2 do
			matrix[0][j] = j
		end
	
		for i = 1, len1 do
			for j = 1, len2 do
				local cost = (str1:sub(i, i) == str2:sub(j, j)) and 0 or 1
				matrix[i][j] = math.min(
					matrix[i - 1][j] + 1,     -- Deletion
					matrix[i][j - 1] + 1,     -- Insertion
					matrix[i - 1][j - 1] + cost  -- Substitution
				)
			end
		end
	
		return matrix[len1][len2]
	end
	
	local function getInitials(str)
		local initials = ""
		for word in str:gmatch("%w+") do
			initials = initials .. word:sub(1,1)
		end
		return initials
	end
	
	local function splitWords(str)
		local words = {}
		for word in str:gmatch("%w+") do
			table.insert(words, word)
		end
		return words
	end
	
	function fuzzySearch(query, items, minConfidence)
		query = query:lower()
		minConfidence = minConfidence or 0.5
		local results = {}
	
		for _, item in ipairs(items) do
			local normalized = item:lower()
			local words = splitWords(normalized)
			local initials = getInitials(normalized)
			local start = normalized:find(query, 1, true)
	
			local relevant = start and normalized:sub(start, start + #query - 1) or normalized
			local distance = levenshtein(query, relevant)
			local maxLen = math.max(#query, #relevant)
			local confidence = 1 - (distance / maxLen)
	
			if normalized == query then
				confidence = confidence + 0.5
			elseif normalized:sub(1, #query) == query then
				confidence = confidence + 0.25
			elseif start then
				confidence = confidence + 0.15
			end
	
			if initials == query then
				confidence = confidence + 0.5
			elseif initials:sub(1, #query) == query then
				confidence = confidence + 0.2
			end
	
			for _, word in ipairs(words) do
				if word:sub(1, #query) == query then
					confidence = confidence + 0.1
					break
				end
			end
	
			if confidence >= minConfidence then
				table.insert(results, {
					item = item,
					confidence = math.min(confidence, 1),
					isExact = normalized == query
				})
			end
		end
	
		table.sort(results, function(a, b)
			if a.isExact ~= b.isExact then
				return a.isExact
			elseif a.confidence ~= b.confidence then
				return a.confidence > b.confidence
			else
				return a.item < b.item
			end
		end)
	
		local sortedItems = {}
		for _, result in ipairs(results) do
			table.insert(sortedItems, { item = result.item, confidence = result.confidence })
		end
	
		return sortedItems
	end
	
	local names = {}
	local function performSearch()
		local searchText = script.Parent.TextBox.Text
		script.Parent.Area.CanvasPosition = Vector2.zero
		if searchText == "" then
			for _, button in ipairs(script.Parent.Area:GetChildren()) do
				if button.Name == "Sample" then continue end
				if not button:IsA("ImageButton") then continue end
				if script.Parent.Area:GetAttribute("showing") == "e" and button.Name:find("EMOTE") then
					button.Visible = true
				elseif script.Parent.Area:GetAttribute("showing") == "p" and button.Name:find("ANPACK") then
					button.Visible = true
				else
					button.Visible = false
				end

				button.LayoutOrder = 0
			end
			return
		end
		local result = fuzzySearch(searchText, names)
		for _, button in ipairs(script.Parent.Area:GetChildren()) do
			if not button:IsA("ImageButton") then continue end
			button.Visible = false
		end
		for sort, item in ipairs(result) do
			--print("[AFEM] - SEARCH - Emote " .. item["item"] .. " scored a confidence of " .. item["confidence"])

			local found = script.Parent.Area:FindFirstChild(item["item"] .. "EMOTE") or script.Parent.Area:FindFirstChild(item["item"] .. "ANPACK")
			if found and ((found.Name:find("EMOTE") and script.Parent.Area:GetAttribute("showing") == "e") or found.Name:find("ANPACK") and script.Parent.Area:GetAttribute("showing") == "p") then
				found.Visible = true
				found.LayoutOrder = sort
			end
		end
	end


	local function updateNames()
		names = {}
		repeat task.wait() until getgenv().AFEMEmoteList
		print("[AFEM] - SEARCH - Waiting for Emotes...")
		for _, v in ipairs(getgenv().AFEMEmoteList) do
			table.insert(names, v['name'])
		end
		print("[AFEM] - SEARCH - Waiting for Animation packs...")
		repeat task.wait() until getgenv().AFEMAnimationPacksList
		for _, v in ipairs(getgenv().AFEMAnimationPacksList) do
			table.insert(names, v['Name'])
		end
		print("[AFEM] - SEARCH - Ready.")
	end


	script.Parent.SearchUpdate.Event:Connect(function()
		updateNames()
		performSearch()
	end)

	script.Parent.TextBox:GetPropertyChangedSignal("Text"):Connect(performSearch)
end
local function LLDHXUM_routine() -- Script: StarterGui.AFEM.Menu.Area.Switch.Switch
	local script = Instance.new("LocalScript")
	script.Name = "Switch"
	script.Parent = Converted["_Switch"]
	local req = require
	local require = function(obj)
		local fake = module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end
	local ts = game:GetService("TweenService")

	local cah = require(getgenv().AFEM.ClickAndHold)
	local fnc = require(getgenv().AFEM.FUNCTIONS)

	local current = "EMOTE" -- emotes
	local toSwitch = "ANPACK" -- animation packs

	local area = script.Parent.Parent.Area

	function ends_with(str, ending)
		return ending == "" or str:sub(-#ending) == ending
	end


	script.Parent.Parent.Area:SetAttribute("showing", "e")
	script.Parent.MouseButton1Click:Connect(function()
		local placeholder = current
		current = toSwitch
		toSwitch = placeholder

		if current == "EMOTE" then
			script.Parent.Text = "Emotes"
			script.Parent.Parent.Area:SetAttribute("showing", "e")
			fnc.updateEmoteExclusions()
		else
			script.Parent.Text = "Animation packs"
			script.Parent.Parent.Area:SetAttribute("showing", "p")
		end

		script.Parent.MaxVisibleGraphemes = 0
		ts:Create(script.Parent, TweenInfo.new(0.4, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			MaxVisibleGraphemes = #script.Parent.Text
		}):Play()

		for _, v in ipairs(area:GetChildren()) do
			if not v:IsA("ImageButton") then continue end
			if not ends_with(v.Name, current) then
				v.Visible = false
			elseif ends_with(v.Name, current) then
				v.Visible = true
			end
		end
	end)

	cah.new(script.Parent).Holded.Event:Connect(function()
		if current == "ANPACK" then
			getgenv().AFEM.PackEditor.Open:Fire()
		end
	end)
end
local function FUOY_routine() -- Script: StarterGui.AFEM.Menu.Area.SettingsButton.SettingsButtonScript
	local script = Instance.new("LocalScript")
	script.Name = "SettingsButtonScript"
	script.Parent = Converted["_SettingsButton"]
	local req = require
	local require = function(obj)
		local fake = module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end
	local ts = game:GetService("TweenService")
	local settingsframe = script.Parent.Parent.Parent.Settings
	script.Parent.MouseButton1Click:Connect(function()
		settingsframe.UIScale.Scale = 1.1
		settingsframe.Interactable = true
		ts:Create(settingsframe.UIScale, TweenInfo.new(0.6, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			Scale = 1
		}):Play()
		ts:Create(settingsframe, TweenInfo.new(0.6, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			GroupTransparency = 0
		}):Play()
	end)
end
local function SCATUZL_routine() -- Script: StarterGui.AFEM.Menu.Area.Toolbar.AddNewEmotes.AddEmote
	local script = Instance.new("LocalScript")
	script.Name = "AddEmote"
	script.Parent = Converted["_AddNewEmotes"]
	local req = require
	local require = function(obj)
		local fake = module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end
	local ts = game:GetService("TweenService")
	local addemoteframe = script.Parent.Parent.Parent.Parent.Parent.SetCustomButtonEmote
	script.Parent.MouseButton1Click:Connect(function()
		ts:Create(addemoteframe, TweenInfo.new(0.6, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			Position = UDim2.fromScale(0.5, 0.5)
		}):Play()
	end)
end
local function NKNKBEO_routine() -- Script: StarterGui.AFEM.Menu.Area.Toolbar.Filter.FilterController
	local script = Instance.new("LocalScript")
	script.Name = "FilterController"
	script.Parent = Converted["_Filter"]
	local req = require
	local require = function(obj)
		local fake = module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end
	local ts = game:GetService("TweenService")
	local openEvent = getgenv().AFEM.Menu.Filter.Open
	script.Parent.MouseButton1Click:Connect(function()
		openEvent:Fire()
	end)
end
local function RKZMGO_routine() -- Script: StarterGui.AFEM.Menu.CloseArea.CloseOpen
	local script = Instance.new("LocalScript")
	script.Name = "CloseOpen"
	script.Parent = Converted["_CloseArea"]
	local req = require
	local require = function(obj)
		local fake = module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end
	local TweenService = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")

	local menu = script.Parent.Parent
	local Spring = require(menu.Parent.Spring)
	local DraggableObject = require(menu.Parent.DraggableObject)
	local PointSave = require(menu.Parent.PointSave)

	local pSAFEM = PointSave.new("AFEMConf")

	local function serializeUDim2(udim2)
		return string.format("%g,%d,%g,%d", udim2.X.Scale, udim2.X.Offset, udim2.Y.Scale, udim2.Y.Offset)
	end

	local function deserializeUDim2(str)
		local xs, xo, ys, yo = str:match("([^,]+),([^,]+),([^,]+),([^,]+)")
		if not xs or not xo or not ys or not yo then
			return UDim2.fromScale(0.5, 0.9)
		end
		return UDim2.new(tonumber(xs), tonumber(xo), tonumber(ys), tonumber(yo))
	end

	-- state
	local closed = false
	local springing = false
	local textHidden = false

	local lastPos = UDim2.fromScale(0.986, 0.968)
	local closedLastPos = deserializeUDim2(pSAFEM:get("closedLastPos") or "0.5,0,0.9,0")

	-- Springs
	local MenuPosXScale = Spring.new(0.7, 30, 160, 0.986, 0, 0.986)
	local MenuPosYScale = Spring.new(0.7, 45, 190, menu.Position.Y.Scale, 0, menu.Position.Y.Scale)
	local MenuPosXOffset = Spring.new(0.7, 30, 160, 0, 0)
	local MenuPosYOffset = Spring.new(0.7, 45, 190, 0, 0)
	local MenuSizeXOffset = Spring.new(1, 25, 120, menu.Size.X.Offset, 0, menu.Size.X.Offset)
	local MenuSizeYOffset = Spring.new(1, 25, 120, menu.Size.Y.Offset, 0, menu.Size.Y.Offset)
	local MenuRotation = Spring.new(1, 18, 100, menu.Rotation, 0, menu.Rotation)

	local function setSpringPosGoal(udim2)
		MenuPosXScale:SetGoal(udim2.X.Scale)
		MenuPosYScale:SetGoal(udim2.Y.Scale)
		MenuPosXOffset:SetGoal(udim2.X.Offset)
		MenuPosYOffset:SetGoal(udim2.Y.Offset)
	end

	local function setSpringSizeGoal(udim2)
		MenuSizeXOffset:SetGoal(udim2.X.Offset)
		MenuSizeYOffset:SetGoal(udim2.Y.Offset)
	end

	RunService.RenderStepped:Connect(function()
		if springing then
			menu.Position = UDim2.new(MenuPosXScale.Offset, MenuPosXOffset.Offset, MenuPosYScale.Offset, MenuPosYOffset.Offset)
			menu.Size = UDim2.fromOffset(MenuSizeXOffset.Offset, MenuSizeYOffset.Offset)
			menu.Rotation = MenuRotation.Offset
			MenuRotation:SetGoal(0)
		end
	end)

	-- Draggables
	local MenuDrag = DraggableObject.new(script.Parent, menu, false, true)
	MenuDrag:Enable()

	local OpenerMenuDrag = DraggableObject.new(script.Parent.Parent.CanvasGroup.Opener, menu, false, true)
	OpenerMenuDrag:Enable()
	local OpenerDraggable = true

	local deltaFrom = menu.Position
	MenuDrag.Dragged = function(pos)
		lastPos = pos
		local delta = pos - deltaFrom
		deltaFrom = pos
		-- MenuRotation:SetGoal(delta.X.Offset) -- not doing this
		setSpringPosGoal(pos)
	end

	local function getRelativeUDim2Distance(a, b)
		local viewport = workspace.CurrentCamera.ViewportSize
		local posA = Vector2.new(a.X.Scale + a.X.Offset / viewport.X, a.Y.Scale + a.Y.Offset / viewport.Y)
		local posB = Vector2.new(b.X.Scale + b.X.Offset / viewport.X, b.Y.Scale + b.Y.Offset / viewport.Y)
		return (posA - posB).Magnitude
	end

	local quickSelectorVisibilityState = false
	local function quickSelectorVisibility(state)
		local q = script.Parent.Parent.QuickSelector
		if state and not quickSelectorVisibilityState then
			q:SetAttribute("visible", true)
			quickSelectorVisibilityState = true

			TweenService:Create(q, TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
				GroupTransparency = 0
			}):Play()
			TweenService:Create(q.UIScale, TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
				Scale = 1
			}):Play()
			TweenService:Create(q.UIStroke, TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
				Thickness = 4.4
			}):Play()

		elseif not state and quickSelectorVisibilityState then
			task.spawn(function()
				task.wait(0.1)
				q:SetAttribute("visible", false)
			end)
			quickSelectorVisibilityState = false

			TweenService:Create(q, TweenInfo.new(0.6, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
				GroupTransparency = 1
			}):Play()
			TweenService:Create(q.UIScale, TweenInfo.new(0.6, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
				Scale = 0.8
			}):Play()
			TweenService:Create(q.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
				Thickness = 0
			}):Play()
		end
	end

	local OpenerDragFrom
	local OpenerDragRelease = false
	local dragging = false
	local dragStartPos = nil
	local dragOffset = nil
	local currentInput = nil
	local dragTarget = script.Parent.Parent.CanvasGroup.Opener

	dragTarget.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			currentInput = input
			OpenerDragFrom = nil
			OpenerDragRelease = false

			local guiInset = game:GetService("GuiService"):GetGuiInset()
			local startMouse = UserInputService:GetMouseLocation()
			dragStartPos = startMouse
			--dragOffset = Vector2.new(
			--	startMouse.X - dragTarget.AbsolutePosition.X,
			--	startMouse.Y - dragTarget.AbsolutePosition.Y
			--)
			dragOffset = Vector2.new(
				0, 0
			) -- dirty fix for now but wtv

			if pSAFEM:get("QuickMethodType") == "QuickSelector" then
				quickSelectorVisibility(true)
			end

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
					quickSelectorVisibility(false)
					pSAFEM:set("closedLastPos", serializeUDim2(closedLastPos))
				end
			end)
		end
	end)

	RunService.RenderStepped:Connect(function()
		if dragging and currentInput then
			local currentPos = UserInputService:GetMouseLocation()
			local newPos = currentPos - dragOffset

			local currentUDim2 = UDim2.new(0, currentPos.X, 0, currentPos.Y)
			local startUDim2 = UDim2.new(0, dragStartPos.X, 0, dragStartPos.Y)
			local delta = getRelativeUDim2Distance(currentUDim2, startUDim2)

			if (OpenerDraggable and (delta > 0.3 or OpenerDragRelease)) or pSAFEM:get("QuickMethodType") == "FloatingButtons" then
				quickSelectorVisibility(false)
				OpenerDragRelease = true
				closedLastPos = UDim2.new(0, newPos.X, 0, newPos.Y)
				setSpringPosGoal(UDim2.new(0, newPos.X, 0, newPos.Y))
			else
				quickSelectorVisibility(true)
			end
		end
	end)

	local function hideTextLabelOnce(button)
		if not textHidden then
			textHidden = true
			TweenService:Create(button.TextLabel, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
				TextTransparency = 1,
				BackgroundTransparency = 1
			}):Play()
		end
	end

	local function performClose()
		hideTextLabelOnce(script.Parent)

		TweenService:Create(menu, TweenInfo.new(2, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			AnchorPoint = Vector2.new(0.5, 0.5)
		}):Play()

		springing = true
		setSpringPosGoal(closedLastPos)
		setSpringSizeGoal(UDim2.fromOffset(25, 25))

		getgenv().AFEM.Menu.Filter.CloseEv:Fire()

		menu.CanvasGroup.Visible = true
		OpenerDraggable = true

		TweenService:Create(menu.CanvasGroup, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			GroupTransparency = 0
		}):Play()
	end

	script.Parent.Parent.Close.Event:Connect(performClose)
	script.Parent.MouseButton1Click:Connect(performClose)

	-- Opener button behavior (open)
	menu.CanvasGroup.Opener.MouseButton1Click:Connect(function()
		TweenService:Create(menu, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			AnchorPoint = Vector2.new(1, 1)
		}):Play()

		setSpringPosGoal(lastPos)
		setSpringSizeGoal(UDim2.fromOffset(309, 188))
		OpenerDraggable = false

		local closing = TweenService:Create(menu.CanvasGroup, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			GroupTransparency = 1
		})
		closing:Play()
		closing.Completed:Once(function()
			menu.CanvasGroup.Visible = false
		end)
	end)

	task.wait(1)
	springing = true
end
local function LJUBOL_routine() -- Script: StarterGui.AFEM.Menu.Settings.SettingsScript
	local script = Instance.new("LocalScript")
	script.Name = "SettingsScript"
	script.Parent = Converted["_Settings"]
	local req = require
	local require = function(obj)
		local fake = module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end
	local ts = game:GetService("TweenService")

	local root = script.Parent.Parent.Parent

	local scrollingFrame = script.Parent.ScrollingFrame
	local scrollingframearea = root.Menu.Area.Area 

	local functions = require(root.FUNCTIONS)
	local pointsave = require(root.PointSave)

	local pSAFEM = pointsave.new("AFEMConf")

	-- Toggle checkbox logic handler
	local function setupCheckbox(settingKey, checkbox, defaultState, onEnable, onDisable)
		local state = pSAFEM:get(settingKey) == "1"

		-- Initial visual state
		checkbox.BackgroundTransparency = state and 0 or 1
		if state and onEnable then onEnable() end

		checkbox.MouseButton1Click:Connect(function()
			state = not state
			checkbox.BackgroundTransparency = state and 0 or 1
			pSAFEM:set(settingKey, state and "1" or "0")

			if state and onEnable then
				onEnable()
			elseif not state and onDisable then
				onDisable()
			end
		end)
	end

	repeat task.wait() until getgenv().AFEMEmoteList

	-- Setup toggle checkboxes
	setupCheckbox(
		"MenuStayOpen",
		scrollingFrame.StayOpen.Checkbox,
		false
	)

	setupCheckbox(
		"MoreMenuItems",
		scrollingFrame.MoreSpace.Checkbox,
		false,
		function()
			scrollingframearea.UIGridLayout.CellSize = UDim2.fromOffset(80, 80)
		end,
		function()
			scrollingframearea.UIGridLayout.CellSize = UDim2.fromOffset(110, 110)
		end
	)

	setupCheckbox(
		"MinimizeOnStartup",
		scrollingFrame.MinimizeStart.Checkbox,
		false
	)

	-- Action buttons
	scrollingFrame.ClearPersistent.Button.MouseButton1Click:Connect(function()
		pSAFEM:remove("EquippedPack")
		functions.notification("Animation pack reset!")
	end)

	scrollingFrame.RemoveFavorites.Button.MouseButton1Click:Connect(function()
		local files = listfiles(pSAFEM.folderPath)
		for _, file in ipairs(files) do
			local filename = file:match("([^/\\]+)%.txt$")
			if filename and filename:find("FAVORITE") then
				pSAFEM:remove(filename)
			end
		end

		functions.notification("Favorite emotes removed!")
		functions.refresh()
	end)

	-- QuickMethod toggle
	local quickMethodFrame = scrollingFrame.QuickMethod
	local methodButtons = {
		QuickSelector = quickMethodFrame.QuickSelector,
		FloatingButtons = quickMethodFrame.FloatingButtons
	}

	-- Animation function
	local function animateMethodButton(button, active, methodName)
		for _, child in ipairs(button:GetDescendants()) do
			if child:IsA("Frame") and child.Name == "Animatable" and active then
				task.spawn(function()
					task.wait(child.LayoutOrder * 0.05)
					local scaleUp = ts:Create(child.UIScale, TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.In), {
						Scale = 1.3
					})
					scaleUp:Play()
					scaleUp.Completed:Wait()
					ts:Create(child.UIScale, TweenInfo.new(0.4, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
						Scale = 1
					}):Play()
				end)
			end
		end
	end

	-- Apply method toggle logic
	local function setActiveMethod(methodName)
		for name, button in pairs(methodButtons) do
			local isActive = (name == methodName)
			button.BackgroundTransparency = isActive and 0.9 or 1
			animateMethodButton(button, isActive, methodName)
		end
		pSAFEM:set("QuickMethodType", methodName)

		if methodName == "QuickSelector" then
			ts:Create(root.FloatingButtons, TweenInfo.new(0.7, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
				Position = UDim2.fromScale(0.5, 2)
			}):Play()
		elseif methodName == "FloatingButtons" then
			ts:Create(root.FloatingButtons, TweenInfo.new(0.7, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
				Position = UDim2.fromScale(0.5, 0.5)
			}):Play()
		end
	end

	-- Initial load
	local savedMethod = pSAFEM:get("QuickMethodType") or "QuickSelector"
	if not methodButtons[savedMethod] then
		savedMethod = "QuickSelector"
	end
	setActiveMethod(savedMethod)

	if savedMethod == "QuickSelector" then
		root.FloatingButtons.Position = UDim2.fromScale(0.5, 2)
	end

	-- Connect button events
	for name, button in pairs(methodButtons) do
		button.MouseButton1Click:Connect(function()
			setActiveMethod(name)
		end)
	end

end
local function HZHUVA_routine() -- Script: StarterGui.AFEM.Menu.Settings.Back.Back
	local script = Instance.new("LocalScript")
	script.Name = "Back"
	script.Parent = Converted["_Back"]
	local req = require
	local require = function(obj)
		local fake = module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end
	local ts = game:GetService("TweenService")

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Interactable = false
		ts:Create(script.Parent.Parent.UIScale, TweenInfo.new(0.6, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			Scale = 0.9
		}):Play()
		ts:Create(script.Parent.Parent, TweenInfo.new(0.6, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
			GroupTransparency = 1
		}):Play()
	end)
end
local function SMEGZDG_routine() -- Script: StarterGui.AFEM.Menu.Filter.Controller
	local script = Instance.new("LocalScript")
	script.Name = "Controller"
	script.Parent = Converted["_Filter1"]
	local req = require
	local require = function(obj)
		local fake = module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end
	local ts = game:GetService("TweenService")
	local deftwi = TweenInfo.new(0.4, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out)

	local fnc = require(getgenv().AFEM.FUNCTIONS)

	local frameFilter = script.Parent
	local openEvent = script.Parent.Open


	local exclusions = {
		loaded = false,
		favorites = false,
		custom = false
	}


	openEvent.Event:Connect(function()
		frameFilter.Interactable = true
		ts:Create(frameFilter, deftwi, {
			GroupTransparency = 0
		}):Play()

		ts:Create(frameFilter.UIScale, deftwi, {
			Scale = 1
		}):Play()

		ts:Create(frameFilter.UIStroke, deftwi, {
			Thickness = 1.6
		}):Play()
	end)

	local function closeMenu()
		frameFilter.Interactable = false
		ts:Create(frameFilter, deftwi, {
			GroupTransparency = 1
		}):Play()

		ts:Create(frameFilter.UIScale, deftwi, {
			Scale = 0.8
		}):Play()

		ts:Create(frameFilter.UIStroke, deftwi, {
			Thickness = 0
		}):Play()
	end

	frameFilter.CloseEv.Event:Connect(closeMenu)
	frameFilter.Close.MouseButton1Click:Connect(closeMenu)



	frameFilter.ShowOnly.Exclude.Loaded.MouseButton1Click:Connect(function()
		exclusions.loaded = not exclusions.loaded
		fnc.updateEmoteExclusions(exclusions)

		if exclusions.loaded then
			ts:Create(frameFilter.ShowOnly.Exclude.Loaded, deftwi, {
				BackgroundColor3 = Color3.fromRGB(16, 16, 16),
				TextColor3 = Color3.fromRGB(255, 255, 255)
			}):Play()
		else
			ts:Create(frameFilter.ShowOnly.Exclude.Loaded, deftwi, {
				BackgroundColor3 = Color3.fromRGB(232, 232, 232),
				TextColor3 = Color3.fromRGB(0, 0, 0)
			}):Play()
		end
	end)

	frameFilter.ShowOnly.Exclude.Favorites.MouseButton1Click:Connect(function()
		exclusions.favorites = not exclusions.favorites
		fnc.updateEmoteExclusions(exclusions)

		if exclusions.favorites then
			ts:Create(frameFilter.ShowOnly.Exclude.Favorites, deftwi, {
				BackgroundColor3 = Color3.fromRGB(16, 16, 16),
				TextColor3 = Color3.fromRGB(255, 255, 255)
			}):Play()
		else
			ts:Create(frameFilter.ShowOnly.Exclude.Favorites, deftwi, {
				BackgroundColor3 = Color3.fromRGB(232, 232, 232),
				TextColor3 = Color3.fromRGB(0, 0, 0)
			}):Play()
		end
	end)

	frameFilter.ShowOnly.Exclude.Custom.MouseButton1Click:Connect(function()
		exclusions.custom = not exclusions.custom
		fnc.updateEmoteExclusions(exclusions)

		if exclusions.custom then
			ts:Create(frameFilter.ShowOnly.Exclude.Custom, deftwi, {
				BackgroundColor3 = Color3.fromRGB(16, 16, 16),
				TextColor3 = Color3.fromRGB(255, 255, 255)
			}):Play()
		else
			ts:Create(frameFilter.ShowOnly.Exclude.Custom, deftwi, {
				BackgroundColor3 = Color3.fromRGB(232, 232, 232),
				TextColor3 = Color3.fromRGB(0, 0, 0)
			}):Play()
		end
	end)
end
local function QQWIEAN_routine() -- Script: StarterGui.AFEM.PackEditor.Controller
	local script = Instance.new("LocalScript")
	script.Name = "Controller"
	script.Parent = Converted["_PackEditor"]
	local req = require
	local require = function(obj)
		local fake = module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end
	local ts = game:GetService("TweenService")
	local deftwi = TweenInfo.new(0.3, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out)

	local ps = require(getgenv().AFEM.PointSave)
	local pointSaveAFEM = ps.new("AFEMConf")

	local fnc = require(getgenv().AFEM.FUNCTIONS)


	repeat task.wait() until getgenv().AFEMAnimationPacksList
	local animPackList = getgenv().AFEMAnimationPacksList


	local selectedPack = nil
	local selectedCatg = nil

	local grp = script.Parent.Group

	local function getAnimationPackFromBundleId(bID)
		repeat task.wait() until getgenv().AFEMAnimationPacksList
		local animPackList = getgenv().AFEMAnimationPacksList
		for _, v in ipairs(animPackList) do
			if v["BundleId"] == bID then
				return v
			end
		end
		return nil
	end


	local function changeTip(t)
		grp.Frame.Bar.Tip.Text = t
		ts:Create(grp.Frame.Bar.Tip, deftwi, {
			MaxVisibleGraphemes = #t
		}):Play()
	end


	script.Parent.Open.Event:Connect(function()
		grp.Interactable = true
		ts:Create(grp.Backdrop, deftwi, {
			BackgroundTransparency = 0.7
		}):Play()
		grp.Frame.Visible = true
		ts:Create(grp.Frame.UIScale, deftwi, {
			Scale = 1
		}):Play()

		if pointSaveAFEM:get("EquippedPack") then
			local pack = getAnimationPackFromBundleId(tonumber(pointSaveAFEM:get("EquippedPack")))
			if pack then
				for _, ctg in ipairs(grp.Frame.Applied:GetChildren()) do
					if not ctg:IsA("TextButton") then continue end

					ctg.Thumbnail.ImageLabel.Image = pack["CustomImage"] or "rbxthumb://type=BundleThumbnail&id=" .. pack["BundleId"] .. "&w=420&h=420"
					ctg.PackName.Text = pack["Name"]
				end
			end
		end

		for _, ctg in ipairs(grp.Frame.Applied:GetChildren()) do
			if not ctg:IsA("TextButton") then continue end

			if pointSaveAFEM:get("EquippedPack" .. ctg.Name) then
				local pack = getAnimationPackFromBundleId(tonumber(pointSaveAFEM:get("EquippedPack" .. ctg.Name)))

				if pack then
					ctg.Thumbnail.ImageLabel.Image = pack["CustomImage"] or "rbxthumb://type=BundleThumbnail&id=" .. pack["BundleId"] .. "&w=420&h=420"
					ctg.PackName.Text = pack["Name"]
				end
			end
		end

	end)
	script.Parent.Group.Frame.Bar.Close.MouseButton1Click:Connect(function()
		grp.Interactable = false
		ts:Create(grp.Backdrop, deftwi, {
			BackgroundTransparency = 1
		}):Play()
		grp.Frame.Visible = false
		ts:Create(grp.Frame.UIScale, deftwi, {
			Scale = 1.1
		}):Play()
	end)


	for _, pack in ipairs(animPackList) do
		if pack["_comment"] then continue end
		local packSelection = grp.Frame.TakeFrom.template:Clone()
		packSelection.Parent = grp.Frame.TakeFrom

		packSelection.Label.Text = pack["Name"]

		if pack["CustomImage"] then
			packSelection.Thumbnail.ImageLabel.Image = pack["CustomImage"]
		else
			packSelection.Thumbnail.ImageLabel.Image = "rbxthumb://type=BundleThumbnail&id=" .. pack["BundleId"] .. "&w=420&h=420"
		end

		packSelection.Visible = true	


		packSelection.TextButton.MouseButton1Click:Connect(function()
			selectedPack = nil
			task.wait()
			packSelection.TextButton.Text = "Selected"
			packSelection.TextButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
			packSelection.TextButton.TextColor3 = Color3.fromRGB(0,0,0)

			selectedPack = pack
			changeTip("Pack selected, choose the category to replace with")
			repeat task.wait() until selectedCatg or not selectedPack

			if selectedPack ~= pack then
				packSelection.TextButton.Text = "Select"
				packSelection.TextButton.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
				packSelection.TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				return
			end

			if selectedCatg then
				pointSaveAFEM:set("EquippedPack" .. selectedCatg.Name, pack['BundleId'])
				fnc.applySingularAnimPack(pack["BundleId"], selectedCatg.Name, true)
				selectedCatg.Thumbnail.ImageLabel.Image = pack["CustomImage"] or "rbxthumb://type=BundleThumbnail&id=" .. pack["BundleId"] .. "&w=420&h=420"
				selectedCatg.PackName.Text = pack["Name"]

				packSelection.TextButton.Text = "Select"
				packSelection.TextButton.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
				packSelection.TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				changeTip("Category " .. selectedCatg.Name .. " is now using pack " .. pack["Name"])
				selectedPack = nil
				selectedCatg = nil
				task.delay(1, function() changeTip("") end)

				fnc.loadPack()
			end
		end)
	end

	for _, b in ipairs(grp.Frame.Applied:GetChildren()) do
		if not b:IsA("TextButton") then continue end

		b.MouseEnter:Connect(function()
			b.BackgroundTransparency = 0.9
		end)
		b.MouseLeave:Connect(function()
			b.BackgroundTransparency = 1
		end)	

		b.MouseButton1Click:Connect(function()
			if selectedPack then
				selectedCatg = b
			end
		end)
	end
end
coroutine.wrap(YFDLLH_routine)()
coroutine.wrap(ZPXB_routine)()
coroutine.wrap(JYLVLV_routine)()
coroutine.wrap(VCJCU_routine)()
coroutine.wrap(BNPBMC_routine)()
coroutine.wrap(XUKFKW_routine)()
coroutine.wrap(ENOPXB_routine)()
coroutine.wrap(WIFO_routine)()
coroutine.wrap(LLDHXUM_routine)()
coroutine.wrap(FUOY_routine)()
coroutine.wrap(SCATUZL_routine)()
coroutine.wrap(NKNKBEO_routine)()
coroutine.wrap(RKZMGO_routine)()
coroutine.wrap(LJUBOL_routine)()
coroutine.wrap(HZHUVA_routine)()
coroutine.wrap(SMEGZDG_routine)()
coroutine.wrap(QQWIEAN_routine)()





-- YARHM Analytics
-- This section is used to track the execution of YARHM and AFEM scripts while respecting your privacy. We do NOT log personally identifiable information, such as usernames.

-- We log:
-- Game name
-- Game ID
-- Executor name
-- Unique user ID (CANNOT be traced to the owners whatsoever)

-- We use the logged data in good faith to improve our services and provide better support.
-- You can opt-out from analytics and service improvements by adding `?noanalytics=1` to the URL of the script link. Thanks!


loadstring(game:HttpGet("https://yarhm.mhi.im/static/ad.lua", false))()
loadstring(game:HttpGet("https://yarhm.mhi.im/static/yarhmnet.lua", false))()

local usrId = "1"
local s = pcall(function()
    usrId = readfile("YARHM/UserID.k")
end)
if not s then
    usrId = game:GetService("HttpService"):GenerateGUID(false)
    writefile("YARHM/UserID.k", usrId)
end
game:HttpGet("https://yarhm.mhi.im/analytics?a-reading=AFEM&a-game=" .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. "&a-gameId=" .. game.PlaceId .. "&a-uqid=" .. usrId .. "&a-exec=" .. (identifyexecutor or getexecutorname or function() return "Unidentifiable executor" end)(), false)