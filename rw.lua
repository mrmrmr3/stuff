-- Gui to Lua
-- Version: 3.2

-- Instances:

local _rs = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local togglelist = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local _RTemplate = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UIPadding = Instance.new("UIPadding")
local title = Instance.new("TextLabel")
local inboundlist = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local title_2 = Instance.new("TextLabel")
local _ATemplate = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local info = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local remotetitle = Instance.new("TextLabel")
local timestamp = Instance.new("TextLabel")
local dupcount = Instance.new("TextLabel")
local args = Instance.new("ScrollingFrame")
local arg = Instance.new("TextLabel")
local UIListLayout_3 = Instance.new("UIListLayout")
local UIPadding_2 = Instance.new("UIPadding")
local pad = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local buttons = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local UIListLayout_4 = Instance.new("UIListLayout")
local pause = Instance.new("TextButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UICorner_7 = Instance.new("UICorner")
local close = Instance.new("TextButton")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UICorner_8 = Instance.new("UICorner")
local remotes = Instance.new("TextButton")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UICorner_9 = Instance.new("UICorner")
local save = Instance.new("TextButton")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local UICorner_10 = Instance.new("UICorner")
local Pad = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")
local clear = Instance.new("TextButton")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local UICorner_12 = Instance.new("UICorner")
local trButtons = Instance.new("Frame")
local UIListLayout_5 = Instance.new("UIListLayout")
local search = Instance.new("TextBox")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local UICorner_13 = Instance.new("UICorner")
local UIPadding_3 = Instance.new("UIPadding")
local tlButtons = Instance.new("Frame")
local UIListLayout_6 = Instance.new("UIListLayout")
local filter = Instance.new("TextButton")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local UICorner_14 = Instance.new("UICorner")
local time = Instance.new("TextLabel")
local popup = Instance.new("Frame")
local savefile = Instance.new("Frame")
local UICorner_15 = Instance.new("UICorner")
local filename = Instance.new("TextBox")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local UICorner_16 = Instance.new("UICorner")
local UIPadding_4 = Instance.new("UIPadding")
local title_3 = Instance.new("TextLabel")
local save_2 = Instance.new("TextButton")
local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
local UICorner_17 = Instance.new("UICorner")
local UIPadding_5 = Instance.new("UIPadding")
local cancel = Instance.new("TextButton")
local UIAspectRatioConstraint_10 = Instance.new("UIAspectRatioConstraint")
local UICorner_18 = Instance.new("UICorner")
local UIPadding_6 = Instance.new("UIPadding")
local UICorner_19 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local remotes_2 = Instance.new("TextButton")
local UIAspectRatioConstraint_11 = Instance.new("UIAspectRatioConstraint")
local UICorner_20 = Instance.new("UICorner")

--Properties:

_rs.Name = "_rs"
_rs.Parent = game.CoreGui
_rs.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = _rs
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.5, 0, 0.5, 0)
main.Size = UDim2.new(0.75, 0, 0.899999976, 0)
main.Visible = false

UICorner.CornerRadius = UDim.new(0.0250000004, 0)
UICorner.Parent = main

togglelist.Name = "togglelist"
togglelist.Parent = main
togglelist.AnchorPoint = Vector2.new(0.5, 1)
togglelist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
togglelist.BackgroundTransparency = 1.000
togglelist.BorderColor3 = Color3.fromRGB(0, 0, 0)
togglelist.BorderSizePixel = 0
togglelist.Position = UDim2.new(0.5, 0, 0.975000024, 0)
togglelist.Selectable = false
togglelist.Size = UDim2.new(0.949999988, 0, 0.870000005, 0)
togglelist.Visible = false
togglelist.ZIndex = 5
togglelist.CanvasSize = UDim2.new(0, 0, 0, 40)
togglelist.ScrollBarThickness = 8

UIListLayout.Parent = togglelist
UIListLayout.Padding = UDim.new(0.00999999978, 0)

_RTemplate.Name = "_RTemplate"
_RTemplate.Parent = togglelist
_RTemplate.AnchorPoint = Vector2.new(0.5, 0.5)
_RTemplate.BackgroundColor3 = Color3.fromRGB(255, 190, 85)
_RTemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
_RTemplate.BorderSizePixel = 0
_RTemplate.Size = UDim2.new(0.975000024, 0, 0.075000003, 0)
_RTemplate.Visible = false
_RTemplate.ZIndex = 6
_RTemplate.Font = Enum.Font.Montserrat
_RTemplate.Text = "TweenEvent"
_RTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
_RTemplate.TextScaled = true
_RTemplate.TextSize = 14.000
_RTemplate.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0.200000003, 0)
UICorner_2.Parent = _RTemplate

UIPadding.Parent = _RTemplate
UIPadding.PaddingBottom = UDim.new(0.100000001, 0)
UIPadding.PaddingTop = UDim.new(0.100000001, 0)

title.Name = "title"
title.Parent = main
title.AnchorPoint = Vector2.new(0.5, 0)
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.5, 0, 0.0255999994, 0)
title.Size = UDim2.new(1, 0, 0.0500000007, 0)
title.Font = Enum.Font.Montserrat
title.Text = "INBOUND"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

inboundlist.Name = "inboundlist"
inboundlist.Parent = main
inboundlist.AnchorPoint = Vector2.new(0.5, 1)
inboundlist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
inboundlist.BackgroundTransparency = 1.000
inboundlist.BorderColor3 = Color3.fromRGB(0, 0, 0)
inboundlist.BorderSizePixel = 0
inboundlist.Position = UDim2.new(0.5, 0, 0.975000024, 0)
inboundlist.Selectable = false
inboundlist.Size = UDim2.new(0.949999988, 0, 0.874000013, 0)
inboundlist.ZIndex = 5
inboundlist.CanvasSize = UDim2.new(0, 0, 0, 40)
inboundlist.ScrollBarThickness = 8

UIListLayout_2.Parent = inboundlist
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0.0350000001, 0)

title_2.Name = "title"
title_2.Parent = inboundlist
title_2.AnchorPoint = Vector2.new(0.5, 0)
title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_2.BackgroundTransparency = 1.000
title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
title_2.BorderSizePixel = 0
title_2.LayoutOrder = 9999
title_2.Position = UDim2.new(0.5, 0, 0.0120000001, 0)
title_2.Size = UDim2.new(1, 0, 0.0399999991, 0)
title_2.Font = Enum.Font.Gotham
title_2.Text = "Nothing here yet.."
title_2.TextColor3 = Color3.fromRGB(150, 150, 150)
title_2.TextScaled = true
title_2.TextSize = 14.000
title_2.TextWrapped = true

_ATemplate.Name = "_ATemplate"
_ATemplate.Parent = inboundlist
_ATemplate.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
_ATemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
_ATemplate.BorderSizePixel = 0
_ATemplate.Position = UDim2.new(0.077196233, 0, -0.00848764274, 0)
_ATemplate.Size = UDim2.new(1, 0, 0.300000012, 0)
_ATemplate.Visible = false
_ATemplate.ZIndex = 6
_ATemplate.AutoButtonColor = false
_ATemplate.Font = Enum.Font.Montserrat
_ATemplate.Text = ""
_ATemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
_ATemplate.TextScaled = true
_ATemplate.TextSize = 14.000
_ATemplate.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0.100000001, 0)
UICorner_3.Parent = _ATemplate

info.Name = "info"
info.Parent = _ATemplate
info.AnchorPoint = Vector2.new(0.5, 1)
info.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
info.BorderColor3 = Color3.fromRGB(0, 0, 0)
info.BorderSizePixel = 0
info.Position = UDim2.new(0.5, 0, 1.00000012, 0)
info.Size = UDim2.new(1, 0, 0.174999997, 0)

UICorner_4.CornerRadius = UDim.new(0.100000001, 0)
UICorner_4.Parent = info

remotetitle.Name = "remotetitle"
remotetitle.Parent = info
remotetitle.AnchorPoint = Vector2.new(0, 0.5)
remotetitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
remotetitle.BackgroundTransparency = 1.000
remotetitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
remotetitle.BorderSizePixel = 0
remotetitle.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
remotetitle.Size = UDim2.new(1, 0, 0.600000024, 0)
remotetitle.Font = Enum.Font.Montserrat
remotetitle.Text = "RemotesFolder.Cutscene"
remotetitle.TextColor3 = Color3.fromRGB(255, 255, 255)
remotetitle.TextScaled = true
remotetitle.TextSize = 14.000
remotetitle.TextWrapped = true
remotetitle.TextXAlignment = Enum.TextXAlignment.Left

timestamp.Name = "timestamp"
timestamp.Parent = info
timestamp.AnchorPoint = Vector2.new(1, 0.5)
timestamp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
timestamp.BackgroundTransparency = 1.000
timestamp.BorderColor3 = Color3.fromRGB(0, 0, 0)
timestamp.BorderSizePixel = 0
timestamp.Position = UDim2.new(0.977999866, 0, 0.499999076, 0)
timestamp.Size = UDim2.new(0.170511693, 0, 0.600000024, 0)
timestamp.Font = Enum.Font.Montserrat
timestamp.Text = "1867342234"
timestamp.TextColor3 = Color3.fromRGB(255, 255, 255)
timestamp.TextScaled = true
timestamp.TextSize = 14.000
timestamp.TextWrapped = true
timestamp.TextXAlignment = Enum.TextXAlignment.Right

dupcount.Name = "dupcount"
dupcount.Parent = info
dupcount.AnchorPoint = Vector2.new(0.5, 0.5)
dupcount.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dupcount.BackgroundTransparency = 1.000
dupcount.BorderColor3 = Color3.fromRGB(0, 0, 0)
dupcount.BorderSizePixel = 0
dupcount.Position = UDim2.new(0.5, 0, 0.5, 0)
dupcount.Size = UDim2.new(0.170511693, 0, 0.600000024, 0)
dupcount.Visible = false
dupcount.Font = Enum.Font.Montserrat
dupcount.Text = "(x12)"
dupcount.TextColor3 = Color3.fromRGB(255, 255, 255)
dupcount.TextScaled = true
dupcount.TextSize = 14.000
dupcount.TextWrapped = true

args.Name = "args"
args.Parent = _ATemplate
args.AnchorPoint = Vector2.new(0.5, 0)
args.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
args.BackgroundTransparency = 1.000
args.BorderColor3 = Color3.fromRGB(0, 0, 0)
args.BorderSizePixel = 0
args.Position = UDim2.new(0.5, 0, 0, 0)
args.Selectable = false
args.Size = UDim2.new(1, 0, 0.824999988, 0)
args.CanvasSize = UDim2.new(0, 0, 0, 0)
args.ScrollBarThickness = 8

arg.Name = "arg"
arg.Parent = args
arg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
arg.BackgroundTransparency = 1.000
arg.BorderColor3 = Color3.fromRGB(0, 0, 0)
arg.BorderSizePixel = 0
arg.Visible = false
arg.Font = Enum.Font.Montserrat
arg.Text = "[1]: game.Workspace.CurrentRooms.100._DamHandler.Flood1.RandomLightAttach.PointLight"
arg.TextColor3 = Color3.fromRGB(255, 255, 255)
arg.TextSize = 36.000
arg.TextXAlignment = Enum.TextXAlignment.Left

UIListLayout_3.Parent = args
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0.0299999993, 0)

UIPadding_2.Parent = args
UIPadding_2.PaddingLeft = UDim.new(0.00999999978, 0)
UIPadding_2.PaddingRight = UDim.new(0.00999999978, 0)
UIPadding_2.PaddingTop = UDim.new(0.0500000007, 0)

pad.Name = "pad"
pad.Parent = _ATemplate
pad.AnchorPoint = Vector2.new(0.5, 0)
pad.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
pad.BorderColor3 = Color3.fromRGB(0, 0, 0)
pad.BorderSizePixel = 0
pad.Position = UDim2.new(0.5, 0, 1.04999995, 0)
pad.Size = UDim2.new(1, 0, 0.0199999996, 0)

UICorner_5.CornerRadius = UDim.new(1, 0)
UICorner_5.Parent = pad

buttons.Name = "buttons"
buttons.Parent = main
buttons.AnchorPoint = Vector2.new(0.5, 1)
buttons.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
buttons.BorderColor3 = Color3.fromRGB(0, 0, 0)
buttons.BorderSizePixel = 0
buttons.Position = UDim2.new(0.5, 0, 1, 0)
buttons.Size = UDim2.new(1, 0, 0.200000003, 0)
buttons.ZIndex = 10

UICorner_6.CornerRadius = UDim.new(0.0500000007, 0)
UICorner_6.Parent = buttons

UIGradient.Rotation = -90
UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.61, 0.25), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient.Parent = buttons

UIListLayout_4.Parent = buttons
UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_4.Padding = UDim.new(0.00999999978, 0)

pause.Name = "pause"
pause.Parent = buttons
pause.Active = false
pause.AnchorPoint = Vector2.new(0.5, 0)
pause.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
pause.BorderColor3 = Color3.fromRGB(0, 0, 0)
pause.BorderSizePixel = 0
pause.Position = UDim2.new(0.86500001, 0, 0.00899999961, 0)
pause.Selectable = false
pause.Size = UDim2.new(0.5, 0, 0.5, 0)
pause.ZIndex = 5
pause.AutoButtonColor = false
pause.Font = Enum.Font.GothamBold
pause.Text = "II"
pause.TextColor3 = Color3.fromRGB(255, 255, 255)
pause.TextScaled = true
pause.TextSize = 14.000
pause.TextWrapped = true

UIAspectRatioConstraint.Parent = pause

UICorner_7.CornerRadius = UDim.new(0.25, 0)
UICorner_7.Parent = pause

close.Name = "close"
close.Parent = buttons
close.Active = false
close.AnchorPoint = Vector2.new(0.5, 0)
close.BackgroundColor3 = Color3.fromRGB(255, 53, 53)
close.BorderColor3 = Color3.fromRGB(0, 0, 0)
close.BorderSizePixel = 0
close.LayoutOrder = 1
close.Position = UDim2.new(0.86500001, 0, 0.00899999961, 0)
close.Selectable = false
close.Size = UDim2.new(0.5, 0, 0.5, 0)
close.ZIndex = 5
close.AutoButtonColor = false
close.Font = Enum.Font.GothamBold
close.Text = "X"
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true

UIAspectRatioConstraint_2.Parent = close

UICorner_8.CornerRadius = UDim.new(0.25, 0)
UICorner_8.Parent = close

remotes.Name = "remotes"
remotes.Parent = buttons
remotes.Active = false
remotes.AnchorPoint = Vector2.new(0.5, 0)
remotes.BackgroundColor3 = Color3.fromRGB(0, 174, 255)
remotes.BorderColor3 = Color3.fromRGB(0, 0, 0)
remotes.BorderSizePixel = 0
remotes.LayoutOrder = -1
remotes.Position = UDim2.new(0.86500001, 0, 0.00899999961, 0)
remotes.Selectable = false
remotes.Size = UDim2.new(0.5, 0, 0.5, 0)
remotes.ZIndex = 5
remotes.AutoButtonColor = false
remotes.Font = Enum.Font.GothamBold
remotes.Text = "O"
remotes.TextColor3 = Color3.fromRGB(255, 255, 255)
remotes.TextScaled = true
remotes.TextSize = 14.000
remotes.TextWrapped = true

UIAspectRatioConstraint_3.Parent = remotes

UICorner_9.CornerRadius = UDim.new(0.25, 0)
UICorner_9.Parent = remotes

save.Name = "save"
save.Parent = buttons
save.Active = false
save.AnchorPoint = Vector2.new(0.5, 0)
save.BackgroundColor3 = Color3.fromRGB(107, 255, 90)
save.BorderColor3 = Color3.fromRGB(0, 0, 0)
save.BorderSizePixel = 0
save.LayoutOrder = -4
save.Position = UDim2.new(0.86500001, 0, 0.00899999961, 0)
save.Selectable = false
save.Size = UDim2.new(0.5, 0, 0.5, 0)
save.ZIndex = 5
save.AutoButtonColor = false
save.Font = Enum.Font.GothamBold
save.Text = "💾"
save.TextColor3 = Color3.fromRGB(255, 255, 255)
save.TextScaled = true
save.TextSize = 14.000
save.TextWrapped = true

UIAspectRatioConstraint_4.Parent = save

UICorner_10.CornerRadius = UDim.new(0.25, 0)
UICorner_10.Parent = save

Pad.Name = "Pad"
Pad.Parent = buttons
Pad.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pad.BackgroundTransparency = 0.700
Pad.BorderColor3 = Color3.fromRGB(0, 0, 0)
Pad.BorderSizePixel = 0
Pad.LayoutOrder = -2
Pad.Size = UDim2.new(0.00499999989, 0, 0, 100)

UICorner_11.CornerRadius = UDim.new(1, 0)
UICorner_11.Parent = Pad

UIGradient_2.Rotation = 90
UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.65), NumberSequenceKeypoint.new(0.50, 0.01), NumberSequenceKeypoint.new(1.00, 0.73)}
UIGradient_2.Parent = Pad

clear.Name = "clear"
clear.Parent = buttons
clear.Active = false
clear.AnchorPoint = Vector2.new(0.5, 0)
clear.BackgroundColor3 = Color3.fromRGB(255, 222, 102)
clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
clear.BorderSizePixel = 0
clear.LayoutOrder = -3
clear.Position = UDim2.new(0.86500001, 0, 0.00899999961, 0)
clear.Selectable = false
clear.Size = UDim2.new(0.5, 0, 0.5, 0)
clear.ZIndex = 5
clear.AutoButtonColor = false
clear.Font = Enum.Font.GothamBold
clear.Text = "🔥"
clear.TextColor3 = Color3.fromRGB(255, 255, 255)
clear.TextScaled = true
clear.TextSize = 14.000
clear.TextWrapped = true

UIAspectRatioConstraint_5.Parent = clear

UICorner_12.CornerRadius = UDim.new(0.25, 0)
UICorner_12.Parent = clear

trButtons.Name = "trButtons"
trButtons.Parent = main
trButtons.AnchorPoint = Vector2.new(1, 0)
trButtons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trButtons.BackgroundTransparency = 1.000
trButtons.BorderColor3 = Color3.fromRGB(0, 0, 0)
trButtons.BorderSizePixel = 0
trButtons.Position = UDim2.new(0.975000024, 0, 0.00999999978, 0)
trButtons.Size = UDim2.new(0.32743752, 0, 0.0799999982, 0)
trButtons.ZIndex = 3

UIListLayout_5.Parent = trButtons
UIListLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_5.VerticalAlignment = Enum.VerticalAlignment.Center

search.Name = "search"
search.Parent = trButtons
search.Active = false
search.AnchorPoint = Vector2.new(0.5, 0)
search.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
search.BorderColor3 = Color3.fromRGB(0, 0, 0)
search.BorderSizePixel = 0
search.LayoutOrder = -1
search.Position = UDim2.new(0.86500001, 0, 0.00899999961, 0)
search.Selectable = false
search.Size = UDim2.new(1, 0, 1, 0)
search.ZIndex = 5
search.Font = Enum.Font.Gotham
search.PlaceholderColor3 = Color3.fromRGB(207, 207, 207)
search.PlaceholderText = "Search.."
search.Text = ""
search.TextColor3 = Color3.fromRGB(255, 255, 255)
search.TextScaled = true
search.TextWrapped = true

UIAspectRatioConstraint_6.Parent = search
UIAspectRatioConstraint_6.AspectRatio = 4.000

UICorner_13.CornerRadius = UDim.new(0.150000006, 0)
UICorner_13.Parent = search

UIPadding_3.Parent = search
UIPadding_3.PaddingBottom = UDim.new(0.100000001, 0)
UIPadding_3.PaddingLeft = UDim.new(0.100000001, 0)
UIPadding_3.PaddingRight = UDim.new(0.100000001, 0)
UIPadding_3.PaddingTop = UDim.new(0.100000001, 0)

tlButtons.Name = "tlButtons"
tlButtons.Parent = main
tlButtons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tlButtons.BackgroundTransparency = 1.000
tlButtons.BorderColor3 = Color3.fromRGB(0, 0, 0)
tlButtons.BorderSizePixel = 0
tlButtons.Position = UDim2.new(0.0250000004, 0, 0.00999999978, 0)
tlButtons.Size = UDim2.new(0.32743752, 0, 0.0799999982, 0)
tlButtons.ZIndex = 3

UIListLayout_6.Parent = tlButtons
UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_6.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout_6.Padding = UDim.new(0.0299999993, 0)

filter.Name = "filter"
filter.Parent = tlButtons
filter.Active = false
filter.AnchorPoint = Vector2.new(0.5, 0)
filter.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
filter.BorderColor3 = Color3.fromRGB(0, 0, 0)
filter.BorderSizePixel = 0
filter.LayoutOrder = -1
filter.Position = UDim2.new(0.86500001, 0, 0.00899999961, 0)
filter.Selectable = false
filter.Size = UDim2.new(1, 0, 1, 0)
filter.Visible = false
filter.ZIndex = 5
filter.AutoButtonColor = false
filter.Font = Enum.Font.GothamBold
filter.Text = "🔌"
filter.TextColor3 = Color3.fromRGB(255, 255, 255)
filter.TextScaled = true
filter.TextSize = 14.000
filter.TextWrapped = true

UIAspectRatioConstraint_7.Parent = filter

UICorner_14.CornerRadius = UDim.new(0.25, 0)
UICorner_14.Parent = filter

time.Name = "time"
time.Parent = tlButtons
time.AnchorPoint = Vector2.new(0.5, 0.5)
time.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
time.BackgroundTransparency = 1.000
time.BorderColor3 = Color3.fromRGB(0, 0, 0)
time.BorderSizePixel = 0
time.Position = UDim2.new(0.300000012, 0, 0.0260000005, 0)
time.Size = UDim2.new(1, 0, 0.600000024, 0)
time.Font = Enum.Font.Montserrat
time.Text = "123123"
time.TextColor3 = Color3.fromRGB(255, 255, 255)
time.TextScaled = true
time.TextSize = 14.000
time.TextWrapped = true
time.TextXAlignment = Enum.TextXAlignment.Left

popup.Name = "popup"
popup.Parent = main
popup.AnchorPoint = Vector2.new(0.5, 0.5)
popup.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
popup.BackgroundTransparency = 0.150
popup.BorderColor3 = Color3.fromRGB(0, 0, 0)
popup.BorderSizePixel = 0
popup.Position = UDim2.new(0.5, 0, 0.5, 0)
popup.Size = UDim2.new(1, 0, 1, 0)
popup.Visible = false
popup.ZIndex = 10

savefile.Name = "savefile"
savefile.Parent = popup
savefile.AnchorPoint = Vector2.new(0.5, 0.5)
savefile.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
savefile.BorderColor3 = Color3.fromRGB(0, 0, 0)
savefile.BorderSizePixel = 0
savefile.Position = UDim2.new(0.5, 0, 0.5, 0)
savefile.Size = UDim2.new(0.5, 0, 0.300000012, 0)
savefile.ZIndex = 10

UICorner_15.CornerRadius = UDim.new(0.100000001, 0)
UICorner_15.Parent = savefile

filename.Name = "filename"
filename.Parent = savefile
filename.Active = false
filename.AnchorPoint = Vector2.new(0.5, 0.5)
filename.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
filename.BorderColor3 = Color3.fromRGB(0, 0, 0)
filename.BorderSizePixel = 0
filename.LayoutOrder = -1
filename.Position = UDim2.new(0.5, 0, 0.474000007, 0)
filename.Selectable = false
filename.Size = UDim2.new(0.850000024, 0, 0.850000024, 0)
filename.ZIndex = 11
filename.Font = Enum.Font.Gotham
filename.PlaceholderColor3 = Color3.fromRGB(207, 207, 207)
filename.PlaceholderText = "Name"
filename.Text = ""
filename.TextColor3 = Color3.fromRGB(255, 255, 255)
filename.TextScaled = true
filename.TextWrapped = true
filename.TextXAlignment = Enum.TextXAlignment.Left

UIAspectRatioConstraint_8.Parent = filename
UIAspectRatioConstraint_8.AspectRatio = 8.000

UICorner_16.CornerRadius = UDim.new(0.150000006, 0)
UICorner_16.Parent = filename

UIPadding_4.Parent = filename
UIPadding_4.PaddingBottom = UDim.new(0.200000003, 0)
UIPadding_4.PaddingLeft = UDim.new(0.0500000007, 0)
UIPadding_4.PaddingRight = UDim.new(0.0250000004, 0)
UIPadding_4.PaddingTop = UDim.new(0.200000003, 0)

title_3.Name = "title"
title_3.Parent = savefile
title_3.AnchorPoint = Vector2.new(0.5, 0.5)
title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title_3.BackgroundTransparency = 1.000
title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
title_3.BorderSizePixel = 0
title_3.Position = UDim2.new(0.5, 0, 0.200000003, 0)
title_3.Size = UDim2.new(1, 0, 0.150000006, 0)
title_3.Font = Enum.Font.GothamMedium
title_3.Text = "Save File"
title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
title_3.TextScaled = true
title_3.TextSize = 14.000
title_3.TextWrapped = true

save_2.Name = "save"
save_2.Parent = savefile
save_2.Active = false
save_2.AnchorPoint = Vector2.new(0.5, 1)
save_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
save_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
save_2.BorderSizePixel = 0
save_2.LayoutOrder = -1
save_2.Position = UDim2.new(0.711413741, 0, 0.865706384, 0)
save_2.Selectable = false
save_2.Size = UDim2.new(0.349999994, 0, 0.349999994, 0)
save_2.ZIndex = 12
save_2.AutoButtonColor = false
save_2.Font = Enum.Font.Montserrat
save_2.Text = "Save"
save_2.TextColor3 = Color3.fromRGB(0, 0, 0)
save_2.TextScaled = true
save_2.TextSize = 14.000
save_2.TextWrapped = true

UIAspectRatioConstraint_9.Parent = save_2
UIAspectRatioConstraint_9.AspectRatio = 4.000

UICorner_17.CornerRadius = UDim.new(0.25, 0)
UICorner_17.Parent = save_2

UIPadding_5.Parent = save_2
UIPadding_5.PaddingBottom = UDim.new(0.100000001, 0)
UIPadding_5.PaddingTop = UDim.new(0.100000001, 0)

cancel.Name = "cancel"
cancel.Parent = savefile
cancel.Active = false
cancel.AnchorPoint = Vector2.new(0.5, 1)
cancel.BackgroundColor3 = Color3.fromRGB(255, 65, 65)
cancel.BorderColor3 = Color3.fromRGB(0, 0, 0)
cancel.BorderSizePixel = 0
cancel.LayoutOrder = -1
cancel.Position = UDim2.new(0.286413372, 0, 0.865706384, 0)
cancel.Selectable = false
cancel.Size = UDim2.new(0.349999994, 0, 0.349999994, 0)
cancel.ZIndex = 12
cancel.AutoButtonColor = false
cancel.Font = Enum.Font.Montserrat
cancel.Text = "Cancel"
cancel.TextColor3 = Color3.fromRGB(255, 255, 255)
cancel.TextScaled = true
cancel.TextSize = 14.000
cancel.TextWrapped = true

UIAspectRatioConstraint_10.Parent = cancel
UIAspectRatioConstraint_10.AspectRatio = 4.000

UICorner_18.CornerRadius = UDim.new(0.25, 0)
UICorner_18.Parent = cancel

UIPadding_6.Parent = cancel
UIPadding_6.PaddingBottom = UDim.new(0.100000001, 0)
UIPadding_6.PaddingTop = UDim.new(0.100000001, 0)

UICorner_19.CornerRadius = UDim.new(0.0250000004, 0)
UICorner_19.Parent = popup

TextLabel.Parent = _rs
TextLabel.AnchorPoint = Vector2.new(0, 1)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0200000256, 0, 0.980000019, 0)
TextLabel.Size = UDim2.new(1, 0, 0.0299999993, 0)
TextLabel.Font = Enum.Font.Montserrat
TextLabel.Text = "exploiting for decompiling/debugging purposes!"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextTransparency = 0.700
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

remotes_2.Name = "remotes"
remotes_2.Parent = _rs
remotes_2.Active = false
remotes_2.AnchorPoint = Vector2.new(0.5, 0)
remotes_2.BackgroundColor3 = Color3.fromRGB(0, 153, 255)
remotes_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
remotes_2.BorderSizePixel = 0
remotes_2.Position = UDim2.new(0.574999988, 0, 0.0130000003, 0)
remotes_2.Selectable = false
remotes_2.Size = UDim2.new(0.0599999987, 0, 0.0599999987, 0)
remotes_2.ZIndex = 3
remotes_2.AutoButtonColor = false
remotes_2.Font = Enum.Font.GothamMedium
remotes_2.Text = "W"
remotes_2.TextColor3 = Color3.fromRGB(255, 255, 255)
remotes_2.TextScaled = true
remotes_2.TextSize = 14.000
remotes_2.TextWrapped = true

UIAspectRatioConstraint_11.Parent = remotes_2

UICorner_20.CornerRadius = UDim.new(0.200000003, 0)
UICorner_20.Parent = remotes_2

-- Scripts:

local function GTYZ_fake_script() -- _rs.LocalScript 
	local script = Instance.new('LocalScript', _rs)

	print("initializing inbound remote viewer")
	
	local remotesFolder = game.ReplicatedStorage:WaitForChild("RemotesFolder", 3)
	
	if game.ReplicatedStorage:WaitForChild("GameData"):WaitForChild("Floor").Value == "Fools" then
		remotesFolder = game.ReplicatedStorage:WaitForChild("EntityInfo")
	end
	
	local _REMOTESLIST = { unpack(remotesFolder:GetChildren()) }
	
	for _, remote: RemoteEvent in game.ReplicatedStorage:GetDescendants() do
		if remote.Parent.Name == "EntityInfo" or remote.Parent.Name == "RemotesFolder" then
			continue
		end
		
		if remote:IsA("RemoteEvent") then
			table.insert(_REMOTESLIST, remote)
		end
	end
	
	local _paused = false
	local _page: "inbound" | "toggle" = "inbound"
	
	local main = script.Parent:WaitForChild("main")
	local buttons = main.buttons
	
	main.tlButtons.time.Text = tostring(os.clock())
	
	buttons.pause.MouseButton1Up:Connect(function()
		_paused = not _paused
		buttons.pause.Text = _paused and "..." or "II"
	end)
	
	main.togglelist.Visible = false
	main.inboundlist.Visible = true
	
	buttons.remotes.MouseButton1Up:Connect(function()
		local currentPage = main:FindFirstChild(_page .. "list")
		
		if _page == "inbound" then
			_page = "toggle"
		else
			_page = "inbound"
		end
		
		local newPage = main:FindFirstChild(_page .. "list")
		
		currentPage.Visible = false
		newPage.Visible = true
		
		main.title.Text = string.upper(_page)
	end)
	
	buttons.close.MouseButton1Up:Connect(function()
		main.Visible = false
		script.Parent.remotes.Visible = true
	end)
	
	script.Parent.remotes.MouseButton1Up:Connect(function()
		main.Visible = true
		script.Parent.remotes.Visible = false
	end)
	
	local _conv
	
	_conv = function(v, spaces, usesemicolon, depth)
		if type(v) ~= 'table' then
			if type(v) == "string" then
				return tostring(`"{v}"`)
			elseif typeof(v) == "Vector3" then
				return tostring(`Vector3.new({v})`)
			elseif typeof(v) == "Color3" then
				local r = math.floor(v.R * 255)
				local g = math.floor(v.G * 255)
				local b = math.floor(v.B * 255)
	
				return tostring(`Color3.fromRGB({r}, {g}, {b})`)
			elseif typeof(v) == "CFrame" then
				return tostring(`CFrame.new({v})`)
	
			elseif typeof(v) == "Vector2" then
				return tostring(`Vector2.new({v})`)
	
			elseif typeof(v) == "Instance" then
				return tostring(v:GetFullName())
			end
	
			return tostring(v)
		elseif not next(v) then
			return '{}'
		end
	
		spaces = spaces or 4
		depth = depth or 1
	
		local space = (" "):rep(depth * spaces)
		local sep = usesemicolon and ";" or ","
		local s = "{"
	
		for k, x in next, v do
			local kt = type(k)
			local thing = kt == 'number' and tostring(k)
	
			s = s .. ("\n%s[%s] = %s%s"):format(space, thing or ('"%s"'):format(tostring(k)), _conv(x, spaces, usesemicolon, depth + 1), sep)
		end
	
		return ("%s\n%s}"):format(s:sub(1,-2), space:sub(1, -spaces-1))
	end
	
	local _connections: {[RemoteEvent]: RBXScriptConnection} = {}
	local _totalArgs = {}
	local _uiargs = {}
	local _index = 0
	local _blacklist = {
		"RandomLightAttachment",
		"DrawerContainer",
		"Minecart"
	}
	
	buttons.clear.MouseButton1Up:Connect(function()
		for _, v in _uiargs do
			pcall(function()
				v:Destroy()
			end)
		end
		
		_index = 0
		table.clear(_totalArgs)
	end)
	
	local filtered = false
	
	main.tlButtons.filter.MouseButton1Up:Connect(function()
		if main.togglelist.Visible == true then
			filtered = not filtered
			
			for _, v in main.togglelist:GetChildren() do
				if v:IsA("TextButton") then
					if not v:GetAttribute("enabled") and filtered then
						v.Visible = false
					elseif not filtered and v.Name ~= "_RTemplate" then
						v.Visible = true
					end
				end
			end
		end
	end)
	
	main.inboundlist.AutomaticCanvasSize = Enum.AutomaticSize.Y
	main.togglelist.AutomaticCanvasSize = Enum.AutomaticSize.Y
	main.inboundlist._ATemplate.args.AutomaticCanvasSize = Enum.AutomaticSize.Y
	main.inboundlist._ATemplate.args.arg.AutomaticSize = Enum.AutomaticSize.XY
	main.inboundlist._ATemplate.args.arg.RichText = true
	
	for i, remote: RemoteEvent in _REMOTESLIST do
		if not remote:IsA("RemoteEvent") then
			return
		end
		
		task.spawn(function()
			if game.PlaceId == 0 then
				remote.OnClientEvent:Connect(function()
	
				end)
			end
		end)
		
		local temp = main.togglelist._RTemplate:Clone()
		local name: string = (remote.Parent.Name .. "." .. remote.Name)
		local ogc: Color3 = temp.BackgroundColor3
		
		temp.Name = name
		temp.Text = name
		temp.Visible = true
		temp.LayoutOrder = i
		temp.Parent = main.togglelist
		temp:SetAttribute("OriginalName", name)
		
		temp.MouseButton1Up:Connect(function()
			if _connections[remote] then
				_connections[remote]:Disconnect()
				_connections[remote] = nil
				
				temp:SetAttribute("enabled", false)
				temp.Name = "_" .. temp:GetAttribute("OriginalName")
				
				temp.BackgroundColor3 = ogc
			else
				temp:SetAttribute("enabled", true)
				temp.Name = temp:GetAttribute("OriginalName")
				temp.BackgroundColor3 = Color3.fromRGB(77, 223, 99)
				
				_connections[remote] = remote.OnClientEvent:Connect(function(...)
					if _paused then return end
					
					local args = {...}
					
					_index += 1
					
					local argTemplate = main.inboundlist._ATemplate:Clone()
					local ts = os.clock()
					
					argTemplate.Name = tostring(_index) .. remote.Name
					argTemplate.LayoutOrder = -_index
					argTemplate.info:WaitForChild("timestamp").Text = math.round(ts)
					argTemplate.info:WaitForChild("timestamp"):SetAttribute("stamp", ts)
					argTemplate.info:WaitForChild("remotetitle").Text = name
					argTemplate.Visible = true
					argTemplate.Parent = main.inboundlist
					
					table.insert(_uiargs, argTemplate)
					
					local targs = {
						Object = nil,
						Remote = remote:GetFullName(),
						Timestamp = ts,
						Room = game.ReplicatedStorage.GameData.LatestRoom.Value,
						Candy = game.Players.LocalPlayer.Character:GetAttribute("LastCandy"),
						Args = {}
					}
					
					local pos: CFrame
					
					for i, arg in args do
						if typeof(arg) == "Vector3" or typeof(arg) == "CFrame" then
							pos = pos or arg
						end
						
						local newArg = _conv(arg)
						
						for _, st: string in _blacklist do
							if string.find(newArg, st) then
								_index -= 1
								
								argTemplate:Destroy()
								
								return
							end
						end
						
						local param = argTemplate.args.arg:Clone()
						
						param.Visible = true
						param.Name = i
						param.Text = newArg
						param.LayoutOrder = i
						param.Parent = argTemplate.args
						
						targs.Args[i] = newArg
					end
					
					if pos then
						if typeof(pos) == "Vector3" then
							pos = CFrame.new(pos)
						end
						
						local params = OverlapParams.new()
						params.RespectCanCollide = false
						params.CollisionGroup = ""
						
						local potobj = workspace:GetPartBoundsInBox(pos, Vector3.new(2, 2, 2), params)
						local firstp = nil
						
						if #potobj > 0 then
							for _, p in potobj do
								firstp = firstp or p
								
								local model = p:FindFirstAncestorOfClass("Model")
	
								if model then
									targs.Object = model:GetFullName()
									
									break
								end
							end
						end
						
						if not targs.Object and firstp then
							targs.Object = firstp:GetFullName()
						end
					end
					
					_totalArgs[_index] = targs
				end)
			end
		end)
	end
	
	local popup = main.popup
	
	buttons.save.MouseButton1Up:Connect(function()
		popup.Visible = true
	end)
	
	local saves = 0
	
	popup.savefile.cancel.MouseButton1Up:Connect(function()
		popup.Visible = false
	end)
	
	popup.savefile.save.MouseButton1Up:Connect(function()
		local name = popup.savefile.filename.Text
		
		if string.gsub(name, "%s+", "") == "" then
			name = (game.ReplicatedStorage.GameData.Floor.Value) .. "_" .. tostring(os.date("%H-%M-%S"))
		end
		
		saves += 1
		
		pcall(function()
			print("saved")
			
			if not isfile("_remotelogs") then
				makefolder("_remotelogs")
			end
	
			local filePath = "_remotelogs/" .. name .. "_" .. tostring(saves)
	
			writefile(filePath .. ".txt", _conv(_totalArgs))
		end)
		
		popup.Visible = false
	end)
	
	local o = main.togglelist.UIListLayout.AbsoluteContentSize + Vector2.new(0, 40)
	
	main.togglelist.CanvasSize = UDim2.new(0, o.X, 0, o.Y)
end
coroutine.wrap(GTYZ_fake_script)()
