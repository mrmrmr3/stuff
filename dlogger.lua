local Leader: Configuration = Instance.new("Configuration")
Leader.Name = "GAME_DATA"
Leader.Parent = game.ReplicatedStorage

local EntityData: Folder = Instance.new("Folder")
EntityData.Parent = Leader
EntityData.Name = "_ENTITY_DATA"

local Repentance: Folder = Instance.new("Folder")
Repentance.Name = "Repentance"
Repentance.Parent = EntityData

local MiscData: Folder = Instance.new("Folder")
MiscData.Parent = Leader
MiscData.Name = "_MISC_DATA"

local Sounds: Folder = Instance.new("Folder")
Sounds.Name = "Sounds"
Sounds.Parent = MiscData

-- Rooms

local RoomsData: Folder = Instance.new("Folder")
RoomsData.Parent = Leader
RoomsData.Name = "_ROOMS_DATA"

local Misc: Folder = Instance.new("Folder")
Misc.Name = "Misc"
Misc.Parent = RoomsData

local Info: Folder = Instance.new("Folder")
Info.Name = "Info"
Info.Parent = RoomsData

local NewAttributes: Folder = Instance.new("Folder")
NewAttributes.Name = "NewAttributes"
NewAttributes.Parent = Leader

local Stuff: Folder = Instance.new("Folder")
Stuff.Name = "Stuff"
Stuff.Parent = Leader

local Timestamps: Folder = Instance.new("Folder")
Timestamps.Name = "Timestamps"
Timestamps.Parent = Leader

Timestamps:SetAttribute("Time", os.clock())

-- Main

local LocalPlayer = game.Players.LocalPlayer
local Char = LocalPlayer.Character

task.spawn(function()
	game.ReplicatedStorage.GameData.LatestRoom:GetAttributeChangedSignal("Value"):Connect(function()
		local newTs = Instance.new("NumberValue", Timestamps)
		newTs.Name = tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)
		newTs.Value = os.clock()
	end)
	
	task.spawn(function()
		local function wsdescn(Object: Instance)
			if Object:IsA("TriangleMeshPart") or Object:IsA("MeshPart") or Object:IsA("UnionOperation") or Object:IsA("PartOperation") then
				Object:AddTag("d_setcolfid")
				Object:SetAttribute("_colfid", tostring(Object.CollisionFidelity.Name))
			elseif Object:IsA("Sound") then
				if Object.SoundGroup then
					Object:AddTag("d_setsoundgroup")
					Object:SetAttribute("_sfxgroup", Object.SoundGroup.Name)
				end
			end
		end

		workspace.DescendantAdded:Connect(function(Object: Instance)
			wsdescn(Object)
		end)

		for _, v in workspace:GetDescendants() do
			wsdescn(v)
		end
	end)
end)

local attributesIndex = {}
local function newAttribute(Name: string)
	if table.find(attributesIndex, Name) then
		return
	end

	table.insert(attributesIndex, Name)

	local na = Instance.new("StringValue")
	na.Name = Name
	na.Parent = NewAttributes
	na:SetAttribute("Drops", #workspace.Drops:GetChildren())
	na:SetAttribute("Number", game.ReplicatedStorage.GameData.LatestRoom.Value)

	return na
end

LocalPlayer.AttributeChanged:Connect(function(Name: string)
	local na = newAttribute(Name)

	if na then
		na.Value = tostring(LocalPlayer:GetAttribute(Name))
	end
end)

Char.AttributeChanged:Connect(function(Name: string)
	local na = newAttribute(Name)

	if na then
		na.Value = tostring(Char:GetAttribute(Name))
	end
end)

Char.PrimaryPart.ChildAdded:Connect(function(child)
	if child:IsA("Light") then
		local start = os.clock()

		local newchild = child:Clone()
		newchild.Parent = Stuff

		task.delay(0.05, function()
			newchild:SetAttribute("SpeedBoost", Char:GetAttribute("SpeedBoost"))
			newchild:SetAttribute("SpeedBoostExtra", Char:GetAttribute("SpeedBoostExtra"))
			newchild:SetAttribute("StarlightSmall", Char:GetAttribute("StarlightSmall"))
			newchild:SetAttribute("StarlightMedium", Char:GetAttribute("StarlightMedium"))
			newchild:SetAttribute("StarlightHuge", Char:GetAttribute("StarlightHuge"))
			newchild:SetAttribute("LastCandy", Char:GetAttribute("LastCandy"))
		end)

		for i, _ in newchild:GetAttributes() do
			if string.find(i, "Starlight") then
				newchild.Name = i

				break
			end
		end

		child:GetPropertyChangedSignal("Brightness"):Connect(function()
			if child.Brightness == 0 then
				newchild:SetAttribute("Duration", os.clock() - start)

				local new2 = child:Clone()

				new2.Name = "End"
				new2.Parent = newchild
				new2:SetAttribute("SpeedBoost", Char:GetAttribute("SpeedBoost"))
				new2:SetAttribute("SpeedBoostExtra", Char:GetAttribute("SpeedBoostExtra"))
				new2:SetAttribute("StarlightSmall", Char:GetAttribute("StarlightSmall"))
				new2:SetAttribute("StarlightMedium", Char:GetAttribute("StarlightMedium"))
				new2:SetAttribute("StarlightHuge", Char:GetAttribute("StarlightHuge"))
				new2:SetAttribute("LastCandy", Char:GetAttribute("LastCandy"))
			end
		end)
	end
end)

local function DeepClone(Object: Instance, Folder: Folder, Time: number)
	task.delay(Time or 0.5, function()
		local Object1: Instance = Object:Clone()
		Object1.Parent = Folder or Misc
	end)
end

local function findRoom(base)
	for _, v in workspace.CurrentRooms:GetChildren() do
		if base:IsDescendantOf(v) then
			return v
		end
	end
end

local RepCache = {}

local function CheckForRpntc(Object: Instance)
	if Object:IsA("Model") then
		if string.find(Object.Name, "Repentance") then
			local Time = os.clock()
			local Index = 0
			local NewRep = Instance.new("Folder")
			local Cancel = false

			NewRep.Parent = Repentance

			task.delay(0.2, function()
				local Entity: BasePart = Object:FindFirstChild("Entity", true)

				if Entity and Entity:IsA("BasePart") then
					local firstEntity = Entity:GetChildren()[1] and Entity:GetChildren()[1].Name

					if workspace:FindFirstChild("SeekMoving", true) then
						firstEntity = workspace:FindFirstChild("SeekMoving", true) and "Seek"
					elseif game.CollectionService:GetTagged("FigureRig")[1] then
						firstEntity = game.CollectionService:GetTagged("FigureRig")[1] and "Figure"
					elseif game.ReplicatedStorage.GameData.Floor.Value == "Mines" and game.ReplicatedStorage.GameData.LatestRoom.Value == 100 then
						firstEntity = "SeekDam"
					end

					if not firstEntity then
						firstEntity = "Unknown"
					end

					if RepCache[firstEntity] then
						Cancel = true
					end

					RepCache[firstEntity] = (RepCache[firstEntity] or 0) + 1
					NewRep.Name = `{firstEntity}_{tostring(RepCache[firstEntity] or 0)}`
				end
			end)

			task.spawn(function()
				while true do
					if (os.clock() - Time) >= 30 or not Object.Parent or Cancel then
						if Cancel == true then
							NewRep:Destroy()
						end

						break
					end

					Index += 1

					local Crux: Model = Object:Clone()
					Crux.Name = "Repentance" .. Index
					Crux.Parent = NewRep

					task.wait(0.1)
				end
			end)
		end
	end
end

local function DescendantAdded(Object: BasePart | Instance)
	local Attributes: {[string]: any} = Object:GetAttributes()
	local Module: string = Attributes.LoadModule

	if Object:IsA("BasePart") then
		if Object.CollisionGroup == "BaseCheck" then
			task.delay(1, function()
				Object:SetAttribute("ROOM", findRoom(Object):GetAttribute("Raw_Name"))
				DeepClone(Object, Info, 0)
			end)
		end
	elseif Object:IsA("Folder") then
		if Object.Name == "PathfindNodes" then
			DeepClone(Object, Info)
		end
	elseif Object:IsA("Model") then
		CheckForRpntc(Object)
	elseif string.find(string.lower(Object.Name), "mobble") or string.find(string.lower(Object.Name), "jack") then
		Object.Destroying:Once(function()
			local new = Object:Clone()
			Object.Parent = EntityData
		end)

		for i = 0, 5 do
			task.spawn(function()
				DeepClone(Object, EntityData, i / 10)
			end)
		end
	end
end

local function RoomAdded(Room: Model)
	if Room:IsA("Model") then
		Room.DescendantAdded:Connect(function(desc)
			pcall(function()
				DescendantAdded(desc)
			end)
		end)
	end
end

workspace.CurrentRooms.ChildAdded:Connect(RoomAdded)

local function WorkspaceAdded(Object: Instance)
	if Object:IsA("Model") then
		CheckForRpntc(Object)
	end
end

workspace.ChildAdded:Connect(WorkspaceAdded)

local function AmbientAdded(Attachment: Attachment)
	task.spawn(function()
		if Attachment:IsA("Attachment") then
			task.delay(0.5, function()
				local Sound: Sound = Attachment:FindFirstChildOfClass("Sound")

				if Sound then
					for _, S: Sound in Sounds:GetChildren() do
						if S.SoundId == Sound.SoundId then
							return
						end
					end

					local Ambience: Sound = Sound:Clone()

					Ambience.Parent = Sounds

					pcall(function()
						Ambience:Stop()
						Ambience.TimePosition = 0
					end)
				end
			end)
		end
	end)
end

workspace.Terrain.ChildAdded:Connect(AmbientAdded)
