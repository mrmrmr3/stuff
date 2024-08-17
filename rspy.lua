-- Gui to Lua
-- Version: 3.2

-- Instances:

local RS_ = Instance.new("ScreenGui")
local Container = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Nav = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Nav_Template = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UIPadding = Instance.new("UIPadding")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UIPadding_2 = Instance.new("UIPadding")
local Main = Instance.new("Frame")
local Main_Template = Instance.new("ScrollingFrame")
local Arguement = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local UIPadding_3 = Instance.new("UIPadding")
local Args = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local Arg_Template = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UIPadding_4 = Instance.new("UIPadding")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local UIStroke_1 = Instance.new("UIStroke")
local UIPadding_5 = Instance.new("UIPadding")
local UIListLayout_3 = Instance.new("UIListLayout")
local Title = Instance.new("TextLabel")

--Properties:

RS_.Name = "RS_"
RS_.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
RS_.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
RS_.DisplayOrder = 999

Container.Name = "Container"
Container.Parent = RS_
Container.AnchorPoint = Vector2.new(0.5, 0.5)
Container.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Container.BorderSizePixel = 0
Container.Position = UDim2.new(0.5, 0, 0.5, 0)
Container.Size = UDim2.new(0.699999988, 0, 0.699999988, 0)

UICorner.CornerRadius = UDim.new(0.0199999996, 0)
UICorner.Parent = Container

Nav.Name = "Nav"
Nav.Parent = Container
Nav.AnchorPoint = Vector2.new(0.5, 0)
Nav.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Nav.BackgroundTransparency = 1.000
Nav.BorderSizePixel = 0
Nav.Position = UDim2.new(0.5, 0, 0.0299999993, 0)
Nav.Selectable = false
Nav.Size = UDim2.new(0.975000024, 0, 0.150000006, 0)
Nav.CanvasSize = UDim2.new(0, 0, 0, 0)
Nav.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
Nav.ScrollBarThickness = 4
Nav.ScrollBarImageColor3 = Color3.fromRGB(85, 255, 0)
Nav.ScrollingDirection = Enum.ScrollingDirection.X
Nav.AutomaticCanvasSize = Enum.AutomaticSize.X

UIListLayout.Parent = Nav
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.Padding = UDim.new(0.00499999989, 0)

Nav_Template.Name = "Nav_Template"
Nav_Template.Parent = Nav
Nav_Template.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
Nav_Template.BorderColor3 = Color3.fromRGB(0, 0, 0)
Nav_Template.BorderSizePixel = 0
Nav_Template.Size = UDim2.new(0.300000012, 0, 1, 0)
Nav_Template.Visible = false
Nav_Template.ZIndex = 55
Nav_Template.Font = Enum.Font.Unknown
Nav_Template.Text = "CamShakeRelative"
Nav_Template.TextColor3 = Color3.fromRGB(0, 111, 0)
Nav_Template.TextScaled = true
Nav_Template.TextSize = 14.000
Nav_Template.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0.100000001, 0)
UICorner_2.Parent = Nav_Template

UIPadding.Parent = Nav_Template

UITextSizeConstraint.Parent = Nav_Template
UITextSizeConstraint.MaxTextSize = 25

UIPadding_2.Parent = Nav
UIPadding_2.PaddingBottom = UDim.new(0.100000001, 0)

Main.Name = "Main"
Main.Parent = Container
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.0122767854, 0, 0.189299643, 0)
Main.Size = UDim2.new(0.974330366, 0, 0.780846417, 0)

Main_Template.Name = "Main_Template"
Main_Template.Parent = Main
Main_Template.Active = true
Main_Template.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main_Template.BackgroundTransparency = 1.000
Main_Template.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main_Template.BorderSizePixel = 0
Main_Template.Size = UDim2.new(1, 0, 1, 0)
Main_Template.Visible = false
Main_Template.CanvasSize = UDim2.new(0, 0, 1, 0)
Main_Template.ScrollBarThickness = 8
Main_Template.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
Main_Template.ScrollingDirection = Enum.ScrollingDirection.Y
Main_Template.AutomaticCanvasSize = Enum.AutomaticSize.Y

Arguement.Name = "Arguement"
Arguement.Parent = Main_Template
Arguement.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
Arguement.BorderColor3 = Color3.fromRGB(0, 0, 0)
Arguement.BorderSizePixel = 0
Arguement.Position = UDim2.new(0.124856815, 0, 0.0305343512, 0)
Arguement.Size = UDim2.new(1, 0, 0.200000003, 0)
Arguement.Visible = false
Arguement.ZIndex = 53
Arguement.Font = Enum.Font.SourceSans
Arguement.Text = ""
Arguement.TextColor3 = Color3.fromRGB(0, 0, 0)
Arguement.TextSize = 14.000
Arguement.TextTransparency = 1.000

UICorner_3.CornerRadius = UDim.new(0.100000001, 0)
UICorner_3.Parent = Arguement

UIPadding_3.Parent = Arguement
UIPadding_3.PaddingBottom = UDim.new(0.0500000007, 0)
UIPadding_3.PaddingLeft = UDim.new(0.00999999978, 0)
UIPadding_3.PaddingRight = UDim.new(0.00999999978, 0)
UIPadding_3.PaddingTop = UDim.new(0.0500000007, 0)

Args.Name = "Args"
Args.Parent = Arguement
Args.AnchorPoint = Vector2.new(1, 0.5)
Args.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Args.BackgroundTransparency = 1.000
Args.BorderColor3 = Color3.fromRGB(0, 0, 0)
Args.BorderSizePixel = 0
Args.ClipsDescendants = false
Args.Position = UDim2.new(1, 0, 0.5, 0)
Args.Selectable = false
Args.Size = UDim2.new(0.998000026, 0, 1, 0)
Args.ZIndex = 57
Args.CanvasSize = UDim2.new(0, 0, 0, 0)
Args.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
Args.ScrollBarThickness = 4
Args.ScrollBarImageColor3 = Color3.fromRGB(85, 255, 0)
Args.ScrollingDirection = Enum.ScrollingDirection.X
Args.AutomaticCanvasSize = Enum.AutomaticSize.X

UIListLayout_2.Parent = Args
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0.00499999989, 0)

Arg_Template.Name = "Arg_Template"
Arg_Template.Parent = Args
Arg_Template.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
Arg_Template.BorderColor3 = Color3.fromRGB(0, 0, 0)
Arg_Template.BorderSizePixel = 0
Arg_Template.Size = UDim2.new(0, 160, 1, 0)
Arg_Template.Visible = false
Arg_Template.ZIndex = 55
Arg_Template.Font = Enum.Font.Unknown
Arg_Template.Text = "_Template"
Arg_Template.TextColor3 = Color3.fromRGB(0, 0, 0)
Arg_Template.TextSize = 24.000
Arg_Template.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0.100000001, 0)
UICorner_4.Parent = Arg_Template

UIPadding_4.Parent = Arg_Template

UITextSizeConstraint_2.Parent = Arg_Template
UITextSizeConstraint_2.MaxTextSize = 16

UIStroke_1.Parent = Arg_Template
UIStroke_1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_1.Color = Color3.fromRGB(49, 147, 72)
UIStroke_1.Thickness = 3

UIPadding_5.Parent = Args
UIPadding_5.PaddingBottom = UDim.new(0.100000001, 0)
UIPadding_5.PaddingTop = UDim.new(0.100000001, 0)

UIListLayout_3.Parent = Main_Template
UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0.0299999993, 0)

Title.Name = "Title"
Title.Parent = Main_Template
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.LayoutOrder = -100
Title.Size = UDim2.new(1, 0, 0.0500000007, 0)
Title.ZIndex = 54
Title.Font = Enum.Font.Unknown
Title.Text = "CamShakeRelative | game.ReplicatedStorage.RemotesFolder.CamShakeRelative"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

-- Scripts:

local function XAJWUIU_fake_script() -- RS_.LocalScript 
	local script = Instance.new('LocalScript', RS_)

	local UIS = game:GetService("UserInputService")
	local TS = 24
	
	UIS.InputBegan:Connect(function(Input, GPE)
		if GPE then return end
		
		if Input.KeyCode == Enum.KeyCode.RightBracket then
			script.Parent.Enabled = not script.Parent.Enabled
		end
	end)
	
	local function Convert(v)
		if typeof(v) == "Vector3" then
			local vPos = tostring(
				string.format("%.3f", v.X) .. ", " ..
					string.format("%.3f", v.Y) .. ", " ..
					string.format("%.3f", v.Z)
			)
	
			return "Vector3.new(" .. vPos .. ")"
		elseif typeof(v) == "CFrame" then
			local vPos = tostring(
				string.format("%.3f", v.Position.X) .. ", " ..
					string.format("%.3f", v.Position.Y) .. ", " ..
					string.format("%.3f", v.Position.Z)
			)
	
			local vLV = tostring(
				string.format("%.3f", v.LookVector.X) .. ", " ..
					string.format("%.3f", v.LookVector.Y) .. ", " ..
					string.format("%.3f", v.LookVector.Z)
			)
	
			local Pos = "Vector3.new(" .. vPos .. ")"
			local LV = "L-Vector3.new(" .. vLV .. ")"
	
			return "CFrame.new(" .. Pos .. ", " .. LV .. ")"
		elseif typeof(v) == "Color3" then
			local r = math.floor(v.R * 255 + 0.5)
			local g = math.floor(v.G * 255 + 0.5)
			local b = math.floor(v.B * 255 + 0.5)
	
			return "Color3.fromRGB(" .. tostring(r) .. ", " .. tostring(g) .. ", " .. tostring(b) .. ")"
		elseif typeof(v) == "string" then
			return ('"' .. tostring(v) .. '"')
		elseif typeof(v) == "Instance" then
			return (tostring(v:GetFullName()))
		end
	
		return tostring(v)
	end
	
	local function ColorUp(Type: string)
		if Type == "{" or Type == "}" then
			return Color3.fromRGB(85, 170, 255)
		elseif string.find(Type, "CFrame") or string.find(Type, "Vector3") then
			return Color3.fromRGB(255, 85, 127)
		end
		
		return Color3.fromRGB(85, 255, 127)
	end
	
	local Container = script.Parent.Container
	local MainTemp = Container.Main.Main_Template
	local NavTemp = Container.Nav.Nav_Template
	
	local Remotes = {}
	
	local function Connect(Remote: RemoteEvent | RemoteFunction)
		local NewRemote = NavTemp:Clone()
		NewRemote.Name = Remote.Name
		NewRemote.Parent = Container.Nav
		NewRemote.Visible = true
		NewRemote.Text = Remote.Name
		NewRemote.LayoutOrder = table.find(Remotes, Remote)
	
		local NewMain = MainTemp:Clone()
		NewMain.Visible = false
		NewMain.Name = Remote.Name
		NewMain.Parent = Container.Main
		NewMain.Title.Text = Remote.Name .. " | " .. tostring(Remote:GetFullName())
	
		NewRemote.MouseButton1Up:Connect(function()
			for _, a in Container.Main:GetChildren() do
				a.Visible = a == NewMain
			end
		end)
		
		local A = 0
		
		if Remote:IsA("RemoteEvent") or Remote:IsA("UnreliableRemoteEvent") then
			Remote.OnClientEvent:Connect(function(...)
				local args = {...}
				local v_args = {}
				
				A += 1
	
				for Index, Value in args do
					if typeof(Value) == "table" then
						table.insert(v_args, "{")
	
						for Index, Value in Value do
							local Display = Convert(Value)
	
							if typeof(Index) ~= "number" then
								Display = "[" .. tostring(Index) .. "] = " .. Display
							end
	
							table.insert(v_args, Display)
						end
	
						table.insert(v_args, "}")
					else
						table.insert(v_args, Convert(Value))
					end
				end
				
				local NewArgs = NewMain.Arguement:Clone()
				NewArgs.Visible = true
				NewArgs.LayoutOrder = -A
				NewArgs.Parent = NewMain
				
				for Index, Arg: string in v_args do
					local ArgTemp = NewArgs.Args.Arg_Template:Clone()
					local TextSize = game.TextService:GetTextSize(Arg, TS, "Montserrat", Vector2.new(9999, 9999))
					
					local Factor = 0.58
					
					ArgTemp.Name = Index
					ArgTemp.LayoutOrder = Index
					ArgTemp.Text = Arg
					
					ArgTemp.BackgroundColor3 = ColorUp(Arg)
					
					ArgTemp.UIStroke.Color = Color3.fromRGB(
						math.floor(ColorUp(Arg).R * Factor),
						math.floor(ColorUp(Arg).G * Factor),
						math.floor(ColorUp(Arg).B * Factor)
					)
					
					ArgTemp.Size = UDim2.new(0, math.max(TextSize.X * 1.5, 25), 1, 0)
					ArgTemp.Parent = NewArgs.Args
					ArgTemp.Visible = true
				end
			end)
		end
	end
	
	for _, Remote in game.ReplicatedStorage:GetDescendants() do
		if Remote:IsA("RemoteEvent") or Remote:IsA("RemoteFunction") then
			table.insert(Remotes, Remote)
			
			Connect(Remote)
		end
	end
	
	game.ReplicatedStorage.DescendantAdded:Connect(function(Remote)
		if Remote:IsA("RemoteEvent") or Remote:IsA("RemoteFunction") then
			table.insert(Remotes, Remote)
			
			Connect(Remote)
		end
	end)
end
coroutine.wrap(XAJWUIU_fake_script)()
