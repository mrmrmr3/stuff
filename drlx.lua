local DRLX = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Nav = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Decomps = Instance.new("TextButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UICorner = Instance.new("UICorner")
local Remotes = Instance.new("TextButton")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UICorner_2 = Instance.new("UICorner")
local Logger = Instance.new("TextButton")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UICorner_3 = Instance.new("UICorner")
local Close = Instance.new("TextButton")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local UICorner_4 = Instance.new("UICorner")
local Container = Instance.new("Frame")
local Decomps_2 = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local Actions = Instance.new("Frame")
local UIListLayout_3 = Instance.new("UIListLayout")
local Main_2 = Instance.new("TextButton")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local UICorner_5 = Instance.new("UICorner")
local QD = Instance.new("TextButton")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local UICorner_6 = Instance.new("UICorner")
local Bytecode = Instance.new("TextButton")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local UICorner_7 = Instance.new("UICorner")
local Toggles = Instance.new("Frame")
local LR = Instance.new("TextButton")
local Indicator = Instance.new("Frame")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local UICorner_8 = Instance.new("UICorner")
local UIPadding_2 = Instance.new("UIPadding")
local UIListLayout_4 = Instance.new("UIListLayout")
local AS = Instance.new("TextButton")
local Indicator_2 = Instance.new("Frame")
local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
local UICorner_9 = Instance.new("UICorner")
local UIPadding_3 = Instance.new("UIPadding")
local OI = Instance.new("TextButton")
local Indicator_3 = Instance.new("Frame")
local UIAspectRatioConstraint_10 = Instance.new("UIAspectRatioConstraint")
local UICorner_10 = Instance.new("UICorner")
local UIPadding_4 = Instance.new("UIPadding")
local FileName = Instance.new("TextBox")
local UICorner_11 = Instance.new("UICorner")
local UIPadding_5 = Instance.new("UIPadding")
local TextLabel = Instance.new("TextLabel")
local Open = Instance.new("TextButton")

DRLX.Name = "DRLX"
DRLX.Parent = game.CoreGui
DRLX.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = DRLX
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BackgroundTransparency = 0.400
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(1, 0, 1, 0)
Main.Visible = false

Nav.Name = "Nav"
Nav.Parent = Main
Nav.AnchorPoint = Vector2.new(0.5, 1)
Nav.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Nav.BackgroundTransparency = 1.000
Nav.BorderColor3 = Color3.fromRGB(0, 0, 0)
Nav.BorderSizePixel = 0
Nav.Position = UDim2.new(0.5, 0, 0.975000024, 0)
Nav.Size = UDim2.new(0.300000012, 0, 0.100000001, 0)

UIListLayout.Parent = Nav
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0.0199999996, 0)

Decomps.Name = "Decomps"
Decomps.Parent = Nav
Decomps.BackgroundColor3 = Color3.fromRGB(137, 78, 255)
Decomps.BorderColor3 = Color3.fromRGB(0, 0, 0)
Decomps.BorderSizePixel = 0
Decomps.LayoutOrder = 1
Decomps.Size = UDim2.new(1, 0, 1, 0)
Decomps.ZIndex = 7
Decomps.Font = Enum.Font.Oswald
Decomps.Text = "D"
Decomps.TextColor3 = Color3.fromRGB(255, 255, 255)
Decomps.TextScaled = true
Decomps.TextSize = 14.000
Decomps.TextWrapped = true

UIAspectRatioConstraint.Parent = Decomps

UICorner.CornerRadius = UDim.new(0.150000006, 0)
UICorner.Parent = Decomps

Remotes.Name = "Remotes"
Remotes.Parent = Nav
Remotes.BackgroundColor3 = Color3.fromRGB(255, 139, 37)
Remotes.BorderColor3 = Color3.fromRGB(0, 0, 0)
Remotes.BorderSizePixel = 0
Remotes.LayoutOrder = 2
Remotes.Size = UDim2.new(1, 0, 1, 0)
Remotes.ZIndex = 7
Remotes.Font = Enum.Font.Oswald
Remotes.Text = "R"
Remotes.TextColor3 = Color3.fromRGB(255, 255, 255)
Remotes.TextScaled = true
Remotes.TextSize = 14.000
Remotes.TextWrapped = true

UIAspectRatioConstraint_2.Parent = Remotes

UICorner_2.CornerRadius = UDim.new(0.150000006, 0)
UICorner_2.Parent = Remotes

Logger.Name = "Logger"
Logger.Parent = Nav
Logger.BackgroundColor3 = Color3.fromRGB(0, 179, 119)
Logger.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logger.BorderSizePixel = 0
Logger.LayoutOrder = 3
Logger.Size = UDim2.new(1, 0, 1, 0)
Logger.ZIndex = 7
Logger.Font = Enum.Font.Oswald
Logger.Text = "L"
Logger.TextColor3 = Color3.fromRGB(255, 255, 255)
Logger.TextScaled = true
Logger.TextSize = 14.000
Logger.TextWrapped = true

UIAspectRatioConstraint_3.Parent = Logger

UICorner_3.CornerRadius = UDim.new(0.150000006, 0)
UICorner_3.Parent = Logger

Close.Name = "Close"
Close.Parent = Nav
Close.BackgroundColor3 = Color3.fromRGB(255, 52, 52)
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.LayoutOrder = 5
Close.Size = UDim2.new(1, 0, 1, 0)
Close.ZIndex = 7
Close.Font = Enum.Font.Oswald
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true

UIAspectRatioConstraint_4.Parent = Close

UICorner_4.CornerRadius = UDim.new(0.150000006, 0)
UICorner_4.Parent = Close

Container.Name = "Container"
Container.Parent = Main
Container.AnchorPoint = Vector2.new(0.5, 0)
Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Container.BackgroundTransparency = 1.000
Container.BorderColor3 = Color3.fromRGB(0, 0, 0)
Container.BorderSizePixel = 0
Container.Position = UDim2.new(0.5, 0, 0.0500000007, 0)
Container.Size = UDim2.new(0.949999988, 0, 0.800000012, 0)

Decomps_2.Name = "Decomps"
Decomps_2.Parent = Container
Decomps_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Decomps_2.BackgroundTransparency = 1.000
Decomps_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Decomps_2.BorderSizePixel = 0
Decomps_2.Size = UDim2.new(1, 0, 1, 0)

UIListLayout_2.Parent = Decomps_2
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0.0250000004, 0)

UIPadding.Parent = Decomps_2

Actions.Name = "Actions"
Actions.Parent = Decomps_2
Actions.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Actions.BackgroundTransparency = 1.000
Actions.BorderColor3 = Color3.fromRGB(0, 0, 0)
Actions.BorderSizePixel = 0
Actions.Size = UDim2.new(1, 0, 0.25, 0)

UIListLayout_3.Parent = Actions
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0.00999999978, 0)

Main_2.Name = "Main"
Main_2.Parent = Actions
Main_2.BackgroundColor3 = Color3.fromRGB(131, 82, 255)
Main_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main_2.BorderSizePixel = 0
Main_2.LayoutOrder = 1
Main_2.Size = UDim2.new(1, 0, 1, 0)
Main_2.ZIndex = 5
Main_2.Font = Enum.Font.Oswald
Main_2.Text = "MAIN"
Main_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Main_2.TextScaled = true
Main_2.TextSize = 14.000
Main_2.TextWrapped = true

UIAspectRatioConstraint_5.Parent = Main_2

UICorner_5.CornerRadius = UDim.new(0.100000001, 0)
UICorner_5.Parent = Main_2

QD.Name = "QD"
QD.Parent = Actions
QD.BackgroundColor3 = Color3.fromRGB(131, 82, 255)
QD.BorderColor3 = Color3.fromRGB(0, 0, 0)
QD.BorderSizePixel = 0
QD.LayoutOrder = 2
QD.Size = UDim2.new(1, 0, 1, 0)
QD.ZIndex = 5
QD.Font = Enum.Font.Oswald
QD.Text = "QD"
QD.TextColor3 = Color3.fromRGB(255, 255, 255)
QD.TextScaled = true
QD.TextSize = 14.000
QD.TextWrapped = true

UIAspectRatioConstraint_6.Parent = QD

UICorner_6.CornerRadius = UDim.new(0.100000001, 0)
UICorner_6.Parent = QD

Bytecode.Name = "Bytecode"
Bytecode.Parent = Actions
Bytecode.BackgroundColor3 = Color3.fromRGB(255, 162, 32)
Bytecode.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bytecode.BorderSizePixel = 0
Bytecode.LayoutOrder = 3
Bytecode.Size = UDim2.new(1, 0, 1, 0)
Bytecode.ZIndex = 5
Bytecode.Font = Enum.Font.Oswald
Bytecode.Text = "BYTECODE"
Bytecode.TextColor3 = Color3.fromRGB(255, 255, 255)
Bytecode.TextScaled = true
Bytecode.TextSize = 14.000
Bytecode.TextWrapped = true

UIAspectRatioConstraint_7.Parent = Bytecode

UICorner_7.CornerRadius = UDim.new(0.100000001, 0)
UICorner_7.Parent = Bytecode

Toggles.Name = "Toggles"
Toggles.Parent = Decomps_2
Toggles.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggles.BackgroundTransparency = 1.000
Toggles.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggles.BorderSizePixel = 0
Toggles.Size = UDim2.new(1, 0, 0.625, 0)

LR.Name = "LR"
LR.Parent = Toggles
LR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LR.BackgroundTransparency = 1.000
LR.BorderColor3 = Color3.fromRGB(0, 0, 0)
LR.BorderSizePixel = 0
LR.LayoutOrder = 1
LR.Size = UDim2.new(1, 0, 0.150000006, 0)
LR.ZIndex = 5
LR.Font = Enum.Font.Oswald
LR.Text = "Auto-Decompile Latest Room"
LR.TextColor3 = Color3.fromRGB(255, 255, 255)
LR.TextScaled = true
LR.TextSize = 14.000
LR.TextWrapped = true
LR.TextXAlignment = Enum.TextXAlignment.Left

Indicator.Name = "Indicator"
Indicator.Parent = LR
Indicator.BackgroundColor3 = Color3.fromRGB(85, 255, 0)
Indicator.BorderColor3 = Color3.fromRGB(0, 0, 0)
Indicator.BorderSizePixel = 0
Indicator.Position = UDim2.new(-0.0549999997, 0, 0, 0)
Indicator.Size = UDim2.new(1, 0, 1, 0)
Indicator.ZIndex = 4

UIAspectRatioConstraint_8.Parent = Indicator

UICorner_8.CornerRadius = UDim.new(1, 0)
UICorner_8.Parent = Indicator

UIPadding_2.Parent = LR
UIPadding_2.PaddingLeft = UDim.new(0.0549999997, 0)

UIListLayout_4.Parent = Toggles
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_4.Padding = UDim.new(0.0399999991, 0)

AS.Name = "AS"
AS.Parent = Toggles
AS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AS.BackgroundTransparency = 1.000
AS.BorderColor3 = Color3.fromRGB(0, 0, 0)
AS.BorderSizePixel = 0
AS.LayoutOrder = 2
AS.Size = UDim2.new(1, 0, 0.150000006, 0)
AS.ZIndex = 5
AS.Font = Enum.Font.Oswald
AS.Text = "Auto-Skip Rooms [ Admin Panel Required ]"
AS.TextColor3 = Color3.fromRGB(255, 255, 255)
AS.TextScaled = true
AS.TextSize = 14.000
AS.TextWrapped = true
AS.TextXAlignment = Enum.TextXAlignment.Left

Indicator_2.Name = "Indicator"
Indicator_2.Parent = AS
Indicator_2.BackgroundColor3 = Color3.fromRGB(85, 255, 0)
Indicator_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Indicator_2.BorderSizePixel = 0
Indicator_2.Position = UDim2.new(-0.0549999997, 0, 0, 0)
Indicator_2.Size = UDim2.new(1, 0, 1, 0)
Indicator_2.ZIndex = 4

UIAspectRatioConstraint_9.Parent = Indicator_2

UICorner_9.CornerRadius = UDim.new(1, 0)
UICorner_9.Parent = Indicator_2

UIPadding_3.Parent = AS
UIPadding_3.PaddingLeft = UDim.new(0.0549999997, 0)

OI.Name = "OI"
OI.Parent = Toggles
OI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OI.BackgroundTransparency = 1.000
OI.BorderColor3 = Color3.fromRGB(0, 0, 0)
OI.BorderSizePixel = 0
OI.LayoutOrder = 3
OI.Size = UDim2.new(1, 0, 0.150000006, 0)
OI.ZIndex = 5
OI.Font = Enum.Font.Oswald
OI.Text = "Object Immortalizer"
OI.TextColor3 = Color3.fromRGB(255, 255, 255)
OI.TextScaled = true
OI.TextSize = 14.000
OI.TextWrapped = true
OI.TextXAlignment = Enum.TextXAlignment.Left

Indicator_3.Name = "Indicator"
Indicator_3.Parent = OI
Indicator_3.BackgroundColor3 = Color3.fromRGB(85, 255, 0)
Indicator_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Indicator_3.BorderSizePixel = 0
Indicator_3.Position = UDim2.new(-0.0549999997, 0, 0, 0)
Indicator_3.Size = UDim2.new(1, 0, 1, 0)
Indicator_3.ZIndex = 4

UIAspectRatioConstraint_10.Parent = Indicator_3

UICorner_10.CornerRadius = UDim.new(1, 0)
UICorner_10.Parent = Indicator_3

UIPadding_4.Parent = OI
UIPadding_4.PaddingLeft = UDim.new(0.0549999997, 0)

FileName.Name = "FileName"
FileName.Parent = Decomps_2
FileName.BackgroundColor3 = Color3.fromRGB(17, 21, 34)
FileName.BorderColor3 = Color3.fromRGB(0, 0, 0)
FileName.BorderSizePixel = 0
FileName.Size = UDim2.new(1, 0, 0.075000003, 0)
FileName.ZIndex = 6
FileName.Font = Enum.Font.Oswald
FileName.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
FileName.PlaceholderText = "File Name..."
FileName.Text = ""
FileName.TextColor3 = Color3.fromRGB(255, 255, 255)
FileName.TextScaled = true
FileName.TextSize = 14.000
FileName.TextWrapped = true
FileName.TextXAlignment = Enum.TextXAlignment.Left

UICorner_11.CornerRadius = UDim.new(0.300000012, 0)
UICorner_11.Parent = FileName

UIPadding_5.Parent = FileName
UIPadding_5.PaddingLeft = UDim.new(0.0149999997, 0)

TextLabel.Parent = DRLX
TextLabel.AnchorPoint = Vector2.new(0, 1)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.00782064628, 0, 0.985185206, 0)
TextLabel.Size = UDim2.new(0.5, 0, 0, 50)
TextLabel.Visible = false
TextLabel.Font = Enum.Font.Oswald
TextLabel.Text = "exploiting for decompiling/debugging purposes!"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextTransparency = 0.600
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

Open.Name = "Open"
Open.Parent = DRLX
Open.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
Open.BorderColor3 = Color3.fromRGB(0, 0, 0)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0, 0, 0.200000003, 0)
Open.Size = UDim2.new(0, 100, 0, 50)
Open.Font = Enum.Font.Oswald
Open.Text = "OPEN"
Open.TextColor3 = Color3.fromRGB(255, 255, 255)
Open.TextScaled = true
Open.TextSize = 14.000
Open.TextWrapped = true

-- Scripts:

local function MJUO_fake_script() -- DRLX.LocalScript 
	local script = Instance.new('LocalScript', DRLX)

	local RS = game:GetService("ReplicatedStorage")
	
	local m = script.Parent:WaitForChild("Main")
	local c = m:WaitForChild("Container")
	
	script.Parent:WaitForChild("Open").MouseButton1Up:Connect(function()
		m.Visible = true
		script.Parent.Open.Visible = false
	end)
	
	for _, nav: TextButton in m:WaitForChild("Nav"):GetChildren() do
		if nav:IsA("TextButton") then
			nav.MouseButton1Up:Connect(function()
				if nav.Name == "Close" then
					m.Visible = false
					script.Parent.Open.Visible = true
				else
					for _, p: Frame in c:GetChildren() do
						if p:IsA("Frame") then
							p.Visible = p.Name == nav.Name
						end
					end
				end
			end)
		end
	end
	
	local function ts()
		return tostring(os.date("%I-%M-%S"))
	end
	
	local gd = RS:WaitForChild("GameData")
	local Floor = gd:WaitForChild("Floor").Value
	local FloorSpecific = gd:WaitForChild("FloorSpecific").Value
	local MainFolder = Floor .. FloorSpecific .. " - [" .. ts() .. "]"
	local mainpath = MainFolder .. "/"
	
	makefolder(MainFolder)
	
	local folders = {
		Rooms = mainpath .. "_rooms",
		Siderooms = mainpath .. "_siderooms",
		misc = mainpath .. "_misc",
		decomps = mainpath .. "_decomps",
	}
	
	for i, v in folders do
		makefolder(v)
	end
	
	--/ Decomps
	
	local decomps = c:WaitForChild("Decomps")
	
	local decIds = {--[[
		[1] = {
			Name = decFileName,
			Ts = ts(),
			ID = 9999,
		}
	]]}
	
	local function dec(o, dest)
		--local decId = math.random(1, 999999)
		local decFileName = o._Name or (decomps.FileName.Text ~= "" and decomps.FileName.Text) or "unnamed"
		local TS = ts()
		
		--local fileID = decFileName-- .. tostring(decId)
		local FileName = ((o._HeaderName or "") .. decFileName .. " - [" .. TS .. "] (" .. tostring(gd.GameSeed.Value) .. ")")
		local FilePath = ((dest and (dest .. "/")) or mainpath) .. FileName
	
		print("Decompiling " .. FileName)
	
		o.timeout = 16384
		o.FilePath = FilePath
		o.ReadMe = false
	
		local waitTime = o._WaitTime or 0
	
		task.wait(waitTime)
	
		local Params = {
			RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
			SSI = "saveinstance",
		}
		local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()
		synsaveinstance(o)
	
		print("Decompiled " .. FileName)
	
		--[[task.delay(3, function()
			local fileFormat = ((o.Object and ".rbxmx") or ".rbxlx")
			local finalName = FileName .. fileFormat
	
			if isfile(finalName) then
				local data = readfile(finalName)
				local newname = ((o._HeaderName or "") .. decFileName .. " - [" .. TS .. "]")
	
				dest = (dest and (dest .. "/")) or mainpath
	
				writefile(dest .. newname .. fileFormat, data)
				delfile(finalName)
			end
		end)]]
	end
	
	local slowdownRooms = {
		["Hotel_SeekIntro"] = true,
		["Sewer_SeekEnter"] = true
	}
	
	local toggles = {
		LR = true,
		AS = false,
		OI = false,
	}
	
	local slowdownOn = {
		[43] = Floor == "Mines",
		[49] = Floor == "Mines",
		[50] = Floor == "Hotel",
		[99] = Floor == "Mines"
	}
	
	local function skipRoom()
		if not toggles.AS then
			return
		end
		
		local lr = game.ReplicatedStorage.GameData.LatestRoom.Value
		local previousr = workspace.CurrentRooms:FindFirstChild(tostring(lr - 1))
		local nextr = workspace.CurrentRooms:FindFirstChild(tostring(lr + 1))
		local currentr = workspace.CurrentRooms:FindFirstChild(tostring(lr))
	
		task.spawn(function()
			pcall(function()
				require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).chaseMove = false
			end)
		end)
	
		if slowdownOn[lr] then
			task.wait(9)
		end
	
		task.spawn(function()
			pcall(function()
				require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).chaseMove = false
			end)
		end)
	
		game.ReplicatedStorage.RemotesFolder.AdminPanelRunCommand:FireServer("SkipRoom", {})
		game.ReplicatedStorage.RemotesFolder.AdminPanelRunCommand:FireServer("DELETE ALL", {})
	
		task.wait(2)
	
		skipRoom()
	
		if slowdownRooms[currentr:GetAttribute("RawName")] then
			task.wait(10)
		end
	end
	
	local OGToClone = {
		[workspace] = workspace
	}
	
	local function Immortalize(Obj: Instance)
		if toggles.OI == false or OGToClone[Obj] ~= nil or Obj.Parent.Parent == workspace.CurrentRooms or ((Obj.Name == "Assets" or Obj.Name == "Parts") and Obj.Parent == workspace.CurrentRooms) then
			return
		end

		if Obj.Parent:IsA("Camera") or game.Players:GetPlayerFromCharacter(Obj) then
			return
		end
	
		task.delay(0.1, function()
			local TheClone = Obj:Clone()
			local OGParent = Obj.Parent
	
			OGToClone[Obj] = TheClone
	
			local Parented = false 
			local Destroying: RBXScriptConnection
	
			Destroying = Obj:GetPropertyChangedSignal("Parent"):Connect(function()
				if not Obj.Parent then
					if TheClone then
						if not OGParent.Parent then
							OGParent = OGToClone[OGParent]
						end
	
						if OGParent and OGParent.Parent then
							Parented = true
							TheClone.Parent = OGParent
						end
						
						Destroying:Disconnect()
					end
				end
			end)
	
			task.delay(60, function()
				if not Parented then
					pcall(function()
						game.Debris:AddItem(TheClone, 0.1)
						Destroying:Disconnect()
					end)
				end
			end)
		end)
	end
	
	local OI_Connection: RBXScriptConnection
	
	local tActions = {
		AS = function(toggle: boolean)
			if toggle == true then
				game:GetService("ReplicatedStorage"):WaitForChild("RemotesFolder"):WaitForChild("AdminPanelRunCommand"):FireServer("Apply Changes", {
					["Players"] = {},
					["Max Health"] = 1000,
					["Health"] = 1000,
					["Star Shield"] = 0,
					["Speed Boost"] = 30,
					["God Mode"] = true
				})
	
				skipRoom()
			end
		end,
		
		OI = function(toggle: boolean)
			if toggle == true then
				for _, v in workspace:GetDescendants() do
					Immortalize(v)
				end
	
				OI_Connection = workspace.DescendantAdded:Connect(function(desc)
					Immortalize(desc)
				end)
			else
				pcall(function()
					OI_Connection:Disconnect()
				end)
			end
		end,
	}
	
	local dActions = {
		Main = function()
			local o = {}
	
			o.RemovePlayerCharacters = false
			o.IsolatePlayers = true
			o.SavePlayers = true
			o.SaveBytecode = false
			o.noscripts = true
	
			dec(o, folders.decomps)
		end,
	
		QD = function()
			local o = {}
	
			o.RemovePlayerCharacters = false
			o.IsolatePlayers = false
			o.SavePlayers = false
			o.SaveBytecode = false
			o.noscripts = true
			o._HeaderName = "qd"
	
			dec(o, folders.decomps)
		end,
	
		Bytecode = function()
			local o = {}
	
			o.RemovePlayerCharacters = false
			o.IsolatePlayers = true
			o.SavePlayers = true
			o.SaveBytecode = true
			o.noscripts = true
	
			if not isfile(folders.misc .. "/bytecode") then
				makefolder(folders.misc .. "/bytecode")
			end
	
			dec(o, folders.misc .. "/bytecode")
		end,
	}
	
	local function toggleDec(name: string, val: boolean)
		if val == nil then
			val = not toggles[name]
		end
		
		toggles[name] = val
		
		local toggleUI = decomps:WaitForChild("Toggles"):FindFirstChild(name)
		
		toggleUI.Indicator.BackgroundColor3 = val and Color3.fromRGB(85, 255, 0) or Color3.fromRGB(255, 0, 0)
		
		if val == true and tActions[name] then
			tActions[name](val)
		end
	end
	
	for _, toggle in decomps:WaitForChild("Toggles"):GetChildren() do
		if toggle:IsA("TextButton") then
			toggleDec(toggle.Name, toggles[toggle.Name])
			
			toggle.MouseButton1Up:Connect(function()
				toggleDec(toggle.Name)
			end)
		end
	end
	
	for _, action: TextButton in decomps:WaitForChild("Actions"):GetChildren() do
		if action:IsA("TextButton") then
			action.MouseButton1Up:Connect(function()
				if dActions[action.Name] then
					dActions[action.Name]()
				end
			end)
		end
	end
	
	RS.GameData.LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()
		task.spawn(function()
			local nr = workspace.CurrentRooms:WaitForChild(tostring(game.ReplicatedStorage.GameData.LatestRoom.Value) + 1)
	
			task.delay(0.5, function()
				local n = nr:FindFirstChild("PathfindNodes")
	
				if n then
					n = n:Clone()
					n.Name = "PathfindNodes"
					n.Parent = nr
				end
			end)
		end)
		
		if toggles.LR == true then
			local LatestRoom: Model = workspace.CurrentRooms:FindFirstChild(RS.GameData.LatestRoom.Value)
			local o = {}
	
			o.SaveBytecode = true
			o.noscripts = true
			o.mode = "invalid"
			o.DecompileIgnore = {"AntiBridge", "AntiPipeGap"}
			o.Object = LatestRoom
			o._Name = LatestRoom:GetAttribute("RawName")
			o._HeaderName = LatestRoom.Name .. " - "
	
			if LatestRoom then
				dec(o, folders.Rooms)
	
				for _, sideroom in LatestRoom:GetChildren() do
					if sideroom:IsA("Model") and (string.find(sideroom.Name, "Sideroom") or (sideroom:GetAttribute("Weight") and sideroom:GetAttribute("RoomBegin"))) then
						local folderSpecific = isfile(folders.Siderooms .. "/" .. sideroom.Name)
						
						if not folderSpecific then
							makefolder(folders.Siderooms .. "/" .. sideroom.Name)
							folderSpecific = (folders.Siderooms .. "/" .. sideroom.Name)
						end
						
						local o2 = {}
	
						o2.mode = "invalid"
						o2.DecompileIgnore = {"AntiBridge", "AntiPipeGap"}
						o2.Object = sideroom
						o2._Name = sideroom.Name
	
						if sideroom then
							dec(o2, folderSpecific)
						end
					end
				end
			end
		end
	end)
	
	for i, v in workspace.CurrentRooms:GetChildren() do
		task.spawn(function()
			if v:FindFirstChild("Assets") and i <= math.max(game.ReplicatedStorage.GameData.LatestRoom.Value, 1) then
				local o = {}
	
				o.SaveBytecode = true
				o.noscripts = true
				o.mode = "invalid"
				o.DecompileIgnore = {"AntiBridge", "AntiPipeGap"}
				o.Object = v
				o._Name = v:GetAttribute("RawName")
				o._HeaderName = v.Name .. " - "
	
				dec(o, folders.Rooms)
			end
		end)
	end
end
coroutine.wrap(MJUO_fake_script)()
