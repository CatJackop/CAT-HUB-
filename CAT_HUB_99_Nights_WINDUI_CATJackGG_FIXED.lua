-- CAT HUB | 99 Nights in the Forest
-- Branding: CATJack.gg
-- WindUI interface conversion

local t1 = {}
local t2 = {}

local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local Window = WindUI:CreateWindow({
    Title = "CAT HUB | 99 Nights",
    Icon = "rbxassetid://126031329785796",
    Author = "CATJack.gg",
    Folder = "CATHUB_99Nights",
    Theme = "Dark",
    ToggleKey = Enum.KeyCode.RightControl,
    Resizable = true,
})

Window:Tag({
    Title = "CAT HUB",
    Color = Color3.fromHex("#F5C542"),
})

local ESPTab = Window:Tab({ Title = "ESP", Icon = "eye" })
local TeleportTab = Window:Tab({ Title = "Teleport", Icon = "map-pin" })
local ItemsTab = Window:Tab({ Title = "Bring Items", Icon = "package" })
local HitboxTab = Window:Tab({ Title = "Hitbox", Icon = "scan" })
local MiscTab = Window:Tab({ Title = "Misc", Icon = "settings" })

local function addToggle(tab, name, default, callback)
    return tab:Toggle({ Title = name, Value = default, Callback = callback })
end

local function addButton(tab, name, callback)
    return tab:Button({ Title = name, Callback = callback })
end

local function addSlider(tab, name, min, max, default, suffix, callback)
    return tab:Slider({
        Title = name,
        Step = 1,
        Value = { Min = min, Max = max, Default = default },
        Suffix = suffix,
        Callback = callback,
    })
end

t2.value1 = game:GetService("Players")
t2.value2 = t2.value1.LocalPlayer
t2.value3 = workspace.CurrentCamera
local RunService = game:GetService("RunService")

t2.value4 = {}
t2.value5 = {}
local color3 = Color3.fromRGB(255, 255, 255)
local vector2 = Vector2.new(60, 6)

t2.value6 = {
	PlayerESP = false,
	Fairy = false,
	Wolf = false,
	Bunny = false,
	Cultist = false,
	CrossBow = false,
	PeltTrader = false,
	NameColor = color3,
	NameSize = 16,
	HPBarSize = vector2
}
local function v16(p1, p2)
    local v27 = p1:FindFirstChild("Head") or p1:FindFirstChildWhichIsA("BasePart")

    if not v27 then
        return
    end

    local drawing = Drawing.new("Text")

    drawing.Size = t2.value6.NameSize
    drawing.Center = true
    drawing.Outline = true
    drawing.Color = t2.value6.NameColor
    drawing.Visible = false

    local drawing2 = Drawing.new("Square")

    drawing2.Color = Color3.fromRGB(0, 0, 0)
    drawing2.Thickness = 1
    drawing2.Filled = true
    drawing2.Transparency = 0.7
    drawing2.Visible = false

    local drawing3 = Drawing.new("Square")

    drawing3.Color = Color3.fromRGB(0, 255, 0)
    drawing3.Thickness = 1
    drawing3.Filled = true
    drawing3.Transparency = 0.9
    drawing3.Visible = false
    t2.value4[p1] = {
		head = v27,
		model = p1,
		name = drawing,
		hpBar = drawing3,
		hpBack = drawing2,
		label = p2
	}
end
RunService.RenderStepped:Connect(function()
    local vector2_2 = Vector2.new(t2.value3.ViewportSize.X / 2, t2.value3.ViewportSize.Y)

    for _, v in ipairs(t2.value5) do
        v:Remove()
    end

    table.clear(t2.value5)

    for k, v in pairs(t2.value4) do
        local v38 = k
        local v39 = v38
        local head = v.head

        if v38 then
            v39 = head

            if head then
                v39 = v38.Parent

                if v39 then
                    v39 = head:IsDescendantOf(workspace)
                end
            end
        end

        if v39 then
            local player = t2.value1:GetPlayerFromCharacter(v38)
            local v42 = false
            local v43 = player
            local s1 = ""

            if player then
                v43 = t2.value6.PlayerESP
            end

            if v43 then
                local v45 = math.floor((t2.value3.CFrame.Position - head.Position).Magnitude)

                s1 = v38.Name .. " {" .. v45 .. "m}"
                v42 = true
            elseif not player then
                local v46 = v38.Name:lower()
                local v47 = math.floor((t2.value3.CFrame.Position - head.Position).Magnitude)
                local Fairy = t2.value6.Fairy

                if Fairy then
                    Fairy = v46:find("fairy")
                end

                if Fairy then
                    s1 = "🧚 Fairy {" .. v47 .. "m}"
                    v42 = true
                else
                    local Wolf = t2.value6.Wolf

                    if Wolf then
                        Wolf = v46:find("wolf") or v46:find("alpha")
                    end

                    if Wolf then
                        s1 = "🐺 Wolf {" .. v47 .. "m}"
                        v42 = true
                    elseif t2.value6.Bunny and v46:find("bunny") then
                        s1 = "🐰 Bunny {" .. v47 .. "m}"
                        v42 = true
                    else
                        local Cultist = t2.value6.Cultist

                        if Cultist then
                            Cultist = v46:find("cultist")

                            if Cultist then
                                Cultist = not v46:find("cross")
                            end
                        end

                        if Cultist then
                            s1 = "👺 Cultist {" .. v47 .. "m}"
                            v42 = true
                        else
                            local CrossBow = t2.value6.CrossBow

                            if CrossBow then
                                CrossBow = v46:find("cross")
                            end

                            if CrossBow then
                                v42 = true
                                s1 = "🏹 CrossBow Cultist {" .. v47 .. "m}"
                            else
                                local PeltTrader = t2.value6.PeltTrader

                                if PeltTrader then
                                    PeltTrader = v46:find("pelt")
                                end

                                if PeltTrader then
                                    v42 = true
                                    s1 = "🛒 Pelt Trader {" .. v47 .. "m}"
                                end
                            end
                        end
                    end
                end
            end

            if v42 then
                local v53, v54 = t2.value3:WorldToViewportPoint(head.Position)

                if v54 then
                    local v55 = v53.Y - 25

                    v.name.Text = s1
                    v.name.Position = Vector2.new(v53.X, v55)
                    v.name.Color = t2.value6.NameColor
                    v.name.Size = t2.value6.NameSize
                    v.name.Visible = true

                    local Humanoid = v38:FindFirstChildOfClass("Humanoid")

                    if Humanoid and Humanoid.Health > 0 then
                        local v57 = math.clamp(Humanoid.Health / Humanoid.MaxHealth, 0, 1)
                        local HPBarSizeX = t2.value6.HPBarSize.X
                        local HPBarSizeY = t2.value6.HPBarSize.Y
                        local v60 = v53.X - HPBarSizeX / 2
                        local v61 = v55 + 18

                        v.hpBack.Size = Vector2.new(HPBarSizeX, HPBarSizeY)
                        v.hpBack.Position = Vector2.new(v60, v61)
                        v.hpBack.Visible = true
                        v.hpBar.Size = Vector2.new(HPBarSizeX * v57, HPBarSizeY)
                        v.hpBar.Position = Vector2.new(v60, v61)
                        v.hpBar.Color = Color3.new(1 - v57, v57, 0)
                        v.hpBar.Visible = true
                    else
                        v.hpBar.Visible = false
                        v.hpBack.Visible = false
                    end

                    local drawing = Drawing.new("Line")

                    drawing.From = vector2_2 - Vector2.new(0, 10)
                    drawing.To = Vector2.new(v53.X, v53.Y)
                    drawing.Color = Color3.fromRGB(255, 0, 0)
                    drawing.Thickness = 1
                    drawing.Visible = true
                    table.insert(t2.value5, drawing)
                else
                    v.name.Visible = false
                    v.hpBar.Visible = false
                    v.hpBack.Visible = false
                end
            else
                v.name.Visible = false
                v.hpBar.Visible = false
                v.hpBack.Visible = false
            end
        else
            v.name.Visible = false
            v.hpBar.Visible = false
            v.hpBack.Visible = false
        end
    end
end)
task.spawn(function()
    while true do
        task.wait(1)

        for _, descendant in pairs(workspace:GetDescendants()) do
            local v65 = descendant:IsA("Model")

            if v65 then
                v65 = not t2.value4[descendant]

                if v65 then
                    v65 = descendant:FindFirstChild("Head")
                end
            end

            if v65 then
                local player = t2.value1:GetPlayerFromCharacter(descendant)

                if not player then
                    local charactersFolder = workspace:FindFirstChild("Characters")
                    player = charactersFolder ~= nil and descendant:IsDescendantOf(charactersFolder)
                end

                if player then
                    v16(descendant, "Unknown")
                end
            end
        end
    end
end)
t2.value7 = workspace.CurrentCamera
t2.value8 = Drawing.new("Text")
t2.value8.Center = true
t2.value8.Outline = true
t2.value8.Size = 40
t2.value8.Color = Color3.fromRGB(255, 0, 0)
t2.value8.Font = 4
t2.value8.Visible = false
t2.value9 = false
t2.value10 = false
t2.value11 = 50
t2.value12 = {}
for i = 1, t2.value11 do
    local drawing = Drawing.new("Line")

    drawing.Visible = false
    drawing.Color = Color3.fromRGB(255, 0, 0)
    drawing.Thickness = 2
    t1.value1 = t2.value12
    t1.value1[i] = drawing
end
ESPTab:Toggle({
	Title = "Player ESP",
	Value = false,
	Callback = function(p3)
    t2.value6.PlayerESP = p3
    t2.value10 = p3
    t2.value9 = p3
    t2.value8.Visible = p3

    if not p3 then
        for _, v in pairs(t2.value12) do
            v.Visible = false
        end
    end
end
})
game:GetService("RunService").RenderStepped:Connect(function()
    if not t2.value10 then
        t2.value8.Visible = false

        for _, v in pairs(t2.value12) do
            v.Visible = false
        end

        return
    end

    local n1 = 0
    local ViewportSize = t2.value7.ViewportSize
    local vector2_3 = Vector2.new(ViewportSize.X / 2, 50)
    local t5 = {}

    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer and player.Character then
            local Head = player.Character:FindFirstChild("Head")

            if Head then
                local v79, v80 = t2.value7:WorldToViewportPoint(Head.Position)

                if v80 and v79.Z > 0 then
                    n1 += 1

                    local insert = table.insert
                    local vector2_4 = Vector2.new(v79.X, v79.Y)

                    insert(t5, {
						player = player,
						pos = vector2_4
					})
                end
            end
        end
    end

    t2.value8.Text = tostring(n1)
    t2.value8.Position = Vector2.new(ViewportSize.X / 2, 8)
    t2.value8.Visible = t2.value10

    for i = 1, t2.value11 do
        t2.value12[i].Visible = false
    end

    if t2.value9 and n1 > 0 then
        for k, v in pairs(t5) do
            local v86 = k

            if v86 > t2.value11 then
                return
            end

            local v87 = t2.value12[v86]

            v87.From = vector2_3
            v87.To = v.pos
            v87.Visible = true
        end
    end
end)
ESPTab:Toggle({
	Title = "Fairy ESP",
	Value = false,
	Callback = function(p4)
    t2.value6.Fairy = p4
end
})
ESPTab:Toggle({
	Title = "Wolf ESP",
	Value = false,
	Callback = function(p5)
    t2.value6.Wolf = p5
end
})
ESPTab:Toggle({
	Title = "Bunny ESP",
	Value = false,
	Callback = function(p6)
    t2.value6.Bunny = p6
end
})
ESPTab:Toggle({
	Title = "Cultist ESP",
	Value = false,
	Callback = function(p7)
    t2.value6.Cultist = p7
    t2.value6.CrossBow = p7
end
})
ESPTab:Toggle({
	Title = "Pelt Trader ESP",
	Value = false,
	Callback = function(p8)
    t2.value6.PeltTrader = p8
end
})
t2.value13 = true
t2.value14 = Color3.fromRGB(255, 255, 0)
t2.value15 = {
	Berry = false,
	Log = false,
	Chest = false,
	Toolbox = false,
	Coal = false,
	Carrot = false,
	Flashlight = false,
	Radio = false,
	["Sheet Metal"] = false,
	Bolt = false,
	Chair = false,
	Fan = false,
	["Good Sack"] = false,
	["Good Axe"] = false,
	["Raw Meat"] = false,
	["Cooked Meat"] = false,
	Stone = false,
	Nails = false,
	Scrap = false,
	["Wooden Plank"] = false
}
ESPTab:Toggle({
	Title = "Item ESP",
	Value = true,
	Callback = function(p9)
    t2.value13 = p9
end
})
local value14 = t2.value14
ESPTab:Colorpicker({
	Title = "Item ESP Color",
	Value = value14,
	Callback = function(p10)
    t2.value14 = p10
end
})
t2.value16 = {
	"Berry",
	"Carrot",
	"Raw Meat",
	"Cooked Meat"
}
ESPTab:Toggle({
	Title = "Food ESP",
	Value = false,
	Callback = function(p11)
    for _, v in ipairs(t2.value16) do
        t2.value15[v] = p11
    end
end
})
ESPTab:Toggle({
	Title = "Revolver + Ammo ESP",
	Value = false,
	Callback = function(p12)
    t2.value15.Revolver = p12
    t2.value15["Revolver Ammo"] = p12
end
})
for k, _ in pairs(t2.value15) do
    local v22 = k

    if not table.find(t2.value16, v22) then
        ESPTab:Toggle({
			Title = v22,
			Value = false,
			Callback = function(p13)
            t2.value15[v22] = p13
        end
		})
    end
end
t1.value1 = game:GetService("Workspace")
t2.value17 = t1.value1
local RunService2 = game:GetService("RunService")

t1.value1 = t2.value17.CurrentCamera
t2.value18 = t1.value1
t1.value1 = t2.value17
t2.value19 = t1.value1:FindFirstChild("Items") or t1.value1:WaitForChild("Items", 10)
if not t2.value19 then warn("CAT HUB: workspace.Items was not found; Item ESP and bring-item functions may not work.") end
t2.value20 = {}
function t2.value21()
    local drawing = Drawing.new("Text")

    drawing.Size = 14
    drawing.Center = true
    drawing.Outline = true
    drawing.Font = 2
    drawing.Color = t2.value14
    drawing.Visible = false

    return drawing
end
function t2.value22()

    if not t2.value19 or not t2.value19.Parent then return end
    for v103, v104 in ipairs(t2.value19:GetChildren()) do

        if not t2.value20[v104] then
            local BasePart = v104:FindFirstChildWhichIsA("BasePart")

            if not BasePart then
                BasePart = v104:IsA("BasePart") and v104
            end

            if BasePart then
                local value20 = t2.value20
                local v107 = t2.value21()

                value20[v104] = {
					part = BasePart,
					text = v107
				}
            end
        end
    end
    for k, v in pairs(t2.value20) do
        local v110 = k

        if not v110:IsDescendantOf(t2.value17) then
            v.text:Remove()
            t2.value20[v110] = nil
        end
    end
end
RunService2.RenderStepped:Connect(function()
    if not t2.value13 then
        for _, v in pairs(t2.value20) do
            v.text.Visible = false
        end

        return
    end

    t2.value22()

    for k, v in pairs(t2.value20) do
        local part = v.part
        local text = v.text
        local kName = k.Name

        if part and t2.value15[kName] then
            local v119, t6Result = t2.value18:WorldToViewportPoint(part.Position)
            if t6Result then
                local Magnitude = (t2.value18.CFrame.Position - part.Position).Magnitude

                text.Text = string.format("%s [%.0fm]", kName, Magnitude)
                text.Position = Vector2.new(v119.X, v119.Y)
                text.Color = t2.value14
                text.Visible = true
            else
                text.Visible = false
            end
        else
            text.Visible = false
        end
    end
end)
getgenv().speedEnabled = false
getgenv().speedValue = 28
MiscTab:Toggle({
	Title = "Speed Hack",
	Value = false,
	Callback = function(p14)
    getgenv().speedEnabled = p14

    local Character = t2.value2.Character

    if not Character then
        Character = t2.value2.CharacterAdded:Wait()
    end

    local Humanoid = Character:FindFirstChild("Humanoid")

    if Humanoid then
        if p14 then
            p14 = getgenv().speedValue
        end

        Humanoid.WalkSpeed = p14 or 16
    end
end
})
MiscTab:Slider({
	Title = "Speed Value",
	Step = 1,
	Value = { Min = 16, Max = 600, Default = 28 },
	Suffix = "Speed",
	Callback = function(p15)
    getgenv().speedValue = p15

    if getgenv().speedEnabled then
        local Character = t2.value2.Character

        if Character then
            Character = t2.value2.Character:FindFirstChild("Humanoid")
        end

        if Character then
            Character.WalkSpeed = p15
        end
    end
end
})
t2.value23 = true
t2.value24 = true
t2.value25 = Drawing.new("Text")
t2.value25.Size = 16
t2.value25.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X - 100, 10)
t2.value25.Color = Color3.fromRGB(0, 255, 0)
t2.value25.Center = false
t2.value25.Outline = true
t2.value25.Visible = t2.value23
t2.value26 = Drawing.new("Text")
t2.value26.Size = 16
t2.value26.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X - 100, 30)
t2.value26.Color = Color3.fromRGB(0, 255, 0)
t2.value26.Center = false
t2.value26.Outline = true
t2.value26.Visible = t2.value24
t2.value27 = 0
t2.value28 = tick()
RunService2.RenderStepped:Connect(function()
    local v126 = t2

    v126.value27 = v126.value27 + 1

    if tick() - t2.value28 >= 1 then
        if t2.value23 then
            t2.value25.Text = "FPS: " .. tostring(t2.value27)
            t2.value25.Visible = true
        else
            t2.value25.Visible = false
        end

        if t2.value24 then
            local v127 = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]

            if v127 then
                v127 = math.floor((v127:GetValue()))
            end

            local v128 = v127 or 0

            t2.value26.Text = "Ping: " .. v128 .. " ms"

            if v128 <= 60 then
                t2.value26.Color = Color3.fromRGB(0, 255, 0)
            elseif v128 <= 120 then
                t2.value26.Color = Color3.fromRGB(255, 165, 0)
            else
                t2.value26.Color = Color3.fromRGB(255, 0, 0)
            end

            t2.value26.Visible = true
        else
            t2.value26.Visible = false
        end

        t2.value28 = tick()
    end
end)
MiscTab:Toggle({
	Title = "Show FPS",
	Value = true,
	Callback = function(p16)
    t2.value23 = p16
    t2.value25.Visible = p16
end
})
MiscTab:Toggle({
	Title = "Show Ping (ms)",
	Value = true,
	Callback = function(p17)
    t2.value24 = p17
    t2.value26.Visible = p17
end
})
MiscTab:Button({
	Title = "FPS Boost",
	Callback = function()
    pcall(function()
        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
        local Lighting = game:GetService("Lighting")
        Lighting.Brightness = 0
        Lighting.FogEnd = 100
        Lighting.GlobalShadows = false
        Lighting.EnvironmentDiffuseScale = 0
        Lighting.EnvironmentSpecularScale = 0
        Lighting.ClockTime = 14
        Lighting.OutdoorAmbient = Color3.new(0, 0, 0)
        local Terrain = workspace:FindFirstChildOfClass("Terrain")
        if Terrain then
            Terrain.WaterWaveSize = 0
            Terrain.WaterWaveSpeed = 0
            Terrain.WaterReflectance = 0
            Terrain.WaterTransparency = 1
        end
        for v216, v217 in ipairs(Lighting:GetDescendants()) do

            local v218 = v217:IsA("PostEffect")

            if not v218 then
                v218 = v217:IsA("BloomEffect")

                if not v218 then
                    v218 = v217:IsA("ColorCorrectionEffect")

                    if not v218 then
                        v218 = v217:IsA("SunRaysEffect") or v217:IsA("BlurEffect")
                    end
                end
            end

            if v218 then
                v217.Enabled = false
            end
        end
        for v221, v222 in ipairs(game:GetDescendants()) do

            local v223 = v222:IsA("ParticleEmitter")

            if not v223 then
                v223 = v222:IsA("Trail")
            end

            if v223 then
                v222.Enabled = false
            else
                local v224 = v222:IsA("Texture")

                if not v224 then
                    v224 = v222:IsA("Decal")
                end

                if v224 then
                    v222.Transparency = 1
                end
            end
        end
        for _, descendant in ipairs(workspace:GetDescendants()) do
            if descendant:IsA("BasePart") then
                descendant.CastShadow = false
            end
        end
    end)
    print("✅ FPS Boost Applied")
end
})
TeleportTab:Button({
	Title = "Teleport to Camp",
	Callback = function()
    local Character = game.Players.LocalPlayer.Character
    local v132 = Character

    if Character then
        v132 = Character:FindFirstChild("HumanoidRootPart")
    end

    if v132 then
        Character.HumanoidRootPart.CFrame = CFrame.new(13.287363052368, 3.9999997615814, 0.3621221780777, 0.60222691297531, -2.2750361594603E-08, 0.79832494258881, 6.4304570557283E-09, 1, 2.3646721913906E-08, -0.79832494258881, -9.1070981866892E-09, 0.60222691297531)
    end
end
})
TeleportTab:Button({
	Title = "Teleport to Trader",
	Callback = function()
    local vector3 = Vector3.new(-37.08, 3.98, -16.33)
    local Character = game.Players.LocalPlayer.Character

    if not Character then
        Character = game.Players.LocalPlayer.CharacterAdded:Wait()
    end

    Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(vector3)
end
})
ItemsTab:Button({
	Title = "Bring Everything",
	Callback = function()
    for _, child in ipairs((workspace:FindFirstChild("Items") or {GetChildren = function() return {} end}):GetChildren()) do
        local BasePart = child:FindFirstChildWhichIsA("BasePart")

        if not BasePart then
            BasePart = child:IsA("BasePart") and child
        end

        if BasePart then
            BasePart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
        end
    end
end
})
t2.value29 = Vector3.new(1.87, 4.33, -3.67)
ItemsTab:Button({
	Title = "Auto Cook Meat",
	Callback = function()
    for _, child in pairs((workspace:FindFirstChild("Items") or {GetChildren = function() return {} end}):GetChildren()) do
        local v140 = child:IsA("Model")

        if not v140 then
            v140 = child:IsA("BasePart")
        end

        if v140 and child.Name:lower():find("meat") then
            local v141 = child:FindFirstChildWhichIsA("BasePart") or child

            if v141 then
                v141.CFrame = CFrame.new(t2.value29 + Vector3.new(math.random(-2, 2), 0.5, math.random(-2, 2)))
            end
        end
    end
end
})
ItemsTab:Button({
	Title = "Bring Logs",
	Callback = function()
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Character = LocalPlayer.Character

    if Character then
        Character = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    end

    local n2 = 0

    for _, child in pairs((workspace:FindFirstChild("Items") or {GetChildren = function() return {} end}):GetChildren()) do
        local v147 = child.Name:lower():find("log")

        if v147 then
            v147 = child:IsA("Model")
        end

        if v147 then
            local BasePart = child:FindFirstChildWhichIsA("BasePart")

            if BasePart then
                BasePart.CFrame = Character.CFrame * CFrame.new(math.random(-5, 5), 0, math.random(-5, 5))
                n2 += 1
            end
        end
    end

    print("✅ Brought " .. n2 .. " logs to you.")
end
})
ItemsTab:Button({
	Title = "Bring Coal",
	Callback = function()
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Character = LocalPlayer.Character

    if Character then
        Character = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    end

    local n3 = 0

    for _, child in pairs((workspace:FindFirstChild("Items") or {GetChildren = function() return {} end}):GetChildren()) do
        if child.Name:lower():find("coal") and child:IsA("Model") then
            local BasePart = child:FindFirstChildWhichIsA("BasePart")

            if BasePart then
                BasePart.CFrame = Character.CFrame * CFrame.new(math.random(-5, 5), 0, math.random(-5, 5))
                n3 += 1
            end
        end
    end

    print("✅ Brought " .. n3 .. " coal to you.")
end
})
ItemsTab:Button({
	Title = "Bring Meat (Raw + Cooked)",
	Callback = function()
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Character = LocalPlayer.Character

    if Character then
        Character = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    end

    local n4 = 0

    for _, child in pairs((workspace:FindFirstChild("Items") or {GetChildren = function() return {} end}):GetChildren()) do
        local v160 = child.Name:lower()
        local v161 = v160:find("meat")

        if not v161 then
            v161 = v160:find("cooked")
        end

        if v161 then
            v161 = child:IsA("Model")
        end

        if v161 then
            local BasePart = child:FindFirstChildWhichIsA("BasePart")

            if BasePart then
                BasePart.CFrame = Character.CFrame * CFrame.new(math.random(-5, 5), 0, math.random(-5, 5))
                n4 += 1
            end
        end
    end

    print("✅ Brought " .. n4 .. " meat items to you.")
end
})
function t2.value30(p18)
    for _, child in ipairs((workspace:FindFirstChild("Items") or {GetChildren = function() return {} end}):GetChildren()) do
        local childName = child.Name
        if childName:lower():find(p18:lower(), 1, true) then
            local BasePart = child:FindFirstChildWhichIsA("BasePart")

            if not BasePart then
                BasePart = child:IsA("BasePart") and child
            end

            if BasePart then
                BasePart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
            end
        end
    end
end
ItemsTab:Button({
	Title = "Bring Flashlight",
	Callback = function()
    t2.value30("Flashlight")
end
})
ItemsTab:Button({
	Title = "Bring Nails",
	Callback = function()
    t2.value30("Nails")
end
})
ItemsTab:Button({
	Title = "Bring Fan",
	Callback = function()
    t2.value30("Fan")
end
})
ItemsTab:Button({
	Title = "Bring Ammo",
	Callback = function()
    local Character = game.Players.LocalPlayer.Character

    if Character then
        Character = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    end

    if not Character then
        return
    end

    for _, child in ipairs((workspace:FindFirstChild("Items") or {GetChildren = function() return {} end}):GetChildren()) do
        for _, v in ipairs({ "ammo" }) do
            if child.Name:lower():find(v) then
                local v175 = child:FindFirstChildWhichIsA("BasePart") or child:IsA("BasePart") and child

                if v175 then
                    v175.CFrame = Character.CFrame + Vector3.new(math.random(-5, 5), 0, math.random(-5, 5))
                end
            end
        end
    end
end
})
ItemsTab:Button({
	Title = "Bring Sheet Metal",
	Callback = function()
    local Character = game.Players.LocalPlayer.Character

    if Character then
        Character = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    end

    if not Character then
        return
    end

    for _, child in ipairs((workspace:FindFirstChild("Items") or {GetChildren = function() return {} end}):GetChildren()) do
        if child.Name:lower():find("sheet metal") then
            local v179 = child:FindFirstChildWhichIsA("BasePart") or child:IsA("BasePart") and child

            if v179 then
                v179.CFrame = Character.CFrame + Vector3.new(math.random(-5, 5), 0, math.random(-5, 5))
            end
        end
    end
end
})
ItemsTab:Button({
	Title = "Bring Fuel Canister",
	Callback = function()
    local Character = game.Players.LocalPlayer.Character

    if Character then
        Character = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    end

    if not Character then
        return
    end

    for _, child in ipairs((workspace:FindFirstChild("Items") or {GetChildren = function() return {} end}):GetChildren()) do
        if child.Name:lower():find("fuel canister") then
            local BasePart = child:FindFirstChildWhichIsA("BasePart")

            if not BasePart then
                BasePart = child:IsA("BasePart") and child
            end

            if BasePart then
                BasePart.CFrame = Character.CFrame + Vector3.new(math.random(-5, 5), 0, math.random(-5, 5))
            end
        end
    end
end
})
ItemsTab:Button({
	Title = "Bring Tyre",
	Callback = function()
    local Character = game.Players.LocalPlayer.Character

    if Character then
        Character = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    end

    if not Character then
        return
    end

    for _, child in ipairs((workspace:FindFirstChild("Items") or {GetChildren = function() return {} end}):GetChildren()) do
        if child.Name:lower():find("tyre") then
            local BasePart = child:FindFirstChildWhichIsA("BasePart")

            if not BasePart then
                BasePart = child:IsA("BasePart") and child
            end

            if BasePart then
                BasePart.CFrame = Character.CFrame + Vector3.new(math.random(-5, 5), 0, math.random(-5, 5))
            end
        end
    end
end
})
ItemsTab:Button({
	Title = "Bring Bandage",
	Callback = function()
    local LocalPlayer = game.Players.LocalPlayer
    local Character = LocalPlayer.Character

    if Character then
        Character = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    end

    if not Character then
        return
    end

    for _, child in ipairs((workspace:FindFirstChild("Items") or {GetChildren = function() return {} end}):GetChildren()) do
        local v192 = child:IsA("Model")

        if v192 then
            v192 = child.Name:lower():find("bandage")
        end

        if v192 then
            local BasePart = child:FindFirstChildWhichIsA("BasePart")

            if BasePart then
                BasePart.CFrame = Character.CFrame + Vector3.new(0, 2, 0)
            end
        end
    end
end
})
ItemsTab:Button({
	Title = "Bring Lost Child",
	Callback = function()
    for _, descendant in ipairs(workspace:GetDescendants()) do
        local v196 = descendant:IsA("Model")

        if v196 then
            v196 = descendant.Name:lower():find("lost") and descendant:FindFirstChild("HumanoidRootPart")
        end

        if v196 then
            descendant:PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 2, 0))
        end
    end
end
})
ItemsTab:Button({
	Title = "Bring Revolver",
	Callback = function()
    for _, child in ipairs((workspace:FindFirstChild("Items") or {GetChildren = function() return {} end}):GetChildren()) do
        local v199 = child:IsA("Model")

        if v199 then
            v199 = child.Name:lower():find("revolver")
        end

        if v199 then
            local BasePart = child:FindFirstChildWhichIsA("BasePart")

            if BasePart then
                BasePart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 2, 0)
            end
        end
    end
end
})
t2.value31 = {
	Wolf = false,
	Bunny = false,
	Cultist = false,
	Show = false,
	Size = 10
}
local function v24(p19)
    local HumanoidRootPart = p19:FindFirstChild("HumanoidRootPart")

    if not HumanoidRootPart then
        return
    end

    local v203 = p19.Name:lower()
    local Wolf = t2.value31.Wolf

    if Wolf then
        Wolf = v203:find("wolf")

        if not Wolf then
            Wolf = v203:find("alpha")
        end
    end

    if not Wolf then
        Wolf = t2.value31.Bunny

        if Wolf then
            Wolf = v203:find("bunny")
        end

        if not Wolf then
            Wolf = t2.value31.Cultist

            if Wolf then
                Wolf = v203:find("cultist")

                if not Wolf then
                    Wolf = v203:find("cross")
                end
            end
        end
    end

    if Wolf then
        HumanoidRootPart.Size = Vector3.new(t2.value31.Size, t2.value31.Size, t2.value31.Size)
        HumanoidRootPart.Transparency = not t2.value31.Show and 1 or 0.5
        HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
        HumanoidRootPart.Material = Enum.Material.Neon
        HumanoidRootPart.CanCollide = false
    end
end
task.spawn(function()
    while true do
        for _, descendant in ipairs(workspace:GetDescendants()) do
            if descendant:IsA("Model") and descendant:FindFirstChild("HumanoidRootPart") then
                v24(descendant)
            end
        end

        task.wait(2)
    end
end)
HitboxTab:Toggle({
	Title = "Expand Wolf Hitbox",
	Value = false,
	Callback = function(p20)
    t2.value31.Wolf = p20
end
})
HitboxTab:Toggle({
	Title = "Expand Bunny Hitbox",
	Value = false,
	Callback = function(p21)
    t2.value31.Bunny = p21
end
})
HitboxTab:Toggle({
	Title = "Expand Cultist Hitbox",
	Value = false,
	Callback = function(p22)
    t2.value31.Cultist = p22
end
})
HitboxTab:Slider({
	Title = "Hitbox Size",
	Step = 1,
	Value = { Min = 2, Max = 30, Default = 10 },
	Suffix = "Size",
	Callback = function(p23)
    t2.value31.Size = p23
end
})
HitboxTab:Toggle({
	Title = "Show Hitbox (Transparency)",
	Value = false,
	Callback = function(p24)
    t2.value31.Show = p24
end
})
