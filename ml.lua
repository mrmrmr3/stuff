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
			
			task.wait(0.1)
			
			local ob = obj:Clone()
			ob.Parent = lh
			ob:PivotTo(CFrame.new(7 * #lootholders, 0, 0))

			table.insert(lootholders, ob)
		end
	end
end)

local r = game.ReplicatedStorage.RemotesFolder

r.DeathHint.OnClientEvent:Connect(function(stuff, light)
	local base = {
		"DIED TO : " .. game.Players.LocalPlayer.Character:GetAttribute("DeathCause"),
		"REASON : " .. game.Players.LocalPlayer.Character:GetAttribute("DeathReason"),
		"ROOMNUM : " .. game.ReplicatedStorage.GameData.LatestRoom.Value,
		"-----------"
	}
	
	for _, v in stuff do
		table.insert(base, v)
	end
	
	local res = table.concat(base, "\n")
	
	writefile("_misc/death_messages [" .. floor .. "]/" .. "[" .. ts() .. "].txt", res)
end)

game.Players.LocalPlayer.Character:GetAttributeChangedSignal("Alive"):Connect(function()
	if game.Players.LocalPlayer.Character:GetAttribute("Alive") ~= true then
		local Options = {}
		local FileName = tostring(os.date("%H-%M-%S"))

		Options.timeout = 16384
		Options.noscripts = true
		Options.mode = "invalid"
		Options.ReadMe = false
		Options.Object = lh
		Options.FilePath = "_misc/lootholders/" .. floor .. "/" ..FileName

		task.wait(0.1)

		local Params = {
			RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
			SSI = "saveinstance",
		}
		local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()
		synsaveinstance(Options)
	end
end)
