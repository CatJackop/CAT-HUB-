--[[
    DEOBFUSCATED @ 6VMS
    TIME TAKEN: 31.80s
    MODIFIED BY: 6vf0
]]
local Players
Players = game:GetService("Players")
local n
n = 476987262
local n2
n2 = n + 653397646
local RunService
RunService = game:GetService("RunService")
local UserInputService
UserInputService = game:GetService("UserInputService")
local TweenService
TweenService = game:GetService("TweenService")
local ReplicatedStorage
ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService
HttpService = game:GetService("HttpService")
local GuiService
GuiService = game:GetService("GuiService")
local Workspace
Workspace = game:GetService("Workspace")
local Lighting
Lighting = game:GetService("Lighting")
local localPlayer
localPlayer = Players.LocalPlayer
local currentCamera
currentCamera = workspace.CurrentCamera
local n3, fn, fn2

do
	local SoundService = game:GetService("SoundService")
	local sound = Instance.new("Sound")
	sound.Name = "CAT_HUB_ClickSound"
	n3 = 3480267093
	sound.SoundId = "rbxassetid://138567614125924"
	sound.Volume = 2
	sound.Parent = SoundService
	local sound2 = Instance.new("Sound")
	sound2.Name = "CAT_HUB_UISound"
	sound2.SoundId = "rbxassetid://87697429018110"
	sound2.Volume = 5
	sound2.Looped = true
	sound2.Parent = SoundService

	fn = function()
		pcall(function()
			sound:Play()
		end)
	end

	fn2 = function(arg)
		pcall(function()
			if arg then
				if not sound2.IsPlaying then
					sound2:Play()
				end
			else
				sound2:Stop()
			end
		end)
	end
end

_G.FastAttackEnabled = false
_G.FastAttackRange = 2500
local fn3

do
	local v = nil
	local v2 = nil
	local flag = false

	task.spawn(function()
		for _, descendant in pairs(ReplicatedStorage:GetDescendants()) do
			if descendant:IsA("RemoteEvent") then
				if descendant.Name == "RE/RegisterHit" then
					v = descendant
				elseif descendant.Name == "RE/RegisterAttack" then
					v2 = descendant
				end
			end
		end
	end)

	local function fn4(arg)
		if not v or not v2 then
			return
		end

		pcall(function()
			if not arg or #arg == 0 then
				return
			end
			local tbl = {}

			for _, v3 in pairs(arg) do
				local head = v3:FindFirstChild("Head") or v3:FindFirstChild("HumanoidRootPart")

				if head then
					table.insert(tbl, { v3, head })
				end
			end

			if #tbl == 0 then
				return
			end
			local clamp = math.clamp
			local gShotsPerFrame = _G.G_ShotsPerFrame or 3

			for i = 1, clamp(gShotsPerFrame, 1, 10) do
				v2:FireServer(0)
				v:FireServer(tbl[1][2], tbl)
			end
		end)
	end

	fn3 = function()
		if flag then
			return
		end
		flag = true

		task.spawn(function()
			while _G.FastAttackEnabled do
				task.wait(_G.FastAttackDelay or 0.15)
				local character = localPlayer.Character
				character = character and character:FindFirstChild("HumanoidRootPart")

				if character then
					local tbl = {}
					local gMaxDistance = _G.G_MaxDistance or _G.FastAttackRange or 2500

					if _G.G_AttackPlayers ~= false then
						for _, player in pairs(Players:GetPlayers()) do
							if player ~= localPlayer and player.Character then
								local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
								local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")

								if humanoid and humanoidRootPart and humanoid.Health > 0 and (humanoidRootPart.Position - character.Position).Magnitude <= gMaxDistance then
									table.insert(tbl, player.Character)
								end
							end
						end
					end

					if _G.G_AttackMobs ~= false then
						local enemies = workspace:FindFirstChild("Enemies")

						if enemies then
							for _, child in pairs(enemies:GetChildren()) do
								local humanoid = child:FindFirstChildOfClass("Humanoid")
								local humanoidRootPart = child:FindFirstChild("HumanoidRootPart")

								if humanoid and humanoidRootPart and humanoid.Health > 0 and (humanoidRootPart.Position - character.Position).Magnitude <= gMaxDistance then
									table.insert(tbl, child)
								end
							end
						end
					end

					if #tbl > 0 then
						fn4(tbl)
					end
				end
			end

			flag = false
		end)
	end
end

_G.GunAura_Active = false
_G.G_AttackMobs = true
_G.G_AttackSeaEvents = true
_G.G_AttackPlayers = false
_G.G_MaxDistance = 2500
local tbl, fn4, v

do
	local reShootGunEvent = nil
	local validator2 = nil
	local v2 = nil
	local n4 = 3641569649
	local tbl2 = { v26 = 12, v22 = 13, v25 = 14, v21 = 15, v23 = 16, v24 = 17, v27 = 18 }
	local getupvalue_ = debug.getupvalue or getupvalue
	local setupvalue = debug.setupvalue or setupval
	local getupvalues_ = debug.getupvalues or getupvalues

	local function fn5()
		if reShootGunEvent and validator2 then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:17)")
		end

		pcall(function()
			local modules = ReplicatedStorage:FindFirstChild("Modules")
			modules = modules and modules:FindFirstChild("Net")

			if modules then
				reShootGunEvent = modules:FindFirstChild("RE/ShootGunEvent")
			end

			local remotes = ReplicatedStorage:FindFirstChild("Remotes")

			if remotes then
				validator2 = remotes:FindFirstChild("Validator2")
			end
		end)

		if reShootGunEvent ~= nil then
		end

		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:22)")
	end

	local function fn6()
		pcall(function()
			local controllers = ReplicatedStorage:FindFirstChild("Controllers")
			controllers = controllers and controllers:FindFirstChild("CombatController")

			if controllers then
				local module = require(controllers)

				if type(module) == "table" and module.Attack and getupvalue_ then
					v2 = getupvalue_(module.Attack, 9)
				end
			end
		end)
	end

	local function fn7()
		local n5 = 3837814010
		local n6 = 4094222677

		if not v2 then
			fn6()
		end

		if not v2 or not getupvalues_ or not setupvalue or not getupvalue_ then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:10)")
		end

		local v3 = getupvalues_(v2)

		if not v3 then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:275)")
		end

		local v4 = v3[tbl2.v21]
		local v5 = bit32.band(n5, n6)

		if v4 ~= 727595 then
			for k, v6 in pairs(v3) do
				if v6 == 727595 then
					local n7 = k - 15
					tbl2.v21 = k
					tbl2.v22 = 13 + n7
					tbl2.v23 = 16 + n7
					tbl2.v24 = 17 + n7
					tbl2.v25 = 14 + n7
					tbl2.v26 = 12 + n7
					tbl2.v27 = 18 + n7
					break
				end
			end
		end

		local v6 = getupvalue_(v2, tbl2.v21)
		local v7 = getupvalue_(v2, tbl2.v22)
		local n7 = n6 + v5
		local v8 = getupvalue_(v2, tbl2.v23)
		local v9 = getupvalue_(v2, tbl2.v24)
		local v10 = getupvalue_(v2, tbl2.v25)
		local v11 = getupvalue_(v2, tbl2.v26)
		local v12 = getupvalue_(v2, tbl2.v27)

		for _, v13 in pairs({ v6, v7, v8, v9, v10, v11, v12 }) do
			if type(v13) ~= "number" or v13 ~= v13 or math.abs(v13) == math.huge then
				error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:87)")
			end
		end

		if not (v6 and v7 and v8 and v9 and v10 and v11 and v12) or v8 <= 0 or v9 <= 0 then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:210)")
		end

		local n8 = ((v10 * v7 + v11 * v6) % v8 * v8 + v11 * v7) % v9
		local n9 = math.floor(n8 / v8)
		local n10 = n8 - n9 * v8
		setupvalue(v2, tbl2.v25, n9)
		setupvalue(v2, tbl2.v26, n10)
		setupvalue(v2, tbl2.v27, v12 + 1)
		math.floor(n8 / v9 * 16777215)
		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:202)")
	end

	local function fn8(arg)
		if not (arg:FindFirstChild("HumanoidRootPart") or arg:FindFirstChild("Engine") or arg:FindFirstChild("Head") or arg:FindFirstChild("Base")) then
		end

		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:46)")
	end

	local function fn9()
		local n5 = 2891642263
		local n6 = 3292484376
		local character = localPlayer.Character
		local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

		if not humanoidRootPart then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:1)")
		end

		local gMaxDistance = _G.G_MaxDistance or 2500
		local position = humanoidRootPart.Position

		if _G.G_AttackMobs then
			local v3 = bit32.rshift(n5, 23)
			local enemies = Workspace:FindFirstChild("Enemies")

			if enemies then
				for _, child in ipairs(enemies:GetChildren()) do
					local humanoid = child:FindFirstChildOfClass("Humanoid")
					local v4 = fn8(child)

					if humanoid and humanoid.Health > 0 and v4 then
						local magnitude = (v4.Position - position).Magnitude

						if magnitude < gMaxDistance then
							gMaxDistance = magnitude
						end
					end
				end
			end

			n5 = v3 + 2891641919
		end

		if _G.G_AttackSeaEvents then
			local findFirstChild = Workspace.FindFirstChild

			for _, v3 in ipairs({ Workspace:FindFirstChild("SeaBeasts"), findFirstChild(Workspace, "SeaEvents") }) do
				if v3 then
					for _, child in ipairs(v3:GetChildren()) do
						local humanoid = child:FindFirstChildOfClass("Humanoid")
						local v4 = fn8(child)

						if v4 and (not humanoid or humanoid.Health > 0) then
							local magnitude = (v4.Position - position).Magnitude

							if magnitude < gMaxDistance then
								gMaxDistance = magnitude
							end
						end
					end
				end
			end

			local boats = Workspace:FindFirstChild("Boats")

			if boats then
				for _, child in ipairs(boats:GetChildren()) do
					local humanoid = child:FindFirstChildOfClass("Humanoid")
					local v3 = fn8(child)

					if v3 and (not humanoid or humanoid.Health > 0) then
						local magnitude = (v3.Position - position).Magnitude

						if magnitude < gMaxDistance then
							gMaxDistance = magnitude
						end
					end
				end
			end

			for _, child in ipairs(Workspace:GetChildren()) do
				if child:IsA("Model") and child ~= character then
					local v3 = string.lower(child.Name)

					if string.find(v3, "ship") or string.find(v3, "boat") or string.find(v3, "beast") or string.find(v3, "terror") or string.find(v3, "piranha") or string.find(v3, "leviathan") then
						local humanoid = child:FindFirstChildOfClass("Humanoid")
						local v4 = fn8(child)

						if v4 and (not humanoid or humanoid.Health > 0) then
							local magnitude = (v4.Position - position).Magnitude

							if magnitude < gMaxDistance then
								gMaxDistance = magnitude
							end
						end
					end
				end
			end
		end

		if _G.G_AttackPlayers then
			for _, player in ipairs(Players:GetPlayers()) do
				if player ~= localPlayer and player.Character then
					local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
					local humanoidRootPart2 = player.Character:FindFirstChild("HumanoidRootPart")

					if humanoid and humanoid.Health > 0 and humanoidRootPart2 then
						local magnitude = (humanoidRootPart2.Position - position).Magnitude

						if magnitude < gMaxDistance then
							gMaxDistance = magnitude
						end
					end
				end
			end
		end

		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:284)")
	end

	local tbl3 = { "gun", "rifle", "guitar", "cannon", "bazooka", "slingshot", "flintlock", "kabucha" }

	local function fn10(arg)
		if not arg then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:82)")
		end

		if arg.ToolTip == "Gun" then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:59)")
		end

		if arg:GetAttribute("Type") == "Gun" then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:11)")
		end

		if arg:FindFirstChild("ShootGunEvent") then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:21)")
		end

		local v3 = string.lower(arg.Name)

		for _, v4 in ipairs(tbl3) do
			if string.find(v3, v4) then
				error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 28:38)")
			end
		end

		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 28:20)")
	end

	local n5 = 0
	local n6 = 0.15

	RunService.Heartbeat:Connect(function()
		if not _G.GunAura_Active then
			return
		end
		local now = tick()
		if now - n5 < n6 then
			return
		end
		n5 = now

		pcall(function()
			local n7 = 1569912220
			local n8 = 4147733614
			if not fn5() then
				return
			end
			local character = localPlayer.Character
			character = character and character:FindFirstChildOfClass("Tool")
			if not fn10(character) then
				return
			end
			local v3 = fn9()
			if not (v3 and v3.Parent) then
				return
			end
			local humanoid = (v3:FindFirstAncestorOfClass("Model") or v3.Parent):FindFirstChildOfClass("Humanoid")
			if humanoid and humanoid.Health <= 0 then
				return
			end
			local v4, v5 = fn7()
			if v4 == 0 or not validator2 or not reShootGunEvent then
				_G.GunAura_Active = false
				return
			end
			validator2:FireServer(v4, v5)
			character:SetAttribute("LocalOverheat", 0)
			character:SetAttribute("LocalTotalShots", (character:GetAttribute("LocalTotalShots") or 0) + 1)
			reShootGunEvent:FireServer(v3.Position, { v3 })
		end)
	end)

	tbl = { FileName = "CAT-HUB.json", Data = {} }

	local function fn11(arg)
		tbl.Data = {
			FastAttack = false,
			GunAura = false,
			GunAuraDistance = 2500,
			InfSoru = false,
			InfiniteEnergy = false,
			UnbreakableSkills = false,
			AntiStun = false,
			AntiStunSpeed = 1.7,
			PlayerEsp = false,
			WalkOnWater = false,
			AutoRaceV3 = false,
			AutoRaceV4 = false,
			SpeedEnabled = false,
			DashEnabled = false,
			SpeedValue = 16,
			DashValue = 300,
			FADistance = 2500,
			AimbotSkillsPlayer = false,
			AimbotSkillsNPC = false,
			PlayerTracers = true,
			NPCTracers = true,
			PredictionAmount = 0.2,
			CamlockEnabled = false,
		}
	end

	fn4 = function()
		pcall(function()
			writefile(tbl.FileName, HttpService:JSONEncode(tbl.Data))
		end)
	end

	local function fn12()
		local n7 = 55605919

		local function fn13(...)
			error("devirt: could not lift closure: RecursionError: maximum recursion depth exceeded while calling a Python object")
		end

		n7 = 113687275
		local ok, result = pcall(fn13)

		if ok and typeof(result) == "table" then
			fn11(157590745)

			for k, v3 in pairs(result) do
				tbl.Data[k] = v3
			end

			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:28)")
		end

		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 28:43)")
	end

	v = bit32.band(n4, 1632451132)

	if not fn12(275815501) then
		fn11(157590745)
		fn4()
	end
end

getgenv().Setting = getgenv().Setting or {}
local setting
setting = getgenv().Setting
setting.PredictionAmount = tbl.Data.PredictionAmount or 0.2
setting.MaxDistance = 1000
_G.FastAttackEnabled = tbl.Data.FastAttack or false
_G.FastAttackRange = tbl.Data.FADistance or 2500
_G.GunAura_Active = tbl.Data.GunAura or false
local n4
n4 = n3 + 1130384908
_G.G_MaxDistance = tbl.Data.GunAuraDistance or 2500
getgenv().InfSoru = tbl.Data.InfSoru or false
local n5

do
	local v2 = _G
	local v3 = table.pack(bit32.band(n, 4294967295))
	local v4 = table.pack(bit32.band(v3[1], 65535))
	local v5 = bit32.band(50740 * v4[1] + bit32.lshift(bit32.band(50740 * bit32.rshift(v3[1], 16) + 42758 * v4[1], 65535), 16), 4294967295)
	local v6 = table.pack(bit32.band(bit32.bnot(n), 4294967295))
	local v7 = table.pack(bit32.band(v6[1], 65535))
	n5 = 2669338328 + n2 + v5 + bit32.band(50740 * v7[1] + bit32.lshift(bit32.band(50740 * bit32.rshift(v6[1], 16) + 42758 * v7[1], 65535), 16), 4294967295)
	v2.InfiniteEnergy = tbl.Data.InfiniteEnergy
end

_G.UnbreakableSkills = tbl.Data.UnbreakableSkills
_G.AntiStun = tbl.Data.AntiStun
_G.AntiStunSpeed = tbl.Data.AntiStunSpeed or 1.7
_G.PlayerEsp = tbl.Data.PlayerEsp
_G.WalkOnWater = tbl.Data.WalkOnWater
_G.AutoRaceV3 = tbl.Data.AutoRaceV3
_G.AutoRaceV4 = tbl.Data.AutoRaceV4
local speedEnabled
speedEnabled = tbl.Data.SpeedEnabled
local dashEnabled
dashEnabled = tbl.Data.DashEnabled

if _G.FastAttackEnabled then
	fn3()
end

local fn5

fn5 = function(arg)
	local data = arg:FindFirstChild("Data")

	if data and data:FindFirstChild("Level") then
		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:26)")
	end

	error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:14)")
end

game:GetService("StarterGui"):SetCore("SendNotification", { Title = "CAT HUB", Text = "Config Loaded Successfully!", Duration = 3 })
local screenGui, v2
local playerGui = localPlayer:WaitForChild("PlayerGui")
screenGui = Instance.new("ScreenGui")
screenGui.Name = "CAT_HUB_Custom_UI"
v2 = bit32.band(v, n4)
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.DisplayOrder = 9999
screenGui.Parent = playerGui
local fn6
-- CAT HUB: blur effect removed.
fn6 = function(arg)
	fn2(arg)
end

local image
image = "rbxassetid://121417952916434"
local flag

do
	local viewportSize = currentCamera.ViewportSize
	local flag2 = viewportSize.X > 800

	if flag2 then
		flag = flag2
	else
		local y = viewportSize.Y
		n4 = bit32.lshift(n4, 18) + 894236513
		flag = y > 800
	end
end

local n6, n7, n8, n9, n10, n11, n12, imageLabel, n13, n14
local scrollingFrame, v3

do
	local n15 = flag and 380 or 340
	local n16 = flag and 360 or 320
	n6 = flag and 140 or 120
	n7 = flag and 260 or 230
	n8 = math.floor((n15 - n6) / 2)
	n9 = math.floor((n16 - n7) / 2)
	n10 = 180
	n11 = 50
	n12 = 5
	local n17 = n5 + v2
	imageLabel = Instance.new("ImageLabel")
	imageLabel.Name = "Image"
	imageLabel.Size = UDim2.fromOffset(n15, n16)
	imageLabel.Position = UDim2.new(0, 20, 0, 100)
	imageLabel.BackgroundTransparency = 1
	imageLabel.Image = "rbxassetid://71314361168411"
	imageLabel.ScaleType = Enum.ScaleType.Fit
	imageLabel.Active = true
	imageLabel.ZIndex = 10
	imageLabel.Parent = screenGui
	fn2(imageLabel.Visible)
	local frame = Instance.new("Frame")
	frame.Name = "CreditsFrame"
	local udim2 = UDim2.new
	local n18 = flag and 240 or 210
	n13 = v2 // 40
	frame.Size = udim2(0, n18, 0, 40)
	n14 = n17 + n4
	frame.Position = UDim2.new(0.5, flag and -120 or -105, 0, -46)
	frame.BackgroundColor3 = Color3.new(0.025, 0.022, 0.015)
	frame.BackgroundTransparency = 0.25
	frame.ZIndex = 30
	frame.Parent = imageLabel
	Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 6)
	local uiStroke = Instance.new("UIStroke", frame)
	uiStroke.Thickness = 1
	uiStroke.Color = Color3.new(1, 0.72, 0.12)
	uiStroke.Transparency = 0.3
	local v4 = bit32.bor(n4, 1313181233)
	local textLabel = Instance.new("TextLabel", frame)
	textLabel.Size = UDim2.new(1, 0, 0.5, 0)
	textLabel.BackgroundTransparency = 1
	textLabel.Text = "⚒ Dev : @paradoz_code"
	textLabel.Font = Enum.Font.Jura
	textLabel.TextSize = flag and 11 or 10
	textLabel.TextColor3 = Color3.new(1, 1, 1)
	textLabel.ZIndex = 31
	local textLabel2 = Instance.new("TextLabel", frame)
	textLabel2.Position = UDim2.new(0, 0, 0.5, 0)
	textLabel2.Size = UDim2.new(1, 0, 0.5, 0)
	textLabel2.BackgroundTransparency = 1
	textLabel2.Text = "👑 Owner : Centu Sherman"
	textLabel2.Font = Enum.Font.Jura
	textLabel2.TextSize = flag and 11 or 10
	textLabel2.TextColor3 = Color3.new(1, 0.72, 0.12)
	textLabel2.ZIndex = 31
	scrollingFrame = Instance.new("ScrollingFrame")
	scrollingFrame.Name = "ScrollableRegion1"
	scrollingFrame.Size = UDim2.fromOffset(n6, n7)
	local udim22 = UDim2.fromOffset(imageLabel.Position.X.Offset + n8, imageLabel.Position.Y.Offset + n9)
	v3 = bit32.band(v4, n13)
	scrollingFrame.Position = udim22
end

scrollingFrame.BackgroundTransparency = 1
scrollingFrame.BorderSizePixel = 0
scrollingFrame.ScrollingDirection = Enum.ScrollingDirection.Y
scrollingFrame.ScrollBarThickness = 3
scrollingFrame.ScrollBarImageColor3 = Color3.new(0.72, 0.48, 0.06)
scrollingFrame.ScrollBarImageTransparency = 0.15
scrollingFrame.CanvasSize = UDim2.fromOffset(n6, 900)
scrollingFrame.Active = true
scrollingFrame.ZIndex = 20
scrollingFrame.Parent = screenGui
local uiListLayout = Instance.new("UIListLayout", scrollingFrame)
uiListLayout.Padding = UDim.new(0, 5)
uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder

uiListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	scrollingFrame.CanvasSize = UDim2.fromOffset(n6, uiListLayout.AbsoluteContentSize.Y + 12)
end)

do
	local frame = Instance.new("Frame")
	frame.Name = "AnimatedGlowBorder"
	local n15 = n13 - 2398793837
	frame.BackgroundTransparency = 1
	frame.BorderSizePixel = 0
	frame.ZIndex = 25
	frame.Parent = screenGui
	local tbl2 = {}
	local tbl3 = {}
	local tbl4 = {}
	local tbl5 = {}
	local tbl6 = {}
	local tbl7 = {}
	local tbl8 = {}
	local tbl9 = {}

	local function fn7(name, arg, imageTransparency)
		local imageLabel2 = Instance.new("ImageLabel")
		imageLabel2.Name = name
		imageLabel2.BackgroundTransparency = 1
		imageLabel2.BorderSizePixel = 0
		imageLabel2.Image = image
		imageLabel2.ImageTransparency = imageTransparency
		local scaleType = Enum.ScaleType

		if arg == 439458852 then
		end

		imageLabel2.ScaleType = scaleType.Stretch
		imageLabel2.ZIndex = 26
		imageLabel2.Parent = frame
		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:15)")
	end

	for i = 1, 7 do
		local n16 = (i - 1) * 0.075
		local n17 = 0.03 + n16
		tbl2[i] = fn7("TopA_" .. i, v3 + 378326904, n17)
		local v4 = table.pack(bit32.band(n16, 4294967295))
		local v5 = table.pack(bit32.band(v4[1], 65535))
		local v6 = bit32.band(6752 * v5[1] + bit32.lshift(bit32.band(6752 * bit32.rshift(v4[1], 16) + 61981 * v5[1], 65535), 16), 4294967295)
		local v7 = table.pack(bit32.band(bit32.bnot(n16), 4294967295))
		local v8 = table.pack(bit32.band(v7[1], 65535))
		tbl3[i] = fn7("TopB_" .. i, 4440320776 + v6 + bit32.band(6752 * v8[1] + bit32.lshift(bit32.band(6752 * bit32.rshift(v7[1], 16) + 61981 * v8[1], 65535), 16), 4294967295), n17)
		tbl4[i] = fn7("RightA_" .. i, 378327208, n17)
		tbl5[i] = fn7("RightB_" .. i, 378327208, n17)
		tbl6[i] = fn7("BottomA_" .. i, 378327208, n17)
		tbl7[i] = fn7("BottomB_" .. i, 378327208, n17)
		tbl8[i] = fn7("LeftA_" .. i, v3 - 3916640392, n17)
		tbl9[i] = fn7("LeftB_" .. i, 378327208, n17)
		n14 = n14 + n15 + 2398793529
	end

	local n16 = 0
	local n17 = 0

	RunService.RenderStepped:Connect(function(deltaTime)
		local n18 = 250023293
		local n19 = 962208333

		if not imageLabel.Visible then
			frame.Visible = false
			scrollingFrame.Visible = false
			return
		end

		frame.Visible = true
		scrollingFrame.Visible = true
		local v4 = n6
		local v5 = n7
		local n20 = math.max(v4 - n11, 1)
		local n21 = n19 // n18
		local n22 = math.max(v5 - n11, 1)
		local n23 = n20 + n22 + n20 + n22
		n16 += n10 * deltaTime
		n16 %= n23
		n17 -= n10 * deltaTime
		n17 %= n23
		local v6 = n16
		local n24 = (n17 + 60) % n23
		frame.Position = UDim2.fromOffset(imageLabel.Position.X.Offset + n8, imageLabel.Position.Y.Offset + n9)
		frame.Size = UDim2.fromOffset(v4, v5)
		local n25 = n18 // n21

		for _, v7 in ipairs({ tbl2, tbl3, tbl4, tbl5, tbl6, tbl7, tbl8, tbl9 }) do
			for _, v8 in ipairs(v7) do
				v8.Visible = false
			end
		end

		local n26 = n21 + 64147360

		local function fn8(...)
			error("devirt: could not lift closure: RecursionError: maximum recursion depth exceeded while calling a Python object")
		end

		n26 = 386162534
		fn8(v6, tbl2, tbl4, tbl6, tbl8)
		fn8(n24, tbl3, tbl5, tbl7, tbl9)
		scrollingFrame.Position = UDim2.fromOffset(imageLabel.Position.X.Offset + n8, imageLabel.Position.Y.Offset + n9)
	end)
end

do
	local flag2 = false
	local position = nil
	local position2 = nil

	imageLabel.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			flag2 = true
			position = input.Position
			position2 = imageLabel.Position
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		local n15 = 3805230576
		local n16 = 1854590402
		if not flag2 then
			return
		end
		local n17 = 2353395762
		if input.UserInputType ~= Enum.UserInputType.MouseMovement and input.UserInputType ~= Enum.UserInputType.Touch then
			return
		end
		local n18 = input.Position - position
		imageLabel.Position = UDim2.fromOffset(position2.X.Offset + n18.X, position2.Y.Offset + n18.Y)
		local v4 = scrollingFrame
		local udim2 = UDim2.fromOffset
		local x = imageLabel.Position.X
		bit32.bor(n16, n17)
		v4.Position = udim2(x.Offset + n8, imageLabel.Position.Y.Offset + n9)
	end)

	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			flag2 = false
		end
	end)
end

local fn7

fn7 = function(arg)
	Instance.new("UICorner", arg).CornerRadius = UDim.new(0, 4)
	local uiStroke = Instance.new("UIStroke", arg)
	uiStroke.Thickness = 1
	uiStroke.Color = Color3.new(1, 0.72, 0.12)
	uiStroke.Transparency = 0.6
end

local n15, n16, n17, fn8, fn9

do
	local textButton = Instance.new("ImageButton", screenGui)
	textButton.Name = "MenuToggleBtn"
	textButton.Size = UDim2.fromOffset(48, 48)
	textButton.Position = UDim2.new(0.05, 0, 0.15, 0)
	textButton.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
	textButton.BackgroundTransparency = 0
	textButton.Image = "rbxassetid://126031329785796"
	textButton.ScaleType = Enum.ScaleType.Fit
	textButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
	local v4 = v3
	n15 = n14 + v4
	textButton.ZIndex = 1000
	textButton.Active = true
	fn7(textButton)
	textButton:FindFirstChildOfClass("UICorner").CornerRadius = UDim.new(0, 12)
	local logoStroke = textButton:FindFirstChildOfClass("UIStroke")
	if logoStroke then
		logoStroke.Color = Color3.fromRGB(255, 190, 45)
		logoStroke.Thickness = 2
		logoStroke.Transparency = 0.05
	end
	local flag2 = false
	local position = nil
	local position2 = nil
	local flag3 = false

	textButton.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			flag2 = true
			flag3 = false
			position = input.Position
			position2 = textButton.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					flag2 = false
				end
			end)
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		local state = 1
		local v5, flag4, n18, table_

		while true do
			if state == 1 then
				v5 = input
				flag4 = flag2

				if flag2 then
					state = 2
				else
					state = 4
				end
			elseif state == 2 then
				flag4 = v5.UserInputType == Enum.UserInputType.MouseMovement

				if flag4 then
					state = 4
				else
					state = 3
				end
			elseif state == 3 then
				flag4 = v5.UserInputType == Enum.UserInputType.Touch
				state = 4
			elseif state == 4 then
				if flag4 then
					state = 5
				else
					state = 39
				end
			else
				local flag5

				if state == 5 then
					n18 = v5.Position - position
					local magnitude = n18.Magnitude
					flag5 = magnitude > 5
					table_ = not not magnitude
					state = 6
				elseif state == 6 then
					if X_0 <= 0 then
						state = 9
					else
						state = 7
					end
				elseif state == 7 then
					if Q_0 <= d_0 then
						state = 8
					else
						state = 10
					end
				elseif state == 8 then
					state = 12
				elseif state == 9 then
					if Q_0 >= d_0 then
						state = 11
					else
						state = 10
					end
				elseif state == 10 then
					state = 39
				elseif state == 11 then
					state = 12
				elseif state == 12 then
					if X_0 <= 0 then
						state = 15
					else
						state = 13
					end
				elseif state == 13 then
					if Q_0 <= d_0 then
						state = 14
					else
						state = 16
					end
				elseif state == 14 then
					state = 24
				elseif state == 15 then
					if Q_0 >= d_0 then
						state = 23
					else
						state = 16
					end
				elseif state == 16 then
					if X_0 <= 0 then
						state = 19
					else
						state = 17
					end
				elseif state == 17 then
					if Q_0 <= d_0 then
						state = 18
					else
						state = 20
					end
				elseif state == 18 then
					state = 22
				elseif state == 19 then
					if Q_0 >= d_0 then
						state = 21
					else
						state = 20
					end
				elseif state == 20 then
					return
				elseif state == 21 then
					state = 22
				elseif state == 22 then
					error("devirt: buffer.readu8 failed: offset 55165877..55165878 out of range 101789 (at 228:33)")
				elseif state == 23 then
					state = 24
				elseif state == 24 then
					flag5 = {}

					if X_0 <= 0 then
						state = 27
					else
						state = 25
					end
				elseif state == 25 then
					if Q_0 <= d_0 then
						state = 26
					else
						state = 28
					end
				elseif state == 26 then
					state = 43
				elseif state == 27 then
					if Q_0 >= d_0 then
						state = 42
					else
						state = 28
					end
				elseif state == 28 then
					if X_0 <= 0 then
						state = 31
					else
						state = 29
					end
				elseif state == 29 then
					if Q_0 <= d_0 then
						state = 30
					else
						state = 32
					end
				elseif state == 30 then
					state = 41
				elseif state == 31 then
					if Q_0 >= d_0 then
						state = 40
					else
						state = 32
					end
				elseif state == 32 then
					if X_0 <= 0 then
						state = 35
					else
						state = 33
					end
				elseif state == 33 then
					if Q_0 <= d_0 then
						state = 34
					else
						state = 36
					end
				elseif state == 34 then
					state = 38
				elseif state == 35 then
					if Q_0 >= d_0 then
						state = 37
					else
						state = 36
					end
				else
					local v6

					if state == 36 then
						v6 = upv0
						state = 12
					elseif state == 37 then
						state = 38
					elseif state == 38 then
						(nil).table = table_
						textButton.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n18.X, position2.Y.Scale, position2.Y.Offset + n18.Y)
						state = 39
					elseif state == 39 then
						return
					elseif state == 40 then
						state = 41
					elseif state == 41 then
						v6 = upv0
						state = 6
					elseif state == 42 then
						state = 43
					elseif state == 43 then
						if X_0 <= 0 then
							state = 46
						else
							state = 44
						end
					elseif state == 44 then
						if Q_0 <= d_0 then
							state = 45
						else
							state = 6
						end
					elseif state == 45 then
						state = 43
					elseif state == 46 then
						if Q_0 >= d_0 then
							state = 47
						else
							state = 6
						end
					elseif state == 47 then
						state = 43
					end
				end
			end
		end
	end)

	textButton.MouseButton1Click:Connect(function()
		fn()

		if not flag3 then
			imageLabel.Visible = not imageLabel.Visible
			fn6(imageLabel.Visible)
		end
	end)

	n16 = n6 - 10
	n17 = flag and 24 or 22

	fn8 = function(text, arg, arg2)
		local textButton2 = Instance.new("TextButton", scrollingFrame)
		textButton2.Size = UDim2.new(0, n16, 0, n17)
		textButton2.BackgroundColor3 = Color3.new(0, 0, 0)
		textButton2.BackgroundTransparency = 0.5
		textButton2.Text = text
		textButton2.Font = Enum.Font.Jura
		textButton2.TextSize = flag and 10 or 9
		textButton2.TextColor3 = Color3.new(1, 1, 1)
		textButton2.ZIndex = 21
		fn7(textButton2)
		local n18 = 534572639

		local function fn10(...)
			error("devirt: could not lift closure: RecursionError: maximum recursion depth exceeded while calling a Python object")
		end

		n18 = 420238907
		textButton2.MouseButton1Click:Connect(fn10)
		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:47)")
	end

	fn9 = function(text, arg, arg2, arg3)
		local n18 = 4220771037
		local frame = Instance.new("Frame", scrollingFrame)
		frame.Size = UDim2.new(0, n16, 0, n17)
		frame.BackgroundTransparency = 1
		frame.ZIndex = 21
		local n19 = 2116
		local n20 = math.floor(n16 * 0.7)
		local n21 = n16 - n20 - 4
		local textButton2 = Instance.new("TextButton", frame)
		textButton2.Size = UDim2.new(0, n20, 1, 0)
		textButton2.BackgroundColor3 = Color3.new(0, 0, 0)
		textButton2.BackgroundTransparency = 0.5
		textButton2.Text = text
		textButton2.Font = Enum.Font.Jura
		textButton2.TextSize = flag and 9 or 8
		textButton2.TextColor3 = Color3.new(1, 1, 1)
		textButton2.ZIndex = 21
		fn7(textButton2)
		local textButton3 = Instance.new("TextButton", frame)
		textButton3.Position = UDim2.new(0, n20 + 4, 0, 0)
		textButton3.Size = UDim2.new(0, n21, 1, 0)
		textButton3.BackgroundColor3 = Color3.new(0, 0, 0)
		textButton3.BackgroundTransparency = 0.5
		textButton3.Text = "OFF"
		textButton3.Font = Enum.Font.Jura
		local n22 = n18 + 404139237
		textButton3.TextSize = flag and 9 or 8
		textButton3.TextColor3 = Color3.new(1, 0.31372550129890442, 0.31372550129890442)
		textButton3.ZIndex = 21
		fn7(textButton3)
		local n23 = 534442957



		local function fn10()
			fn()
			local v5 = arg()
			local v6 = textButton3
			v6.Text = v5 and "ON" or "OFF"
			textButton3.TextColor3 = v5 and Color3.new(0, 1, 0.58823531866073608) or Color3.new(1, 0.31372550129890442, 0.31372550129890442)

			if arg3 then
				tbl.Data[arg3] = v5
				fn4()
			end
		end

		n23 = 160021644
		textButton2.MouseButton1Click:Connect(fn10)
		textButton3.MouseButton1Click:Connect(fn10)

		if arg3 and tbl.Data[arg3] then
			textButton3.Text = "ON"
			textButton3.TextColor3 = Color3.new(0, 1, 0.58823531866073608)
		end

		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:126)")
	end

	fn8("Camlock", function()
		local n18 = 1290162613
		local n19 = 149982684
		if screenGui:FindFirstChild("CamLockUI") then
			return
		end
		local camlockEnabled = tbl.Data.CamlockEnabled
		local flag4

		if camlockEnabled then
			flag4 = camlockEnabled
		else
			n19 = bit32.bor(n19, n18) - 1141264417
			flag4 = false
		end

		local n20 = 0.163186
		local v5 = nil
		local n21 = 64181648

		local function fn10(...)
			error("devirt: could not lift closure: RecursionError: maximum recursion depth exceeded while calling a Python object")
		end

		local textButton2 = Instance.new("TextButton", screenGui)
		textButton2.Name = "CamLockUI"
		textButton2.Size = UDim2.new(0, flag and 125 or 110, 0, flag and 32 or 28)
		textButton2.Position = UDim2.new(0.5, flag and -62 or -55, 0.2, 0)
		textButton2.BackgroundColor3 = Color3.new(0, 0, 0)
		textButton2.BackgroundTransparency = 0.4
		textButton2.TextColor3 = Color3.new(1, 1, 1)
		textButton2.Text = flag4 and "Camlock: ON" or "Camlock: OFF"
		textButton2.Font = Enum.Font.Jura
		textButton2.TextSize = flag and 11 or 10
		textButton2.Active = true
		textButton2.Draggable = true
		textButton2.ZIndex = 50
		n21 = 124377511
		Instance.new("UICorner", textButton2).CornerRadius = UDim.new(0, 6)
		local uiStroke = Instance.new("UIStroke", textButton2)
		uiStroke.Thickness = 1.5
		uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		local v6 = nil
		local n22 = 71204677

		local function fn11(...)
			error("devirt: could not lift closure: RecursionError: maximum recursion depth exceeded while calling a Python object")
		end

		n22 = 250109927
		textButton2.MouseButton1Click:Connect(fn11)
	end, v4 - 3892288012)
end

local aimbotSkillsPlayer
aimbotSkillsPlayer = tbl.Data.AimbotSkillsPlayer or false
local playerTracers
playerTracers = tbl.Data.PlayerTracers or false
local v4
v4 = nil
local v5
v5 = nil
local v6, aimbotSkillsNPC, npcTracers, v7, v8, line, line2, fn10, v9, n18

do
	local v10 = nil
	v6 = bit32.band(v3, 1313181537)
	aimbotSkillsNPC = tbl.Data.AimbotSkillsNPC or false
	npcTracers = tbl.Data.NPCTracers or false
	v7 = nil
	v8 = nil
	line = Drawing.new("Line")
	line.Thickness = 2
	line.Color = Color3.new(1, 0.72, 0.12)
	line.Transparency = 1
	line.Visible = false
	line2 = Drawing.new("Line")
	line2.Thickness = 2
	line2.Color = Color3.new(1, 0.66666668653488159, 0)
	line2.Transparency = 1
	line2.Visible = false
	local n19 = 474990162

	local function fn11(...)
		error("devirt: could not lift closure: RecursionError: maximum recursion depth exceeded while calling a Python object")
	end

	local function fn12()
		line2.Visible = false
		line2.From = Vector2.new(0, 0)
		line2.To = Vector2.new(0, 0)
	end

	local function fn13(arg, arg2)
		pcall(function()
			game:GetService("StarterGui"):SetCore("SendNotification", { Title = arg, Text = arg2, Duration = 3 })
		end)
	end

	local function fn14(arg)
		if not arg then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:6)")
		end

		local humanoid = arg.Parent:FindFirstChildOfClass("Humanoid")

		if not humanoid or humanoid.WalkSpeed < 8 then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:18)")
		end

		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 28:15)")
	end

	fn10 = function(arg)
		local playerGui2 = localPlayer:FindFirstChild("PlayerGui")

		if not playerGui2 then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:40)")
		end

		local scrollingFrame2 = playerGui2:FindFirstChild("Main") and playerGui2.Main:FindFirstChild("Allies") and playerGui2.Main.Allies:FindFirstChild("Container") and playerGui2.Main.Allies.Container:FindFirstChild("Allies") and playerGui2.Main.Allies.Container.Allies:FindFirstChild("ScrollingFrame")

		if scrollingFrame2 then
			for _, descendant in ipairs(scrollingFrame2:GetDescendants()) do
				if descendant:IsA("ImageButton") and descendant.Name == arg.Name then
					error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:54)")
				end
			end
		end

		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:93)")
	end

	local function fn15(arg)
		local worldOrigin = workspace:FindFirstChild("_WorldOrigin")
		worldOrigin = worldOrigin and worldOrigin:FindFirstChild("SafeZones")

		if not worldOrigin then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:67)")
		end

		for _, child in ipairs(worldOrigin:GetChildren()) do
			if child:IsA("BasePart") then
				local specialMesh = child:FindFirstChildOfClass("SpecialMesh")

				if (child.Position - arg).Magnitude <= (specialMesh and specialMesh.Scale.X / 2 or 50) then
					error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:43)")
				end
			end
		end

		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:26)")
	end

	local function fn16(arg)
		if not arg or arg == localPlayer then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:14)")
		end

		local v11 = fn10

		if fn10(arg) then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:26)")
		end

		local character = arg.Character
		character = character and character:FindFirstChild("HumanoidRootPart")

		if not character or fn15(character.Position) then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:105)")
		end

		if arg:GetAttribute("PvpDisabled") then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:48)")
		end

		local team = localPlayer.Team
		local team2 = arg.Team
		local v12 = team and team2

		if v12 then
			bit32.bxor(nil, 479)
		end

		if v12 and team2.Name == "Marines" then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:110)")
		end

		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 28:64)")
	end

	local function fn17(arg)
		if not arg then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:123)")
		end

		if not arg then
		end
		;(nil)[nil 
] = nil
		InfiniteEnergy.GunAura = "PlayerEsp"
		error("devirt: symbolic next pc/mode: (r3 Add 1) / 98 (at 98:15)")
	end

	local function fn18(arg)
		if not arg then
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:84)")
		end

		local maxDistance = setting.MaxDistance
		local enemies = workspace:FindFirstChild("Enemies")

		if enemies then
			for _, child in ipairs(enemies:GetChildren()) do
				local humanoid = child:FindFirstChildOfClass("Humanoid")
				local humanoidRootPart = child:FindFirstChild("HumanoidRootPart") or child:FindFirstChild("UpperTorso")

				if humanoid and humanoid.Health > 0 and humanoidRootPart then
					local magnitude = (humanoidRootPart.Position - arg.Position).Magnitude

					if magnitude <= maxDistance then
						maxDistance = magnitude
					end
				end
			end
		end

		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:11)")
	end

	task.spawn(function()
		while task.wait(0.2) do
			if aimbotSkillsPlayer then
				local character = localPlayer.Character
				character = character and character:FindFirstChild("HumanoidRootPart")

				if character then
					local parent = nil

					if v10 then
						parent = v10.Parent
					end

					if parent and fn16(nil) and v10.Character then
						local humanoid = v10.Character:FindFirstChildOfClass("Humanoid")
						local humanoidRootPart = v10.Character:FindFirstChild("HumanoidRootPart")

						if humanoid and humanoid.Health > 0 and humanoidRootPart and (humanoidRootPart.Position - character.Position).Magnitude <= setting.MaxDistance then
							v4 = v10
						else
							v4 = nil
						end
					else
						v4 = fn17(character)
					end
				end
			else
				v4 = nil
			end
		end
	end)

	local n20 = 1313181265

	task.spawn(function()
		while task.wait(0.2) do
			if aimbotSkillsNPC then
				local character = localPlayer.Character
				character = character and character:FindFirstChild("HumanoidRootPart")

				if character then
					v7 = fn18(character)
				end
			else
				v7 = nil
			end
		end
	end)

	local v11 = getrawmetatable(game)
	local namecall = v11.__namecall
	setreadonly(v11, false)

	local function fn19(...)
		error("devirt: could not lift closure: TypeError: %d format: a real number is required, not OpenUps")
	end

	v11.__namecall = newcclosure(fn19)
	setreadonly(v11, true)
	local mouse = ReplicatedStorage:FindFirstChild("Mouse")

	if mouse then
		local module = nil

		pcall(function()
			module = require(mouse)
		end)

		if module and typeof(module) == "table" then
			pcall(function()
				local tbl2 = { Hit = rawget(module, "Hit"), Target = rawget(module, "Target") }
				local tbl3 = getrawmetatable(module)

				if tbl3 then
					setreadonly(tbl3, false)
				else
					tbl3 = {}
					setmetatable(module, tbl3)
				end

				rawset(module, "Hit", nil)
				rawset(module, "Target", nil)

				tbl3.__index = function(arg, arg2)
					if arg2 == "Hit" then
						if aimbotSkillsPlayer and v5 then
							error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:23)")
						end

						if aimbotSkillsNPC and v8 then
							error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:10)")
						end

						error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:32)")
					end

					if arg2 == "Target" then
						if aimbotSkillsPlayer and v5 then
							error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 28:54)")
						end

						if aimbotSkillsNPC and v8 then
							error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 28:74)")
						end

						error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 228:60)")
					end
				end

				tbl3.__newindex = function(arg, arg2, arg3)
					if arg2 == "Hit" or arg2 == "Target" then
						tbl2[arg2] = arg3
					else
						rawset(arg, arg2, arg3)
					end
				end

				setreadonly(tbl3, true)
			end)
		end
	end

	local v12 = nil

	v12 = hookfunction(require(ReplicatedStorage.Modules.CombatUtil).GetTargetPosition, function(arg, arg2, arg3, arg4, ...)
		if aimbotSkillsPlayer and v5 then
			arg3 = v5
		elseif aimbotSkillsNPC and v8 then
			arg3 = v8
		end

		return v12(arg, arg2, arg3, arg4, ...)
	end)

	local heartbeat = RunService.Heartbeat
	local connect = heartbeat.Connect
	n19 = bit32.bxor(n19, 146571209)

	connect(heartbeat, function()
		local n21 = 3833188328
		local n22 = 164075837

		if aimbotSkillsPlayer and v4 and v4.Character then
			local humanoidRootPart = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
			local humanoidRootPart2 = v4.Character:FindFirstChild("HumanoidRootPart")

			if humanoidRootPart and humanoidRootPart2 and (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude <= setting.MaxDistance then
				v5 = fn14(humanoidRootPart2)

				if playerTracers and v5 then
					local n23 = 3988674261
					local v13, v14 = currentCamera:WorldToViewportPoint(humanoidRootPart.Position)
					local v15, v16 = currentCamera:WorldToViewportPoint(v5)

					if v14 and v16 then
						line.From = Vector2.new(v13.X, v13.Y)
						line.To = Vector2.new(v15.X, v15.Y)
						line.Visible = true
					else
						fn11()
					end

					n21 = n23 - 155485933
				else
					fn11()
				end
			else
				v5 = nil
				fn11()
			end
		else
			v5 = nil
			fn11()
		end

		if aimbotSkillsNPC and v7 and v7.Parent then
			local humanoidRootPart = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
			local humanoidRootPart2 = v7:FindFirstChild("HumanoidRootPart") or v7:FindFirstChild("UpperTorso")

			if humanoidRootPart and humanoidRootPart2 and (humanoidRootPart2.Position - humanoidRootPart.Position).Magnitude <= setting.MaxDistance then
				v8 = fn14(humanoidRootPart2)

				if npcTracers and v8 then
					local v13, v14 = currentCamera:WorldToViewportPoint(humanoidRootPart.Position)
					local v15, v16 = currentCamera:WorldToViewportPoint(v8)

					if v14 and v16 then
						line2.From = Vector2.new(v13.X, v13.Y)
						line2.To = Vector2.new(v15.X, v15.Y)
						line2.Visible = true
					else
						fn12()
					end
				else
					fn12()
				end
			else
				v8 = nil
				fn12()
			end
		else
			v8 = nil
			fn12()
		end
	end)

	v9 = bit32.band(v6, n20)

	local function fn20()
		if not aimbotSkillsPlayer and aimbotSkillsNPC then
			fn13("CAT HUB", "Cannot enable Player Aimbot while NPC Aimbot is active!")
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:41)")
		end

		aimbotSkillsPlayer = not aimbotSkillsPlayer
		tbl.Data.AimbotSkillsPlayer = aimbotSkillsPlayer
		fn4()

		if not aimbotSkillsPlayer then
			v4 = nil
			v5 = nil
			fn11()
		end

		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:19)")
	end

	fn9("Player Aim 👤", fn20, v9 - 3890828059, "AimbotSkillsPlayer")

	fn9("Plr Tracer ✏", function()
		playerTracers = not playerTracers
		tbl.Data.PlayerTracers = playerTracers
		fn4()

		if not playerTracers then
			fn11()
		end

		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:12)")
	end, 404139237, "PlayerTracers")

	fn9("NPC Aim 👾", function()
		if not aimbotSkillsNPC and aimbotSkillsPlayer then
			fn13("CAT HUB", "Cannot enable NPC Aimbot while Player Aimbot is active!")
			error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:31)")
		end

		aimbotSkillsNPC = not aimbotSkillsNPC
		tbl.Data.AimbotSkillsNPC = aimbotSkillsNPC
		fn4()

		if not aimbotSkillsNPC then
			v7 = nil
			v8 = nil
			fn12()
		end

		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:18)")
	end, n20 - 909042028, "AimbotSkillsNPC")

	local function fn21()
		npcTracers = not npcTracers
		tbl.Data.NPCTracers = npcTracers
		fn4()

		if not npcTracers then
			fn12()
		end

		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:36)")
	end

	local v13 = table.pack(bit32.band(n, 4294967295))
	local v14 = table.pack(bit32.band(v13[1], 65535))
	local v15 = bit32.band(21696 * v14[1] + bit32.lshift(bit32.band(21696 * bit32.rshift(v13[1], 16) + 6892 * v14[1], 65535), 16), 4294967295)
	local v16 = table.pack(bit32.band(bit32.bnot(n), 4294967295))
	local v17 = table.pack(bit32.band(v16[1], 65535))
	n18 = 4026631382 + n15 + v15 + bit32.band(21696 * v17[1] + bit32.lshift(bit32.band(21696 * bit32.rshift(v16[1], 16) + 6892 * v17[1], 65535), 16), 4294967295)
	fn9("NPC Tracer ✏️", fn21, v9 + 404139237, "NPCTracers")
end

local function toggleFastAttackEnabled()
	_G.FastAttackEnabled = not _G.FastAttackEnabled
	tbl.Data.FastAttack = _G.FastAttackEnabled
	fn4()

	if _G.FastAttackEnabled then
		fn3()
	end

	error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:15)")
end

fn9("Fast Attack", toggleFastAttackEnabled, 404139237, "FastAttack")
local n19, n20, n21, v10, n22, v11, n23, n24, textBox

do
	local frame = Instance.new("Frame", scrollingFrame)
	frame.Name = "FastAttackDistanceFrame"
	frame.Size = UDim2.new(0, n16, 0, n17)
	frame.BackgroundTransparency = 1
	frame.ZIndex = 21
	n19 = math.floor(n16 * 0.6)
	n20 = n16 - n19 - 4
	local textLabel = Instance.new("TextLabel", frame)
	textLabel.Size = UDim2.new(0, n19, 1, 0)
	textLabel.Text = "FA Range:"
	textLabel.Font = Enum.Font.Jura
	textLabel.TextColor3 = Color3.new(1, 1, 1)
	textLabel.TextSize = flag and 9 or 8
	textLabel.BackgroundTransparency = 1
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.ZIndex = 21
	local textBox2 = Instance.new("TextBox", frame)
	textBox2.Size = UDim2.new(0, n20, 0, n17 - 2)
	textBox2.Position = UDim2.new(0, n19 + 4, 0, 1)
	textBox2.BackgroundColor3 = Color3.new(0, 0, 0)
	local v12 = tostring
	n21 = v9 // 5
	local n25 = 2981786030
	textBox2.Text = v12(tbl.Data.FADistance or 2500)
	textBox2.Font = Enum.Font.Jura
	textBox2.TextSize = flag and 9 or 8
	textBox2.TextColor3 = Color3.new(1, 0.72, 0.12)
	textBox2.ZIndex = 21
	fn7(textBox2)

	textBox2.FocusLost:Connect(function()
		_G.FastAttackRange = tonumber(textBox2.Text) or 2500
		tbl.Data.FADistance = _G.FastAttackRange
		fn4()
		textBox2.Text = tostring(_G.FastAttackRange)
	end)

	local function toggleGunAuraActive()
		_G.GunAura_Active = not _G.GunAura_Active
		tbl.Data.GunAura = _G.GunAura_Active
		fn4()
		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 228:5)")
	end

	fn9("Gun Aura", toggleGunAuraActive, 404139237, "GunAura")
	local frame2 = Instance.new("Frame", scrollingFrame)
	frame2.Name = "GunAuraDistanceFrame"
	frame2.Size = UDim2.new(0, n16, 0, n17)
	frame2.BackgroundTransparency = 1
	frame2.ZIndex = 21
	local textLabel2 = Instance.new("TextLabel", frame2)
	textLabel2.Size = UDim2.new(0, n19, 1, 0)
	textLabel2.Text = "Gun Range:"
	textLabel2.Font = Enum.Font.Jura
	textLabel2.TextColor3 = Color3.new(1, 1, 1)
	textLabel2.TextSize = flag and 9 or 8
	textLabel2.BackgroundTransparency = 1
	textLabel2.TextXAlignment = Enum.TextXAlignment.Left
	textLabel2.ZIndex = 21
	local textBox3 = Instance.new("TextBox", frame2)
	textBox3.Size = UDim2.new(0, n20, 0, n17 - 2)
	textBox3.Position = UDim2.new(0, n19 + 4, 0, 1)
	textBox3.BackgroundColor3 = Color3.new(0, 0, 0)
	local v13 = tostring
	local gunAuraDistance = tbl.Data.GunAuraDistance
	v10 = bit32.bor(n25, 593149815)
	textBox3.Text = v13(gunAuraDistance or 2500)
	textBox3.Font = Enum.Font.Jura
	textBox3.TextSize = flag and 9 or 8
	textBox3.TextColor3 = Color3.new(1, 0.72, 0.12)
	textBox3.ZIndex = 21
	local n26 = n21 * 9430
	fn7(textBox3)

	textBox3.FocusLost:Connect(function()
		_G.G_MaxDistance = tonumber(textBox3.Text) or 2500
		tbl.Data.GunAuraDistance = _G.G_MaxDistance
		fn4()
		textBox3.Text = tostring(_G.G_MaxDistance)
	end)

	local flag2 = false

	fn9("Inf Soru", function()
		flag2 = not flag2

		local function fn11(character)
			if not character then
				return
			end

			if flag2 then
				character:SetAttribute("FlashstepCooldown", 0)
			else
				character:SetAttribute("FlashstepCooldown", 2)
			end
		end

		if localPlayer.Character then
			fn11(localPlayer.Character)
		end

		localPlayer.CharacterAdded:Connect(fn11)
		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:24)")
	end, n26 - 3890828059, "InfSoru")

	local connection = nil

	local function fn11()
		local energy = (localPlayer.Character or localPlayer.CharacterAdded:Wait()):WaitForChild("Energy", 10)
		if not energy then
			return
		end

		if connection then
			connection:Disconnect()
		end

		connection = energy.Changed:Connect(function()
			if _G.InfiniteEnergy then
				energy.Value = energy.MaxValue
			end
		end)

		if _G.InfiniteEnergy then
			energy.Value = energy.MaxValue
		end
	end

	local n27 = n26 - 4238571837

	local function fn12(...)
		error("devirt: could not lift closure: RecursionError: maximum recursion depth exceeded while calling a Python object")
	end

	n27 = 478282630
	localPlayer.CharacterAdded:Connect(fn12)
	n22 = n18 + 200412749

	if localPlayer.Character then
		task.spawn(fn11)
	end

	fn9("Inf Energy", function()
		_G.InfiniteEnergy = not _G.InfiniteEnergy
		tbl.Data.InfiniteEnergy = _G.InfiniteEnergy
		fn4()

		if _G.InfiniteEnergy then
			task.spawn(fn11)
		end

		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 66:28)")
	end, 404139237, "InfiniteEnergy")

	fn8("Jump Boost", function()
		local n28 = 2522153385
		local n29 = 452396210
		if screenGui:FindFirstChild("JumpBtn") then
			return
		end
		local textButton = Instance.new("TextButton", screenGui)
		textButton.Name = "JumpBtn"
		textButton.Size = UDim2.new(0, flag and 95 or 85, 0, flag and 30 or 26)
		textButton.Position = UDim2.new(0.5, flag and -47 or -42, 0.8, 0)
		textButton.BackgroundColor3 = Color3.new(0, 0, 0)
		textButton.TextColor3 = Color3.new(1, 0.72, 0.12)
		textButton.Text = "JUMP"
		textButton.Font = Enum.Font.Jura
		textButton.TextSize = flag and 11 or 10
		textButton.Draggable = true
		textButton.ZIndex = 50
		local v14 = table.pack(bit32.band(n28, 4294967295))
		local v15 = table.pack(bit32.band(v14[1], 65535))
		local flag3 = bit32.band(v15[1] * 19009 + bit32.lshift(bit32.band(v15[1] * 0 + bit32.rshift(v14[1], 16) * 19009, 65535), 16), 4294967295) + 276202151 == 385442328
		fn7(textButton)
		local flag4 = false
		local v16 = nil
		local n30 = 278945560

		local function fn13(...)
			error("devirt: could not lift closure: RecursionError: maximum recursion depth exceeded while calling a Python object")
		end

		n30 = 98385206
		textButton.MouseButton1Down:Connect(fn13)
		local n31 = 212921221

		local function fn14(...)
			error("devirt: could not lift closure: RecursionError: maximum recursion depth exceeded while calling a Python object")
		end

		n31 = 112212819
		textButton.MouseButton1Up:Connect(fn14)
	end, n26 - 3892287708)

	fn8("Soru Nearest", function()
		local n28 = 1564214874
		local n29 = 366578073
		if screenGui:FindFirstChild("SoruFloatingBtn") then
			return
		end
		local textButton = Instance.new("TextButton", screenGui)
		textButton.Name = "SoruFloatingBtn"
		textButton.Size = UDim2.new(0, flag and 110 or 95, 0, flag and 30 or 26)
		textButton.Position = UDim2.new(0.5, flag and -55 or -47, 0.8, 0)
		textButton.BackgroundColor3 = Color3.new(0, 0, 0)
		textButton.BackgroundTransparency = 0.4
		textButton.TextColor3 = Color3.new(1, 0.72, 0.12)
		textButton.Text = "SORU NEAREST"
		textButton.Font = Enum.Font.Jura
		textButton.TextSize = flag and 10 or 9
		textButton.Active = true
		textButton.ZIndex = 50
		fn7(textButton)
		local flag3 = nil
		local v14 = nil
		local position = nil
		local position2 = nil
		local flag4 = false
		local n30 = 226655918

		local function fn13(...)
			error("devirt: could not lift closure: RecursionError: maximum recursion depth exceeded while calling a Python object")
		end

		textButton.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				flag3 = true
				flag4 = false
				position = input.Position
				position2 = textButton.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						flag3 = false
					end
				end)
			end
		end)

		local n31 = 79140007

		local function fn14(...)
			error("devirt: could not lift closure: RecursionError: maximum recursion depth exceeded while calling a Python object")
		end

		n30 = 354586977
		n31 = 232280981
		textButton.InputChanged:Connect(fn14)
		local n32 = 102285156

		local function fn15(...)
			error("devirt: could not lift closure: RecursionError: maximum recursion depth exceeded while calling a Python object")
		end

		n32 = 276134094
		UserInputService.InputChanged:Connect(fn15)
		local n33 = 219909011

		local function fn16(...)
			error("devirt: could not lift closure: RecursionError: maximum recursion depth exceeded while calling a Python object")
		end

		n33 = 91961589
		textButton.MouseButton1Click:Connect(fn16)
	end, v10 + 1678075685)

	RunService.RenderStepped:Connect(function()
		local n28 = 1974708995

		if _G.PlayerEsp then
			for _, player in ipairs(Players:GetPlayers()) do
				if player ~= localPlayer and player.Character and player.Character:FindFirstChild("Head") then
					local centuESP = player.Character:FindFirstChild("CentuESP") or Instance.new("BillboardGui", player.Character)
					centuESP.Name = "CentuESP"
					centuESP.Size = UDim2.new(0, 150, 0, 50)
					centuESP.StudsOffset = Vector3.new(0, 2, 0)
					centuESP.AlwaysOnTop = true
					centuESP.Adornee = player.Character.Head
					centuESP.Enabled = true
					local label = centuESP:FindFirstChild("Label") or Instance.new("TextLabel", centuESP)
					label.Name = "Label"
					label.BackgroundTransparency = 1
					label.Size = UDim2.new(1, 0, 1, 0)
					label.Font = Enum.Font.Jura
					label.RichText = true
					label.TextSize = 10
					label.TextStrokeTransparency = 0.4
					label.TextStrokeColor3 = Color3.new(0, 0, 0)
					local n29 = math.floor((player.Character.Head.Position - currentCamera.CFrame.Position).Magnitude)
					local n30 = math.floor(player.Character:FindFirstChildOfClass("Humanoid") and player.Character.Humanoid.Health or 0)
					local str = (player:GetAttribute("PvpDisabled") or false) and "<font color=\"#FF0000\">[PvP OFF]</font>" or "<font color=\"#00FF00\">[PvP ON]</font>"
					label.TextColor3 = player.Team and player.Team.Name == "Marines" and Color3.new(0, 0.13725490868091583, 0.39215686917304993) or Color3.new(0.39215686917304993, 0, 0)
					label.Text = string.format("<b>%s</b> [Lvl %s] %s\n%d HP | %d M", player.Name, tostring(fn5(player)), str, n30, n29)
				end
			end
		else
			for _, player in ipairs(Players:GetPlayers()) do
				local centuESP = player.Character and player.Character:FindFirstChild("CentuESP")

				if centuESP then
					centuESP.Enabled = false
				end
			end
		end
	end)

	fn9("Player ESP", function()
		_G.PlayerEsp = not _G.PlayerEsp
		tbl.Data.PlayerEsp = _G.PlayerEsp
		fn4()
		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 228:13)")
	end, v10 + 1679535334, "PlayerEsp")

	fn9("Unbreak Skills", function()
		_G.UnbreakableSkills = not _G.UnbreakableSkills
		tbl.Data.UnbreakableSkills = _G.UnbreakableSkills
		fn4()
		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 228:5)")
	end, n26 - 3890828059, "UnbreakableSkills")

	local n28 = 285105258

	local function fn13(...)
		error("devirt: could not lift closure: RecursionError: maximum recursion depth exceeded while calling a Python object")
	end

	n28 = 258871608
	fn9("Anti Stun", fn13, 404139237, "AntiStun")
	local frame3 = Instance.new("Frame", scrollingFrame)
	frame3.Name = "AntiStunSpeedFrame"
	frame3.Size = UDim2.new(0, n16, 0, n17)
	frame3.BackgroundTransparency = 1
	local n29 = n26 - 793562564
	frame3.ZIndex = 21
	local n30 = math.floor(n16 * 0.6)
	local n31 = n16 - n30 - 4
	local textLabel3 = Instance.new("TextLabel", frame3)
	textLabel3.Size = UDim2.new(0, n30, 1, 0)
	textLabel3.Text = "Stun Speed:"
	textLabel3.Font = Enum.Font.Jura
	textLabel3.TextColor3 = Color3.new(1, 1, 1)
	textLabel3.TextSize = flag and 9 or 8
	textLabel3.BackgroundTransparency = 1
	textLabel3.TextXAlignment = Enum.TextXAlignment.Left
	textLabel3.ZIndex = 21
	local textBox4 = Instance.new("TextBox", frame3)
	textBox4.Size = UDim2.new(0, n31, 0, n17 - 2)
	textBox4.Position = UDim2.new(0, n30 + 4, 0, 1)
	local n32 = n22 + n29
	textBox4.BackgroundColor3 = Color3.new(0, 0, 0)
	textBox4.Text = tostring(tbl.Data.AntiStunSpeed or 1.7)
	textBox4.Font = Enum.Font.Jura
	textBox4.TextSize = flag and 9 or 8
	local n33 = v10 + n29
	textBox4.TextColor3 = Color3.new(1, 0.72, 0.12)
	textBox4.ZIndex = 21
	fn7(textBox4)

	textBox4.FocusLost:Connect(function()
		_G.AntiStunSpeed = tonumber(textBox4.Text) or 1.7
		tbl.Data.AntiStunSpeed = _G.AntiStunSpeed
		fn4()
		textBox4.Text = tostring(_G.AntiStunSpeed)
	end)

	local function toggleWalkOnWater()
		_G.WalkOnWater = not _G.WalkOnWater
		tbl.Data.WalkOnWater = _G.WalkOnWater
		fn4()
		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 228:13)")
	end

	fn9("Water Walk", toggleWalkOnWater, 404139237, "Water Walk")

	fn9("Auto Race V3", function()
		_G.AutoRaceV3 = not _G.AutoRaceV3
		tbl.Data.AutoRaceV3 = _G.AutoRaceV3
		fn4()
		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 228:5)")
	end, n29 - 3097265495, "AutoRaceV3")

	local function toggleAutoRaceV4()
		_G.AutoRaceV4 = not _G.AutoRaceV4
		tbl.Data.AutoRaceV4 = _G.AutoRaceV4
		fn4()
		error("devirt: value <obfuscators.luraph_v15.devirt.OpenUps object at 0x7f527544ba50> in an expression (at 228:4)")
	end

	v11 = bit32.band(n29, 2253733644)
	fn9("Auto Race V4", toggleAutoRaceV4, 404139237, "AutoRaceV4")
	local frame4 = Instance.new("Frame", scrollingFrame)
	frame4.Size = UDim2.new(0, n16, 0, n17)
	frame4.BackgroundTransparency = 1
	frame4.ZIndex = 21
	n23 = math.floor(n16 * 0.3)
	n24 = n16 - n23 - 4
	textBox = Instance.new("TextBox", frame4)
	textBox.Size = UDim2.new(0, n23, 1, 0)
	local v14 = tostring
	textBox.Text = v14(tbl.Data.SpeedValue or 16)
	textBox.Font = Enum.Font.Jura
	textBox.TextSize = flag and 9 or 8
	textBox.BackgroundColor3 = Color3.new(0, 0, 0)
	textBox.ZIndex = 21
	fn7(textBox)
	local textButton = Instance.new("TextButton", frame4)
	textButton.Size = UDim2.new(0, n24, 1, 0)
	local n34 = n32 + 655051573
	textButton.Position = UDim2.new(0, n23 + 4, 0, 0)
	textButton.Text = speedEnabled and "Speed ON" or "Speed OFF"
	local n35 = n33 // v11
	textButton.Font = Enum.Font.Jura
	textButton.TextSize = flag and 9 or 8
	textButton.BackgroundColor3 = Color3.new(0, 0, 0)
	textButton.ZIndex = 21
	fn7(textButton)
	textButton.TextColor3 = speedEnabled and Color3.new(0, 1, 0.60000002384185791) or Color3.new(1, 0.30000001192092896, 0.30000001192092896)

	textButton.MouseButton1Click:Connect(function()
		fn()
		speedEnabled = not speedEnabled
		tbl.Data.SpeedEnabled = speedEnabled
		fn4()
		textButton.Text = speedEnabled and "Speed ON" or "Speed OFF"
		textButton.TextColor3 = speedEnabled and Color3.new(0, 1, 0.60000002384185791) or Color3.new(1, 0.30000001192092896, 0.30000001192092896)
	end)

	textBox.FocusLost:Connect(function()
		local speedValue = tonumber(textBox.Text) or 16
		tbl.Data.SpeedValue = speedValue
		textBox.Text = tostring(speedValue)
		fn4()
	end)

	local frame5 = Instance.new("Frame", scrollingFrame)
	frame5.Size = UDim2.new(0, n16, 0, n17)
	frame5.BackgroundTransparency = 1
	frame5.ZIndex = 21
	local textBox5 = Instance.new("TextBox", frame5)
	textBox5.Size = UDim2.new(0, n23, 1, 0)
	textBox5.Text = tostring(tbl.Data.DashValue or 300)
	textBox5.Font = Enum.Font.Jura
	local n36 = n34 + n35
	textBox5.TextSize = flag and 9 or 8
	textBox5.BackgroundColor3 = Color3.new(0, 0, 0)
	local n37 = n35 * v11
	textBox5.ZIndex = 21
	fn7(textBox5)
	local textButton2 = Instance.new("TextButton", frame5)
	textButton2.Size = UDim2.new(0, n24, 1, 0)
	textButton2.Position = UDim2.new(0, n23 + 4, 0, 0)
	textButton2.Text = dashEnabled and "Dash ON" or "Dash OFF"
	local font = Enum.Font
	local v15 = table.pack(bit32.band(v11, 4294967295))
	local v16 = table.pack(bit32.band(n37, 4294967295))
	local v17 = table.pack(bit32.band(v15[1], 65535))
	local v18 = table.pack(bit32.rshift(v15[1], 16))
	local v19 = table.pack(bit32.band(v16[1], 65535))
	bit32.band(v17[1] * v19[1] + bit32.lshift(bit32.band(v17[1] * bit32.rshift(v16[1], 16) + v18[1] * v19[1], 65535), 16), 4294967295)
	textButton2.Font = font.Jura
	textButton2.TextSize = flag and 9 or 8
	textButton2.BackgroundColor3 = Color3.new(0, 0, 0)
	textButton2.ZIndex = 21
	fn7(textButton2)
	textButton2.TextColor3 = dashEnabled and Color3.new(0, 1, 0.60000002384185791) or Color3.new(1, 0.30000001192092896, 0.30000001192092896)

	textButton2.MouseButton1Click:Connect(function()
		fn()
		dashEnabled = not dashEnabled
		tbl.Data.DashEnabled = dashEnabled
		fn4()
		textButton2.Text = dashEnabled and "Dash ON" or "Dash OFF"
		textButton2.TextColor3 = dashEnabled and Color3.new(0, 1, 0.60000002384185791) or Color3.new(1, 0.30000001192092896, 0.30000001192092896)
	end)

	textBox5.FocusLost:Connect(function()
		local dashValue = tonumber(textBox5.Text) or 300
		tbl.Data.DashValue = dashValue
		textBox5.Text = tostring(dashValue)
		fn4()
	end)

	RunService.RenderStepped:Connect(function()
		local character = localPlayer.Character
		if not character then
			return
		end
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

		if speedEnabled and humanoid then
			humanoid.WalkSpeed = tonumber(textBox.Text) or tbl.Data.SpeedValue or 16
		end

		if dashEnabled then
			character:SetAttribute("DashLength", tonumber(textBox5.Text) or tbl.Data.DashValue or 300)
		end

		if _G.AntiStun and humanoidRootPart and humanoid and humanoid.MoveDirection.Magnitude > 0 then
			local flag3

			if humanoid.WalkSpeed == 0 then
				flag3 = true
			else
				flag3 = false

				for _, v20 in ipairs(humanoid:GetPlayingAnimationTracks()) do
					if v20.IsPlaying and (v20.Animation.AnimationId:find("attack") or v20.Animation.AnimationId:find("skill")) then
						flag3 = true
						break
					end
				end
			end

			if not flag3 then
				humanoidRootPart.CFrame = humanoidRootPart.CFrame + humanoid.MoveDirection.Unit * (_G.AntiStunSpeed or 1.7)
			end
		end
	end)
end

task.spawn(function()
	while task.wait(0.1) do
		local waterBasePlane = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("WaterBase-Plane")

		if waterBasePlane then
			waterBasePlane.Size = _G.WalkOnWater and Vector3.new(1000, 112, 1000) or Vector3.new(1000, 10, 1000)
		end
	end
end)

task.spawn(function()
	while true do
		task.wait(0.1)

		if _G.UnbreakableSkills and localPlayer.Character then
			pcall(function()
				localPlayer.Character:SetAttribute("UnbreakableAll", true)
			end)
		end
	end
end)

task.spawn(function()
	while task.wait(0.5) do
		if _G.AutoRaceV3 then
			pcall(function()
				ReplicatedStorage.Remotes.CommE:FireServer("ActivateAbility")
			end)

			task.wait(30)
		end

		if _G.AutoRaceV4 then
			pcall(function()
				local v12 = localPlayer
				local v13 = ReplicatedStorage
				local character = v12.Character
				if not character then
					return
				end
				local raceEnergy = character:FindFirstChild("RaceEnergy")
				local raceTransformed = character:FindFirstChild("RaceTransformed")
				if not raceEnergy or raceEnergy.Value < 1 then
					return
				end

				if raceTransformed and raceTransformed.Value then
					return
				end
				local awakening = character:FindFirstChild("Awakening")

				if not awakening then
					awakening = localPlayer:FindFirstChild("Backpack") and v12.Backpack:FindFirstChild("Awakening")
				end

				if awakening and awakening:FindFirstChild("RemoteFunction") then
					pcall(function()
						awakening.RemoteFunction:InvokeServer(true)
					end)
				else
					local activateRaceV4 = ReplicatedStorage:FindFirstChild("Events") and v13.Events:FindFirstChild("ActivateRaceV4")

					if activateRaceV4 then
						activateRaceV4:Fire()
					end
				end
			end)
		end
	end
end)

print("HI KIDDO 🤗🤗🤗👋👋 😘😘😘😘😘😘😘💋💋😘😘 BTW CAT HUB ON TOP 💜❤️💜❤️❤️❤️")
