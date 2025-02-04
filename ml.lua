local floor = game.ReplicatedStorage.GameData.Floor.Value

if not isfile("_misc") then
	makefolder("_misc")
	makefolder("_misc/lootholders")
end

if not isfile("_misc/death_messages [" .. floor .. "]") then
	makefolder("_misc/death_messages [" .. floor .. "]")
end

local function ts()
	return tostring(os.date("%Y-%m-%d %H-%M-%S"))
end

local lootholders = {}

local lh = Instance.new("Folder", game.ReplicatedStorage.GAME_DATA.Stuff)
lh.Name = "LootHolders"

workspace.DescendantAdded:Connect(function(obj)
	if obj:IsA("BasePart") then
		if obj.Name == "LootHolder" then
			local storage = obj:GetAttribute("Storage") or obj:FindFirstAncestorOfClass("Model"):GetAttribute("Storage") or "default"

			if not isfile("_misc/lootholders/" .. storage) then
				makefolder("_misc/lootholders/" .. storage)
			end
			
			local new = lh:FindFirstChild(storage)
			
			if not new then
				new = Instance.new("Folder")
				new.Parent = lh
				new.Name = storage
				new:SetAttribute("offset", #lh:GetChildren())
			end
			
			task.wait(0.1)
			
			local ob = obj:Clone()
			ob.Parent = new
			ob:PivotTo(CFrame.new(7 * #new:GetChildren(), 0, 10 * new:GetAttribute("offset") or 1))

			table.insert(lootholders, ob)
		end
	end
end)

local r = game.ReplicatedStorage.RemotesFolder
local dm = {
	"DIED TO : " .. (game.Players.LocalPlayer.Character:GetAttribute("DeathCause") or ""),
	"REASON : " .. (game.Players.LocalPlayer.Character:GetAttribute("DeathReason") or ""),
	"ROOMNUM : " .. game.ReplicatedStorage.GameData.LatestRoom.Value,
	"-----------"
}

r.DeathHint.OnClientEvent:Connect(function(stuff, light)
	for _, v in stuff do
		table.insert(dm, v)
	end
	
	table.insert(dm, "-----------")
	
	--[[local res = table.concat(dm, "\n")
	
	writefile("_misc/death_messages [" .. floor .. "]/" .. "[" .. ts() .. "].txt", res)]]
end)

local stringify 
local cache = {}

stringify = function(v, spaces, usesemicolon, depth)
	if type(v) ~= 'table' then
		if type(v) == "string" then
			return tostring(`"{v}"`)
		elseif typeof(v) == "Vector3" then
			return tostring(`Vector3.new({v})`)
		elseif typeof(v) == "Color3" then
			return tostring(`Color3.new({v})`)
		elseif typeof(v) == "CFrame" then
			return tostring(`CFrame.new({v})`)

		elseif typeof(v) == "Vector2" then
			return tostring(`Vector2.new({v})`)

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

		s = s .. ("\n%s[%s] = %s%s"):format(space, thing or ('"%s"'):format(tostring(k)), stringify(x, spaces, usesemicolon, depth + 1), sep)
	end

	return ("%s\n%s}"):format(s:sub(1,-2), space:sub(1, -spaces-1))
end

r.Statistics.OnClientEvent:Connect(function(st, two)
	table.insert(dm, stringify(st))
	table.insert(dm, "-----------")
	
	pcall(function()
		table.insert(dm, stringify(require(game.ReplicatedStorage.ReplicaDataModule).players[game.Players.LocalPlayer.Name].data.DialogueLog))
	end)
	
	local res = table.concat(dm, "\n")

	writefile("_misc/death_messages [" .. floor .. "]/" .. "[" .. ts() .. "].txt", res)
	
	local Options = {}
	local FileName = "lh_" .. floor .. "_" tostring(os.date("%H-%M-%S"))

	Options.timeout = 16384
	Options.noscripts = true
	Options.mode = "invalid"
	Options.ReadMe = false
	Options.Object = lh
	Options.FilePath = "_misc/lootholders/" .. floor .. "/" .. FileName

	task.wait(0.1)
	
	task.spawn(function()
		for _, v in lh:GetChildren() do
			task.spawn(function()
				local o2 = {}
				local fn2 = "lh_" .. v.Name .."_" .. tostring(os.date("%H-%M-%S"))

				o2.timeout = 16384
				o2.noscripts = true
				o2.mode = "invalid"
				o2.ReadMe = false
				o2.Object = lh
				o2.FilePath = "_misc/lootholders/" .. v.Name .. "/" .. fn2

				local Params = {
					RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
					SSI = "saveinstance",
				}
				local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()
				synsaveinstance(o2)
			end)
		end
	end)

	local Params = {
		RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
		SSI = "saveinstance",
	}
	local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()
	synsaveinstance(Options)
end)
