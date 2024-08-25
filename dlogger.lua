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

local Keys: Folder = Instance.new("Folder")
Keys.Name = "Keys"
Keys.Parent = RoomsData

local Misc: Folder = Instance.new("Folder")
Misc.Name = "Misc"
Misc.Parent = RoomsData

local Levers: Folder = Instance.new("Folder")
Levers.Name = "Levers"
Levers.Parent = RoomsData

local Info: Folder = Instance.new("Folder")
Info.Name = "Info"
Info.Parent = RoomsData

-- Main

local function DeepClone(Object: Instance, Folder: Folder)
	Object.Destroying:Connect(function()
		local Object1: Instance = Object:Clone()
		Object1.Parent = Folder or Misc
	end)
end

local function DescendantAdded(Desc: BasePart | Instance)
	local Attributes: {[string]: any} = Desc:GetAttributes()
	local Module: string = Attributes.LoadModule
	
	if Module == "KeyObtain" or Attributes.IsKey then
		DeepClone(Desc, Keys)
	elseif (Module == "TimerLever" or Desc.Name == "TimerLever") or Module == "AffectGate" then
		DeepClone(Desc, Levers)
	elseif Desc:IsA("BasePart") then
		if Desc.CollisionGroup == "BaseCheck" then
			DeepClone(Desc, Info)
		end
	elseif Desc:IsA("BoolValue") and Desc.Name == "NearElevator" then
		Desc:GetPropertyChangedSignal("Value"):Connect(function()
			if Desc.Value == true then
				local Figure: Model = workspace:FindFirstChild("Figure", true)
				local ElevatorCar: Model = workspace:FindFirstChild("ElevatorCar", true)
				local Distance: Vector3 = (Figure:GetPivot().Position - ElevatorCar:GetPivot().Position)
				
				warn("[X] NearElevator.Value |", Distance.Magnitude, "|", Distance)
				
				RoomsData:SetAttribute("NearElevator", Distance)
			end
		end)
	elseif Desc:IsA("Folder") then
		if Desc.Name == "PathfindNodes" then
			DeepClone(Desc, Info)
		end
	end
end

local function RoomAdded(Room: Model)
	if Room:IsA("Model") then
		Room.DescendantAdded:Connect(DescendantAdded)
	else
		warn("[X] Foreign Instance", Room)
	end
end

workspace.CurrentRooms.ChildAdded:Connect(RoomAdded)

local function WorkspaceAdded(Object: Instance)
	if Object:IsA("Model") and Object.Name == "Repentance" then
		local Time = os.clock()
		
		task.spawn(function()
			while true do
				if (os.clock() - Time) >= 20 then
					break
				end
				
				local Crux: Model = Object:Clone()
				Crux.Parent = Repentance
				
				task.wait(0.1)
			end
		end)
	end
end

workspace.ChildAdded:Connect(WorkspaceAdded)

local function AmbientAdded(Attachment: Attachment)
	task.spawn(function()
		if Attachment:IsA("Attachment") then
			Attachment.Destroying:Connect(function()
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
