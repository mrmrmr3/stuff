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
		local newTs = Instance.new("NumberValue")
		newTs.Name = tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)
		newTs.Parent = Timestamps
		newTs.Value = os.clock()
	end)

	workspace.DescendantAdded:Connect(function(Object: Instance)
		if Object:IsA("TriangleMeshPart") or Object:IsA("MeshPart") or Object:IsA("UnionOperation") or Object:IsA("PartOperation") then
			Object:AddTag("d_setcolfid")
			Object:SetAttribute("_colfid", tostring(Object.CollisionFidelity.Name))
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

local function DescendantAdded(Object: BasePart | Instance)
	local Attributes: {[string]: any} = Object:GetAttributes()
	local Module: string = Attributes.LoadModule

	if Object:IsA("BasePart") then
		if Object.CollisionGroup == "BaseCheck" then
			pcall(function()
				Object:SetAttribute("ROOM", findRoom(Object):GetAttribute("Raw_Name"))
			end)
			
			DeepClone(Object, Info)
		end
	elseif Object:IsA("Folder") then
		if Object.Name == "PathfindNodes" then
			DeepClone(Object, Info)
		end
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
		Room.DescendantAdded:Connect(DescendantAdded)
	end
end

workspace.CurrentRooms.ChildAdded:Connect(RoomAdded)

local function WorkspaceAdded(Object: Instance)
	if Object:IsA("Model") then
		if Object.Name == "Repentance" then
			local Time = os.clock()
			local Index = 0

			task.spawn(function()
				while true do
					if (os.clock() - Time) >= 30 or not Object.Parent then
						break
					end
					
					Index += 1

					local Crux: Model = Object:Clone()
					Crux.Name = "Repentance" .. Index
					Crux.Parent = Repentance

					task.wait(0.5)
				end
			end)
		end
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
