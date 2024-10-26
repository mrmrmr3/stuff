local function dec(o)
	local prms = {
		RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
		SSI = "saveinstance",
	}
	local synsaveinstance = loadstring(game:HttpGet(prms.RepoURL .. prms.SSI .. ".luau", true), prms.SSI)()
	synsaveinstance(o)
end

local function ts()
	return tostring(os.date("%I-%M-%S"))
end

local fl = string.lower(tostring(game.ReplicatedStorage.GameData.Floor.Value))
local gs = tostring(game.ReplicatedStorage.GameData.GameSeed.Value)
local fs = tostring(game.ReplicatedStorage.GameData.FloorSpecific.Value)

if fs == "Default" then
	fs = ""
end

if not isfile("_rooms") then
	makefolder("_rooms")
end

local flts = ts()
local fpmain = "_rooms/" .. (fl .. fs .. " - [" .. flts .. "] - [" .. gs .. "]")

makefolder(fpmain)

local function decoroom(lr)
	task.spawn(function()
		if fl == "Backdoor" then
			task.wait(0.5)
		end

		local fn = tostring(lr.Name) .. " - " .. lr:GetAttribute("RawName") .. " - [" .. ts() .. "]"
		local fp = fpmain .. "/" .. fn

		local o = {}

		o.timeout = 16384
		o.noscripts = true
		o.mode = "invalid"
		o.ReadMe = false

		o.FilePath = fp
		o.Object = lr

		if o.Object then
			dec(o)

			task.spawn(function()
				if not isfile("_siderooms") then
					makefolder("_siderooms")
				end

				if not isfile("_siderooms/" .. fl) then
					makefolder("_siderooms/" .. fl)
				end

				for _, sr in lr:GetChildren() do
					if sr.Name == "Sideroom" then
						local siz = tostring(sr:GetAttribute("Weight"))
						local bv = sr:GetExtentsSize()

						if bv.X > 50 and bv.Z > 50 then
							siz = "Big"
						elseif bv.Y > 40 then
							siz = "Tall"
						elseif bv.Z > 40 then
							siz = "Long"
						elseif bv.Z > 50 then
							siz = "Wide"
						end

						local fn2 = "Sideroom" .. siz .. " - [" .. ts() .. "]"
						local fp2 = "_siderooms/" .. fl .. "/" .. fn2
						local o2 = {}

						o2.timeout = 16384
						o2.noscripts = true
						o2.mode = "invalid"
						o2.ReadMe = false

						o2.FilePath = fp2
						o2.Object = sr

						dec(o2)
					end
				end
			end)
		end
	end)
end

for i, v in workspace.CurrentRooms:GetChildren() do
	task.spawn(function()
		if v:FindFirstChild("Assets") and i <= math.max(game.ReplicatedStorage.GameData.LatestRoom.Value, 1) then
			decoroom(v)
		end
	end)
end

game.ReplicatedStorage.GameData.LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()
	task.spawn(function()
		local nr = workspace.CurrentRooms:WaitForChild(tostring(game.ReplicatedStorage.GameData.LatestRoom.Value) + 1)

		task.delay(1, function()
			local n = nr:FindFirstChild("PathfindNodes")

			if n then
				n = n:Clone()
				n.Name = "PathfindNodes"

				task.delay(0.5, function()
					n.Parent = nr
				end)
			end
		end)
	end)

	local lr = workspace.CurrentRooms:FindFirstChild(tostring(game.ReplicatedStorage.GameData.LatestRoom.Value))

	if lr then
		if decoroom(lr) == true then
			
		end
	end
end)
