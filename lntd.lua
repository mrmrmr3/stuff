if not isfile("_items") then
	makefolder("_items")
	makefolder("_items/loot")
	makefolder("_items/items")
end

local cache = {}

local function ts()
	return tostring(os.date("%I-%M-%S"))
end

workspace.DescendantAdded:Connect(function(obj)
	--if obj:IsDescendantOf(workspace.CurrentRooms) then return end
	--if obj:IsDescendantOf(game.Players.LocalPlayer.Character) then return end
	
	if obj:IsDescendantOf(workspace.Drops) then
		task.wait(0.5)
		
		if game.Players.LocalPlayer:GetAttribute("Alive") == true then
			return
		end
	end
	
	local Options = {}
	local FileName
	
	Options.timeout = 16384
	Options.noscripts = true
	Options.mode = "invalid"
	Options.ReadMe = false
	
	if obj:GetAttribute("Pickup") and ((cache["loot_" .. obj.Name] or 0) < 20) and not cache[obj] then
		FileName = obj:GetAttribute("Pickup") .. " - [" .. tostring(os.date("%I-%M-%S")) .. "]"

		Options.FilePath = "_items/loot/" .. FileName
		Options.Object = obj
		
		if obj.Name ~= "Candy" then
			cache["loot_" .. obj.Name] = (cache["loot_" .. obj.Name] or 0) + 1 
		end
		
		obj = obj:Clone()
		
		game.Debris:AddItem(obj, 30)
		
		task.wait(0.1)
	end
	
	if Options.Object then
		local Params = {
			RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
			SSI = "saveinstance",
		}
		local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()
		synsaveinstance(Options)
	end
end)

game.Players.LocalPlayer.Backpack.ChildAdded:Connect(function(item)
	if cache[item] or ((cache["tool_" .. item.Name] or 0) >= 20) then
		return
	end
	
	cache[item] = true
	
	if item.Name ~= "Candy" then
		cache["tool_" .. item.Name] = (cache["tool_" .. item.Name] or 0) + 1 
	end
	
	item = item:Clone()

	game.Debris:AddItem(item, 30)
	
	task.delay(0.1, function()
		local FileName = item.Name .. " - [" .. tostring(os.date("%I-%M-%S")) .. "]"
		local FilePath = "_items/items/" .. FileName
		
		local Options = {}

		Options.timeout = 16384
		Options.noscripts = true
		Options.mode = "invalid"
		Options.ReadMe = false
		Options.SaveBytecode = true
		
		Options.FilePath = FilePath
		Options.Object = item

		if Options.Object then
			local Params = {
				RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
				SSI = "saveinstance",
			}
			local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()
			synsaveinstance(Options)
		end
	end)
end)
