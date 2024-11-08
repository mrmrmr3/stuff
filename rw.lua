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
local _ATemplate = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local info = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local remotetitle = Instance.new("TextLabel")
local timestamp = Instance.new("TextLabel")
local args = Instance.new("ScrollingFrame")
local UICorner_5 = Instance.new("UICorner")
local arg = Instance.new("TextLabel")
local UIListLayout_2 = Instance.new("UIListLayout")
local UIPadding_2 = Instance.new("UIPadding")
local pad = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local UIListLayout_3 = Instance.new("UIListLayout")
local title_2 = Instance.new("TextLabel")
local close = Instance.new("TextButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UICorner_7 = Instance.new("UICorner")
local pause = Instance.new("TextButton")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UICorner_8 = Instance.new("UICorner")
local remotes = Instance.new("TextButton")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UICorner_9 = Instance.new("UICorner")
local save = Instance.new("TextButton")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local UICorner_10 = Instance.new("UICorner")
local clear = Instance.new("TextButton")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local UICorner_11 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local remotes_2 = Instance.new("TextButton")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local UICorner_12 = Instance.new("UICorner")

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
main.Size = UDim2.new(0.5, 0, 0.899999976, 0)
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
togglelist.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
togglelist.Visible = false
togglelist.ZIndex = 5
togglelist.CanvasSize = UDim2.new(0, 0, 0, 0)
togglelist.ScrollBarThickness = 8
togglelist.AutomaticCanvasSize = Enum.AutomaticSize.Y

UIListLayout.Parent = togglelist
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0.00999999978, 0)

_RTemplate.Name = "_RTemplate"
_RTemplate.Parent = togglelist
_RTemplate.BackgroundColor3 = Color3.fromRGB(255, 190, 85)
_RTemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
_RTemplate.BorderSizePixel = 0
_RTemplate.Size = UDim2.new(1, 0, 0.075000003, 0)
_RTemplate.Visible = false
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
title.Position = UDim2.new(0.5, 0, 0.0120000001, 0)
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
inboundlist.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
inboundlist.ZIndex = 5
inboundlist.CanvasSize = UDim2.new(0, 0, 0, 0)
inboundlist.ScrollBarThickness = 8
inboundlist.AutomaticCanvasSize = Enum.AutomaticSize.Y

_ATemplate.Name = "_ATemplate"
_ATemplate.Parent = inboundlist
_ATemplate.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
_ATemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
_ATemplate.BorderSizePixel = 0
_ATemplate.Position = UDim2.new(0.077196233, 0, -0.00848764274, 0)
_ATemplate.Size = UDim2.new(1, 0, 0.300000012, 0)
_ATemplate.Visible = false
_ATemplate.AutoButtonColor = false
_ATemplate.Font = Enum.Font.Montserrat
_ATemplate.Text = ""
_ATemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
_ATemplate.TextScaled = true
_ATemplate.TextSize = 14.000
_ATemplate.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0.0500000007, 0)
UICorner_3.Parent = _ATemplate

info.Name = "info"
info.Parent = _ATemplate
info.AnchorPoint = Vector2.new(0.5, 1)
info.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
info.BorderColor3 = Color3.fromRGB(0, 0, 0)
info.BorderSizePixel = 0
info.Position = UDim2.new(0.5, 0, 1.00000012, 0)
info.Size = UDim2.new(1, 0, 0.174999997, 0)

UICorner_4.CornerRadius = UDim.new(0.0500000007, 0)
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
timestamp.Position = UDim2.new(0.977999926, 0, 0.499999553, 0)
timestamp.Size = UDim2.new(0.256067634, 0, 0.600000024, 0)
timestamp.Font = Enum.Font.Montserrat
timestamp.Text = "1867342234"
timestamp.TextColor3 = Color3.fromRGB(255, 255, 255)
timestamp.TextScaled = true
timestamp.TextSize = 14.000
timestamp.TextWrapped = true
timestamp.TextXAlignment = Enum.TextXAlignment.Right

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
args.AutomaticCanvasSize = Enum.AutomaticSize.XY

UICorner_5.CornerRadius = UDim.new(0.0500000007, 0)
UICorner_5.Parent = args

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
arg.RichText = true

UIListLayout_2.Parent = args
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0.0299999993, 0)

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

UICorner_6.CornerRadius = UDim.new(1, 0)
UICorner_6.Parent = pad

UIListLayout_3.Parent = inboundlist
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0.0350000001, 0)

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

close.Name = "close"
close.Parent = main
close.Active = false
close.AnchorPoint = Vector2.new(0.5, 0)
close.BackgroundColor3 = Color3.fromRGB(255, 84, 84)
close.BorderColor3 = Color3.fromRGB(0, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.952061117, 0, 0.00852777716, 0)
close.Selectable = false
close.Size = UDim2.new(0.075000003, 0, 0.075000003, 0)
close.ZIndex = 3
close.AutoButtonColor = false
close.Font = Enum.Font.GothamBold
close.Text = "X"
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true

UIAspectRatioConstraint.Parent = close

UICorner_7.CornerRadius = UDim.new(0.300000012, 0)
UICorner_7.Parent = close

pause.Name = "pause"
pause.Parent = main
pause.Active = false
pause.AnchorPoint = Vector2.new(0.5, 0)
pause.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
pause.BorderColor3 = Color3.fromRGB(0, 0, 0)
pause.BorderSizePixel = 0
pause.Position = UDim2.new(0.86500001, 0, 0.00899999961, 0)
pause.Selectable = false
pause.Size = UDim2.new(0.075000003, 0, 0.075000003, 0)
pause.ZIndex = 3
pause.AutoButtonColor = false
pause.Font = Enum.Font.GothamBold
pause.Text = "II"
pause.TextColor3 = Color3.fromRGB(255, 255, 255)
pause.TextScaled = true
pause.TextSize = 14.000
pause.TextWrapped = true

UIAspectRatioConstraint_2.Parent = pause

UICorner_8.CornerRadius = UDim.new(0.300000012, 0)
UICorner_8.Parent = pause

remotes.Name = "remotes"
remotes.Parent = main
remotes.Active = false
remotes.AnchorPoint = Vector2.new(0.5, 0)
remotes.BackgroundColor3 = Color3.fromRGB(0, 153, 255)
remotes.BorderColor3 = Color3.fromRGB(0, 0, 0)
remotes.BorderSizePixel = 0
remotes.Position = UDim2.new(0.779999971, 0, 0.00899999961, 0)
remotes.Selectable = false
remotes.Size = UDim2.new(0.075000003, 0, 0.075000003, 0)
remotes.ZIndex = 3
remotes.AutoButtonColor = false
remotes.Font = Enum.Font.GothamBold
remotes.Text = "R"
remotes.TextColor3 = Color3.fromRGB(255, 255, 255)
remotes.TextScaled = true
remotes.TextSize = 14.000
remotes.TextWrapped = true

UIAspectRatioConstraint_3.Parent = remotes

UICorner_9.CornerRadius = UDim.new(0.300000012, 0)
UICorner_9.Parent = remotes

save.Name = "save"
save.Parent = main
save.Active = false
save.AnchorPoint = Vector2.new(0.5, 0)
save.BackgroundColor3 = Color3.fromRGB(0, 153, 255)
save.BorderColor3 = Color3.fromRGB(0, 0, 0)
save.BorderSizePixel = 0
save.Position = UDim2.new(0.0500000007, 0, 0.00899999961, 0)
save.Selectable = false
save.Size = UDim2.new(0.075000003, 0, 0.075000003, 0)
save.ZIndex = 3
save.AutoButtonColor = false
save.Font = Enum.Font.GothamBold
save.Text = "S"
save.TextColor3 = Color3.fromRGB(255, 255, 255)
save.TextScaled = true
save.TextSize = 14.000
save.TextWrapped = true

UIAspectRatioConstraint_4.Parent = save

UICorner_10.CornerRadius = UDim.new(0.300000012, 0)
UICorner_10.Parent = save

clear.Name = "clear"
clear.Parent = main
clear.Active = false
clear.AnchorPoint = Vector2.new(0.5, 0)
clear.BackgroundColor3 = Color3.fromRGB(255, 75, 75)
clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
clear.BorderSizePixel = 0
clear.Position = UDim2.new(0.140000001, 0, 0.00899999961, 0)
clear.Selectable = false
clear.Size = UDim2.new(0.075000003, 0, 0.075000003, 0)
clear.ZIndex = 3
clear.AutoButtonColor = false
clear.Font = Enum.Font.GothamBold
clear.Text = "C"
clear.TextColor3 = Color3.fromRGB(255, 255, 255)
clear.TextScaled = true
clear.TextSize = 14.000
clear.TextWrapped = true

UIAspectRatioConstraint_5.Parent = clear

UICorner_11.CornerRadius = UDim.new(0.300000012, 0)
UICorner_11.Parent = clear

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
remotes_2.Position = UDim2.new(0.574999988, 0, 0.0149999997, 0)
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

UIAspectRatioConstraint_6.Parent = remotes_2

UICorner_12.CornerRadius = UDim.new(0.200000003, 0)
UICorner_12.Parent = remotes_2

-- Scripts:

local function CAMBRI_fake_script() -- _rs.LocalScript 
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
	
	main.pause.MouseButton1Up:Connect(function()
		_paused = not _paused
		main.pause.Text = _paused and "..." or "II"
	end)
	
	main.togglelist.Visible = false
	main.inboundlist.Visible = true
	
	main.remotes.MouseButton1Up:Connect(function()
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
	
	main.close.MouseButton1Up:Connect(function()
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
		"DrawerContainer"
	}
	
	main.clear.MouseButton1Up:Connect(function()
		for _, v in _uiargs do
			pcall(function()
				v:Destroy()
			end)
		end
		
		_index = 0
		table.clear(_totalArgs)
	end)
	
	for i, remote: RemoteEvent in _REMOTESLIST do
		task.spawn(function()
			remote.OnClientEvent:Connect(function()
				
			end)
		end)
		
		local temp = main.togglelist._RTemplate:Clone()
		local name: string = (remote.Parent.Name .. "." .. remote.Name)
		local ogc: Color3 = temp.BackgroundColor3
		
		temp.Name = name
		temp.Text = name
		temp.Visible = true
		temp.LayoutOrder = i
		temp.Parent = main.togglelist
		
		temp.MouseButton1Up:Connect(function()
			if _connections[remote] then
				_connections[remote]:Disconnect()
				
				temp.BackgroundColor3 = ogc
			else
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
									targs.Object = model
									
									break
								end
							end
						end
						
						if not targs.Object then
							targs.Object = firstp
						end
					end
					
					_totalArgs[_index] = targs
				end)
			end
		end)
	end
	
	main.save.MouseButton1Up:Connect(function()
		pcall(function()
			if not isfile("_remotelogs") then
				makefolder("_remotelogs")
			end
	
			local fileName = (game.ReplicatedStorage.GameData.Floor.Value) .. "_" .. tostring(os.date("%H-%M-%S"))
			local filePath = "_remotelogs/" .. fileName
	
			writefile(filePath .. ".txt", _conv(_totalArgs))
		end)
	end)
end
coroutine.wrap(CAMBRI_fake_script)()
