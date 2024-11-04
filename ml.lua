local floor = game.ReplicatedStorage.GameData.Floor.Value

if not isfile("_misc") then
	makefolder("_misc")
	makefolder("_misc/death_messages [" .. floor .. "]")
	makefolder("_misc/lootholders")
end

local function ts()
	return tostring(os.date("%I-%M-%S"))
end

workspace.DescendantAdded:Connect(function(obj)
	local Options = {}
	local FileName
	
	Options.timeout = 16384
	Options.noscripts = true
	Options.mode = "invalid"
	Options.ReadMe = false
	
	if obj:IsA("BasePart") then
		if obj.Name == "LootHolder" then
			local storage = obj:GetAttribute("Storage") or obj:FindFirstAncestorOfClass("Model"):GetAttribute("Storage") or "default"
			
			if not isfile("_misc/lootholders/" .. storage) then
				makefolder("_misc/lootholders/" .. storage)
			end
			
			Options.FilePath = "_misc/lootholders/" .. storage
			Options.Object = obj
		end
	end
	
	if Options.Object then
		task.wait(0.1)
		
		local Params = {
			RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
			SSI = "saveinstance",
		}
		local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()
		synsaveinstance(Options)
	end
end)

local r = game.ReplicatedStorage.RemotesFolder

r.DeathHint.OnClientEvent:Connect(function(stuff, light)
	local base = {
		"DIED TO : " .. game.Players.LocalPlayer.Character:GetAttribute("DeathCause"),
		"REASON : " .. game.Players.LocalPlayer.Character:GetAttribute("DeathReason"),
		"ROOMNUM : " .. game.ReplicatedStorage.GameData.LatestRoom.Value
	}
	
	local res = table.concat(stuff, "\n")
	
	writefile("_misc/death_messages [" .. floor .. "]/" .. "[" .. ts() .. "]", res)
end)
