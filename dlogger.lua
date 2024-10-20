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

-- Main

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
			DeepClone(Desc, Info)
			Desc:SetAttribute("ROOM", findRoom(Desc):GetAttribute("Raw_Name"))
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
	if Object:IsA("Model") and Object.Name == "Repentance" then
		local Time = os.clock()

		task.spawn(function()
			while true do
				if (os.clock() - Time) >= 30 then
					break
				end

				local Crux: Model = Object:Clone()
				Crux.Parent = Repentance

				task.wait(0.5)
			end
		end)
	end
end

workspace.ChildAdded:Connect(WorkspaceAdded)

local function AmbientAdded(Attachment: Attachment)
	task.spawn(function()
		if Attachment:IsA("Attachment") then
			task.delay(0.5, function()
				local Ambience: Sound = Attachment:FindFirstChildOfClass("Sound"):Clone()
				
				Ambience.Parent = Sounds

				pcall(function()
					Ambience:Stop()
					Ambience.TimePosition = 0
				end)
			end)
		end
	end)
end

workspace.Terrain.ChildAdded:Connect(AmbientAdded)
