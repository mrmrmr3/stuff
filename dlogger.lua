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
NewAttributes.Parent = RoomsData

-- Main

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

game.Players.LocalPlayer.AttributeChanged:Connect(function(Name: string)
	local na = newAttribute(Name)

	if na then
		na.Value = tostring(game.Players.LocalPlayer:GetAttribute(Name))
	end
end)

game.Players.LocalPlayer.Character.AttributeChanged:Connect(function(Name: string)
	local na = newAttribute(Name)

	if na then
		na.Value = tostring(game.Players.LocalPlayer.Character:GetAttribute(Name))
	end
end)

local function DeepClone(Object: Instance, Folder: Folder)
	task.delay(0.5, function()
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

local function DescendantAdded(Desc: BasePart | Instance)
	local Attributes: {[string]: any} = Desc:GetAttributes()
	local Module: string = Attributes.LoadModule

	if Desc:IsA("BasePart") then
		if Desc.CollisionGroup == "BaseCheck" then
			Desc:SetAttribute("ROOM", findRoom(Desc):GetAttribute("Raw_Name"))
			DeepClone(Desc, Info)
		end
	elseif Desc:IsA("Folder") then
		if Desc.Name == "PathfindNodes" then
			DeepClone(Desc, Info)
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

			task.spawn(function()
				while true do
					if (os.clock() - Time) >= 30 or not Object.Parent then
						break
					end

					local Crux: Model = Object:Clone()
					Crux.Parent = Repentance

					task.wait(0.5)
				end
			end)
		elseif string.find(string.lower(Object.Name), "mobble") or string.find(string.lower(Object.Name), "jack") then
			Object.Destroying:Once(function()
				local new = Object:Clone()
				Object.Parent = EntityData
			end)
			
			task.delay(0.1, function()
				if Object then
					local new = Object:Clone()
					Object.Parent = EntityData
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
