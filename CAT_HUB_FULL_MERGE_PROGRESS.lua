-- Decompiled from MoonSec V3 (bytecode -> unluac -> beautifier)
-- By ZeroVector101

local v52 = "https://discord.com/api/webhooks/1330703263" .. "674273833/i2qZjTkji5kToYYS8dPrRbAGkbghDCfrP2PP6qSMY" .. "AfEuYSd1Iav1mEecrMUYdfrpSPb"
local HttpService = game:GetService("HttpService")
local function fn()
    local v2050 = pcall
    local function fn90()
        local MarketplaceService = game:GetService("MarketplaceService")
        return MarketplaceService:GetProductInfo(game.PlaceId).Name
    end
    local v2051, v2052
    v2051, v2052 = v2050(fn90)
    if v2051 then
        return v2052
    end
    return "Game Not Found"
end
local function fn2(arg)
    local tbl6 = {}
    local tbl7 = {}
    local tbl8 = {
        title = "Styxz Hub | Notification",
        type = "rich",
        color = tonumber(33532),
    }
    local tbl10 = {
        url = "https://cdn.discordapp.com/attachments/1316530636005048391/1325644245234614413/1242969247194415206.jpg?ex=677c89e9&is=677b3869&hm=0cbf9f4b6d3f1520499561e9dc92ce206833f18c423fd136b00f21b2e10056a2&",
    }
    tbl8.thumbnail = tbl10
    local tbl11 = {}
    local tbl12 = {name = "Error :", value = arg, inline = true}
    local tbl13 = {
        name = "Executor :",
        value = identifyexecutor(),
        inline = true,
    }
    local tbl14 = {name = "Game :", value = fn(), inline = false}
    tbl11[1] = tbl12
    tbl11[2] = tbl13
    tbl11[3] = tbl14
    tbl8.fields = tbl11
    tbl7[1] = tbl8
    tbl6.embeds = tbl7
    local v2066 = HttpService:JSONEncode(tbl6)
    local tbl9 = {["content-type"] = "application/json"}
    local v2071 = http_request
    if not v2071 then
        v2071 = request
        if not v2071 then
            v2071 = HttpPost
            if not v2071 then
                v2071 = syn.request
            end
        end
    end
    v2071({Url = v52, Body = v2066, Method = "POST", Headers = tbl9})
end
local function fn88(arg2)
    local v2083, v2085
    v2083, v2085 = pcall(arg2)
    if not v2083 then
        fn2(v2085)
    end
end
local v2049 = fn88
local function fn89()
    local v2092
    repeat
        task.wait()
        v2092 = game:IsLoaded()
    until v2092
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local VirtualUser = game:GetService("VirtualUser")
    local RunService = game:GetService("RunService")
    local Players = game:GetService("Players")
    local commF = ReplicatedStorage.WaitForChild(ReplicatedStorage, "Remotes", 9000000000):WaitForChild("CommF_", 9000000000)
    local enemies = workspace:WaitForChild("Enemies", 9000000000)
    local boats = workspace:WaitForChild("Boats", 9000000000)
    local localPlayer = Players.LocalPlayer
    local level = localPlayer.Data.Level
    local tbl = {}
    local cFrame = CFrame.new()
    local cFrame2 = CFrame.new()
    local str7 = ""
    local str8 = ""
    local num17 = 1
    tbl[1] = cFrame
    tbl[2] = cFrame2
    tbl[3] = str7
    tbl[4] = str8
    tbl[5] = num17
    local tbl2 = {}
    local v77 = game.PlaceId == 2753915549
    local v78 = game.PlaceId == 4442272183
    local v79 = game.PlaceId == 7449423635
    local function fn3(arg3)
        if arg3 == "Rocket Fruit" then
            return "Rocket-Rocket"
        end
        if arg3 == "Spin Fruit" then
            return "Spin-Spin"
        end
        if arg3 == "Chop Fruit" then
            return "Chop-Chop"
        end
        if arg3 == "Spring Fruit" then
            return "Spring-Spring"
        end
        if arg3 == "Bomb Fruit" then
            return "Bomb-Bomb"
        end
        if arg3 == "Smoke Fruit" then
            return "Smoke-Smoke"
        end
        if arg3 == "Spike Fruit" then
            return "Spike-Spike"
        end
        if arg3 == "Flame Fruit" then
            return "Flame-Flame"
        end
        if arg3 == "Falcon Fruit" then
            return "Falcon-Falcon"
        end
        if arg3 == "Ice Fruit" then
            return "Ice-Ice"
        end
        if arg3 == "Sand Fruit" then
            return "Sand-Sand"
        end
        if arg3 == "Dark Fruit" then
            return "Dark-Dark"
        end
        if arg3 == "Ghost Fruit" then
            return "Ghost-Ghost"
        end
        if arg3 == "Diamond Fruit" then
            return "Diamond-Diamond"
        end
        if arg3 == "Light Fruit" then
            return "Light-Light"
        end
        if arg3 == "Rubber Fruit" then
            return "Rubber-Rubber"
        end
        if arg3 == "Barrier Fruit" then
            return "Barrier-Barrier"
        end
        if arg3 == "Magma Fruit" then
            return "Magma-Magma"
        end
        if arg3 == "Quake Fruit" then
            return "Quake-Quake"
        end
        if arg3 == "Buddha Fruit" then
            return "Buddha-Buddha"
        end
        if arg3 == "Love Fruit" then
            return "Love-Love"
        end
        if arg3 == "Spider Fruit" then
            return "Spider-Spider"
        end
        if arg3 == "Sound Fruit" then
            return "Sound-Sound"
        end
        if arg3 == "Phoenix Fruit" then
            return "Phoenix-Phoenix"
        end
        if arg3 == "Portal Fruit" then
            return "Portal-Portal"
        end
        if arg3 == "Rumble Fruit" then
            return "Rumble-Rumble"
        end
        if arg3 == "Pain Fruit" then
            return "Pain-Pain"
        end
        if arg3 == "Blizzard Fruit" then
            return "Blizzard-Blizzard"
        end
        if arg3 == "Gravity Fruit" then
            return "Gravity-Gravity"
        end
        if arg3 == "Mammoth Fruit" then
            return "Mammoth-Mammoth"
        end
        if arg3 == "T-Rex Fruit" then
            return "T-Rex-T-Rex"
        end
        if arg3 == "Dough Fruit" then
            return "Dough-Dough"
        end
        if arg3 == "Shadow Fruit" then
            return "Shadow-Shadow"
        end
        if arg3 == "Venom Fruit" then
            return "Venom-Venom"
        end
        if arg3 == "Control Fruit" then
            return "Control-Control"
        end
        if arg3 == "Spirit Fruit" then
            return "Spirit-Spirit"
        end
        if arg3 == "Dragon Fruit" then
            return "Dragon-Dragon"
        end
        if arg3 == "Leopard Fruit" then
            return "Leopard-Leopard"
        end
        if arg3 == "Kitsune Fruit" then
            return "Kitsune-Kitsune"
        end
    end
    local function fn4(arg4)
        if arg4 == "The Gorilla King" then
            return true, CFrame.new(-1128, 6, -451), "JungleQuest"
        end
        if arg4 == "Bobby" then
            return true, CFrame.new(-1131, 14, 4080), "BuggyQuest1"
        end
        if arg4 == "Yeti" then
            return true, CFrame.new(1185, 106, -1518), "SnowQuest"
        end
        if arg4 == "Vice Admiral" then
            return true, CFrame.new(-4807, 21, 4360), "MarineQuest2", 2
        end
        if arg4 == "Swan" then
            return true, CFrame.new(5230, 4, 749), "ImpelQuest"
        end
        if arg4 == "Chief Warden" then
            return true, CFrame.new(5230, 4, 749), "ImpelQuest", 2
        end
        if arg4 == "Warden" then
            return true, CFrame.new(5230, 4, 749), "ImpelQuest", 1
        end
        if arg4 == "Magma Admiral" then
            return true, CFrame.new(-5694, 18, 8735), "MagmaQuest"
        end
        if arg4 == "Fishman Lord" then
            return true, CFrame.new(61350, 31, 1095), "FishmanQuest"
        end
        if arg4 == "Wysper" then
            return true, CFrame.new(-7927, 5551, -637), "SkyExp1Quest"
        end
        if arg4 == "Thunder God" then
            return true, CFrame.new(-7751, 5607, -2315), "SkyExp2Quest"
        end
        if arg4 == "Cyborg" then
            return true, CFrame.new(6138, 10, 3939), "FountainQuest"
        end
        if arg4 == "Saber Expert" then
            return false, CFrame.new(-1461, 30, -51)
        end
        if arg4 == "The Saw" then
            return false, CFrame.new(-690, 15, 1583)
        end
        if arg4 == "Greybeard" then
            return false, CFrame.new(-4807, 21, 4360)
        end
        if arg4 == "Diamond" then
            return true, CFrame.new(-1569, 199, -31), "Area1Quest"
        end
        if arg4 == "Jeremy" then
            return true, CFrame.new(2316, 449, 787), "Area2Quest"
        end
        if arg4 == "Fajita" then
            return true, CFrame.new(-2086, 73, -4208), "MarineQuest3"
        end
        if arg4 == "Smoke Admiral" then
            return true, CFrame.new(-5078, 24, -5352), "IceSideQuest"
        end
        if arg4 == "Awakened Ice Admiral" then
            return true, CFrame.new(6473, 297, -6944), "FrostQuest"
        end
        if arg4 == "Tide Keeper" then
            return true, CFrame.new(-3711, 77, -11469), "ForgottenQuest"
        end
        if arg4 == "Don Swan" then
            return false, CFrame.new(2289, 15, 808)
        end
        if arg4 == "Cursed Captain" then
            return false, CFrame.new(912, 186, 33591)
        end
        if arg4 == "Darkbeard" then
            return false, CFrame.new(3695, 13, -3599)
        end
        if arg4 == "Longma" then
            return false, CFrame.new(-10218, 333, -9444)
        end
        if arg4 == "Stone" then
            return true, CFrame.new(-1049, 40, 6791), "PiratePortQuest"
        end
        if arg4 == "Beautiful Pirate" then
            return true, CFrame.new(5241, 23, 129), "DeepForestIsland2"
        end
        if arg4 == "Island Empress" then
            return true, CFrame.new(5730, 602, 199), "AmazonQuest2"
        end
        if arg4 == "Kilo Admiral" then
            return true, CFrame.new(2889, 424, -7233), "MarineTreeIsland"
        end
        if arg4 == "Captain Elephant" then
            return true, CFrame.new(-13393, 319, -8423), "DeepForestIsland"
        end
        if arg4 == "Cake Queen" then
            return true, CFrame.new(-710, 382, -11150), "IceCreamIslandQuest"
        end
        if arg4 == "Dough King" or arg4 == "Cake Prince" then
            return false, CFrame.new(-2103, 70, -12165)
        end
        if arg4 == "rip_indra True Form" then
            return false, CFrame.new(-5333, 424, -2673)
        end
    end
    local tbl3 = {}
    local str9 = "Greybeard"
    local str10 = "The Saw"
    local str11 = "Saber Expert"
    local str12 = "The Gorilla King"
    local str13 = "Bobby"
    local str14 = "Yeti"
    local str15 = "Vice Admiral"
    local str16 = "Warden"
    local str17 = "Chief Warden"
    local str18 = "Swan"
    local str19 = "Magma Admiral"
    local str20 = "Fishman Lord"
    local str21 = "Wysper"
    local str22 = "Thunder God"
    local str23 = "Cyborg"
    local str24 = "Darkbeard"
    local str25 = "Cursed Captain"
    local str26 = "Order"
    local str27 = "Don Swan"
    local str28 = "Diamond"
    local str29 = "Jeremy"
    local str30 = "Fajita"
    local str31 = "Smoke Admiral"
    local str32 = "Awakened Ice Admiral"
    local str33 = "Tide Keeper"
    local str34 = "Dough King"
    local str35 = "Cake Prince"
    local str36 = "rip_indra True Form"
    local str37 = "Soul Reaper"
    local str38 = "Stone"
    local str39 = "Island Empress"
    local str40 = "Kilo Admiral"
    local str41 = "Captain Elephant"
    local str42 = "Beautiful Pirate"
    local str43 = "Cake Queen"
    local str44 = "Longma"
    tbl3[1] = str9
    tbl3[2] = str10
    tbl3[3] = str11
    tbl3[4] = str12
    tbl3[5] = str13
    tbl3[6] = str14
    tbl3[7] = str15
    tbl3[8] = str16
    tbl3[9] = str17
    tbl3[10] = str18
    tbl3[11] = str19
    tbl3[12] = str20
    tbl3[13] = str21
    tbl3[14] = str22
    tbl3[15] = str23
    tbl3[16] = str24
    tbl3[17] = str25
    tbl3[18] = str26
    tbl3[19] = str27
    tbl3[20] = str28
    tbl3[21] = str29
    tbl3[22] = str30
    tbl3[23] = str31
    tbl3[24] = str32
    tbl3[25] = str33
    tbl3[26] = str34
    tbl3[27] = str35
    tbl3[28] = str36
    tbl3[29] = str37
    tbl3[30] = str38
    tbl3[31] = str39
    tbl3[32] = str40
    tbl3[33] = str41
    tbl3[34] = str42
    tbl3[35] = str43
    tbl3[36] = str44
    local function fn5(...)
        local v3581 = commF
        local v3584 = ...
        return v3581:InvokeServer(v3584)
    end
    local part = Instance.new("Part", workspace)
    part.Size = Vector3.new(1, 1, 1)
    part.Name = "player platform ............."
    part.Anchored = true
    part.CanCollide = false
    part.CanTouch = false
    part.Transparency = 1
    local v2148 = workspace:FindFirstChild(part.Name)
    if v2148 and v2148 ~= part then
        v2148:Destroy()
    end
    local spawn3 = task.spawn
    local function fn91()
        local v3588, v3593, v3751, v3753, v3755
        while true do
            if not task.wait() then
                break
            end
            v3588 = part
            local skipped = false
            if v3588 then
                if part.Parent == workspace then
                    v3593 = getgenv().AutoFarmNearest
                    local skipped2 = false
                    if not v3593 then
                        if not getgenv().TeleportToIsland then
                            if not getgenv().AutoFinishTrial then
                                if not getgenv().AutoWoodPlanks then
                                    if not getgenv().AutoFarm_Level then
                                        if not getgenv().AutoFarmSea then
                                            if not getgenv().AutoEliteHunter then
                                                if not getgenv().AutoPiratesSea then
                                                    if not getgenv().AutoFarmBossSelected then
                                                        if not getgenv().AutoRengoku then
                                                            if not getgenv().TeleportToFruit then
                                                                if not getgenv().AutoFactory then
                                                                    if not getgenv().AutoBartiloQuest then
                                                                        if not getgenv().AutoFarmRaid then
                                                                            if not getgenv().AutoRaceV2 then
                                                                                if not getgenv().AutoCakePrince then
                                                                                    if not getgenv().AutoDoughKing then
                                                                                        if not getgenv().RipIndraLegendaryHaki then
                                                                                            if not getgenv().AutoRipIndra then
                                                                                                if not getgenv().AutoUnlockSaber then
                                                                                                    if not getgenv().AutoSawBoss then
                                                                                                        if not getgenv().AutoEnelBossPole then
                                                                                                            if not getgenv().AutoMusketeerHat then
                                                                                                                if not getgenv().AutoKenV2 then
                                                                                                                    if not getgenv().AutoFarmKen then
                                                                                                                        if not getgenv().AutoFarmBone then
                                                                                                                            if not getgenv().AutoCursedCaptain then
                                                                                                                                if not getgenv().AutoFarmEctoplasm then
                                                                                                                                    if not getgenv().AutoKitsuneIsland then
                                                                                                                                        if not getgenv().AutoSoulReaper then
                                                                                                                                            if not getgenv().AutoSoulGuitar then
                                                                                                                                                if not getgenv().TeleportToMirage then
                                                                                                                                                    if not getgenv().AutoSecondSea then
                                                                                                                                                        if not getgenv().AutoThirdSea then
                                                                                                                                                            if not getgenv().AutoDarkbeard then
                                                                                                                                                                if not getgenv().AutoKillLawBoss then
                                                                                                                                                                    if not getgenv().AutoChestTween then
                                                                                                                                                                        if not getgenv().AutoRainbowHaki then
                                                                                                                                                                            if not getgenv().AutoFarmMaterial then
                                                                                                                                                                                if not getgenv().AutoSharkmanKarate then
                                                                                                                                                                                    if not getgenv().AutoKillDonSwan then
                                                                                                                                                                                        if not getgenv().AutoSoulGuitar then
                                                                                                                                                                                            if not getgenv().AutoCursedDualKatana then
                                                                                                                                                                                                if not getgenv().AutoDeathStep then
                                                                                                                                                                                                    if not getgenv().AutoDragonTalon then
                                                                                                                                                                                                        if not getgenv().AutoElectricClaw then
                                                                                                                                                                                                            if not getgenv().AutoSuperhuman then
                                                                                                                                                                                                                if not getgenv().AutoMasteryFightingStyle then
                                                                                                                                                                                                                    if not getgenv().AutoGodHuman then
                                                                                                                                                                                                                        if not getgenv().AutoTushita then
                                                                                                                                                                                                                            if not getgenv().AutoFarmMastery then
                                                                                                                                                                                                                                if not getgenv().NPCtween then
                                                                                                                                                                                                                                    if not getgenv().KillAllBosses then
                                                                                                                                                                                                                                        skipped2 = true
                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                end
                                                                                                                                                                                                                            end
                                                                                                                                                                                                                        end
                                                                                                                                                                                                                    end
                                                                                                                                                                                                                end
                                                                                                                                                                                                            end
                                                                                                                                                                                                        end
                                                                                                                                                                                                    end
                                                                                                                                                                                                end
                                                                                                                                                                                            end
                                                                                                                                                                                        end
                                                                                                                                                                                    end
                                                                                                                                                                                end
                                                                                                                                                                            end
                                                                                                                                                                        end
                                                                                                                                                                    end
                                                                                                                                                                end
                                                                                                                                                            end
                                                                                                                                                        end
                                                                                                                                                    end
                                                                                                                                                end
                                                                                                                                            end
                                                                                                                                        end
                                                                                                                                    end
                                                                                                                                end
                                                                                                                            end
                                                                                                                        end
                                                                                                                    end
                                                                                                                end
                                                                                                            end
                                                                                                        end
                                                                                                    end
                                                                                                end
                                                                                            end
                                                                                        end
                                                                                    end
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    if not skipped2 then
                        v3751 = getgenv()
                        v3751.OnFarm = true
                        skipped = true
                    end
                    if not skipped then
                        v3753 = getgenv()
                        v3753.OnFarm = false
                    end
                end
            else
                v3755 = getgenv()
                v3755.OnFarm = false
            end
        end
    end
    spawn3(fn91)
    local spawn4 = task.spawn
    local function fn92()
        local v3760, v3763
        repeat
            repeat
                task.wait()
                v3760 = localPlayer.Character
            until v3760
            v3763 = localPlayer.Character.PrimaryPart
        until v3763
        part.CFrame = localPlayer.Character.PrimaryPart.CFrame
        local v3768, v3773
        while true do
            if not task.wait() then
                break
            end
            v3768 = pcall
            function v3773()
                local v3781, v3785, v3787, v3796, v3808, v3814, v3819, v3822, v3827
                if getgenv().OnFarm then
                    if part then
                        if part.Parent == workspace then
                            v3781 = localPlayer.Character
                            if v3781 then
                                v3781 = localPlayer.Character.PrimaryPart
                            end
                            if v3781 then
                                if (v3781.Position - part.Position).Magnitude <= 200 then
                                    v3781.CFrame = part.CFrame
                                end
                            else
                                part.CFrame = v3781.CFrame
                            end
                        end
                    end
                    v3785 = localPlayer.Character
                    if v3785 then
                        v3796, v3814, v3822 = pairs(v3785:GetChildren())
                        for _, v in v3796, v3814, v3822 do
                            if v:IsA("BasePart") then
                                v.CanCollide = false
                            end
                        end
                        if v3785:FindFirstChild("Stun") then
                            if v3785.Stun.Value ~= 0 then
                                v3785.Stun.Value = 0
                            end
                        end
                        if v3785:FindFirstChild("Busy") then
                            if v3785.Busy.Value then
                                v3785.Busy.Value = false
                            end
                        end
                    end
                else
                    v3787 = localPlayer.Character
                    if v3787 then
                        v3808, v3819, v3827 = pairs(v3787:GetChildren())
                        for _, v2 in v3808, v3819, v3827 do
                            if v2:IsA("BasePart") then
                                v2.CanCollide = true
                            end
                        end
                    end
                end
            end
            v3768(v3773)
        end
    end
    spawn4(fn92)
    local spawn5 = task.spawn
    local function fn93()
        local tbl4 = {}
        local v3847, v3849, v3851, v3854, v3857, v3860, v3864, v3868, v3872, v3877, v3882, v3887, v3893, v3899, v3905, v3909, v3913, v3919, v3922, v3925, v3931, v3933, v3935, v3939, v3940, v3941, v3944, v3945, v3946, v3948
        if v77 then
            v3847 = {}
            v3854 = Vector3.new(-4652, 873, -1754)
            v3864 = Vector3.new(-7895, 5547, -380)
            v3877 = Vector3.new(61164, 5, 1820)
            v3893, v3909, v3922, v3933, v3940, v3945 = Vector3.new(3865, 5, -1926)
            v3847[1] = v3854
            v3847[2] = v3864
            v3847[3] = v3877
            v3847[4] = v3893
            v3847[5] = v3909
            v3847[6] = v3922
            v3847[7] = v3933
            v3847[8] = v3940
            v3847[9] = v3945
            tbl4 = v3847
        elseif v78 then
            v3849 = {}
            v3857 = Vector3.new(-317, 331, 597)
            v3868 = Vector3.new(2283, 15, 867)
            v3882 = Vector3.new(923, 125, 32853)
            v3899, v3913, v3925, v3935, v3941, v3946 = Vector3.new(-6509, 83, -133)
            v3849[1] = v3857
            v3849[2] = v3868
            v3849[3] = v3882
            v3849[4] = v3899
            v3849[5] = v3913
            v3849[6] = v3925
            v3849[7] = v3935
            v3849[8] = v3941
            v3849[9] = v3946
            tbl4 = v3849
        else
            if v79 then
                v3851 = {}
                v3860 = Vector3.new(-12471, 374, -7551)
                v3872 = Vector3.new(5756, 610, -282)
                v3887 = Vector3.new(-5092, 315, -3130)
                v3905 = Vector3.new(-12001, 332, -8861)
                v3919 = Vector3.new(5319, 23, -93)
                v3931, v3939, v3944, v3948 = Vector3.new(28286, 14897, 103)
                v3851[1] = v3860
                v3851[2] = v3872
                v3851[3] = v3887
                v3851[4] = v3905
                v3851[5] = v3919
                v3851[6] = v3931
                v3851[7] = v3939
                v3851[8] = v3944
                v3851[9] = v3948
                tbl4 = v3851
            end
        end
        local function fn194(arg5)
            local huge = math.huge
            local vector3 = Vector3.new()
            local foreach = table.foreach
            local v3953 = tbl4
            local function fn195(arg6, arg7)
                if (arg7 - arg5).Magnitude <= huge then
                    huge = (arg7 - arg5).Magnitude
                    vector3 = arg7
                end
            end
            foreach(v3953, fn195)
            return vector3
        end
        GetTPPos = fn194
    end
    spawn5(fn93)
    local v81 = nil
    local function fn6(arg8)
        v81 = arg8.p
        local character = localPlayer.Character
        if character then
            character = localPlayer.Character.PrimaryPart
        end
        if not character then
            return
        end
        local magnitude = (character.Position - arg8.p).Magnitude
        local v3969 = GetTPPos(arg8.p)
        local v3981, v3985, v3988, v3992
        if (character.Position - arg8.p).Magnitude > (arg8.p - v3969).Magnitude + 250 then
            character.CFrame = CFrame.new(v3969)
            part.CFrame = CFrame.new(v3969)
        elseif part then
            if magnitude <= 450 then
                v3981 = game:GetService("TweenService")
                v3985 = v3981:Create(part, TweenInfo.new(magnitude / tonumber(getgenv().TweenSpeed * 1.8), Enum.EasingStyle.Linear), {CFrame = arg8}):Play()
            else
                v3988 = game:GetService("TweenService")
                v3992 = v3988:Create(part, TweenInfo.new(magnitude / getgenv().TweenSpeed, Enum.EasingStyle.Linear), {CFrame = arg8}):Play()
            end
        end
    end
    if getgenv().SeaBoatHeight == nil then
        getgenv().SeaBoatHeight = 31
    end
    local function fn7(arg9, arg10)
        local v4041, v4045, v4047
        if arg9 and arg9.PrimaryPart and typeof(arg10) == "CFrame" then
            local boatHeight = tonumber(getgenv().SeaBoatHeight) or 31
            local boatTarget = arg10 + Vector3.new(0, boatHeight, 0)
            v4041 = (arg9.PrimaryPart.Position - boatTarget.Position).Magnitude
            v4045 = game:GetService("TweenService")
            v4047 = v4045:Create(arg9.PrimaryPart, TweenInfo.new(v4041 / math.max(tonumber(getgenv().SeaBoatSpeed) or 250, 1), Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = boatTarget})
            v4047:Play()
        end
    end
    local function fn8()
        local function fn196(arg11, arg12)
            local humanoid = arg12:FindFirstChild("Humanoid")
            local v4086, v4090, v4092
            if humanoid then
                if 0 < humanoid.Health then
                    v4086 = localPlayer.Character
                    if v4086 then
                        v4086 = localPlayer.Character.PrimaryPart
                    end
                    v4092 = arg12.PrimaryPart
                    if v4086 and v4092 then
                        if (v4092.Position - v4086.Position).Magnitude < 1500 then
                            humanoid.Health = 0
                            v4092.Size = Vector3.new(75, 75, 75)
                            v4092.CanCollide = false
                            sethiddenproperty(localPlayer, "SimulationRadius", math.huge)
                        end
                    end
                end
            else
                v4090 = arg12:FindFirstChild("Head")
                if v4090 then
                    v4090:Destroy()
                end
            end
        end
        table.foreach(enemies:GetChildren(), fn196)
        table.foreach(ReplicatedStorage:GetChildren(), fn196)
    end
    local function fn9()
        while true do
            if not getgenv().AutoKillAura then
                break
            end
            task.wait()
            fn8()
        end
    end
    local function fn10(arg13)
        local v4121, v4126, v4129
        if typeof(arg13) == "table" then
            v4121, v4126, v4129 = pairs(enemies:GetChildren())
            for _, v3 in v4121, v4126, v4129 do
                if table.find(arg13, v3.Name) then
                    return true
                end
            end
        end
    end
    local function fn11(arg14, arg15)
        local v215, v4144, v4148, v4150, v4152, v4154, v4155, v4159, v4165, v4167, v4173
        if arg14 then
            repeat
                task.wait()
                v4144, v4152, v4154 = pairs(arg14)
                for _, v4 in v4144, v4152, v4154 do
                    if fn10(arg15) then
                        break
                    end
                    v4159 = enemies
                    v215 = arg15 or v215
                    if not arg15 then
                        v215 = tbl[3]
                    end
                    if v4159:FindFirstChild(v215) then
                        break
                    end
                    if part then
                        v4165 = game:GetService("TweenService")
                        v4167 = v4165:Create(part, TweenInfo.new((part.Position - v4.p).Magnitude / getgenv().TweenSpeed, Enum.EasingStyle.Linear), {CFrame = v4})
                        v4167:Play()
                        v4173 = v4167.Completed
                        v215 = v4173
                        v4173.Wait(v215)
                    end
                end
                if not getgenv().AutoFarm_Level then
                    break
                end
                v4148 = enemies
                v4155 = arg15 or v4154
                if not arg15 then
                    v4155 = tbl[3]
                end
                v4150 = v4148:FindFirstChild(v4155)
            until v4150
            return
        end
    end
    local function fn12(arg16, arg17)
        if arg16 then
            if arg16.FindFirstChild(arg16, "ESP_StyxzHub") then
                return
            end
        end
        local folder = Instance.new("Folder", arg16)
        folder.Name = "ESP_StyxzHub"
        local boxHandleAdornment = Instance.new("BoxHandleAdornment", folder)
        boxHandleAdornment.Size = Vector3.new(1, 0, 1, 0)
        boxHandleAdornment.Name = "ESP_StyxzHub"
        boxHandleAdornment.AlwaysOnTop = true
        boxHandleAdornment.ZIndex = 10
        boxHandleAdornment.Transparency = 0
        local billboardGui = Instance.new("BillboardGui", boxHandleAdornment)
        billboardGui.Adornee = arg16
        billboardGui.Size = UDim2.new(0, 100, 0, 150)
        billboardGui.StudsOffset = Vector3.new(0, 1, 0)
        billboardGui.AlwaysOnTop = true
        local textLabel = Instance.new("TextLabel", billboardGui)
        textLabel.BackgroundTransparency = 1
        textLabel.Position = UDim2.new(0, 0, 0, -50)
        textLabel.Size = UDim2.new(0, 100, 0, 100)
        textLabel.TextSize = 10
        textLabel.TextColor3 = Color3.new(1, 1, 1)
        textLabel.TextStrokeTransparency = 0
        local bottom = Enum.TextYAlignment.Bottom
        textLabel.TextYAlignment = bottom
        textLabel.Text = "..."
        textLabel.ZIndex = 15
        local v4238 = arg17 or bottom
        if not arg17 then
            v4238 = Color3.fromRGB(255, 255, 0)
        end
        textLabel.TextColor3 = v4238
        local spawn9 = task.spawn
        local function fn197()
            local v4267, v4268
            while true do
                if not task.wait() then
                    break
                end
                v4267 = pcall
                function v4268()
                    local humanoidRootPart = localPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local v4282, v4288, v4292, v4301
                    if humanoidRootPart then
                        if arg16 then
                            if arg16.Name == "HumanoidRootPart" then
                                if arg16.Parent:FindFirstChild("Humanoid") then
                                    v4282 = math.floor((humanoidRootPart.Position - arg16.Position).Magnitude / 3)
                                    v4301 = math.floor(arg16.Parent.Humanoid.Health)
                                    textLabel.Text = "Name : " .. arg16.Parent.Name .. " | HP : " .. tostring(v4301) .. " | MAG : " .. tostring(v4282)
                                end
                            end
                        end
                    elseif humanoidRootPart then
                        if arg16 then
                            if arg16.Name == "Handle" then
                                v4288 = math.floor((humanoidRootPart.Position - arg16.Position).Magnitude / 3)
                                textLabel.Text = arg16.Parent.Name .. " <" .. tostring(v4288) .. ">"
                            end
                        end
                    elseif humanoidRootPart then
                        if arg16 then
                            v4292 = math.floor((humanoidRootPart.Position - arg16.Position).Magnitude / 3)
                            textLabel.Text = arg16.Name .. " <" .. tostring(v4292) .. ">"
                        end
                    end
                end
                v4267(v4268)
            end
        end
        spawn9(fn197)
    end
    local function fn13(arg18)
        if arg18 then
            if arg18:FindFirstChild("ESP_StyxzHub") then
                arg18.ESP_StyxzHub:Destroy()
            end
        end
    end
    local function fn14()
        local v4366, v4367, v4372, v4375, v4384
        while true do
            if not getgenv().EspPlayer then
                break
            end
            task.wait()
            v4366 = pairs
            v4372 = game:GetService("Players")
            v4367, v4375, v4384 = v4366(v4372:GetPlayers())
            for _, v5 in v4367, v4375, v4384 do
                if v5.Name ~= localPlayer.Name then
                    if v5.Character then
                        if v5.Character:FindFirstChild("HumanoidRootPart") then
                            fn12(v5.Character.HumanoidRootPart, Color3.fromRGB(0, 255, 0))
                        end
                    end
                end
            end
        end
        local v4368 = pairs
        local Players2 = game:GetService("Players")
        local v4369, v4380, v4388
        v4369, v4380, v4388 = v4368(Players2:GetPlayers())
        for _, v6 in v4369, v4380, v4388 do
            if v6.Character then
                if v6.Character:FindFirstChild("HumanoidRootPart") then
                    fn13(v6.Character.HumanoidRootPart)
                end
            end
        end
    end
    local function fn15()
        local v4443, v4449, v4456
        while true do
            if not getgenv().EspFlowers then
                break
            end
            task.wait()
            v4443, v4449, v4456 = pairs(workspace:GetChildren())
            for _, v7 in v4443, v4449, v4456 do
                if v7 then
                    if v7:IsA("BasePart") then
                        if v7.Name == "Flower1" then
                            fn12(v7, v7.Color)
                        end
                    end
                end
            end
        end
        local v4445, v4453, v4459
        v4445, v4453, v4459 = pairs(workspace:GetChildren())
        for _, v8 in v4445, v4453, v4459 do
            local skipped3 = false
            if v8 then
                if v8:IsA("BasePart") then
                    if v8.Name ~= "Flower1" then
                        if v8.Name ~= "Flower2" then
                            skipped3 = true
                        end
                    end
                    if not skipped3 then
                        fn13(v8)
                    end
                end
            end
        end
    end
    local function fn16()
        local v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272
        while true do
            v262 = getgenv().EspFruits
            if not v262 then
                break
            end
            v262 = task.wait
            v262()
            v262 = pairs
            v263, v264, v265, v266, v267, v268, v269, v270, v271, v272 = workspace:GetChildren()
            v262, v263, v264 = v262(v263, v264, v265, v266, v267, v268, v269, v270, v271, v272)
            for _, v9 in v262, v263, v264 do
                if v9 then
                    v268 = v9
                    v267 = v9.IsA
                    v269 = "Tool"
                    v267 = v267(v268, v269)
                    if v267 then
                        v268 = v9
                        v267 = v9.FindFirstChild
                        v269 = "Handle"
                        v267 = v267(v268, v269)
                        if v267 then
                            goto lbl_41_28
                        end
                    end
                end
                if v9 then
                    v267 = string.find
                    v268 = v9.Name
                    v269 = "Fruit"
                    v267 = v267(v268, v269)
                    if v267 then
                        v268 = v9
                        v267 = v9.FindFirstChild
                        v269 = "Handle"
                        v267 = v267(v268, v269)
                        ::lbl_41_28::
                        if v267 then
                            v267 = fn12
                            v268 = v9.Handle
                            v269, v270, v271, v272 = Color3.fromRGB(255, 0, 0)
                            v267(v268, v269, v270, v271, v272)
                        end
                    end
                end
            end
        end
        v262 = pairs
        v263, v264, v265, v266, v267, v268, v269, v270, v271, v272 = workspace:GetChildren()
        v262, v263, v264 = v262(v263, v264, v265, v266, v267, v268, v269, v270, v271, v272)
        for _, v10 in v262, v263, v264 do
            if v10 then
                v268 = v10
                v267 = v10.FindFirstChild
                v269 = "Handle"
                v267 = v267(v268, v269)
                if v267 then
                    v267 = fn13
                    v268 = v10.Handle
                    v267(v268)
                end
            end
        end
    end
    local function fn17()
        local v4504, v4513, v4523
        while true do
            if not getgenv().EspIslands then
                break
            end
            task.wait()
            v4504, v4513, v4523 = pairs(workspace:WaitForChild("_WorldOrigin", 9000000000):WaitForChild("Locations", 9000000000):GetChildren())
            for _, v11 in v4504, v4513, v4523 do
                if v11 then
                    fn12(v11, Color3.fromRGB(0, 255, 255))
                end
            end
        end
        local v4508, v4518, v4528
        v4508, v4518, v4528 = pairs(workspace:WaitForChild("_WorldOrigin", 9000000000):WaitForChild("Locations", 9000000000):GetChildren())
        for _, v12 in v4508, v4518, v4528 do
            if v12 then
                fn13(v12)
            end
        end
    end
    local function fn18()
        local v4564, v4570, v4577
        while true do
            if not getgenv().EspChests then
                break
            end
            task.wait()
            v4564, v4570, v4577 = pairs(workspace:GetChildren())
            for _, v13 in v4564, v4570, v4577 do
                if v13 then
                    if v13.Name == "Chest3" then
                        fn12(v13, Color3.fromRGB(0, 255, 255))
                    elseif v13.Name == "Chest2" then
                        fn12(v13, Color3.fromRGB(255, 255, 0))
                    else
                        if v13.Name == "Chest1" then
                            fn12(v13, Color3.fromRGB(150, 150, 150))
                        end
                    end
                end
            end
        end
        local v4566, v4574, v4580
        v4566, v4574, v4580 = pairs(workspace:GetChildren())
        for _, v14 in v4566, v4574, v4580 do
            local skipped4 = false
            if v14 then
                if v14.Name ~= "Chest3" then
                    if v14.Name ~= "Chest2" then
                        if v14.Name ~= "Chest1" then
                            skipped4 = true
                        end
                    end
                end
                if not skipped4 then
                    fn13(v14)
                end
            end
        end
    end
    local module = require(ReplicatedStorage.Util.CameraShaker)
    module:Stop()
    local function fn94()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ToshyWare/StyxzHub/refs/heads/main/Kaitun/FastAttackLoading.lua"))()
    end
    GetBladeHit = fn94
    local function fn95()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ToshyWare/StyxzHub/refs/heads/main/Kaitun/FastAttackLoading.lua"))()
    end
    AttackHit = fn95
    local function fn19()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ToshyWare/StyxzHub/refs/heads/main/Kaitun/FastAttackLoading.lua"))()
    end
    local function fn20()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ToshyWare/StyxzHub/refs/heads/main/Kaitun/FastAttackLoading.lua"))()
    end
    local now = tick()
    local function fn21()
        local character2 = localPlayer.Character
        if character2 then
            character2 = localPlayer.Character.PrimaryPart
        end
        if character2 then
            if v81 then
                if 25 < (character2.Position - v81).Magnitude then
                    return
                end
            end
        end
        local v4688, v4696
        if getgenv().AutoClick then
            if tick() - now >= getgenv().AutoClickDelay then
                v4688 = task.spawn
                function v4696()
                    VirtualUser:CaptureController()
                    VirtualUser:Button1Down(Vector2.new(math.huge, math.huge))
                end
                v4688(v4696)
                now = tick()
            end
        end
    end
    local function fn22()
        local HttpService2 = game:GetService("HttpService")
        local TeleportService = game:GetService("TeleportService")
        local str72 = "https://games.roblox.com/v1/games/"
        local placeId = game.PlaceId
        local v323 = str72 .. placeId .. "/servers/Public?sortOrder=Asc&limit=100"
        local function fn198(arg19)
            local v4738 = game
            local v4743 = v323
            local skipped5 = false
            local v334
            if arg19 then
                v334 = "&cursor=" .. arg19
                if v334 then
                    skipped5 = true
                end
            end
            if not skipped5 then
                v334 = ""
            end
            local response = v4738:HttpGet(v4743 .. v334)
            return HttpService2:JSONDecode(response)
        end
        ListServers = fn198
        local v4723 = nil
        local v4726 = nil
        local v4724, v4730
        repeat
            task.wait()
            v4730 = ListServers(v4726)
            v4724 = v4730.data[1]
            v4726 = v4730.nextPageCursor
        until v4724
        TeleportService:TeleportToPlaceInstance(placeId, v4724.id, localPlayer)
    end
    local function fn23(arg20)
        local v336
        local function fn199(arg21, arg22)
            local v4765
            if arg22.Name == arg20 then
                v4765 = arg22:FindFirstChild("Humanoid")
                if v4765 then
                    if 0 < v4765.Health then
                        v336 = true
                    end
                end
            end
        end
        table.foreach(enemies:GetChildren(), fn199)
        table.foreach(ReplicatedStorage:GetChildren(), fn199)
        return v336
    end
    local function fn24()
        local character3 = localPlayer.Character
        if character3 then
            character3 = localPlayer.Character:FindFirstChild("HasBuso")
        end
        if getgenv().AutoHaki and not character3 then
            fn5("Buso")
        end
    end
    local function fn25(arg23)
        local v4782 = localPlayer
        if v4782 then
            v4782 = localPlayer.Character
        end
        local v4784 = localPlayer
        if v4784 then
            v4784 = localPlayer.Backpack
        end
        local v4787
        if v4782 then
            v4787 = v4782:FindFirstChild(arg23)
            if not v4787 then
                v4787 = v4784:FindFirstChild(arg23)
            end
            return v4787
        end
    end
    local function fn26(arg24)
        local v4793 = localPlayer
        if v4793 then
            v4793 = localPlayer.Character
        end
        local v4795 = localPlayer
        if v4795 then
            v4795 = localPlayer.Backpack
        end
        local v4798, v4803, v4809
        v4798, v4803, v4809 = pairs(v4795:GetChildren())
        for _, v15 in v4798, v4803, v4809 do
            if v15 then
                if v15:IsA("Tool") then
                    if v15.ToolTip == arg24 then
                        return v15
                    end
                end
            end
        end
        local v4800, v4806, v4812
        if v4793 then
            v4800, v4806, v4812 = pairs(v4793:GetChildren())
            for _, v16 in v4800, v4806, v4812 do
                if v16 then
                    if v16:IsA("Tool") then
                        if v16.ToolTip == arg24 then
                            return v16
                        end
                    end
                end
            end
        end
    end
    local function fn27(arg25)
        local v4834 = fn25(arg25)
        if v4834 then
            if v4834:FindFirstChild("Level") then
                return v4834.Level.Value
            end
        end
    end
    local function fn28(arg26)
        local backpack = localPlayer.Backpack
        local character4 = localPlayer.Character
        local v368
        local v4844 = character4 or v368
        if character4 then
            v4844 = character4:FindFirstChild("Humanoid")
        end
        if backpack and v4844 then
            if backpack:FindFirstChild(arg26) then
                v4844:EquipTool(backpack[arg26])
            end
        end
    end
    local function fn29(arg27)
        local huge2 = math.huge
        local v372 = nil
        local function fn200(arg28, arg29)
            local v4874, v4878, v4882
            if table.find(arg27, arg29.Name) then
                v4874 = arg29:FindFirstChild("Humanoid")
                if v4874 then
                    if 0 < v4874.Health then
                        v4878 = arg29.PrimaryPart
                        v4882 = localPlayer.Character
                        if v4882 then
                            v4882 = localPlayer.Character.PrimaryPart
                        end
                        if v4878 and v4882 then
                            if (v4882.Position - v4878.Position).Magnitude <= huge2 then
                                huge2 = (v4882.Position - v4878.Position).Magnitude
                                v372 = arg29
                            end
                        end
                    end
                end
            end
        end
        table.foreach(enemies:GetChildren(), fn200)
        table.foreach(ReplicatedStorage:GetChildren(), fn200)
        return v372
    end
    local v83 = nil
    local spawn6 = task.spawn
    local function fn96()
        local function fn201(arg30, arg31)
            local v4897 = localPlayer
            if v4897 then
                v4897 = localPlayer.Character
            end
            local v388
            local v4899 = v4897 or v388
            if v4897 then
                v4899 = v4897:FindFirstChildOfClass("Tool")
            end
            local v4905, v4911
            if arg31 then
                if arg31:FindFirstChild("RemoteEvent") and arg30 then
                    v4905 = getgenv()
                    v4905.AimbotPos = arg30.Position
                    arg31.RemoteEvent:FireServer(arg30.Position)
                end
            elseif v4899 then
                if v4899:FindFirstChild("RemoteEvent") and arg30 then
                    v4911 = getgenv()
                    v4911.AimbotPos = arg30.Position
                    v4899.RemoteEvent:FireServer(arg30.Position)
                end
            end
        end
        v83 = fn201
        local v382 = nil
        local v4894 = hookmetamethod
        local v4896 = game
        local str73 = "__namecall"
        local function fn202(arg32, arg33, ...)
            local name = arg32.Name
            local v393, v394, v395
            if name == "RemoteEvent" then
                name = getnamecallmethod()
                v393 = name
                name = name.lower
                name = name(v393)
                if name == "fireserver" then
                    name = typeof
                    v393 = arg33
                    name = name(v393)
                    if name == "Vector3" then
                        name = getgenv().AimbotPos
                        if name then
                            name = getgenv().AutoFarmSea
                            if not name then
                                name = getgenv().AutoWoodPlanks
                                if not name then
                                    goto lbl_43_50
                                end
                            end
                            name = getgenv().SeaAimBotSkill
                            if name then
                                name = v382
                                v393 = arg32
                                v394 = getgenv().AimbotPos
                                v395 = ...
                                do
                                    return name(v393, v394, v395)
                                end
                                ::lbl_43_50::
                                name = getgenv().AutoFarmMastery
                                if name then
                                    name = getgenv().AimBotSkill
                                    if name then
                                        name = v382
                                        v393 = arg32
                                        v394 = getgenv().AimbotPos
                                        v395 = ...
                                        return name(v393, v394, v395)
                                    end
                                end
                            end
                        end
                    end
                end
            end
            name = v382
            v393 = arg32
            v394 = arg33
            v395 = ...
            return name(v393, v394, v395)
        end
        v382 = v4894(v4896, str73, fn202)
    end
    spawn6(fn96)
    local function fn30(arg34)
        local VirtualInputManager = game:GetService("VirtualInputManager")
        VirtualInputManager:SendKeyEvent(true, arg34, false, game)
        VirtualInputManager:SendKeyEvent(false, arg34, false, game)
    end
    local function fn31(arg35)
        local v4944, v4947, v4950
        v4944, v4947, v4950 = pairs(localPlayer.Backpack:GetChildren())
        for _, v17 in v4944, v4947, v4950 do
            if v17 then
                if v17.ToolTip == arg35 then
                    fn28(v17.Name)
                    return
                end
            end
        end
    end
    local function fn32()
        local v4961, v4964, v4967
        v4961, v4964, v4967 = pairs(localPlayer.Backpack:GetChildren())
        for _, v18 in v4961, v4964, v4967 do
            if v18 then
                if v18.ToolTip == getgenv().FarmTool then
                    fn28(v18.Name)
                    return
                end
            end
        end
    end
    local function fn33()
        local children = workspace:GetChildren()
        local huge3 = math.huge
        local v4982 = nil
        local v4984, v4988, v4990
        v4984, v4988, v4990 = pairs(children)
        local v428, v429, v4992
        for _, v19 in v4984, v4988, v4990 do
            v4992 = localPlayer
            if v4992 then
                v4992 = localPlayer.Character
                if v4992 then
                    v4992 = localPlayer.Character.PrimaryPart
                end
            end
            v428 = v19 or v428
            if v19 then
                v429 = v19
                v428 = v19.IsA(v429, "Tool")
                if v428 then
                    v429 = v19
                    v428 = v19.FindFirstChild(v429, "Handle")
                end
            end
            v429 = v19 or v429
            if v19 then
                v429 = string.find(v19.Name, "Fruit")
                if v429 then
                    v429 = v19:FindFirstChild("Handle")
                end
            end
            if v4992 and v428 then
                if huge3 >= (v4992.Position - v428.Position).Magnitude then
                    huge3 = (v4992.Position - v428.Position).Magnitude
                    v4982 = v19
                end
            elseif v4992 and v429 then
                if huge3 >= (v4992.Position - v429.Position).Magnitude then
                    huge3 = (v4992.Position - v429.Position).Magnitude
                    v4982 = v19
                end
            end
        end
        local v4985 = v4982 or v4984
        if v4982 then
            v4985 = v4982:FindFirstChild("Handle")
        end
        return v4985
    end
    local function fn34(arg36)
        fn5(arg36, true)
        fn5(arg36)
    end
    local function fn35()
        local now3 = tick()
        local v5032, v5040, v5045, v5050, v5070
        while true do
            if not getgenv().AutoChestBypass then
                break
            end
            task.wait()
            v5032 = localPlayer
            if v5032 then
                v5032 = localPlayer.Character
                if v5032 then
                    v5032 = localPlayer.Character:FindFirstChild("HumanoidRootPart")
                end
            end
            v5040 = workspace:FindFirstChild("Chest3")
            v5045 = workspace:FindFirstChild("Chest2")
            v5050 = workspace:FindFirstChild("Chest1")
            if not fn25("God's Chalice") then
                if not fn25("Fist of Darkness") then
                    if v5032 and v5040 then
                        if v5040.Transparency < 1 then
                            v5032.CFrame = v5040.CFrame
                        end
                    elseif v5032 and v5045 then
                        if v5045.Transparency < 1 then
                            v5032.CFrame = v5045.CFrame
                        end
                    elseif v5032 and v5050 then
                        if v5050.Transparency < 1 then
                            v5032.CFrame = v5050.CFrame
                        end
                    end
                end
            end
            if not fn25("God's Chalice") then
                if not fn25("Fist of Darkness") then
                    if 10 < tick() - now3 then
                        v5070 = localPlayer
                        if v5070 then
                            v5070 = localPlayer.Character
                            if v5070 then
                                v5070 = localPlayer.Character:FindFirstChild("Humanoid")
                            end
                        end
                        if v5070 then
                            v5070.Health = 0
                            now3 = tick()
                        end
                    end
                end
            end
        end
    end
    local function fn36()
        local v5090, v5091, v5092, v5097, v5102, v5106, v5113
        while true do
            if not getgenv().AutoChestTween then
                break
            end
            task.wait()
            v5090 = math.huge
            v5091 = nil
            v5092 = localPlayer
            if v5092 then
                v5092 = localPlayer.Character
                if v5092 then
                    v5092 = localPlayer.Character.PrimaryPart
                end
            end
            v5097, v5102, v5106 = pairs(workspace:GetChildren())
            for _, v20 in v5097, v5102, v5106 do
                if v20:IsA("BasePart") then
                    if v20.Transparency < 1 then
                        v5113 = v20.Name
                        if v5113 ~= "Chest3" then
                            v5113 = v20.Name
                            if v5113 ~= "Chest2" then
                                v5113 = v20.Name
                            end
                        end
                        if v5113 == "Chest1" and v5092 then
                            if v5090 >= (v5092.Position - v20.Position).Magnitude then
                                v5090 = (v5092.Position - v20.Position).Magnitude
                                v5091 = v20
                            end
                        end
                    end
                end
            end
            if v5091 then
                fn6(v5091.CFrame)
            end
        end
    end
    local function fn37(arg37, arg38)
        fn5("StartQuest", arg37, arg38)
    end
    local function fn38(arg39, arg40, arg41)
        local humanoidRootPart2 = localPlayer.Character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart2 then
            if (humanoidRootPart2.Position - arg41.p).Magnitude <= 3 then
                fn5("StartQuest", arg39, arg40)
                task.wait(0.5)
            end
        else
            fn6(arg41)
        end
    end
    local function fn39()
        local value = level.Value
        local v5151, v5152, v5153, v5154, v5155, v5156, v5159, v5161, v5162, v5163, v5164, v5167, v5169, v5170, v5171, v5173, v5175, v5176, v5179, v5181, v5182, v5185, v5187, v5189, v5191, v5193, v5197, v5201, v5205, v5207, v5209, v5211, v5212, v5213, v5214, v5217, v5219, v5221, v5222, v5225, v5227, v5228, v5229, v5230, v5233, v5235, v5236, v5239, v5240, v5246, v5248, v5249, v5252, v5253, v5258, v5260, v5261, v5265, v5266, v5272, v5274, v5275, v5278, v5279, v5285, v5287, v5288, v5291, v5292, v5298, v5300, v5301, v5304, v5305, v5308, v5309, v5312, v5313, v5316, v5317, v5320, v5321, v5327, v5329, v5330, v5333, v5334, v5337, v5338, v5341, v5342, v5345, v5346, v5349, v5350, v5353, v5354, v5357, v5358, v5364, v5366, v5367, v5370, v5371, v5376, v5378, v5379, v5383, v5384, v5390, v5392, v5393, v5396, v5397, v5400, v5401, v5404, v5405, v5411, v5413, v5414, v5417, v5418, v5424, v5426, v5427, v5430, v5431, v5434, v5435, v5438, v5439, v5445, v5447, v5448, v5451, v5452, v5458, v5460, v5461, v5464, v5465, v5468, v5469, v5472, v5473, v5476, v5477, v5480, v5481, v5484, v5485, v5488, v5489, v5495, v5497, v5498, v5501, v5502, v5505, v5506, v5509, v5510, v5513, v5514, v5517, v5518, v5521, v5522, v5525, v5526, v5529, v5530, v5533, v5534, v5537, v5538, v5541, v5542, v5545, v5546, v5549, v5550, v5552, v5553, v5558, v5561, v5564, v5567, v5570, v5573, v5577, v5580, v5583, v5586, v5589, v5593, v5596, v5599, v5602, v5605, v5608, v5611, v5615, v5618, v5621, v5625, v5628, v5631, v5634, v5637, v5641, v5645, v5649, v5652, v5655, v5658, v5661, v5664, v5667, v5671, v5674, v5677, v5680, v5684, v5687, v5690, v5693, v5696, v5700, v5703, v5706, v5709, v5712, v5716, v5719, v5722, v5725, v5728, v5732, v5735, v5738, v5741, v5744, v5748, v5751, v5754, v5757, v5760, v5764, v5767, v5770, v5773, v5776, v5780, v5783, v5786, v5789, v5792, v5795, v5798, v5801, v5804, v5807, v5810, v5813, v5816, v5820, v5823, v5826, v5829, v5832, v5835, v5838, v5841, v5844, v5847, v5850, v5853, v5856, v5859, v5862, v5865, v5868, v5872, v5875, v5878, v5881, v5884, v5888, v5891, v5894, v5897, v5900, v5904, v5907, v5910, v5913, v5916, v5919, v5922, v5925, v5928, v5932, v5935, v5938, v5941, v5944, v5948, v5951, v5954, v5957, v5960, v5963, v5966, v5969, v5972, v5976, v5979, v5982, v5985, v5988, v5992, v5995, v5998, v6001, v6004, v6007, v6010, v6013, v6016, v6019, v6022, v6025, v6028, v6031, v6034, v6037, v6040, v6044, v6047, v6050, v6053, v6056, v6059, v6062, v6065, v6068, v6071, v6074, v6077, v6080, v6083, v6086, v6089, v6092, v6095, v6098, v6101, v6104, v6107, v6110, v6113, v6116, v6119, v6122, v6125, v6128, v6131, v6134, v6136, v6140, v6142, v6146, v6148, v6152, v6156, v6158, v6162, v6164, v6168, v6172, v6174, v6178, v6182, v6186, v6190, v6194, v6198, v6202, v6206, v6210, v6214, v6218, v6222, v6226, v6230, v6234, v6238, v6242, v6246, v6250, v6254, v6256, v6260, v6264, v6268, v6270, v6274, v6278, v6280, v6284, v6286, v6290, v6294, v6296, v6300, v6302, v6306, v6310, v6312, v6316, v6318, v6322, v6326, v6328, v6332, v6334, v6338, v6342, v6344, v6348, v6350, v6354, v6358, v6360, v6364, v6366, v6370, v6374, v6376, v6380, v6382, v6386, v6388, v6392, v6394, v6398, v6400, v6404, v6406, v6410, v6414, v6416, v6420, v6422, v6426, v6428, v6432, v6434, v6438, v6440, v6444, v6446, v6450, v6452, v6456, v6458, v6462, v6466, v6468, v6472, v6474, v6478, v6482, v6484, v6488, v6490, v6494, v6498, v6500, v6504, v6506, v6510, v6512, v6516, v6518, v6522, v6526, v6528, v6532, v6534, v6538, v6542, v6544, v6548, v6550, v6554, v6556, v6560, v6562, v6566, v6570, v6572, v6576, v6578, v6582, v6586, v6588, v6592, v6594, v6598, v6600, v6604, v6606, v6610, v6612, v6616, v6618, v6622, v6624, v6628, v6630, v6634, v6638, v6640, v6644, v6646, v6650, v6652, v6656, v6658, v6662, v6664, v6668, v6670, v6674, v6676, v6680, v6682, v6686, v6688, v6692, v6694, v6698, v6700, v6704, v6706, v6710, v6712, v6716, v6718, v6722, v6724, v6728, v6730, v6735, v6737, v6740, v6742, v6747, v6750, v6752, v6755, v6757, v6760, v6763, v6765, v6770, v6773, v6776, v6779, v6784, v6787, v6790, v6795, v6798, v6801, v6804, v6807, v6810, v6813, v6816, v6819, v6822, v6825, v6828, v6833, v6835, v6838, v6841, v6844, v6846, v6851, v6854, v6856, v6861, v6863, v6866, v6869, v6871, v6876, v6878, v6881, v6884, v6886, v6891, v6893, v6896, v6899, v6901, v6904, v6906, v6911, v6914, v6916, v6921, v6923, v6928, v6931, v6933, v6938, v6940, v6945, v6948, v6950, v6955, v6957, v6962, v6964, v6969, v6971, v6976, v6978, v6983, v6985, v6990, v6993, v6995, v7000, v7002, v7007, v7009, v7014, v7016, v7021, v7023, v7028, v7030, v7033, v7035, v7040, v7042, v7047, v7050, v7052, v7057, v7059, v7064, v7067, v7069, v7074, v7076, v7081, v7084, v7086, v7091, v7093, v7098, v7100, v7105, v7107, v7112, v7115, v7117, v7122, v7124, v7129, v7132, v7134, v7139, v7141, v7146, v7148, v7153, v7155, v7160, v7163, v7165, v7170, v7172, v7177, v7180, v7182, v7187, v7189, v7194, v7196, v7201, v7203, v7208, v7210, v7215, v7217, v7220, v7222, v7225, v7227, v7232, v7235, v7237, v7242, v7244, v7249, v7251, v7256, v7258, v7263, v7265, v7270, v7272, v7275, v7277, v7280, v7282, v7285, v7287, v7290, v7292, v7295, v7297, v7300, v7302, v7307, v7309, v7314, v7316, v7321, v7323, v7328, v7330, v7334, v7336, v7339, v7341, v7347, v7350, v7352, v7355, v7357, v7360, v7363, v7365, v7369, v7372, v7375, v7378, v7382, v7385, v7388, v7394, v7397, v7400, v7403, v7406, v7409, v7412, v7415, v7418, v7421, v7424, v7427, v7433, v7435, v7438, v7441, v7444, v7446, v7452, v7455, v7457, v7461, v7463, v7466, v7469, v7471, v7475, v7477, v7480, v7483, v7485, v7491, v7493, v7496, v7499, v7501, v7504, v7506, v7512, v7515, v7517, v7523, v7525, v7531, v7534, v7536, v7542, v7544, v7550, v7553, v7555, v7559, v7561, v7567, v7569, v7575, v7577, v7581, v7583, v7589, v7591, v7597, v7600, v7602, v7608, v7610, v7614, v7616, v7622, v7624, v7630, v7632, v7638, v7640, v7643, v7645, v7651, v7653, v7659, v7662, v7664, v7668, v7670, v7676, v7679, v7681, v7687, v7689, v7693, v7696, v7698, v7702, v7704, v7710, v7712, v7718, v7720, v7726, v7729, v7731, v7737, v7739, v7745, v7748, v7750, v7756, v7758, v7764, v7766, v7772, v7774, v7780, v7783, v7785, v7791, v7793, v7799, v7802, v7804, v7810, v7812, v7818, v7820, v7826, v7828, v7834, v7836, v7842, v7844, v7847, v7849, v7852, v7854, v7858, v7861, v7863, v7867, v7869, v7875, v7877, v7883, v7885, v7891, v7893, v7899, v7901, v7904, v7906, v7909, v7911, v7914, v7916, v7919, v7921, v7924, v7926, v7929, v7931, v7935, v7937, v7941, v7943, v7947, v7949, v7953, v7954, v7957, v7958, v7960, v7961, v7967, v7969, v7970, v7972, v7973, v7975, v7977, v7978, v7981, v7983, v7985, v7987, v7990, v7992, v7994, v8000, v8002, v8004, v8006, v8008, v8010, v8012, v8014, v8016, v8018, v8020, v8022, v8026, v8027, v8029, v8031, v8033, v8034, v8038, v8040, v8041, v8044, v8045, v8047, v8049, v8050, v8053, v8054, v8056, v8058, v8059, v8063, v8064, v8066, v8068, v8069, v8071, v8072, v8076, v8078, v8079, v8083, v8084, v8088, v8090, v8091, v8095, v8096, v8100, v8102, v8103, v8106, v8107, v8113, v8114, v8120, v8121, v8124, v8125, v8131, v8132, v8136, v8138, v8139, v8143, v8144, v8147, v8148, v8152, v8153, v8157, v8158, v8164, v8165, v8167, v8168, v8172, v8173, v8177, v8179, v8180, v8183, v8184, v8188, v8190, v8191, v8195, v8196, v8199, v8201, v8202, v8205, v8206, v8212, v8213, v8219, v8220, v8226, v8228, v8229, v8235, v8236, v8242, v8244, v8245, v8251, v8252, v8258, v8259, v8265, v8266, v8272, v8274, v8275, v8279, v8280, v8286, v8288, v8289, v8293, v8294, v8300, v8301, v8305, v8306, v8310, v8311, v8317, v8318, v8320, v8321, v8323, v8324, v8327, v8329, v8330, v8333, v8334, v8338, v8339, v8343, v8344, v8348, v8349, v8353, v8354, v8356, v8357, v8359, v8360, v8362, v8363, v8365, v8366, v8368, v8369, v8371, v8372, v8375, v8376, v8379, v8380, v8383, v8384, v8387, v8389, v8390, v8396, v8397, v8398, v8400, v8402, v8406, v8409, v8410, v8413, v8415, v8416, v8418, v8419, v8422, v8423, v8424, v8427, v8430, v8433, v8436, v8439, v8441, v8447, v8451, v8453, v8457, v8460, v8463, v8465, v8468, v8471, v8475, v8476, v8479, v8482, v8484, v8487, v8490, v8492, v8494, v8498, v8504, v8508, v8512, v8518, v8524, v8530, v8534, v8538, v8541, v8547, v8550, v8554, v8557, v8560, v8566, v8567, v8568, v8570, v8572, v8575, v8578, v8581, v8584, v8585, v8586, v8587, v8588, v8589, v8590, v8592, v8594, v8596, v8598, v8599, v8600, v8604, v8605, v8606, v8607, v8608, v8611, v8613, v8614, v8616, v8617, v8618, v8619, v8620, v8622, v8623, v8624, v8626, v8628, v8630, v8632, v8634, v8635, v8639, v8642, v8643, v8646, v8648, v8650, v8651, v8653, v8655, v8658, v8659, v8661, v8663, v8664, v8666, v8668, v8669, v8670, v8673, v8677, v8680, v8683, v8689, v8695, v8699, v8702, v8705, v8707, v8711, v8713, v8716, v8718, v8720, v8724, v8725, v8726, v8727, v8728, v8730, v8732, v8734, v8736, v8737, v8738, v8739, v8740, v8741, v8742, v8743, v8744, v8745, v8746, v8747, v8748, v8751, v8752, v8753, v8754, v8755, v8757, v8758, v8759, v8760, v8761, v8762, v8763, v8764, v8765, v8766, v8767, v8768, v8769, v8770, v8771, v8772, v8773, v8776, v8778, v8779, v8781, v8782, v8783, v8784, v8785, v8786, v8788, v8789, v8790, v8791, v8792, v8793, v8794, v8795, v8796, v8798, v8801, v8803, v8805, v8809, v8815, v8818, v8820, v8822, v8823, v8826, v8827, v8829, v8830, v8831, v8834, v8835, v8836, v8837, v8838, v8839, v8840, v8841, v8842, v8843, v8844, v8845, v8846, v8847, v8848, v8849, v8850, v8851, v8852, v8853, v8854, v8856, v8857, v8858, v8859, v8860, v8861, v8862, v8863, v8864, v8865, v8866, v8867, v8868, v8869, v8870, v8871, v8872, v8873, v8874, v8875, v8876, v8877, v8879, v8880, v8881, v8882, v8883, v8884, v8885, v8886, v8887, v8888, v8889, v8890, v8891, v8892, v8893, v8894, v8895, v8896, v8897, v8899, v8900, v8901, v8904, v8908, v8910, v8911, v8912, v8913, v8915, v8916, v8917, v8918, v8919, v8921, v8922, v8923, v8924, v8925, v8926, v8927, v8928, v8929, v8930, v8931, v8932, v8933, v8934, v8935, v8936, v8937, v8938, v8939, v8940, v8941, v8942, v8943, v8944, v8945, v8946, v8947, v8948, v8949, v8950, v8951, v8952, v8953, v8954, v8955, v8956, v8957, v8958, v8959, v8960, v8961, v8962, v8963, v8964, v8965, v8966, v8967, v8968, v8969, v8970, v8971, v8972, v8973, v8974, v8975, v8976, v8977, v8978, v8979, v8980, v8981, v8982, v8983, v8984, v8985, v8987, v8990, v8991, v8992, v8993, v8994, v8995, v8996, v8997, v8998, v8999, v9000, v9001, v9002, v9003, v9004, v9005, v9006, v9007, v9008, v9009, v9010, v9011, v9012, v9013, v9014, v9015, v9016, v9017, v9018, v9019, v9020, v9021, v9022, v9023, v9024, v9025, v9026, v9027, v9028, v9029, v9030, v9031, v9032, v9033, v9034, v9035, v9036, v9037, v9038, v9039, v9040, v9041, v9042, v9043, v9044, v9045, v9046, v9047, v9048, v9049, v9050, v9051, v9052, v9053, v9054, v9055, v9056, v9057, v9058, v9059, v9060, v9061, v9062, v9063, v9064, v9065, v9067, v9068, v9069, v9070, v9071, v9072, v9073, v9074, v9075, v9076, v9077, v9078, v9079, v9080, v9081, v9082, v9083, v9084, v9085, v9086, v9087, v9088, v9089, v9090, v9091, v9092, v9093, v9094, v9095
        if v77 then
            if value < 10 then
                if tostring(localPlayer.Team) == "Pirates" then
                    v5151 = {}
                    v5558 = CFrame.new(1059, 17, 1546)
                    v6136 = false
                    v6730 = "Bandit"
                    v7330 = "BanditQuest1"
                    v7954 = 1
                    v5151[1] = v5558
                    v5151[2] = v6136
                    v5151[3] = v6730
                    v5151[4] = v7330
                    v5151[5] = v7954
                    tbl = v5151
                    v5152 = {}
                    v5561 = CFrame.new(943, 45, 1562)
                    v6140 = CFrame.new(1115, 45, 1619)
                    v6735, v7334, v7957, v8389, v8599, v8747, v8853, v8940, v9019 = CFrame.new(1265, 45, 1606)
                    v5152[1] = v5561
                    v5152[2] = v6140
                    v5152[3] = v6735
                    v5152[4] = v7334
                    v5152[5] = v7957
                    v5152[6] = v8389
                    v5152[7] = v8599
                    v5152[8] = v8747
                    v5152[9] = v8853
                    v5152[10] = v8940
                    v5152[11] = v9019
                    tbl2 = v5152
                else
                    v5153 = {}
                    v5564 = CFrame.new(-2708, 25, 2103)
                    v6142 = false
                    v6737 = "Trainee"
                    v7336 = "MarineQuest"
                    v7958 = 1
                    v5153[1] = v5564
                    v5153[2] = v6142
                    v5153[3] = v6737
                    v5153[4] = v7336
                    v5153[5] = v7958
                    tbl = v5153
                    v5154 = {}
                    v5567 = CFrame.new(-2754, 50, 2063)
                    v6146, v6740, v7339, v7960, v8390, v8600, v8748, v8854, v8941, v9020 = CFrame.new(-2950, 70, 2240)
                    v5154[1] = v5567
                    v5154[2] = v6146
                    v5154[3] = v6740
                    v5154[4] = v7339
                    v5154[5] = v7960
                    v5154[6] = v8390
                    v5154[7] = v8600
                    v5154[8] = v8748
                    v5154[9] = v8854
                    v5154[10] = v8941
                    v5154[11] = v9020
                    tbl2 = v5154
                end
            elseif 10 <= value and value < 15 then
                v5155 = {}
                v5570 = CFrame.new(-1598, 37, 153)
                v6148 = false
                v6742 = "Monkey"
                v7341 = "JungleQuest"
                v7961 = 1
                v5155[1] = v5570
                v5155[2] = v6148
                v5155[3] = v6742
                v5155[4] = v7341
                v5155[5] = v7961
                tbl = v5155
                v5156 = {}
                v5573 = CFrame.new(-1524, 50, 37)
                v6152 = CFrame.new(-1424, 50, 216)
                v6747 = CFrame.new(-1554, 50, 359)
                v7347 = CFrame.new(-1772, 50, 78)
                v7967 = CFrame.new(-1715, 50, -61)
                v8396, v8604, v8751, v8856, v8942, v9021 = CFrame.new(-1594, 50, -45)
                v5156[1] = v5573
                v5156[2] = v6152
                v5156[3] = v6747
                v5156[4] = v7347
                v5156[5] = v7967
                v5156[6] = v8396
                v5156[7] = v8604
                v5156[8] = v8751
                v5156[9] = v8856
                v5156[10] = v8942
                v5156[11] = v9021
                tbl2 = v5156
            elseif 15 <= value and value < 30 then
                if fn23("The Gorilla King") and 20 <= value then
                    v5159 = {}
                    v5577 = CFrame.new(-1598, 37, 153)
                    v6156 = CFrame.new(-1128, 6, -451)
                    v6750 = "The Gorilla King"
                    v7350 = "JungleQuest"
                    v7969 = 3
                    v5159[1] = v5577
                    v5159[2] = v6156
                    v5159[3] = v6750
                    v5159[4] = v7350
                    v5159[5] = v7969
                    tbl = v5159
                    tbl2 = nil
                else
                    v5161 = {}
                    v5580 = CFrame.new(-1598, 37, 153)
                    v6158 = false
                    v6752 = "Gorilla"
                    v7352 = "JungleQuest"
                    v7970 = 2
                    v5161[1] = v5580
                    v5161[2] = v6158
                    v5161[3] = v6752
                    v5161[4] = v7352
                    v5161[5] = v7970
                    tbl = v5161
                    v5162 = {}
                    v5583 = CFrame.new(-1128, 40, -451)
                    v6162, v6755, v7355, v7972, v8397, v8605, v8752, v8857, v8943, v9022 = CFrame.new(-1313, 40, -546)
                    v5162[1] = v5583
                    v5162[2] = v6162
                    v5162[3] = v6755
                    v5162[4] = v7355
                    v5162[5] = v7972
                    v5162[6] = v8397
                    v5162[7] = v8605
                    v5162[8] = v8752
                    v5162[9] = v8857
                    v5162[10] = v8943
                    v5162[11] = v9022
                    tbl2 = v5162
                end
            elseif 30 <= value and value < 40 then
                v5163 = {}
                v5586 = CFrame.new(-1140, 4, 3829)
                v6164 = false
                v6757 = "Pirate"
                v7357 = "BuggyQuest1"
                v7973 = 1
                v5163[1] = v5586
                v5163[2] = v6164
                v5163[3] = v6757
                v5163[4] = v7357
                v5163[5] = v7973
                tbl = v5163
                v5164 = {}
                v5589 = CFrame.new(-1262, 40, 3905)
                v6168, v6760, v7360, v7975, v8398, v8606, v8753, v8858, v8944, v9023 = CFrame.new(-1167, 40, 3942)
                v5164[1] = v5589
                v5164[2] = v6168
                v5164[3] = v6760
                v5164[4] = v7360
                v5164[5] = v7975
                v5164[6] = v8398
                v5164[7] = v8606
                v5164[8] = v8753
                v5164[9] = v8858
                v5164[10] = v8944
                v5164[11] = v9023
                tbl2 = v5164
            elseif 40 <= value and value < 60 then
                if fn23("Bobby") and 55 <= value then
                    v5167 = {}
                    v5593 = CFrame.new(-1140, 4, 3829)
                    v6172 = CFrame.new(-1131, 14, 4080)
                    v6763 = "Bobby"
                    v7363 = "BuggyQuest1"
                    v7977 = 3
                    v5167[1] = v5593
                    v5167[2] = v6172
                    v5167[3] = v6763
                    v5167[4] = v7363
                    v5167[5] = v7977
                    tbl = v5167
                    tbl2 = nil
                else
                    v5169 = {}
                    v5596 = CFrame.new(-1140, 4, 3829)
                    v6174 = false
                    v6765 = "Brute"
                    v7365 = "BuggyQuest1"
                    v7978 = 2
                    v5169[1] = v5596
                    v5169[2] = v6174
                    v5169[3] = v6765
                    v5169[4] = v7365
                    v5169[5] = v7978
                    tbl = v5169
                    v5170 = {}
                    v5599 = CFrame.new(-976, 55, 4304)
                    v6178 = CFrame.new(-1196, 55, 4287)
                    v6770, v7369, v7981, v8400, v8607, v8754, v8859, v8945, v9024 = CFrame.new(-1363, 55, 4162)
                    v5170[1] = v5599
                    v5170[2] = v6178
                    v5170[3] = v6770
                    v5170[4] = v7369
                    v5170[5] = v7981
                    v5170[6] = v8400
                    v5170[7] = v8607
                    v5170[8] = v8754
                    v5170[9] = v8859
                    v5170[10] = v8945
                    v5170[11] = v9024
                    tbl2 = v5170
                end
            elseif 60 <= value and value < 75 then
                v5171 = {}
                v5602 = CFrame.new(897, 6, 4389)
                v6182 = CFrame.new(938, 6, 4470)
                v6773 = "Desert Bandit"
                v7372 = "DesertQuest"
                v7983 = 1
                v5171[1] = v5602
                v5171[2] = v6182
                v5171[3] = v6773
                v5171[4] = v7372
                v5171[5] = v7983
                tbl = v5171
                tbl2 = nil
            elseif 75 <= value and value < 90 then
                v5173 = {}
                v5605 = CFrame.new(897, 6, 4389)
                v6186 = CFrame.new(1546, 14, 4384)
                v6776 = "Desert Officer"
                v7375 = "DesertQuest"
                v7985 = 2
                v5173[1] = v5605
                v5173[2] = v6186
                v5173[3] = v6776
                v5173[4] = v7375
                v5173[5] = v7985
                tbl = v5173
                tbl2 = nil
            elseif 90 <= value and value < 100 then
                v5175 = {}
                v5608 = CFrame.new(1385, 87, -1298)
                v6190 = CFrame.new(1303, 106, -1441)
                v6779 = "Snow Bandit"
                v7378 = "SnowQuest"
                v7987 = 1
                v5175[1] = v5608
                v5175[2] = v6190
                v5175[3] = v6779
                v5175[4] = v7378
                v5175[5] = v7987
                tbl = v5175
                v5176 = {}
                v5611 = CFrame.new(1362, 120, -1531)
                v6194 = CFrame.new(1357, 120, -1381)
                v6784, v7382, v7990, v8402, v8608, v8755, v8860, v8946, v9025 = CFrame.new(1228, 120, -1354)
                v5176[1] = v5611
                v5176[2] = v6194
                v5176[3] = v6784
                v5176[4] = v7382
                v5176[5] = v7990
                v5176[6] = v8402
                v5176[7] = v8608
                v5176[8] = v8755
                v5176[9] = v8860
                v5176[10] = v8946
                v5176[11] = v9025
                tbl2 = v5176
            elseif 100 <= value and value < 120 then
                if fn23("Yeti") and 105 <= value then
                    v5179 = {}
                    v5615 = CFrame.new(1385, 87, -1298)
                    v6198 = CFrame.new(1185, 106, -1518)
                    v6787 = "Yeti"
                    v7385 = "SnowQuest"
                    v7992 = 3
                    v5179[1] = v5615
                    v5179[2] = v6198
                    v5179[3] = v6787
                    v5179[4] = v7385
                    v5179[5] = v7992
                    tbl = v5179
                    tbl2 = nil
                else
                    v5181 = {}
                    v5618 = CFrame.new(1385, 87, -1298)
                    v6202 = CFrame.new(1185, 106, -1518)
                    v6790 = "Snowman"
                    v7388 = "SnowQuest"
                    v7994 = 2
                    v5181[1] = v5618
                    v5181[2] = v6202
                    v5181[3] = v6790
                    v5181[4] = v7388
                    v5181[5] = v7994
                    tbl = v5181
                    v5182 = {}
                    v5621 = CFrame.new(1243, 140, -1437)
                    v6206 = CFrame.new(1072, 140, -1458)
                    v6795 = CFrame.new(1076, 140, -1621)
                    v7394 = CFrame.new(1209, 140, -1644)
                    v8000, v8406, v8611, v8757, v8861, v8947, v9026 = CFrame.new(1252, 140, -1480)
                    v5182[1] = v5621
                    v5182[2] = v6206
                    v5182[3] = v6795
                    v5182[4] = v7394
                    v5182[5] = v8000
                    v5182[6] = v8406
                    v5182[7] = v8611
                    v5182[8] = v8757
                    v5182[9] = v8861
                    v5182[10] = v8947
                    v5182[11] = v9026
                    tbl2 = v5182
                end
            elseif 120 <= value and value < 150 then
                if fn23("Vice Admiral") and 130 <= value then
                    v5185 = {}
                    v5625 = CFrame.new(-5035, 29, 4326)
                    v6210 = CFrame.new(-4807, 21, 4360)
                    v6798 = "Vice Admiral"
                    v7397 = "MarineQuest2"
                    v8002 = 2
                    v5185[1] = v5625
                    v5185[2] = v6210
                    v5185[3] = v6798
                    v5185[4] = v7397
                    v5185[5] = v8002
                    tbl = v5185
                    tbl2 = nil
                else
                    v5187 = {}
                    v5628 = CFrame.new(-5035, 29, 4326)
                    v6214 = CFrame.new(-4807, 21, 4360)
                    v6801 = "Chief Petty Officer"
                    v7400 = "MarineQuest2"
                    v8004 = 1
                    v5187[1] = v5628
                    v5187[2] = v6214
                    v5187[3] = v6801
                    v5187[4] = v7400
                    v5187[5] = v8004
                    tbl = v5187
                    tbl2 = nil
                end
            elseif 150 <= value and value < 175 then
                v5189 = {}
                v5631 = CFrame.new(-4844, 718, -2621)
                v6218 = CFrame.new(-4956, 296, -2901)
                v6804 = "Sky Bandit"
                v7403 = "SkyQuest"
                v8006 = 1
                v5189[1] = v5631
                v5189[2] = v6218
                v5189[3] = v6804
                v5189[4] = v7403
                v5189[5] = v8006
                tbl = v5189
                tbl2 = nil
            elseif 175 <= value and value < 190 then
                v5191 = {}
                v5634 = CFrame.new(-4844, 718, -2621)
                v6222 = CFrame.new(-5268, 392, -2213)
                v6807 = "Dark Master"
                v7406 = "SkyQuest"
                v8008 = 2
                v5191[1] = v5634
                v5191[2] = v6222
                v5191[3] = v6807
                v5191[4] = v7406
                v5191[5] = v8008
                tbl = v5191
                tbl2 = nil
            elseif 190 <= value and value < 210 then
                v5193 = {}
                v5637 = CFrame.new(5306, 2, 477)
                v6226 = CFrame.new(5288, 2, 470)
                v6810 = "Prisoner"
                v7409 = "PrisonerQuest"
                v8010 = 1
                v5193[1] = v5637
                v5193[2] = v6226
                v5193[3] = v6810
                v5193[4] = v7409
                v5193[5] = v8010
                tbl = v5193
                tbl2 = nil
            elseif 210 <= value and value < 250 then
                if fn23("Swan") and 240 <= value then
                    v5197 = {}
                    v5641 = CFrame.new(5191, 4, 692)
                    v6230 = CFrame.new(5230, 4, 749)
                    v6813 = "Swan"
                    v7412 = "ImpelQuest"
                    v8012 = 3
                    v5197[1] = v5641
                    v5197[2] = v6230
                    v5197[3] = v6813
                    v5197[4] = v7412
                    v5197[5] = v8012
                    tbl = v5197
                    tbl2 = nil
                elseif fn23("Chief Warden") and 230 <= value then
                    v5201 = {}
                    v5645 = CFrame.new(5191, 4, 692)
                    v6234 = CFrame.new(5230, 4, 749)
                    v6816 = "Chief Warden"
                    v7415 = "ImpelQuest"
                    v8014 = 2
                    v5201[1] = v5645
                    v5201[2] = v6234
                    v5201[3] = v6816
                    v5201[4] = v7415
                    v5201[5] = v8014
                    tbl = v5201
                    tbl2 = nil
                else
                    if fn23("Warden") and 220 <= value then
                        v5205 = {}
                        v5649 = CFrame.new(5191, 4, 692)
                        v6238 = CFrame.new(5230, 4, 749)
                        v6819 = "Warden"
                        v7418 = "ImpelQuest"
                        v8016 = 1
                        v5205[1] = v5649
                        v5205[2] = v6238
                        v5205[3] = v6819
                        v5205[4] = v7418
                        v5205[5] = v8016
                        tbl = v5205
                        tbl2 = nil
                    else
                        v5207 = {}
                        v5652 = CFrame.new(5306, 2, 477)
                        v6242 = CFrame.new(5282, 2, 1052)
                        v6822 = "Dangerous Prisoner"
                        v7421 = "PrisonerQuest"
                        v8018 = 2
                        v5207[1] = v5652
                        v5207[2] = v6242
                        v5207[3] = v6822
                        v5207[4] = v7421
                        v5207[5] = v8018
                        tbl = v5207
                        tbl2 = nil
                    end
                end
            elseif 250 <= value and value < 275 then
                v5209 = {}
                v5655 = CFrame.new(-1581, 7, -2982)
                v6246 = CFrame.new(-1897, 7, -2796)
                v6825 = "Toga Warrior"
                v7424 = "ColosseumQuest"
                v8020 = 1
                v5209[1] = v5655
                v5209[2] = v6246
                v5209[3] = v6825
                v5209[4] = v7424
                v5209[5] = v8020
                tbl = v5209
                tbl2 = nil
            elseif 275 <= value and value < 300 then
                v5211 = {}
                v5658 = CFrame.new(-1581, 7, -2982)
                v6250 = CFrame.new(-1327, 59, -3231)
                v6828 = "Gladiator"
                v7427 = "ColosseumQuest"
                v8022 = 2
                v5211[1] = v5658
                v5211[2] = v6250
                v5211[3] = v6828
                v5211[4] = v7427
                v5211[5] = v8022
                tbl = v5211
                v5212 = {}
                v5661 = CFrame.new(-1268, 30, -2996)
                v6254 = CFrame.new(-1472, 30, -3194)
                v6833 = CFrame.new(-1387, 30, -3438)
                v7433, v8026, v8409, v8613, v8758, v8862, v8948, v9027 = CFrame.new(-1198, 30, -3508)
                v5212[1] = v5661
                v5212[2] = v6254
                v5212[3] = v6833
                v5212[4] = v7433
                v5212[5] = v8026
                v5212[6] = v8409
                v5212[7] = v8613
                v5212[8] = v8758
                v5212[9] = v8862
                v5212[10] = v8948
                v5212[11] = v9027
                tbl2 = v5212
            elseif 300 <= value and value < 325 then
                v5213 = {}
                v5664 = CFrame.new(-5319, 12, 8515)
                v6256 = false
                v6835 = "Military Soldier"
                v7435 = "MagmaQuest"
                v8027 = 1
                v5213[1] = v5664
                v5213[2] = v6256
                v5213[3] = v6835
                v5213[4] = v7435
                v5213[5] = v8027
                tbl = v5213
                v5214 = {}
                v5667 = CFrame.new(-5335, 46, 8638)
                v6260, v6838, v7438, v8029, v8410, v8614, v8759, v8863, v8949, v9028 = CFrame.new(-5512, 30, 8366)
                v5214[1] = v5667
                v5214[2] = v6260
                v5214[3] = v6838
                v5214[4] = v7438
                v5214[5] = v8029
                v5214[6] = v8410
                v5214[7] = v8614
                v5214[8] = v8759
                v5214[9] = v8863
                v5214[10] = v8949
                v5214[11] = v9028
                tbl2 = v5214
            elseif 325 <= value and value < 375 then
                if fn23("Magma Admiral") and 350 <= value then
                    v5217 = {}
                    v5671 = CFrame.new(-5319, 12, 8515)
                    v6264 = CFrame.new(-5694, 18, 8735)
                    v6841 = "Magma Admiral"
                    v7441 = "MagmaQuest"
                    v8031 = 3
                    v5217[1] = v5671
                    v5217[2] = v6264
                    v5217[3] = v6841
                    v5217[4] = v7441
                    v5217[5] = v8031
                    tbl = v5217
                    tbl2 = nil
                else
                    v5219 = {}
                    v5674 = CFrame.new(-5319, 12, 8515)
                    v6268 = CFrame.new(-5791, 97, 8834)
                    v6844 = "Military Spy"
                    v7444 = "MagmaQuest"
                    v8033 = 2
                    v5219[1] = v5674
                    v5219[2] = v6268
                    v5219[3] = v6844
                    v5219[4] = v7444
                    v5219[5] = v8033
                    tbl = v5219
                    tbl2 = nil
                end
            elseif 375 <= value and value < 400 then
                v5221 = {}
                v5677 = CFrame.new(61122, 18, 1567)
                v6270 = false
                v6846 = "Fishman Warrior"
                v7446 = "FishmanQuest"
                v8034 = 1
                v5221[1] = v5677
                v5221[2] = v6270
                v5221[3] = v6846
                v5221[4] = v7446
                v5221[5] = v8034
                tbl = v5221
                v5222 = {}
                v5680 = CFrame.new(60998, 50, 1534)
                v6274 = CFrame.new(60880, 50, 1675)
                v6851 = CFrame.new(60785, 50, 1552)
                v7452, v8038, v8413, v8616, v8760, v8864, v8950, v9029 = CFrame.new(60923, 60, 1262)
                v5222[1] = v5680
                v5222[2] = v6274
                v5222[3] = v6851
                v5222[4] = v7452
                v5222[5] = v8038
                v5222[6] = v8413
                v5222[7] = v8616
                v5222[8] = v8760
                v5222[9] = v8864
                v5222[10] = v8950
                v5222[11] = v9029
                tbl2 = v5222
            elseif 400 <= value and value < 450 then
                if fn23("Fishman Lord") and 425 <= value then
                    v5225 = {}
                    v5684 = CFrame.new(61122, 18, 1567)
                    v6278 = CFrame.new(61350, 31, 1095)
                    v6854 = "Fishman Lord"
                    v7455 = "FishmanQuest"
                    v8040 = 3
                    v5225[1] = v5684
                    v5225[2] = v6278
                    v5225[3] = v6854
                    v5225[4] = v7455
                    v5225[5] = v8040
                    tbl = v5225
                    tbl2 = nil
                else
                    v5227 = {}
                    v5687 = CFrame.new(61122, 18, 1567)
                    v6280 = false
                    v6856 = "Fishman Commando"
                    v7457 = "FishmanQuest"
                    v8041 = 2
                    v5227[1] = v5687
                    v5227[2] = v6280
                    v5227[3] = v6856
                    v5227[4] = v7457
                    v5227[5] = v8041
                    tbl = v5227
                    v5228 = {}
                    v5690 = CFrame.new(61866, 55, 1655)
                    v6284 = CFrame.new(62043, 55, 1510)
                    v6861, v7461, v8044, v8415, v8617, v8761, v8865, v8951, v9030 = CFrame.new(61812, 55, 1254)
                    v5228[1] = v5690
                    v5228[2] = v6284
                    v5228[3] = v6861
                    v5228[4] = v7461
                    v5228[5] = v8044
                    v5228[6] = v8415
                    v5228[7] = v8617
                    v5228[8] = v8761
                    v5228[9] = v8865
                    v5228[10] = v8951
                    v5228[11] = v9030
                    tbl2 = v5228
                end
            elseif 450 <= value and value < 475 then
                v5229 = {}
                v5693 = CFrame.new(-4720, 846, -1951)
                v6286 = false
                v6863 = "God's Guard"
                v7463 = "SkyExp1Quest"
                v8045 = 1
                v5229[1] = v5693
                v5229[2] = v6286
                v5229[3] = v6863
                v5229[4] = v7463
                v5229[5] = v8045
                tbl = v5229
                v5230 = {}
                v5696 = CFrame.new(-4641, 880, -1902)
                v6290, v6866, v7466, v8047, v8416, v8618, v8762, v8866, v8952, v9031 = CFrame.new(-4781, 880, -1817)
                v5230[1] = v5696
                v5230[2] = v6290
                v5230[3] = v6866
                v5230[4] = v7466
                v5230[5] = v8047
                v5230[6] = v8416
                v5230[7] = v8618
                v5230[8] = v8762
                v5230[9] = v8866
                v5230[10] = v8952
                v5230[11] = v9031
                tbl2 = v5230
            elseif 475 <= value and value < 525 then
                if fn23("Wysper") and 500 <= value then
                    v5233 = {}
                    v5700 = CFrame.new(-7861, 5545, -381)
                    v6294 = CFrame.new(-7927, 5551, -637)
                    v6869 = "Wysper"
                    v7469 = "SkyExp1Quest"
                    v8049 = 3
                    v5233[1] = v5700
                    v5233[2] = v6294
                    v5233[3] = v6869
                    v5233[4] = v7469
                    v5233[5] = v8049
                    tbl = v5233
                    tbl2 = nil
                else
                    v5235 = {}
                    v5703 = CFrame.new(-7861, 5545, -381)
                    v6296 = false
                    v6871 = "Shanda"
                    v7471 = "SkyExp1Quest"
                    v8050 = 2
                    v5235[1] = v5703
                    v5235[2] = v6296
                    v5235[3] = v6871
                    v5235[4] = v7471
                    v5235[5] = v8050
                    tbl = v5235
                    v5236 = {}
                    v5706 = CFrame.new(-7741, 5580, -395)
                    v6300 = CFrame.new(-7591, 5580, -466)
                    v6876, v7475, v8053, v8418, v8619, v8763, v8867, v8953, v9032 = CFrame.new(-7643, 5580, -608)
                    v5236[1] = v5706
                    v5236[2] = v6300
                    v5236[3] = v6876
                    v5236[4] = v7475
                    v5236[5] = v8053
                    v5236[6] = v8418
                    v5236[7] = v8619
                    v5236[8] = v8763
                    v5236[9] = v8867
                    v5236[10] = v8953
                    v5236[11] = v9032
                    tbl2 = v5236
                end
            elseif value >= 525 then
                if value < 550 then
                    v5239 = {}
                    v5709 = CFrame.new(-7903, 5636, -1412)
                    v6302 = false
                    v6878 = "Royal Squad"
                    v7477 = "SkyExp2Quest"
                    v8054 = 1
                    v5239[1] = v5709
                    v5239[2] = v6302
                    v5239[3] = v6878
                    v5239[4] = v7477
                    v5239[5] = v8054
                    tbl = v5239
                    v5240 = {}
                    v5712 = CFrame.new(-7727, 5650, -1410)
                    v6306, v6881, v7480, v8056, v8419, v8620, v8764, v8868, v8954, v9033 = CFrame.new(-7522, 5650, -1499)
                    v5240[1] = v5712
                    v5240[2] = v6306
                    v5240[3] = v6881
                    v5240[4] = v7480
                    v5240[5] = v8056
                    v5240[6] = v8419
                    v5240[7] = v8620
                    v5240[8] = v8764
                    v5240[9] = v8868
                    v5240[10] = v8954
                    v5240[11] = v9033
                    tbl2 = v5240
                end
            else
                if value >= 525 then
                    if value < 625 then
                        if fn23("Thunder God") then
                            if value >= 575 then
                                v5246 = {}
                                v5716 = CFrame.new(-7903, 5636, -1412)
                                v6310 = CFrame.new(-7751, 5607, -2315)
                                v6884 = "Thunder God"
                                v7483 = "SkyExp2Quest"
                                v8058 = 3
                                v5246[1] = v5716
                                v5246[2] = v6310
                                v5246[3] = v6884
                                v5246[4] = v7483
                                v5246[5] = v8058
                                tbl = v5246
                                tbl2 = nil
                            end
                        else
                            v5248 = {}
                            v5719 = CFrame.new(-7903, 5636, -1412)
                            v6312 = false
                            v6886 = "Royal Soldier"
                            v7485 = "SkyExp2Quest"
                            v8059 = 2
                            v5248[1] = v5719
                            v5248[2] = v6312
                            v5248[3] = v6886
                            v5248[4] = v7485
                            v5248[5] = v8059
                            tbl = v5248
                            v5249 = {}
                            v5722 = CFrame.new(-7894, 5640, -1629)
                            v6316 = CFrame.new(-7678, 5640, -1696)
                            v6891 = CFrame.new(-7672, 5640, -1903)
                            v7491, v8063, v8422, v8622, v8765, v8869, v8955, v9034 = CFrame.new(-7925, 5640, -1854)
                            v5249[1] = v5722
                            v5249[2] = v6316
                            v5249[3] = v6891
                            v5249[4] = v7491
                            v5249[5] = v8063
                            v5249[6] = v8422
                            v5249[7] = v8622
                            v5249[8] = v8765
                            v5249[9] = v8869
                            v5249[10] = v8955
                            v5249[11] = v9034
                            tbl2 = v5249
                        end
                    end
                elseif value >= 625 then
                    if value < 650 then
                        v5252 = {}
                        v5725 = CFrame.new(5258, 39, 4052)
                        v6318 = false
                        v6893 = "Galley Pirate"
                        v7493 = "FountainQuest"
                        v8064 = 1
                        v5252[1] = v5725
                        v5252[2] = v6318
                        v5252[3] = v6893
                        v5252[4] = v7493
                        v5252[5] = v8064
                        tbl = v5252
                        v5253 = {}
                        v5728 = CFrame.new(5391, 70, 4023)
                        v6322, v6896, v7496, v8066, v8423, v8623, v8766, v8870, v8956, v9035 = CFrame.new(5780, 70, 3969)
                        v5253[1] = v5728
                        v5253[2] = v6322
                        v5253[3] = v6896
                        v5253[4] = v7496
                        v5253[5] = v8066
                        v5253[6] = v8423
                        v5253[7] = v8623
                        v5253[8] = v8766
                        v5253[9] = v8870
                        v5253[10] = v8956
                        v5253[11] = v9035
                        tbl2 = v5253
                    end
                else
                    if value >= 650 then
                        if fn23("Cyborg") then
                            if value >= 675 then
                                v5258 = {}
                                v5732 = CFrame.new(5258, 39, 4052)
                                v6326 = CFrame.new(6138, 10, 3939)
                                v6899 = "Cyborg"
                                v7499 = "FountainQuest"
                                v8068 = 3
                                v5258[1] = v5732
                                v5258[2] = v6326
                                v5258[3] = v6899
                                v5258[4] = v7499
                                v5258[5] = v8068
                                tbl = v5258
                                tbl2 = nil
                            end
                        else
                            v5260 = {}
                            v5735 = CFrame.new(5258, 39, 4052)
                            v6328 = false
                            v6901 = "Galley Captain"
                            v7501 = "FountainQuest"
                            v8069 = 2
                            v5260[1] = v5735
                            v5260[2] = v6328
                            v5260[3] = v6901
                            v5260[4] = v7501
                            v5260[5] = v8069
                            tbl = v5260
                            v5261 = {}
                            v5738 = CFrame.new(5985, 70, 4790)
                            v6332, v6904, v7504, v8071, v8424, v8624, v8767, v8871, v8957, v9036 = CFrame.new(5472, 70, 4887)
                            v5261[1] = v5738
                            v5261[2] = v6332
                            v5261[3] = v6904
                            v5261[4] = v7504
                            v5261[5] = v8071
                            v5261[6] = v8424
                            v5261[7] = v8624
                            v5261[8] = v8767
                            v5261[9] = v8871
                            v5261[10] = v8957
                            v5261[11] = v9036
                            tbl2 = v5261
                        end
                    end
                end
            end
        elseif v78 then
            if value >= 700 then
                if value < 725 then
                    v5265 = {}
                    v5741 = CFrame.new(-427, 73, 1835)
                    v6334 = false
                    v6906 = "Raider"
                    v7506 = "Area1Quest"
                    v8072 = 1
                    v5265[1] = v5741
                    v5265[2] = v6334
                    v5265[3] = v6906
                    v5265[4] = v7506
                    v5265[5] = v8072
                    tbl = v5265
                    v5266 = {}
                    v5744 = CFrame.new(-614, 90, 2240)
                    v6338 = CFrame.new(-894, 90, 2275)
                    v6911 = CFrame.new(-872, 90, 2481)
                    v7512, v8076, v8427, v8626, v8768, v8872, v8958, v9037 = CFrame.new(-552, 90, 2528)
                    v5266[1] = v5744
                    v5266[2] = v6338
                    v5266[3] = v6911
                    v5266[4] = v7512
                    v5266[5] = v8076
                    v5266[6] = v8427
                    v5266[7] = v8626
                    v5266[8] = v8768
                    v5266[9] = v8872
                    v5266[10] = v8958
                    v5266[11] = v9037
                    tbl2 = v5266
                end
            elseif value >= 725 then
                if value < 775 then
                    if fn23("Diamond") then
                        if value >= 750 then
                            v5272 = {}
                            v5748 = CFrame.new(-427, 73, 1835)
                            v6342 = CFrame.new(-1569, 199, -31)
                            v6914 = "Diamond"
                            v7515 = "Area1Quest"
                            v8078 = 3
                            v5272[1] = v5748
                            v5272[2] = v6342
                            v5272[3] = v6914
                            v5272[4] = v7515
                            v5272[5] = v8078
                            tbl = v5272
                            tbl2 = nil
                        end
                    else
                        v5274 = {}
                        v5751 = CFrame.new(-427, 73, 1835)
                        v6344 = false
                        v6916 = "Mercenary"
                        v7517 = "Area1Quest"
                        v8079 = 2
                        v5274[1] = v5751
                        v5274[2] = v6344
                        v5274[3] = v6916
                        v5274[4] = v7517
                        v5274[5] = v8079
                        tbl = v5274
                        v5275 = {}
                        v5754 = CFrame.new(-867, 110, 1621)
                        v6348 = CFrame.new(-1047, 110, 1779)
                        v6921 = CFrame.new(-1025, 110, 1087)
                        v7523, v8083, v8430, v8628, v8769, v8873, v8959, v9038 = CFrame.new(-1204, 110, 1195)
                        v5275[1] = v5754
                        v5275[2] = v6348
                        v5275[3] = v6921
                        v5275[4] = v7523
                        v5275[5] = v8083
                        v5275[6] = v8430
                        v5275[7] = v8628
                        v5275[8] = v8769
                        v5275[9] = v8873
                        v5275[10] = v8959
                        v5275[11] = v9038
                        tbl2 = v5275
                    end
                end
            else
                if value >= 775 then
                    if value < 800 then
                        v5278 = {}
                        v5757 = CFrame.new(635, 73, 919)
                        v6350 = false
                        v6923 = "Swan Pirate"
                        v7525 = "Area2Quest"
                        v8084 = 1
                        v5278[1] = v5757
                        v5278[2] = v6350
                        v5278[3] = v6923
                        v5278[4] = v7525
                        v5278[5] = v8084
                        tbl = v5278
                        v5279 = {}
                        v5760 = CFrame.new(778, 110, 1129)
                        v6354 = CFrame.new(1018, 110, 1128)
                        v6928 = CFrame.new(1020, 110, 1366)
                        v7531, v8088, v8433, v8630, v8770, v8874, v8960, v9039 = CFrame.new(1016, 110, 1115)
                        v5279[1] = v5760
                        v5279[2] = v6354
                        v5279[3] = v6928
                        v5279[4] = v7531
                        v5279[5] = v8088
                        v5279[6] = v8433
                        v5279[7] = v8630
                        v5279[8] = v8770
                        v5279[9] = v8874
                        v5279[10] = v8960
                        v5279[11] = v9039
                        tbl2 = v5279
                    end
                elseif value >= 800 then
                    if value < 875 then
                        if fn23("Jeremy") then
                            if value >= 850 then
                                v5285 = {}
                                v5764 = CFrame.new(635, 73, 919)
                                v6358 = CFrame.new(2316, 449, 787)
                                v6931 = "Jeremy"
                                v7534 = "Area2Quest"
                                v8090 = 3
                                v5285[1] = v5764
                                v5285[2] = v6358
                                v5285[3] = v6931
                                v5285[4] = v7534
                                v5285[5] = v8090
                                tbl = v5285
                                tbl2 = nil
                            end
                        else
                            v5287 = {}
                            v5767 = CFrame.new(635, 73, 919)
                            v6360 = false
                            v6933 = "Factory Staff"
                            v7536 = "Area2Quest"
                            v8091 = 2
                            v5287[1] = v5767
                            v5287[2] = v6360
                            v5287[3] = v6933
                            v5287[4] = v7536
                            v5287[5] = v8091
                            tbl = v5287
                            v5288 = {}
                            v5770 = CFrame.new(882, 110, -49)
                            v6364 = CFrame.new(723, 110, 212)
                            v6938 = CFrame.new(473, 110, 108)
                            v7542, v8095, v8436, v8632, v8771, v8875, v8961, v9040 = CFrame.new(-115, 110, 39)
                            v5288[1] = v5770
                            v5288[2] = v6364
                            v5288[3] = v6938
                            v5288[4] = v7542
                            v5288[5] = v8095
                            v5288[6] = v8436
                            v5288[7] = v8632
                            v5288[8] = v8771
                            v5288[9] = v8875
                            v5288[10] = v8961
                            v5288[11] = v9040
                            tbl2 = v5288
                        end
                    end
                else
                    if value >= 875 then
                        if value < 900 then
                            v5291 = {}
                            v5773 = CFrame.new(-2441, 73, -3219)
                            v6366 = false
                            v6940 = "Marine Lieutenant"
                            v7544 = "MarineQuest3"
                            v8096 = 1
                            v5291[1] = v5773
                            v5291[2] = v6366
                            v5291[3] = v6940
                            v5291[4] = v7544
                            v5291[5] = v8096
                            tbl = v5291
                            v5292 = {}
                            v5776 = CFrame.new(-2552, 110, -3050)
                            v6370 = CFrame.new(-2860, 110, -3089)
                            v6945 = CFrame.new(-3114, 110, -2947)
                            v7550, v8100, v8439, v8634, v8772, v8876, v8962, v9041 = CFrame.new(-2864, 110, -2679)
                            v5292[1] = v5776
                            v5292[2] = v6370
                            v5292[3] = v6945
                            v5292[4] = v7550
                            v5292[5] = v8100
                            v5292[6] = v8439
                            v5292[7] = v8634
                            v5292[8] = v8772
                            v5292[9] = v8876
                            v5292[10] = v8962
                            v5292[11] = v9041
                            tbl2 = v5292
                        end
                    elseif value >= 900 then
                        if value < 950 then
                            if fn23("Fajita") then
                                if value >= 925 then
                                    v5298 = {}
                                    v5780 = CFrame.new(-2441, 73, -3219)
                                    v6374 = CFrame.new(-2086, 73, -4208)
                                    v6948 = "Fajita"
                                    v7553 = "MarineQuest3"
                                    v8102 = 3
                                    v5298[1] = v5780
                                    v5298[2] = v6374
                                    v5298[3] = v6948
                                    v5298[4] = v7553
                                    v5298[5] = v8102
                                    tbl = v5298
                                    tbl2 = nil
                                end
                            else
                                v5300 = {}
                                v5783 = CFrame.new(-2441, 73, -3219)
                                v6376 = false
                                v6950 = "Marine Captain"
                                v7555 = "MarineQuest3"
                                v8103 = 2
                                v5300[1] = v5783
                                v5300[2] = v6376
                                v5300[3] = v6950
                                v5300[4] = v7555
                                v5300[5] = v8103
                                tbl = v5300
                                v5301 = {}
                                v5786 = CFrame.new(-1695, 110, -3299)
                                v6380 = CFrame.new(-1953, 110, -3165)
                                v6955, v7559, v8106, v8441, v8635, v8773, v8877, v8963, v9042 = CFrame.new(-2144, 110, -3341)
                                v5301[1] = v5786
                                v5301[2] = v6380
                                v5301[3] = v6955
                                v5301[4] = v7559
                                v5301[5] = v8106
                                v5301[6] = v8441
                                v5301[7] = v8635
                                v5301[8] = v8773
                                v5301[9] = v8877
                                v5301[10] = v8963
                                v5301[11] = v9042
                                tbl2 = v5301
                            end
                        end
                    else
                        if value >= 950 then
                            if value < 975 then
                                v5304 = {}
                                v5789 = CFrame.new(-5495, 48, -794)
                                v6382 = false
                                v6957 = "Zombie"
                                v7561 = "ZombieQuest"
                                v8107 = 1
                                v5304[1] = v5789
                                v5304[2] = v6382
                                v5304[3] = v6957
                                v5304[4] = v7561
                                v5304[5] = v8107
                                tbl = v5304
                                v5305 = {}
                                v5792 = CFrame.new(-5715, 90, -917)
                                v6386 = CFrame.new(-5534, 90, -942)
                                v6962 = CFrame.new(-5445, 90, -806)
                                v7567 = CFrame.new(-5485, 90, -663)
                                v8113 = CFrame.new(-5730, 90, -590)
                                v8447, v8639, v8776, v8879, v8964, v9043 = CFrame.new(-5816, 90, -756)
                                v5305[1] = v5792
                                v5305[2] = v6386
                                v5305[3] = v6962
                                v5305[4] = v7567
                                v5305[5] = v8113
                                v5305[6] = v8447
                                v5305[7] = v8639
                                v5305[8] = v8776
                                v5305[9] = v8879
                                v5305[10] = v8964
                                v5305[11] = v9043
                                tbl2 = v5305
                            end
                        elseif value >= 975 then
                            if value < 1000 then
                                v5308 = {}
                                v5795 = CFrame.new(-5495, 48, -794)
                                v6388 = false
                                v6964 = "Vampire"
                                v7569 = "ZombieQuest"
                                v8114 = 2
                                v5308[1] = v5795
                                v5308[2] = v6388
                                v5308[3] = v6964
                                v5308[4] = v7569
                                v5308[5] = v8114
                                tbl = v5308
                                v5309 = {}
                                v5798 = CFrame.new(-6027, 50, -1130)
                                v6392 = CFrame.new(-6248, 50, -1281)
                                v6969 = CFrame.new(-6120, 50, -1450)
                                v7575 = CFrame.new(-5951, 50, -1520)
                                v8120, v8451, v8642, v8778, v8880, v8965, v9044 = CFrame.new(-5803, 50, -1360)
                                v5309[1] = v5798
                                v5309[2] = v6392
                                v5309[3] = v6969
                                v5309[4] = v7575
                                v5309[5] = v8120
                                v5309[6] = v8451
                                v5309[7] = v8642
                                v5309[8] = v8778
                                v5309[9] = v8880
                                v5309[10] = v8965
                                v5309[11] = v9044
                                tbl2 = v5309
                            end
                        else
                            if value >= 1000 then
                                if value < 1050 then
                                    v5312 = {}
                                    v5801 = CFrame.new(607, 401, -5371)
                                    v6394 = false
                                    v6971 = "Snow Trooper"
                                    v7577 = "SnowMountainQuest"
                                    v8121 = 1
                                    v5312[1] = v5801
                                    v5312[2] = v6394
                                    v5312[3] = v6971
                                    v5312[4] = v7577
                                    v5312[5] = v8121
                                    tbl = v5312
                                    v5313 = {}
                                    v5804 = CFrame.new(445, 440, -5175)
                                    v6398 = CFrame.new(523, 440, -5484)
                                    v6976, v7581, v8124, v8453, v8643, v8779, v8881, v8966, v9045 = CFrame.new(699, 440, -5612)
                                    v5313[1] = v5804
                                    v5313[2] = v6398
                                    v5313[3] = v6976
                                    v5313[4] = v7581
                                    v5313[5] = v8124
                                    v5313[6] = v8453
                                    v5313[7] = v8643
                                    v5313[8] = v8779
                                    v5313[9] = v8881
                                    v5313[10] = v8966
                                    v5313[11] = v9045
                                    tbl2 = v5313
                                end
                            elseif value >= 1050 then
                                if value < 1100 then
                                    v5316 = {}
                                    v5807 = CFrame.new(607, 401, -5371)
                                    v6400 = false
                                    v6978 = "Winter Warrior"
                                    v7583 = "SnowMountainQuest"
                                    v8125 = 2
                                    v5316[1] = v5807
                                    v5316[2] = v6400
                                    v5316[3] = v6978
                                    v5316[4] = v7583
                                    v5316[5] = v8125
                                    tbl = v5316
                                    v5317 = {}
                                    v5810 = CFrame.new(1224, 460, -5332)
                                    v6404 = CFrame.new(1404, 460, -5323)
                                    v6983 = CFrame.new(1258, 460, -5220)
                                    v7589 = CFrame.new(1145, 460, -5077)
                                    v8131, v8457, v8646, v8781, v8882, v8967, v9046 = CFrame.new(1022, 460, -5139)
                                    v5317[1] = v5810
                                    v5317[2] = v6404
                                    v5317[3] = v6983
                                    v5317[4] = v7589
                                    v5317[5] = v8131
                                    v5317[6] = v8457
                                    v5317[7] = v8646
                                    v5317[8] = v8781
                                    v5317[9] = v8882
                                    v5317[10] = v8967
                                    v5317[11] = v9046
                                    tbl2 = v5317
                                end
                            else
                                if value >= 1100 then
                                    if value < 1125 then
                                        v5320 = {}
                                        v5813 = CFrame.new(-6061, 16, -4904)
                                        v6406 = false
                                        v6985 = "Lab Subordinate"
                                        v7591 = "IceSideQuest"
                                        v8132 = 1
                                        v5320[1] = v5813
                                        v5320[2] = v6406
                                        v5320[3] = v6985
                                        v5320[4] = v7591
                                        v5320[5] = v8132
                                        tbl = v5320
                                        v5321 = {}
                                        v5816 = CFrame.new(-5941, 50, -4322)
                                        v6410 = CFrame.new(-5765, 50, -4304)
                                        v6990 = CFrame.new(-5608, 50, -4445)
                                        v7597, v8136, v8460, v8648, v8782, v8883, v8968, v9047 = CFrame.new(-5683, 50, -4629)
                                        v5321[1] = v5816
                                        v5321[2] = v6410
                                        v5321[3] = v6990
                                        v5321[4] = v7597
                                        v5321[5] = v8136
                                        v5321[6] = v8460
                                        v5321[7] = v8648
                                        v5321[8] = v8782
                                        v5321[9] = v8883
                                        v5321[10] = v8968
                                        v5321[11] = v9047
                                        tbl2 = v5321
                                    end
                                elseif value >= 1125 then
                                    if value < 1175 then
                                        if fn23("Smoke Admiral") then
                                            if value >= 1150 then
                                                v5327 = {}
                                                v5820 = CFrame.new(-6061, 16, -4904)
                                                v6414 = CFrame.new(-5078, 24, -5352)
                                                v6993 = "Smoke Admiral"
                                                v7600 = "IceSideQuest"
                                                v8138 = 3
                                                v5327[1] = v5820
                                                v5327[2] = v6414
                                                v5327[3] = v6993
                                                v5327[4] = v7600
                                                v5327[5] = v8138
                                                tbl = v5327
                                                tbl2 = nil
                                            end
                                        else
                                            v5329 = {}
                                            v5823 = CFrame.new(-6061, 16, -4904)
                                            v6416 = false
                                            v6995 = "Horned Warrior"
                                            v7602 = "IceSideQuest"
                                            v8139 = 2
                                            v5329[1] = v5823
                                            v5329[2] = v6416
                                            v5329[3] = v6995
                                            v5329[4] = v7602
                                            v5329[5] = v8139
                                            tbl = v5329
                                            v5330 = {}
                                            v5826 = CFrame.new(-6306, 50, -5752)
                                            v6420 = CFrame.new(-6161, 50, -5979)
                                            v7000 = CFrame.new(-6518, 50, -5795)
                                            v7608, v8143, v8463, v8650, v8783, v8884, v8969, v9048 = CFrame.new(-6535, 50, -5640)
                                            v5330[1] = v5826
                                            v5330[2] = v6420
                                            v5330[3] = v7000
                                            v5330[4] = v7608
                                            v5330[5] = v8143
                                            v5330[6] = v8463
                                            v5330[7] = v8650
                                            v5330[8] = v8783
                                            v5330[9] = v8884
                                            v5330[10] = v8969
                                            v5330[11] = v9048
                                            tbl2 = v5330
                                        end
                                    end
                                else
                                    if value >= 1175 then
                                        if value < 1200 then
                                            v5333 = {}
                                            v5829 = CFrame.new(-5430, 16, -5298)
                                            v6422 = false
                                            v7002 = "Magma Ninja"
                                            v7610 = "FireSideQuest"
                                            v8144 = 1
                                            v5333[1] = v5829
                                            v5333[2] = v6422
                                            v5333[3] = v7002
                                            v5333[4] = v7610
                                            v5333[5] = v8144
                                            tbl = v5333
                                            v5334 = {}
                                            v5832 = CFrame.new(-5233, 60, -6227)
                                            v6426 = CFrame.new(-5194, 60, -6031)
                                            v7007, v7614, v8147, v8465, v8651, v8784, v8885, v8970, v9049 = CFrame.new(-5651, 60, -5854)
                                            v5334[1] = v5832
                                            v5334[2] = v6426
                                            v5334[3] = v7007
                                            v5334[4] = v7614
                                            v5334[5] = v8147
                                            v5334[6] = v8465
                                            v5334[7] = v8651
                                            v5334[8] = v8784
                                            v5334[9] = v8885
                                            v5334[10] = v8970
                                            v5334[11] = v9049
                                            tbl2 = v5334
                                        end
                                    elseif value >= 1200 then
                                        if value < 1250 then
                                            v5337 = {}
                                            v5835 = CFrame.new(-5430, 16, -5298)
                                            v6428 = false
                                            v7009 = "Lava Pirate"
                                            v7616 = "FireSideQuest"
                                            v8148 = 2
                                            v5337[1] = v5835
                                            v5337[2] = v6428
                                            v5337[3] = v7009
                                            v5337[4] = v7616
                                            v5337[5] = v8148
                                            tbl = v5337
                                            v5338 = {}
                                            v5838 = CFrame.new(-4955, 60, -4836)
                                            v6432 = CFrame.new(-5119, 60, -4634)
                                            v7014 = CFrame.new(-5389, 60, -4616)
                                            v7622, v8152, v8468, v8653, v8785, v8886, v8971, v9050 = CFrame.new(-5342, 60, -4897)
                                            v5338[1] = v5838
                                            v5338[2] = v6432
                                            v5338[3] = v7014
                                            v5338[4] = v7622
                                            v5338[5] = v8152
                                            v5338[6] = v8468
                                            v5338[7] = v8653
                                            v5338[8] = v8785
                                            v5338[9] = v8886
                                            v5338[10] = v8971
                                            v5338[11] = v9050
                                            tbl2 = v5338
                                        end
                                    else
                                        if value >= 1250 then
                                            if value < 1275 then
                                                v5341 = {}
                                                v5841 = CFrame.new(1033, 125, 32909)
                                                v6434 = false
                                                v7016 = "Ship Deckhand"
                                                v7624 = "ShipQuest1"
                                                v8153 = 1
                                                v5341[1] = v5841
                                                v5341[2] = v6434
                                                v5341[3] = v7016
                                                v5341[4] = v7624
                                                v5341[5] = v8153
                                                tbl = v5341
                                                v5342 = {}
                                                v5844 = CFrame.new(1185, 180, 32979)
                                                v6438 = CFrame.new(1204, 180, 33174)
                                                v7021 = CFrame.new(615, 180, 33169)
                                                v7630, v8157, v8471, v8655, v8786, v8887, v8972, v9051 = CFrame.new(638, 180, 32962)
                                                v5342[1] = v5844
                                                v5342[2] = v6438
                                                v5342[3] = v7021
                                                v5342[4] = v7630
                                                v5342[5] = v8157
                                                v5342[6] = v8471
                                                v5342[7] = v8655
                                                v5342[8] = v8786
                                                v5342[9] = v8887
                                                v5342[10] = v8972
                                                v5342[11] = v9051
                                                tbl2 = v5342
                                            end
                                        elseif value >= 1275 then
                                            if value < 1300 then
                                                v5345 = {}
                                                v5847 = CFrame.new(1033, 125, 32909)
                                                v6440 = false
                                                v7023 = "Ship Engineer"
                                                v7632 = "ShipQuest1"
                                                v8158 = 2
                                                v5345[1] = v5847
                                                v5345[2] = v6440
                                                v5345[3] = v7023
                                                v5345[4] = v7632
                                                v5345[5] = v8158
                                                tbl = v5345
                                                v5346 = {}
                                                v5850 = CFrame.new(809, 80, 33090)
                                                v6444 = CFrame.new(751, 80, 32957)
                                                v7028 = CFrame.new(927, 80, 32724)
                                                v7638 = CFrame.new(1040, 80, 32915)
                                                v8164, v8475, v8658, v8788, v8888, v8973, v9052 = CFrame.new(1034, 80, 33058)
                                                v5346[1] = v5850
                                                v5346[2] = v6444
                                                v5346[3] = v7028
                                                v5346[4] = v7638
                                                v5346[5] = v8164
                                                v5346[6] = v8475
                                                v5346[7] = v8658
                                                v5346[8] = v8788
                                                v5346[9] = v8888
                                                v5346[10] = v8973
                                                v5346[11] = v9052
                                                tbl2 = v5346
                                            end
                                        else
                                            if value >= 1300 then
                                                if value < 1325 then
                                                    v5349 = {}
                                                    v5853 = CFrame.new(973, 125, 33245)
                                                    v6446 = false
                                                    v7030 = "Ship Steward"
                                                    v7640 = "ShipQuest2"
                                                    v8165 = 1
                                                    v5349[1] = v5853
                                                    v5349[2] = v6446
                                                    v5349[3] = v7030
                                                    v5349[4] = v7640
                                                    v5349[5] = v8165
                                                    tbl = v5349
                                                    v5350 = {}
                                                    v5856 = CFrame.new(838, 160, 33408)
                                                    v6450, v7033, v7643, v8167, v8476, v8659, v8789, v8889, v8974, v9053 = CFrame.new(1026, 160, 33510)
                                                    v5350[1] = v5856
                                                    v5350[2] = v6450
                                                    v5350[3] = v7033
                                                    v5350[4] = v7643
                                                    v5350[5] = v8167
                                                    v5350[6] = v8476
                                                    v5350[7] = v8659
                                                    v5350[8] = v8789
                                                    v5350[9] = v8889
                                                    v5350[10] = v8974
                                                    v5350[11] = v9053
                                                    tbl2 = v5350
                                                end
                                            elseif value >= 1325 then
                                                if value < 1350 then
                                                    v5353 = {}
                                                    v5859 = CFrame.new(973, 125, 33245)
                                                    v6452 = false
                                                    v7035 = "Ship Officer"
                                                    v7645 = "ShipQuest2"
                                                    v8168 = 2
                                                    v5353[1] = v5859
                                                    v5353[2] = v6452
                                                    v5353[3] = v7035
                                                    v5353[4] = v7645
                                                    v5353[5] = v8168
                                                    tbl = v5353
                                                    v5354 = {}
                                                    v5862 = CFrame.new(1238, 220, 33148)
                                                    v6456 = CFrame.new(1220, 220, 33426)
                                                    v7040 = CFrame.new(622, 220, 33435)
                                                    v7651, v8172, v8479, v8661, v8790, v8890, v8975, v9054 = CFrame.new(593, 220, 33172)
                                                    v5354[1] = v5862
                                                    v5354[2] = v6456
                                                    v5354[3] = v7040
                                                    v5354[4] = v7651
                                                    v5354[5] = v8172
                                                    v5354[6] = v8479
                                                    v5354[7] = v8661
                                                    v5354[8] = v8790
                                                    v5354[9] = v8890
                                                    v5354[10] = v8975
                                                    v5354[11] = v9054
                                                    tbl2 = v5354
                                                end
                                            else
                                                if value >= 1350 then
                                                    if value < 1375 then
                                                        v5357 = {}
                                                        v5865 = CFrame.new(5668, 28, -6484)
                                                        v6458 = false
                                                        v7042 = "Arctic Warrior"
                                                        v7653 = "FrostQuest"
                                                        v8173 = 1
                                                        v5357[1] = v5865
                                                        v5357[2] = v6458
                                                        v5357[3] = v7042
                                                        v5357[4] = v7653
                                                        v5357[5] = v8173
                                                        tbl = v5357
                                                        v5358 = {}
                                                        v5868 = CFrame.new(5836, 80, -6257)
                                                        v6462 = CFrame.new(6132, 80, -6098)
                                                        v7047 = CFrame.new(6275, 80, -6237)
                                                        v7659, v8177, v8482, v8663, v8791, v8891, v8976, v9055 = CFrame.new(6095, 80, -6349)
                                                        v5358[1] = v5868
                                                        v5358[2] = v6462
                                                        v5358[3] = v7047
                                                        v5358[4] = v7659
                                                        v5358[5] = v8177
                                                        v5358[6] = v8482
                                                        v5358[7] = v8663
                                                        v5358[8] = v8791
                                                        v5358[9] = v8891
                                                        v5358[10] = v8976
                                                        v5358[11] = v9055
                                                        tbl2 = v5358
                                                    end
                                                elseif value >= 1375 then
                                                    if value < 1425 then
                                                        if fn23("Awakened Ice Admiral") then
                                                            if value >= 1400 then
                                                                v5364 = {}
                                                                v5872 = CFrame.new(5668, 28, -6484)
                                                                v6466 = CFrame.new(6473, 297, -6944)
                                                                v7050 = "Awakened Ice Admiral"
                                                                v7662 = "FrostQuest"
                                                                v8179 = 3
                                                                v5364[1] = v5872
                                                                v5364[2] = v6466
                                                                v5364[3] = v7050
                                                                v5364[4] = v7662
                                                                v5364[5] = v8179
                                                                tbl = v5364
                                                                tbl2 = nil
                                                            end
                                                        else
                                                            v5366 = {}
                                                            v5875 = CFrame.new(5668, 28, -6484)
                                                            v6468 = false
                                                            v7052 = "Snow Lurker"
                                                            v7664 = "FrostQuest"
                                                            v8180 = 2
                                                            v5366[1] = v5875
                                                            v5366[2] = v6468
                                                            v5366[3] = v7052
                                                            v5366[4] = v7664
                                                            v5366[5] = v8180
                                                            tbl = v5366
                                                            v5367 = {}
                                                            v5878 = CFrame.new(5700, 80, -6724)
                                                            v6472 = CFrame.new(5542, 80, -6898)
                                                            v7057, v7668, v8183, v8484, v8664, v8792, v8892, v8977, v9056 = CFrame.new(5512, 80, -6641)
                                                            v5367[1] = v5878
                                                            v5367[2] = v6472
                                                            v5367[3] = v7057
                                                            v5367[4] = v7668
                                                            v5367[5] = v8183
                                                            v5367[6] = v8484
                                                            v5367[7] = v8664
                                                            v5367[8] = v8792
                                                            v5367[9] = v8892
                                                            v5367[10] = v8977
                                                            v5367[11] = v9056
                                                            tbl2 = v5367
                                                        end
                                                    end
                                                else
                                                    if value >= 1425 then
                                                        if value < 1450 then
                                                            v5370 = {}
                                                            v5881 = CFrame.new(-3056, 240, -10145)
                                                            v6474 = false
                                                            v7059 = "Sea Soldier"
                                                            v7670 = "ForgottenQuest"
                                                            v8184 = 1
                                                            v5370[1] = v5881
                                                            v5370[2] = v6474
                                                            v5370[3] = v7059
                                                            v5370[4] = v7670
                                                            v5370[5] = v8184
                                                            tbl = v5370
                                                            v5371 = {}
                                                            v5884 = CFrame.new(-2583, 80, -9821)
                                                            v6478 = CFrame.new(-2830, 80, -9809)
                                                            v7064 = CFrame.new(-3271, 80, -9729)
                                                            v7676, v8188, v8487, v8666, v8793, v8893, v8978, v9057 = CFrame.new(-3486, 80, -9813)
                                                            v5371[1] = v5884
                                                            v5371[2] = v6478
                                                            v5371[3] = v7064
                                                            v5371[4] = v7676
                                                            v5371[5] = v8188
                                                            v5371[6] = v8487
                                                            v5371[7] = v8666
                                                            v5371[8] = v8793
                                                            v5371[9] = v8893
                                                            v5371[10] = v8978
                                                            v5371[11] = v9057
                                                            tbl2 = v5371
                                                        end
                                                    elseif value >= 1450 then
                                                        if fn23("Tide Keeper") then
                                                            if value >= 1475 then
                                                                v5376 = {}
                                                                v5888 = CFrame.new(-3056, 240, -10145)
                                                                v6482 = CFrame.new(-3711, 77, -11469)
                                                                v7067 = "Tide Keeper"
                                                                v7679 = "ForgottenQuest"
                                                                v8190 = 3
                                                                v5376[1] = v5888
                                                                v5376[2] = v6482
                                                                v5376[3] = v7067
                                                                v5376[4] = v7679
                                                                v5376[5] = v8190
                                                                tbl = v5376
                                                                tbl2 = nil
                                                            end
                                                        else
                                                            v5378 = {}
                                                            v5891 = CFrame.new(-3056, 240, -10145)
                                                            v6484 = false
                                                            v7069 = "Water Fighter"
                                                            v7681 = "ForgottenQuest"
                                                            v8191 = 2
                                                            v5378[1] = v5891
                                                            v5378[2] = v6484
                                                            v5378[3] = v7069
                                                            v5378[4] = v7681
                                                            v5378[5] = v8191
                                                            tbl = v5378
                                                            v5379 = {}
                                                            v5894 = CFrame.new(-3339, 290, -10412)
                                                            v6488 = CFrame.new(-3518, 290, -10419)
                                                            v7074 = CFrame.new(-3536, 290, -10607)
                                                            v7687, v8195, v8490, v8668, v8794, v8894, v8979, v9058 = CFrame.new(-3345, 280, -10667)
                                                            v5379[1] = v5894
                                                            v5379[2] = v6488
                                                            v5379[3] = v7074
                                                            v5379[4] = v7687
                                                            v5379[5] = v8195
                                                            v5379[6] = v8490
                                                            v5379[7] = v8668
                                                            v5379[8] = v8794
                                                            v5379[9] = v8894
                                                            v5379[10] = v8979
                                                            v5379[11] = v9058
                                                            tbl2 = v5379
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        else
            if v79 then
                if value >= 1500 then
                    if value < 1525 then
                        v5383 = {}
                        v5897 = CFrame.new(-291, 44, 5580)
                        v6490 = false
                        v7076 = "Pirate Millionaire"
                        v7689 = "PiratePortQuest"
                        v8196 = 1
                        v5383[1] = v5897
                        v5383[2] = v6490
                        v5383[3] = v7076
                        v5383[4] = v7689
                        v5383[5] = v8196
                        tbl = v5383
                        v5384 = {}
                        v5900 = CFrame.new(-44, 70, 5623)
                        v6494 = CFrame.new(-219, 70, 5546)
                        v7081, v7693, v8199, v8492, v8669, v8795, v8895, v8980, v9059 = CFrame.new(-574, 70, 5496)
                        v5384[1] = v5900
                        v5384[2] = v6494
                        v5384[3] = v7081
                        v5384[4] = v7693
                        v5384[5] = v8199
                        v5384[6] = v8492
                        v5384[7] = v8669
                        v5384[8] = v8795
                        v5384[9] = v8895
                        v5384[10] = v8980
                        v5384[11] = v9059
                        tbl2 = v5384
                    end
                elseif value >= 1525 then
                    if value < 1575 then
                        if fn23("Stone") then
                            if value >= 1550 then
                                v5390 = {}
                                v5904 = CFrame.new(-291, 44, 5580)
                                v6498 = CFrame.new(-1049, 40, 6791)
                                v7084 = "Stone"
                                v7696 = "PiratePortQuest"
                                v8201 = 3
                                v5390[1] = v5904
                                v5390[2] = v6498
                                v5390[3] = v7084
                                v5390[4] = v7696
                                v5390[5] = v8201
                                tbl = v5390
                                tbl2 = nil
                            end
                        else
                            v5392 = {}
                            v5907 = CFrame.new(-291, 44, 5580)
                            v6500 = false
                            v7086 = "Pistol Billionaire"
                            v7698 = "PiratePortQuest"
                            v8202 = 2
                            v5392[1] = v5907
                            v5392[2] = v6500
                            v5392[3] = v7086
                            v5392[4] = v7698
                            v5392[5] = v8202
                            tbl = v5392
                            v5393 = {}
                            v5910 = CFrame.new(219, 105, 6018)
                            v6504 = CFrame.new(-24, 105, 6155)
                            v7091, v7702, v8205, v8494, v8670, v8796, v8896, v8981, v9060 = CFrame.new(-312, 105, 6028)
                            v5393[1] = v5910
                            v5393[2] = v6504
                            v5393[3] = v7091
                            v5393[4] = v7702
                            v5393[5] = v8205
                            v5393[6] = v8494
                            v5393[7] = v8670
                            v5393[8] = v8796
                            v5393[9] = v8896
                            v5393[10] = v8981
                            v5393[11] = v9060
                            tbl2 = v5393
                        end
                    end
                else
                    if value >= 1575 then
                        if value < 1600 then
                            v5396 = {}
                            v5913 = CFrame.new(5834, 51, -1103)
                            v6506 = false
                            v7093 = "Dragon Crew Warrior"
                            v7704 = "AmazonQuest"
                            v8206 = 1
                            v5396[1] = v5913
                            v5396[2] = v6506
                            v5396[3] = v7093
                            v5396[4] = v7704
                            v5396[5] = v8206
                            tbl = v5396
                            v5397 = {}
                            v5916 = CFrame.new(5992, 90, -1581)
                            v6510 = CFrame.new(6364, 90, -1512)
                            v7098 = CFrame.new(6501, 90, -1104)
                            v7710 = CFrame.new(6612, 90, -938)
                            v8212, v8498, v8673, v8798, v8897, v8982, v9061 = CFrame.new(6393, 90, -939)
                            v5397[1] = v5916
                            v5397[2] = v6510
                            v5397[3] = v7098
                            v5397[4] = v7710
                            v5397[5] = v8212
                            v5397[6] = v8498
                            v5397[7] = v8673
                            v5397[8] = v8798
                            v5397[9] = v8897
                            v5397[10] = v8982
                            v5397[11] = v9061
                            tbl2 = v5397
                        end
                    elseif value >= 1600 then
                        if value < 1625 then
                            v5400 = {}
                            v5919 = CFrame.new(5834, 51, -1103)
                            v6512 = false
                            v7100 = "Dragon Crew Archer"
                            v7712 = "AmazonQuest"
                            v8213 = 2
                            v5400[1] = v5919
                            v5400[2] = v6512
                            v5400[3] = v7100
                            v5400[4] = v7712
                            v5400[5] = v8213
                            tbl = v5400
                            v5401 = {}
                            v5922 = CFrame.new(6472, 370, -151)
                            v6516 = CFrame.new(6547, 370, -51)
                            v7105 = CFrame.new(6539, 410, 72)
                            v7718 = CFrame.new(6737, 410, 249)
                            v8219 = CFrame.new(6768, 410, 390)
                            v8504, v8677, v8801, v8899, v8983, v9062 = CFrame.new(6625, 410, 371)
                            v5401[1] = v5922
                            v5401[2] = v6516
                            v5401[3] = v7105
                            v5401[4] = v7718
                            v5401[5] = v8219
                            v5401[6] = v8504
                            v5401[7] = v8677
                            v5401[8] = v8801
                            v5401[9] = v8899
                            v5401[10] = v8983
                            v5401[11] = v9062
                            tbl2 = v5401
                        end
                    else
                        if value >= 1625 then
                            if value < 1650 then
                                v5404 = {}
                                v5925 = CFrame.new(5448, 602, 748)
                                v6518 = false
                                v7107 = "Female Islander"
                                v7720 = "AmazonQuest2"
                                v8220 = 1
                                v5404[1] = v5925
                                v5404[2] = v6518
                                v5404[3] = v7107
                                v5404[4] = v7720
                                v5404[5] = v8220
                                tbl = v5404
                                v5405 = {}
                                v5928 = CFrame.new(4836, 740, 928)
                                v6522 = CFrame.new(4708, 770, 911)
                                v7112 = CFrame.new(4672, 790, 695)
                                v7726 = CFrame.new(4657, 800, 498)
                                v8226, v8508, v8680, v8803, v8900, v8984, v9063 = CFrame.new(4575, 810, 281)
                                v5405[1] = v5928
                                v5405[2] = v6522
                                v5405[3] = v7112
                                v5405[4] = v7726
                                v5405[5] = v8226
                                v5405[6] = v8508
                                v5405[7] = v8680
                                v5405[8] = v8803
                                v5405[9] = v8900
                                v5405[10] = v8984
                                v5405[11] = v9063
                                tbl2 = v5405
                            end
                        elseif value >= 1650 then
                            if value < 1700 then
                                if fn23("Island Empress") then
                                    if value >= 1675 then
                                        v5411 = {}
                                        v5932 = CFrame.new(5448, 602, 748)
                                        v6526 = CFrame.new(5730, 602, 199)
                                        v7115 = "Island Empress"
                                        v7729 = "AmazonQuest2"
                                        v8228 = 3
                                        v5411[1] = v5932
                                        v5411[2] = v6526
                                        v5411[3] = v7115
                                        v5411[4] = v7729
                                        v5411[5] = v8228
                                        tbl = v5411
                                        tbl2 = nil
                                    end
                                else
                                    v5413 = {}
                                    v5935 = CFrame.new(5448, 602, 748)
                                    v6528 = false
                                    v7117 = "Giant Islander"
                                    v7731 = "AmazonQuest2"
                                    v8229 = 2
                                    v5413[1] = v5935
                                    v5413[2] = v6528
                                    v5413[3] = v7117
                                    v5413[4] = v7731
                                    v5413[5] = v8229
                                    tbl = v5413
                                    v5414 = {}
                                    v5938 = CFrame.new(4784, 660, 155)
                                    v6532 = CFrame.new(4662, 660, -57)
                                    v7122 = CFrame.new(4869, 660, -178)
                                    v7737 = CFrame.new(5056, 660, -267)
                                    v8235, v8512, v8683, v8805, v8901, v8985, v9064 = CFrame.new(5332, 660, -166)
                                    v5414[1] = v5938
                                    v5414[2] = v6532
                                    v5414[3] = v7122
                                    v5414[4] = v7737
                                    v5414[5] = v8235
                                    v5414[6] = v8512
                                    v5414[7] = v8683
                                    v5414[8] = v8805
                                    v5414[9] = v8901
                                    v5414[10] = v8985
                                    v5414[11] = v9064
                                    tbl2 = v5414
                                end
                            end
                        else
                            if value >= 1700 then
                                if value < 1725 then
                                    v5417 = {}
                                    v5941 = CFrame.new(2180, 29, -6738)
                                    v6534 = false
                                    v7124 = "Marine Commodore"
                                    v7739 = "MarineTreeIsland"
                                    v8236 = 1
                                    v5417[1] = v5941
                                    v5417[2] = v6534
                                    v5417[3] = v7124
                                    v5417[4] = v7739
                                    v5417[5] = v8236
                                    tbl = v5417
                                    v5418 = {}
                                    v5944 = CFrame.new(3156, 120, -7837)
                                    v6538 = CFrame.new(2904, 120, -7863)
                                    v7129 = CFrame.new(2606, 120, -7745)
                                    v7745 = CFrame.new(2409, 120, -7874)
                                    v8242 = CFrame.new(2269, 120, -7416)
                                    v8518 = CFrame.new(2413, 120, -7232)
                                    v8689, v8809, v8904, v8987, v9065 = CFrame.new(2284, 120, -6911)
                                    v5418[1] = v5944
                                    v5418[2] = v6538
                                    v5418[3] = v7129
                                    v5418[4] = v7745
                                    v5418[5] = v8242
                                    v5418[6] = v8518
                                    v5418[7] = v8689
                                    v5418[8] = v8809
                                    v5418[9] = v8904
                                    v5418[10] = v8987
                                    v5418[11] = v9065
                                    tbl2 = v5418
                                end
                            elseif value >= 1725 then
                                if value < 1775 then
                                    if fn23("Kilo Admiral") then
                                        if value >= 1750 then
                                            v5424 = {}
                                            v5948 = CFrame.new(2180, 29, -6738)
                                            v6542 = CFrame.new(2889, 424, -7233)
                                            v7132 = "Kilo Admiral"
                                            v7748 = "MarineTreeIsland"
                                            v8244 = 3
                                            v5424[1] = v5948
                                            v5424[2] = v6542
                                            v5424[3] = v7132
                                            v5424[4] = v7748
                                            v5424[5] = v8244
                                            tbl = v5424
                                            tbl2 = nil
                                        end
                                    else
                                        v5426 = {}
                                        v5951 = CFrame.new(2180, 29, -6738)
                                        v6544 = false
                                        v7134 = "Marine Rear Admiral"
                                        v7750 = "MarineTreeIsland"
                                        v8245 = 2
                                        v5426[1] = v5951
                                        v5426[2] = v6544
                                        v5426[3] = v7134
                                        v5426[4] = v7750
                                        v5426[5] = v8245
                                        tbl = v5426
                                        v5427 = {}
                                        v5954 = CFrame.new(3205, 120, -6742)
                                        v6548 = CFrame.new(3345, 120, -6649)
                                        v7139 = CFrame.new(3776, 210, -7254)
                                        v7756 = CFrame.new(3879, 220, -7083)
                                        v8251 = CFrame.new(3887, 210, -6841)
                                        v8524 = CFrame.new(3546, 210, -6809)
                                        v8695 = CFrame.new(3448, 210, -7014)
                                        v8815, v8908, v8990, v9067 = CFrame.new(3504, 210, -7230)
                                        v5427[1] = v5954
                                        v5427[2] = v6548
                                        v5427[3] = v7139
                                        v5427[4] = v7756
                                        v5427[5] = v8251
                                        v5427[6] = v8524
                                        v5427[7] = v8695
                                        v5427[8] = v8815
                                        v5427[9] = v8908
                                        v5427[10] = v8990
                                        v5427[11] = v9067
                                        tbl2 = v5427
                                    end
                                end
                            else
                                if value >= 1775 then
                                    if value < 1800 then
                                        v5430 = {}
                                        v5957 = CFrame.new(-10581, 332, -8758)
                                        v6550 = false
                                        v7141 = "Fishman Raider"
                                        v7758 = "DeepForestIsland3"
                                        v8252 = 1
                                        v5430[1] = v5957
                                        v5430[2] = v6550
                                        v5430[3] = v7141
                                        v5430[4] = v7758
                                        v5430[5] = v8252
                                        tbl = v5430
                                        v5431 = {}
                                        v5960 = CFrame.new(-10550, 380, -8574)
                                        v6554 = CFrame.new(-10860, 380, -8459)
                                        v7146 = CFrame.new(-10578, 380, -8331)
                                        v7764 = CFrame.new(-10377, 380, -8238)
                                        v8258 = CFrame.new(-10147, 380, -8216)
                                        v8530, v8699, v8818, v8910, v8991, v9068 = CFrame.new(-10234, 380, -8454)
                                        v5431[1] = v5960
                                        v5431[2] = v6554
                                        v5431[3] = v7146
                                        v5431[4] = v7764
                                        v5431[5] = v8258
                                        v5431[6] = v8530
                                        v5431[7] = v8699
                                        v5431[8] = v8818
                                        v5431[9] = v8910
                                        v5431[10] = v8991
                                        v5431[11] = v9068
                                        tbl2 = v5431
                                    end
                                elseif value >= 1800 then
                                    if value < 1825 then
                                        v5434 = {}
                                        v5963 = CFrame.new(-10581, 332, -8758)
                                        v6556 = false
                                        v7148 = "Fishman Captain"
                                        v7766 = "DeepForestIsland3"
                                        v8259 = 2
                                        v5434[1] = v5963
                                        v5434[2] = v6556
                                        v5434[3] = v7148
                                        v5434[4] = v7766
                                        v5434[5] = v8259
                                        tbl = v5434
                                        v5435 = {}
                                        v5966 = CFrame.new(-10764, 380, -8799)
                                        v6560 = CFrame.new(-10844, 380, -9030)
                                        v7153 = CFrame.new(-11160, 380, -9166)
                                        v7772 = CFrame.new(-11073, 380, -8846)
                                        v8265, v8534, v8702, v8820, v8911, v8992, v9069 = CFrame.new(-11043, 380, -8619)
                                        v5435[1] = v5966
                                        v5435[2] = v6560
                                        v5435[3] = v7153
                                        v5435[4] = v7772
                                        v5435[5] = v8265
                                        v5435[6] = v8534
                                        v5435[7] = v8702
                                        v5435[8] = v8820
                                        v5435[9] = v8911
                                        v5435[10] = v8992
                                        v5435[11] = v9069
                                        tbl2 = v5435
                                    end
                                else
                                    if value >= 1825 then
                                        if value < 1850 then
                                            v5438 = {}
                                            v5969 = CFrame.new(-13233, 332, -7626)
                                            v6562 = false
                                            v7155 = "Forest Pirate"
                                            v7774 = "DeepForestIsland"
                                            v8266 = 1
                                            v5438[1] = v5969
                                            v5438[2] = v6562
                                            v5438[3] = v7155
                                            v5438[4] = v7774
                                            v5438[5] = v8266
                                            tbl = v5438
                                            v5439 = {}
                                            v5972 = CFrame.new(-13335, 380, -7660)
                                            v6566 = CFrame.new(-13138, 380, -7713)
                                            v7160 = CFrame.new(-13298, 380, -7876)
                                            v7780 = CFrame.new(-13512, 380, -7983)
                                            v8272, v8538, v8705, v8822, v8912, v8993, v9070 = CFrame.new(-13632, 380, -7815)
                                            v5439[1] = v5972
                                            v5439[2] = v6566
                                            v5439[3] = v7160
                                            v5439[4] = v7780
                                            v5439[5] = v8272
                                            v5439[6] = v8538
                                            v5439[7] = v8705
                                            v5439[8] = v8822
                                            v5439[9] = v8912
                                            v5439[10] = v8993
                                            v5439[11] = v9070
                                            tbl2 = v5439
                                        end
                                    elseif value >= 1850 then
                                        if value < 1900 then
                                            if fn23("Captain Elephant") then
                                                if value >= 1875 then
                                                    v5445 = {}
                                                    v5976 = CFrame.new(-13233, 332, -7626)
                                                    v6570 = CFrame.new(-13393, 319, -8423)
                                                    v7163 = "Captain Elephant"
                                                    v7783 = "DeepForestIsland"
                                                    v8274 = 3
                                                    v5445[1] = v5976
                                                    v5445[2] = v6570
                                                    v5445[3] = v7163
                                                    v5445[4] = v7783
                                                    v5445[5] = v8274
                                                    tbl = v5445
                                                    tbl2 = nil
                                                end
                                            else
                                                v5447 = {}
                                                v5979 = CFrame.new(-13233, 332, -7626)
                                                v6572 = false
                                                v7165 = "Mythological Pirate"
                                                v7785 = "DeepForestIsland"
                                                v8275 = 2
                                                v5447[1] = v5979
                                                v5447[2] = v6572
                                                v5447[3] = v7165
                                                v5447[4] = v7785
                                                v5447[5] = v8275
                                                tbl = v5447
                                                v5448 = {}
                                                v5982 = CFrame.new(-13844, 520, -7016)
                                                v6576 = CFrame.new(-13710, 520, -6856)
                                                v7170 = CFrame.new(-13482, 520, -6985)
                                                v7791, v8279, v8541, v8707, v8823, v8913, v8994, v9071 = CFrame.new(-13224, 580, -6806)
                                                v5448[1] = v5982
                                                v5448[2] = v6576
                                                v5448[3] = v7170
                                                v5448[4] = v7791
                                                v5448[5] = v8279
                                                v5448[6] = v8541
                                                v5448[7] = v8707
                                                v5448[8] = v8823
                                                v5448[9] = v8913
                                                v5448[10] = v8994
                                                v5448[11] = v9071
                                                tbl2 = v5448
                                            end
                                        end
                                    else
                                        if value >= 1900 then
                                            if value < 1925 then
                                                v5451 = {}
                                                v5985 = CFrame.new(-12682, 391, -9901)
                                                v6578 = false
                                                v7172 = "Jungle Pirate"
                                                v7793 = "DeepForestIsland2"
                                                v8280 = 1
                                                v5451[1] = v5985
                                                v5451[2] = v6578
                                                v5451[3] = v7172
                                                v5451[4] = v7793
                                                v5451[5] = v8280
                                                tbl = v5451
                                                v5452 = {}
                                                v5988 = CFrame.new(-12166, 380, -10375)
                                                v6582 = CFrame.new(-12303, 380, -10639)
                                                v7177 = CFrame.new(-11904, 380, -10469)
                                                v7799 = CFrame.new(-11636, 380, -10511)
                                                v8286 = CFrame.new(-11735, 380, -10687)
                                                v8547, v8711, v8826, v8915, v8995, v9072 = CFrame.new(-11937, 380, -10713)
                                                v5452[1] = v5988
                                                v5452[2] = v6582
                                                v5452[3] = v7177
                                                v5452[4] = v7799
                                                v5452[5] = v8286
                                                v5452[6] = v8547
                                                v5452[7] = v8711
                                                v5452[8] = v8826
                                                v5452[9] = v8915
                                                v5452[10] = v8995
                                                v5452[11] = v9072
                                                tbl2 = v5452
                                            end
                                        elseif value >= 1925 then
                                            if value < 1975 then
                                                if fn23("Beautiful Pirate") then
                                                    if value > 1950 then
                                                        v5458 = {}
                                                        v5992 = CFrame.new(-12682, 391, -9901)
                                                        v6586 = CFrame.new(5241, 23, 129)
                                                        v7180 = "Musketeer Pirate"
                                                        v7802 = "DeepForestIsland2"
                                                        v8288 = 3
                                                        v5458[1] = v5992
                                                        v5458[2] = v6586
                                                        v5458[3] = v7180
                                                        v5458[4] = v7802
                                                        v5458[5] = v8288
                                                        tbl = v5458
                                                        tbl2 = nil
                                                    end
                                                else
                                                    v5460 = {}
                                                    v5995 = CFrame.new(-12682, 391, -9901)
                                                    v6588 = false
                                                    v7182 = "Musketeer Pirate"
                                                    v7804 = "DeepForestIsland2"
                                                    v8289 = 2
                                                    v5460[1] = v5995
                                                    v5460[2] = v6588
                                                    v5460[3] = v7182
                                                    v5460[4] = v7804
                                                    v5460[5] = v8289
                                                    tbl = v5460
                                                    v5461 = {}
                                                    v5998 = CFrame.new(-13098, 450, -9831)
                                                    v6592 = CFrame.new(-13222, 450, -9621)
                                                    v7187 = CFrame.new(-13530, 450, -9760)
                                                    v7810, v8293, v8550, v8713, v8827, v8916, v8996, v9073 = CFrame.new(-13455, 450, -9940)
                                                    v5461[1] = v5998
                                                    v5461[2] = v6592
                                                    v5461[3] = v7187
                                                    v5461[4] = v7810
                                                    v5461[5] = v8293
                                                    v5461[6] = v8550
                                                    v5461[7] = v8713
                                                    v5461[8] = v8827
                                                    v5461[9] = v8916
                                                    v5461[10] = v8996
                                                    v5461[11] = v9073
                                                    tbl2 = v5461
                                                end
                                            end
                                        else
                                            if value >= 1975 then
                                                if value < 2000 then
                                                    v5464 = {}
                                                    v6001 = CFrame.new(-9481, 142, 5565)
                                                    v6594 = false
                                                    v7189 = "Reborn Skeleton"
                                                    v7812 = "HauntedQuest1"
                                                    v8294 = 1
                                                    v5464[1] = v6001
                                                    v5464[2] = v6594
                                                    v5464[3] = v7189
                                                    v5464[4] = v7812
                                                    v5464[5] = v8294
                                                    tbl = v5464
                                                    v5465 = {}
                                                    v6004 = CFrame.new(-8680, 190, 5852)
                                                    v6598 = CFrame.new(-8879, 190, 5900)
                                                    v7194 = CFrame.new(-8865, 190, 6100)
                                                    v7818 = CFrame.new(-8774, 170, 6169)
                                                    v8300, v8554, v8716, v8829, v8917, v8997, v9074 = CFrame.new(-8649, 190, 6071)
                                                    v5465[1] = v6004
                                                    v5465[2] = v6598
                                                    v5465[3] = v7194
                                                    v5465[4] = v7818
                                                    v5465[5] = v8300
                                                    v5465[6] = v8554
                                                    v5465[7] = v8716
                                                    v5465[8] = v8829
                                                    v5465[9] = v8917
                                                    v5465[10] = v8997
                                                    v5465[11] = v9074
                                                    tbl2 = v5465
                                                end
                                            elseif value >= 200 then
                                                if value < 2025 then
                                                    v5468 = {}
                                                    v6007 = CFrame.new(-9481, 142, 5565)
                                                    v6600 = false
                                                    v7196 = "Living Zombie"
                                                    v7820 = "HauntedQuest1"
                                                    v8301 = 2
                                                    v5468[1] = v6007
                                                    v5468[2] = v6600
                                                    v5468[3] = v7196
                                                    v5468[4] = v7820
                                                    v5468[5] = v8301
                                                    tbl = v5468
                                                    v5469 = {}
                                                    v6010 = CFrame.new(-10104, 200, 5739)
                                                    v6604 = CFrame.new(-10078, 200, 5953)
                                                    v7201 = CFrame.new(-10195, 200, 6139)
                                                    v7826, v8305, v8557, v8718, v8830, v8918, v8998, v9075 = CFrame.new(-10252, 200, 5973)
                                                    v5469[1] = v6010
                                                    v5469[2] = v6604
                                                    v5469[3] = v7201
                                                    v5469[4] = v7826
                                                    v5469[5] = v8305
                                                    v5469[6] = v8557
                                                    v5469[7] = v8718
                                                    v5469[8] = v8830
                                                    v5469[9] = v8918
                                                    v5469[10] = v8998
                                                    v5469[11] = v9075
                                                    tbl2 = v5469
                                                end
                                            else
                                                if value >= 2025 then
                                                    if value < 2050 then
                                                        v5472 = {}
                                                        v6013 = CFrame.new(-9515, 172, 6078)
                                                        v6606 = false
                                                        v7203 = "Demonic Soul"
                                                        v7828 = "HauntedQuest2"
                                                        v8306 = 1
                                                        v5472[1] = v6013
                                                        v5472[2] = v6606
                                                        v5472[3] = v7203
                                                        v5472[4] = v7828
                                                        v5472[5] = v8306
                                                        tbl = v5472
                                                        v5473 = {}
                                                        v6016 = CFrame.new(-9275, 210, 6166)
                                                        v6610 = CFrame.new(-9379, 210, 6076)
                                                        v7208 = CFrame.new(-9565, 210, 6201)
                                                        v7834, v8310, v8560, v8720, v8831, v8919, v8999, v9076 = CFrame.new(-9671, 210, 6096)
                                                        v5473[1] = v6016
                                                        v5473[2] = v6610
                                                        v5473[3] = v7208
                                                        v5473[4] = v7834
                                                        v5473[5] = v8310
                                                        v5473[6] = v8560
                                                        v5473[7] = v8720
                                                        v5473[8] = v8831
                                                        v5473[9] = v8919
                                                        v5473[10] = v8999
                                                        v5473[11] = v9076
                                                        tbl2 = v5473
                                                    end
                                                elseif value >= 2050 then
                                                    if value < 2075 then
                                                        v5476 = {}
                                                        v6019 = CFrame.new(-9515, 172, 6078)
                                                        v6612 = false
                                                        v7210 = "Posessed Mummy"
                                                        v7836 = "HauntedQuest2"
                                                        v8311 = 2
                                                        v5476[1] = v6019
                                                        v5476[2] = v6612
                                                        v5476[3] = v7210
                                                        v5476[4] = v7836
                                                        v5476[5] = v8311
                                                        tbl = v5476
                                                        v5477 = {}
                                                        v6022 = CFrame.new(-9442, 60, 6304)
                                                        v6616 = CFrame.new(-9427, 60, 6148)
                                                        v7215 = CFrame.new(-9598, 60, 6121)
                                                        v7842 = CFrame.new(-9733, 60, 6119)
                                                        v8317 = CFrame.new(-9735, 60, 6336)
                                                        v8566, v8724, v8834, v8921, v9000, v9077 = CFrame.new(-9618, 60, 6323)
                                                        v5477[1] = v6022
                                                        v5477[2] = v6616
                                                        v5477[3] = v7215
                                                        v5477[4] = v7842
                                                        v5477[5] = v8317
                                                        v5477[6] = v8566
                                                        v5477[7] = v8724
                                                        v5477[8] = v8834
                                                        v5477[9] = v8921
                                                        v5477[10] = v9000
                                                        v5477[11] = v9077
                                                        tbl2 = v5477
                                                    end
                                                else
                                                    if value >= 2075 then
                                                        if value < 2100 then
                                                            v5480 = {}
                                                            v6025 = CFrame.new(-2104, 38, -10194)
                                                            v6618 = false
                                                            v7217 = "Peanut Scout"
                                                            v7844 = "NutsIslandQuest"
                                                            v8318 = 1
                                                            v5480[1] = v6025
                                                            v5480[2] = v6618
                                                            v5480[3] = v7217
                                                            v5480[4] = v7844
                                                            v5480[5] = v8318
                                                            tbl = v5480
                                                            v5481 = {}
                                                            v6028 = CFrame.new(-1870, 100, -10225)
                                                            v6622, v7220, v7847, v8320, v8567, v8725, v8835, v8922, v9001, v9078 = CFrame.new(-2143, 100, -10106)
                                                            v5481[1] = v6028
                                                            v5481[2] = v6622
                                                            v5481[3] = v7220
                                                            v5481[4] = v7847
                                                            v5481[5] = v8320
                                                            v5481[6] = v8567
                                                            v5481[7] = v8725
                                                            v5481[8] = v8835
                                                            v5481[9] = v8922
                                                            v5481[10] = v9001
                                                            v5481[11] = v9078
                                                            tbl2 = v5481
                                                        end
                                                    elseif value >= 2100 then
                                                        if value < 2125 then
                                                            v5484 = {}
                                                            v6031 = CFrame.new(-2104, 38, -10194)
                                                            v6624 = false
                                                            v7222 = "Peanut President"
                                                            v7849 = "NutsIslandQuest"
                                                            v8321 = 2
                                                            v5484[1] = v6031
                                                            v5484[2] = v6624
                                                            v5484[3] = v7222
                                                            v5484[4] = v7849
                                                            v5484[5] = v8321
                                                            tbl = v5484
                                                            v5485 = {}
                                                            v6034 = CFrame.new(-2005, 100, -10585)
                                                            v6628, v7225, v7852, v8323, v8568, v8726, v8836, v8923, v9002, v9079 = CFrame.new(-2293, 88, -10512)
                                                            v5485[1] = v6034
                                                            v5485[2] = v6628
                                                            v5485[3] = v7225
                                                            v5485[4] = v7852
                                                            v5485[5] = v8323
                                                            v5485[6] = v8568
                                                            v5485[7] = v8726
                                                            v5485[8] = v8836
                                                            v5485[9] = v8923
                                                            v5485[10] = v9002
                                                            v5485[11] = v9079
                                                            tbl2 = v5485
                                                        end
                                                    else
                                                        if value >= 2125 then
                                                            if value < 2150 then
                                                                v5488 = {}
                                                                v6037 = CFrame.new(-818, 66, -10964)
                                                                v6630 = false
                                                                v7227 = "Ice Cream Chef"
                                                                v7854 = "IceCreamIslandQuest"
                                                                v8324 = 1
                                                                v5488[1] = v6037
                                                                v5488[2] = v6630
                                                                v5488[3] = v7227
                                                                v5488[4] = v7854
                                                                v5488[5] = v8324
                                                                tbl = v5488
                                                                v5489 = {}
                                                                v6040 = CFrame.new(-501, 100, -10883)
                                                                v6634 = CFrame.new(-763, 100, -10834)
                                                                v7232, v7858, v8327, v8570, v8727, v8837, v8924, v9003, v9080 = CFrame.new(-990, 100, -11085)
                                                                v5489[1] = v6040
                                                                v5489[2] = v6634
                                                                v5489[3] = v7232
                                                                v5489[4] = v7858
                                                                v5489[5] = v8327
                                                                v5489[6] = v8570
                                                                v5489[7] = v8727
                                                                v5489[8] = v8837
                                                                v5489[9] = v8924
                                                                v5489[10] = v9003
                                                                v5489[11] = v9080
                                                                tbl2 = v5489
                                                            end
                                                        elseif value >= 2150 then
                                                            if value < 2200 then
                                                                if fn23("Cake Queen") then
                                                                    if value >= 2175 then
                                                                        v5495 = {}
                                                                        v6044 = CFrame.new(-818, 66, -10964)
                                                                        v6638 = CFrame.new(-710, 382, -11150)
                                                                        v7235 = "Cake Queen"
                                                                        v7861 = "IceCreamIslandQuest"
                                                                        v8329 = 3
                                                                        v5495[1] = v6044
                                                                        v5495[2] = v6638
                                                                        v5495[3] = v7235
                                                                        v5495[4] = v7861
                                                                        v5495[5] = v8329
                                                                        tbl = v5495
                                                                        tbl2 = nil
                                                                    end
                                                                else
                                                                    v5497 = {}
                                                                    v6047 = CFrame.new(-818, 66, -10964)
                                                                    v6640 = false
                                                                    v7237 = "Ice Cream Commander"
                                                                    v7863 = "IceCreamIslandQuest"
                                                                    v8330 = 2
                                                                    v5497[1] = v6047
                                                                    v5497[2] = v6640
                                                                    v5497[3] = v7237
                                                                    v5497[4] = v7863
                                                                    v5497[5] = v8330
                                                                    tbl = v5497
                                                                    v5498 = {}
                                                                    v6050 = CFrame.new(-690, 100, -11350)
                                                                    v6644 = CFrame.new(-534, 100, -11284)
                                                                    v7242, v7867, v8333, v8572, v8728, v8838, v8925, v9004, v9081 = CFrame.new(-720, 180, -11162)
                                                                    v5498[1] = v6050
                                                                    v5498[2] = v6644
                                                                    v5498[3] = v7242
                                                                    v5498[4] = v7867
                                                                    v5498[5] = v8333
                                                                    v5498[6] = v8572
                                                                    v5498[7] = v8728
                                                                    v5498[8] = v8838
                                                                    v5498[9] = v8925
                                                                    v5498[10] = v9004
                                                                    v5498[11] = v9081
                                                                    tbl2 = v5498
                                                                end
                                                            end
                                                        else
                                                            if value >= 2200 then
                                                                if value < 2225 then
                                                                    v5501 = {}
                                                                    v6053 = CFrame.new(-2023, 38, -12028)
                                                                    v6646 = false
                                                                    v7244 = "Cookie Crafter"
                                                                    v7869 = "CakeQuest1"
                                                                    v8334 = 1
                                                                    v5501[1] = v6053
                                                                    v5501[2] = v6646
                                                                    v5501[3] = v7244
                                                                    v5501[4] = v7869
                                                                    v5501[5] = v8334
                                                                    tbl = v5501
                                                                    v5502 = {}
                                                                    v6056 = CFrame.new(-2332, 90, -12049)
                                                                    v6650 = CFrame.new(-2468, 90, -12121)
                                                                    v7249 = CFrame.new(-2401, 90, -12224)
                                                                    v7875, v8338, v8575, v8730, v8839, v8926, v9005, v9082 = CFrame.new(-2296, 90, -12114)
                                                                    v5502[1] = v6056
                                                                    v5502[2] = v6650
                                                                    v5502[3] = v7249
                                                                    v5502[4] = v7875
                                                                    v5502[5] = v8338
                                                                    v5502[6] = v8575
                                                                    v5502[7] = v8730
                                                                    v5502[8] = v8839
                                                                    v5502[9] = v8926
                                                                    v5502[10] = v9005
                                                                    v5502[11] = v9082
                                                                    tbl2 = v5502
                                                                end
                                                            elseif value >= 2225 then
                                                                if value < 2250 then
                                                                    v5505 = {}
                                                                    v6059 = CFrame.new(-2023, 38, -12028)
                                                                    v6652 = false
                                                                    v7251 = "Cake Guard"
                                                                    v7877 = "CakeQuest1"
                                                                    v8339 = 2
                                                                    v5505[1] = v6059
                                                                    v5505[2] = v6652
                                                                    v5505[3] = v7251
                                                                    v5505[4] = v7877
                                                                    v5505[5] = v8339
                                                                    tbl = v5505
                                                                    v5506 = {}
                                                                    v6062 = CFrame.new(-1514, 90, -12422)
                                                                    v6656 = CFrame.new(-1455, 90, -12244)
                                                                    v7256 = CFrame.new(-1674, 90, -12206)
                                                                    v7883, v8343, v8578, v8732, v8840, v8927, v9006, v9083 = CFrame.new(-1707, 90, -12360)
                                                                    v5506[1] = v6062
                                                                    v5506[2] = v6656
                                                                    v5506[3] = v7256
                                                                    v5506[4] = v7883
                                                                    v5506[5] = v8343
                                                                    v5506[6] = v8578
                                                                    v5506[7] = v8732
                                                                    v5506[8] = v8840
                                                                    v5506[9] = v8927
                                                                    v5506[10] = v9006
                                                                    v5506[11] = v9083
                                                                    tbl2 = v5506
                                                                end
                                                            else
                                                                if value >= 2250 then
                                                                    if value < 2275 then
                                                                        v5509 = {}
                                                                        v6065 = CFrame.new(-1931, 38, -12840)
                                                                        v6658 = false
                                                                        v7258 = "Baking Staff"
                                                                        v7885 = "CakeQuest2"
                                                                        v8344 = 1
                                                                        v5509[1] = v6065
                                                                        v5509[2] = v6658
                                                                        v5509[3] = v7258
                                                                        v5509[4] = v7885
                                                                        v5509[5] = v8344
                                                                        tbl = v5509
                                                                        v5510 = {}
                                                                        v6068 = CFrame.new(-1930, 90, -12963)
                                                                        v6662 = CFrame.new(-1803, 90, -13115)
                                                                        v7263 = CFrame.new(-1769, 90, -12955)
                                                                        v7891, v8348, v8581, v8734, v8841, v8928, v9007, v9084 = CFrame.new(-1873, 90, -12755)
                                                                        v5510[1] = v6068
                                                                        v5510[2] = v6662
                                                                        v5510[3] = v7263
                                                                        v5510[4] = v7891
                                                                        v5510[5] = v8348
                                                                        v5510[6] = v8581
                                                                        v5510[7] = v8734
                                                                        v5510[8] = v8841
                                                                        v5510[9] = v8928
                                                                        v5510[10] = v9007
                                                                        v5510[11] = v9084
                                                                        tbl2 = v5510
                                                                    end
                                                                elseif value >= 2275 then
                                                                    if value < 2300 then
                                                                        v5513 = {}
                                                                        v6071 = CFrame.new(-1931, 38, -12840)
                                                                        v6664 = false
                                                                        v7265 = "Head Baker"
                                                                        v7893 = "CakeQuest2"
                                                                        v8349 = 2
                                                                        v5513[1] = v6071
                                                                        v5513[2] = v6664
                                                                        v5513[3] = v7265
                                                                        v5513[4] = v7893
                                                                        v5513[5] = v8349
                                                                        tbl = v5513
                                                                        v5514 = {}
                                                                        v6074 = CFrame.new(-2123, 110, -12777)
                                                                        v6668 = CFrame.new(-2281, 110, -12748)
                                                                        v7270 = CFrame.new(-2317, 110, -12994)
                                                                        v7899, v8353, v8584, v8736, v8842, v8929, v9008, v9085 = CFrame.new(-2140, 110, -12989)
                                                                        v5514[1] = v6074
                                                                        v5514[2] = v6668
                                                                        v5514[3] = v7270
                                                                        v5514[4] = v7899
                                                                        v5514[5] = v8353
                                                                        v5514[6] = v8584
                                                                        v5514[7] = v8736
                                                                        v5514[8] = v8842
                                                                        v5514[9] = v8929
                                                                        v5514[10] = v9008
                                                                        v5514[11] = v9085
                                                                        tbl2 = v5514
                                                                    end
                                                                else
                                                                    if value >= 2300 then
                                                                        if value < 2325 then
                                                                            v5517 = {}
                                                                            v6077 = CFrame.new(235, 25, -12199)
                                                                            v6670 = false
                                                                            v7272 = "Cocoa Warrior"
                                                                            v7901 = "ChocQuest1"
                                                                            v8354 = 1
                                                                            v5517[1] = v6077
                                                                            v5517[2] = v6670
                                                                            v5517[3] = v7272
                                                                            v5517[4] = v7901
                                                                            v5517[5] = v8354
                                                                            tbl = v5517
                                                                            v5518 = {}
                                                                            v6080 = CFrame.new(110, 80, -12245)
                                                                            v6674, v7275, v7904, v8356, v8585, v8737, v8843, v8930, v9009, v9086 = CFrame.new(-71, 80, -12292)
                                                                            v5518[1] = v6080
                                                                            v5518[2] = v6674
                                                                            v5518[3] = v7275
                                                                            v5518[4] = v7904
                                                                            v5518[5] = v8356
                                                                            v5518[6] = v8585
                                                                            v5518[7] = v8737
                                                                            v5518[8] = v8843
                                                                            v5518[9] = v8930
                                                                            v5518[10] = v9009
                                                                            v5518[11] = v9086
                                                                            tbl2 = v5518
                                                                        end
                                                                    elseif value >= 2325 then
                                                                        if value < 2350 then
                                                                            v5521 = {}
                                                                            v6083 = CFrame.new(235, 25, -12199)
                                                                            v6676 = false
                                                                            v7277 = "Chocolate Bar Battler"
                                                                            v7906 = "ChocQuest1"
                                                                            v8357 = 2
                                                                            v5521[1] = v6083
                                                                            v5521[2] = v6676
                                                                            v5521[3] = v7277
                                                                            v5521[4] = v7906
                                                                            v5521[5] = v8357
                                                                            tbl = v5521
                                                                            v5522 = {}
                                                                            v6086 = CFrame.new(579, 80, -12413)
                                                                            v6680, v7280, v7909, v8359, v8586, v8738, v8844, v8931, v9010, v9087 = CFrame.new(735, 80, -12659)
                                                                            v5522[1] = v6086
                                                                            v5522[2] = v6680
                                                                            v5522[3] = v7280
                                                                            v5522[4] = v7909
                                                                            v5522[5] = v8359
                                                                            v5522[6] = v8586
                                                                            v5522[7] = v8738
                                                                            v5522[8] = v8844
                                                                            v5522[9] = v8931
                                                                            v5522[10] = v9010
                                                                            v5522[11] = v9087
                                                                            tbl2 = v5522
                                                                        end
                                                                    else
                                                                        if value >= 2350 then
                                                                            if value < 2375 then
                                                                                v5525 = {}
                                                                                v6089 = CFrame.new(150, 25, -12777)
                                                                                v6682 = false
                                                                                v7282 = "Sweet Thief"
                                                                                v7911 = "ChocQuest2"
                                                                                v8360 = 1
                                                                                v5525[1] = v6089
                                                                                v5525[2] = v6682
                                                                                v5525[3] = v7282
                                                                                v5525[4] = v7911
                                                                                v5525[5] = v8360
                                                                                tbl = v5525
                                                                                v5526 = {}
                                                                                v6092 = CFrame.new(-68, 80, -12692)
                                                                                v6686, v7285, v7914, v8362, v8587, v8739, v8845, v8932, v9011, v9088 = CFrame.new(90, 80, -12519)
                                                                                v5526[1] = v6092
                                                                                v5526[2] = v6686
                                                                                v5526[3] = v7285
                                                                                v5526[4] = v7914
                                                                                v5526[5] = v8362
                                                                                v5526[6] = v8587
                                                                                v5526[7] = v8739
                                                                                v5526[8] = v8845
                                                                                v5526[9] = v8932
                                                                                v5526[10] = v9011
                                                                                v5526[11] = v9088
                                                                                tbl2 = v5526
                                                                            end
                                                                        elseif value >= 2375 then
                                                                            if value < 2400 then
                                                                                v5529 = {}
                                                                                v6095 = CFrame.new(150, 25, -12777)
                                                                                v6688 = false
                                                                                v7287 = "Candy Rebel"
                                                                                v7916 = "ChocQuest2"
                                                                                v8363 = 2
                                                                                v5529[1] = v6095
                                                                                v5529[2] = v6688
                                                                                v5529[3] = v7287
                                                                                v5529[4] = v7916
                                                                                v5529[5] = v8363
                                                                                tbl = v5529
                                                                                v5530 = {}
                                                                                v6098 = CFrame.new(17, 80, -12962)
                                                                                v6692, v7290, v7919, v8365, v8588, v8740, v8846, v8933, v9012, v9089 = CFrame.new(158, 80, -12961)
                                                                                v5530[1] = v6098
                                                                                v5530[2] = v6692
                                                                                v5530[3] = v7290
                                                                                v5530[4] = v7919
                                                                                v5530[5] = v8365
                                                                                v5530[6] = v8588
                                                                                v5530[7] = v8740
                                                                                v5530[8] = v8846
                                                                                v5530[9] = v8933
                                                                                v5530[10] = v9012
                                                                                v5530[11] = v9089
                                                                                tbl2 = v5530
                                                                            end
                                                                        else
                                                                            if value >= 2400 then
                                                                                if value < 2425 then
                                                                                    v5533 = {}
                                                                                    v6101 = CFrame.new(-1148, 14, -14446)
                                                                                    v6694 = false
                                                                                    v7292 = "Candy Pirate"
                                                                                    v7921 = "CandyQuest1"
                                                                                    v8366 = 1
                                                                                    v5533[1] = v6101
                                                                                    v5533[2] = v6694
                                                                                    v5533[3] = v7292
                                                                                    v5533[4] = v7921
                                                                                    v5533[5] = v8366
                                                                                    tbl = v5533
                                                                                    v5534 = {}
                                                                                    v6104 = CFrame.new(-1371, 70, -14405)
                                                                                    v6698, v7295, v7924, v8368, v8589, v8741, v8847, v8934, v9013, v9090 = CFrame.new(-1318, 70, -14715)
                                                                                    v5534[1] = v6104
                                                                                    v5534[2] = v6698
                                                                                    v5534[3] = v7295
                                                                                    v5534[4] = v7924
                                                                                    v5534[5] = v8368
                                                                                    v5534[6] = v8589
                                                                                    v5534[7] = v8741
                                                                                    v5534[8] = v8847
                                                                                    v5534[9] = v8934
                                                                                    v5534[10] = v9013
                                                                                    v5534[11] = v9090
                                                                                    tbl2 = v5534
                                                                                end
                                                                            elseif value >= 2425 then
                                                                                if value < 2450 then
                                                                                    v5537 = {}
                                                                                    v6107 = CFrame.new(-1148, 14, -14446)
                                                                                    v6700 = false
                                                                                    v7297 = "Snow Demon"
                                                                                    v7926 = "CandyQuest1"
                                                                                    v8369 = 2
                                                                                    v5537[1] = v6107
                                                                                    v5537[2] = v6700
                                                                                    v5537[3] = v7297
                                                                                    v5537[4] = v7926
                                                                                    v5537[5] = v8369
                                                                                    tbl = v5537
                                                                                    v5538 = {}
                                                                                    v6110 = CFrame.new(-836, 70, -14326)
                                                                                    v6704, v7300, v7929, v8371, v8590, v8742, v8848, v8935, v9014, v9091 = CFrame.new(-884, 70, -14708)
                                                                                    v5538[1] = v6110
                                                                                    v5538[2] = v6704
                                                                                    v5538[3] = v7300
                                                                                    v5538[4] = v7929
                                                                                    v5538[5] = v8371
                                                                                    v5538[6] = v8590
                                                                                    v5538[7] = v8742
                                                                                    v5538[8] = v8848
                                                                                    v5538[9] = v8935
                                                                                    v5538[10] = v9014
                                                                                    v5538[11] = v9091
                                                                                    tbl2 = v5538
                                                                                end
                                                                            else
                                                                                if value >= 2450 then
                                                                                    if value < 2475 then
                                                                                        v5541 = {}
                                                                                        v6113 = CFrame.new(-16547, 56, -172)
                                                                                        v6706 = false
                                                                                        v7302 = "Isle Outlaw"
                                                                                        v7931 = "TikiQuest1"
                                                                                        v8372 = 1
                                                                                        v5541[1] = v6113
                                                                                        v5541[2] = v6706
                                                                                        v5541[3] = v7302
                                                                                        v5541[4] = v7931
                                                                                        v5541[5] = v8372
                                                                                        tbl = v5541
                                                                                        v5542 = {}
                                                                                        v6116 = CFrame.new(-16431, 90, -223)
                                                                                        v6710 = CFrame.new(-16313, 50, -210)
                                                                                        v7307, v7935, v8375, v8592, v8743, v8849, v8936, v9015, v9092 = CFrame.new(-16160, 35, -156)
                                                                                        v5542[1] = v6116
                                                                                        v5542[2] = v6710
                                                                                        v5542[3] = v7307
                                                                                        v5542[4] = v7935
                                                                                        v5542[5] = v8375
                                                                                        v5542[6] = v8592
                                                                                        v5542[7] = v8743
                                                                                        v5542[8] = v8849
                                                                                        v5542[9] = v8936
                                                                                        v5542[10] = v9015
                                                                                        v5542[11] = v9092
                                                                                        tbl2 = v5542
                                                                                    end
                                                                                elseif value >= 2475 then
                                                                                    if value < 2500 then
                                                                                        v5545 = {}
                                                                                        v6119 = CFrame.new(-16547, 56, -172)
                                                                                        v6712 = false
                                                                                        v7309 = "Island Boy"
                                                                                        v7937 = "TikiQuest1"
                                                                                        v8376 = 2
                                                                                        v5545[1] = v6119
                                                                                        v5545[2] = v6712
                                                                                        v5545[3] = v7309
                                                                                        v5545[4] = v7937
                                                                                        v5545[5] = v8376
                                                                                        tbl = v5545
                                                                                        v5546 = {}
                                                                                        v6122 = CFrame.new(-16668, 70, -243)
                                                                                        v6716 = CFrame.new(-16744, 60, -195)
                                                                                        v7314, v7941, v8379, v8594, v8744, v8850, v8937, v9016, v9093 = CFrame.new(-16912, 45, -152)
                                                                                        v5546[1] = v6122
                                                                                        v5546[2] = v6716
                                                                                        v5546[3] = v7314
                                                                                        v5546[4] = v7941
                                                                                        v5546[5] = v8379
                                                                                        v5546[6] = v8594
                                                                                        v5546[7] = v8744
                                                                                        v5546[8] = v8850
                                                                                        v5546[9] = v8937
                                                                                        v5546[10] = v9016
                                                                                        v5546[11] = v9093
                                                                                        tbl2 = v5546
                                                                                    end
                                                                                else
                                                                                    if value >= 2500 then
                                                                                        if value < 2525 then
                                                                                            v5549 = {}
                                                                                            v6125 = CFrame.new(-16540, 56, 1051)
                                                                                            v6718 = false
                                                                                            v7316 = "Sun-kissed Warrior"
                                                                                            v7943 = "TikiQuest2"
                                                                                            v8380 = 1
                                                                                            v5549[1] = v6125
                                                                                            v5549[2] = v6718
                                                                                            v5549[3] = v7316
                                                                                            v5549[4] = v7943
                                                                                            v5549[5] = v8380
                                                                                            tbl = v5549
                                                                                            v5550 = {}
                                                                                            v6128 = CFrame.new(-16345, 80, 1004)
                                                                                            v6722 = CFrame.new(-16425, 77, 1059)
                                                                                            v7321, v7947, v8383, v8596, v8745, v8851, v8938, v9017, v9094 = CFrame.new(-16069, 37, 1029)
                                                                                            v5550[1] = v6128
                                                                                            v5550[2] = v6722
                                                                                            v5550[3] = v7321
                                                                                            v5550[4] = v7947
                                                                                            v5550[5] = v8383
                                                                                            v5550[6] = v8596
                                                                                            v5550[7] = v8745
                                                                                            v5550[8] = v8851
                                                                                            v5550[9] = v8938
                                                                                            v5550[10] = v9017
                                                                                            v5550[11] = v9094
                                                                                            tbl2 = v5550
                                                                                        end
                                                                                    elseif value >= 2525 then
                                                                                        v5552 = {}
                                                                                        v6131 = CFrame.new(-16540, 56, 1051)
                                                                                        v6724 = false
                                                                                        v7323 = "Isle Champion"
                                                                                        v7949 = "TikiQuest2"
                                                                                        v8384 = 2
                                                                                        v5552[1] = v6131
                                                                                        v5552[2] = v6724
                                                                                        v5552[3] = v7323
                                                                                        v5552[4] = v7949
                                                                                        v5552[5] = v8384
                                                                                        tbl = v5552
                                                                                        v5553 = {}
                                                                                        v6134 = CFrame.new(-16634, 85, 1106)
                                                                                        v6728 = CFrame.new(-16735, 60, 1075)
                                                                                        v7328, v7953, v8387, v8598, v8746, v8852, v8939, v9018, v9095 = CFrame.new(-16888, 35, 1011)
                                                                                        v5553[1] = v6134
                                                                                        v5553[2] = v6728
                                                                                        v5553[3] = v7328
                                                                                        v5553[4] = v7953
                                                                                        v5553[5] = v8387
                                                                                        v5553[6] = v8598
                                                                                        v5553[7] = v8746
                                                                                        v5553[8] = v8852
                                                                                        v5553[9] = v8939
                                                                                        v5553[10] = v9018
                                                                                        v5553[11] = v9095
                                                                                        tbl2 = v5553
                                                                                    end
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    local function fn40()
        local quest = localPlayer.PlayerGui.Main.Quest
        if not quest.Visible then
            localPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text = ""
        end
        return quest.Visible
    end
    local function fn41(arg42)
        local quest2 = localPlayer.PlayerGui.Main.Quest
        local v9118 = quest2.Container.QuestTitle.Title.Text:gsub("-", ""):lower()
        local v9124 = arg42:gsub("-", ""):lower()
        local visible = quest2.Visible
        if visible then
            visible = v9118:find(v9124)
        end
        return visible
    end
    level.Changed:Connect(fn39)
    local spawn7 = task.spawn
    local function fn97()
        while true do
            if not task.wait(1) then
                break
            end
            pcall(fn39)
        end
    end
    spawn7(fn97)
    fn39()
    local function fn42(arg43, arg44)
        local v9140 = BringMobs
        local skipped6 = false
        if v9140 then
            if BringMobsDistance then
                skipped6 = true
            end
        end
        local v9142
        if not skipped6 then
            v9142 = arg43.PrimaryPart
            if v9142 then
                v9142.CFrame = EnePP2.CFrame
                v9142.CanCollide = false
                v9142.Size = Vector3.new(50, 50, 50)
            end
            do
                return
            end
        end
        local function fn203(arg45, arg46)
            local v9158 = arg44
            local skipped7 = false
            if not v9158 then
                if arg46.Name ~= arg43.Name then
                    skipped7 = true
                end
            end
            local v9161, v9166, v9169, v9172
            if not skipped7 then
                v9161 = arg46:FindFirstChild("Humanoid")
                if v9161 then
                    if 0 < v9161.Health then
                        v9166 = arg46.PrimaryPart
                        v9169 = arg43.PrimaryPart
                        if v9166 and v9169 then
                            v9172 = (v9166.Position - v9169.Position).Magnitude
                            if v9172 < BringMobsDistance and 1 <= v9172 then
                                v9166.CFrame = v9169.CFrame
                                v9166.CanCollide = false
                                v9166.Size = Vector3.new(50, 50, 50)
                                v9161.WalkSpeed = 0
                                v9161.JumpPower = 0
                                v9161:ChangeState(14)
                                if v9161:FindFirstChild("Animator") then
                                    v9161.Animator:Destroy()
                                end
                                if arg46:FindFirstChild("Head") then
                                    if arg46.Head.CanCollide then
                                        arg46.Head.CanCollide = false
                                    end
                                end
                                sethiddenproperty(localPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                end
            end
        end
        table.foreach(enemies:GetChildren(), fn203)
    end
    local now2 = tick()
    local spawn8 = task.spawn
    local function fn98()
        local function fn204(arg47, arg48)
            local name2 = arg48.Name
            local v9221
            if name2 ~= "rip_indra True Form" then
                v9221 = arg48 or name2
                if arg48 then
                    v9221 = arg48:FindFirstChild("HumanoidRootPart")
                end
                if v9221 then
                    if (v9221.Position - Vector3.new(-5556, 314, -2988)).Magnitude < 700 then
                        now2 = tick()
                    end
                end
            end
        end
        while true do
            if not task.wait() then
                break
            end
            table.foreach(enemies:GetChildren(), fn204)
            table.foreach(ReplicatedStorage:GetChildren(), fn204)
        end
    end
    spawn8(fn98)
    local function fn43()
        local autoPiratesSea = getgenv().AutoPiratesSea
        if autoPiratesSea then
            autoPiratesSea = tick() - now2 <= 10
        end
        return autoPiratesSea
    end
    local function fn44()
        local autoEliteHunter = getgenv().AutoEliteHunter
        local skipped8 = false
        if autoEliteHunter then
            autoEliteHunter = fn23("Urban")
            if autoEliteHunter then
                skipped8 = true
            end
        end
        if not skipped8 then
            autoEliteHunter = getgenv().AutoEliteHunter
            if autoEliteHunter then
                autoEliteHunter = fn23("Deandre")
                if autoEliteHunter then
                    skipped8 = true
                end
            end
            if not skipped8 then
                autoEliteHunter = getgenv().AutoEliteHunter
                if autoEliteHunter then
                    autoEliteHunter = fn23("Diablo")
                end
            end
        end
        return autoEliteHunter
    end
    local function fn45()
        local v9255, v9257, v9258
        v9255, v9257, v9258 = pairs(tbl3)
        for _, v21 in v9255, v9257, v9258 do
            if fn23(v21) then
                return true
            end
        end
    end
    local function fn46()
        local circle = workspace.Map["Boat Castle"].Summoner:FindFirstChild("Circle")
        local v9270, v9274, v9277
        if circle then
            v9270, v9274, v9277 = pairs(circle:GetChildren())
            for _, v22 in v9270, v9274, v9277 do
                if v22 then
                    if v22.Name == "Part" then
                        if v22:FindFirstChild("Part") then
                            if v22.Part.BrickColor ~= BrickColor.new("Lime green") then
                                return v22.Part
                            end
                        end
                    end
                end
            end
        end
    end
    local timer = localPlayer.WaitForChild(localPlayer, "PlayerGui", 9000000000):WaitForChild("Main", 9000000000):WaitForChild("Timer", 9000000000)
    local function fn47(arg49)
        local skipped9 = false
        if arg49 == "Level" then
            if fn44() then
                return true
            end
            if fn43() then
                return true
            end
            if getgenv().TeleportToFruit then
                if fn33() then
                    return true
                end
            end
            if getgenv().AutoSecondSea then
                if 700 <= level.Value then
                    return true
                end
            end
            if getgenv().AutoThirdSea then
                if 1500 <= level.Value then
                    return true
                end
            end
            if fn23("Awakened Ice Admiral") then
                if getgenv().AutoRengoku then
                    return true
                end
            end
            if fn23("Darkbeard") then
                if getgenv().AutoDarkbeard then
                    return true
                end
            end
            if fn23("rip_indra True Form") then
                if getgenv().AutoRipIndra then
                    return true
                end
            end
            if fn25("God's Chalice") then
                if getgenv().AutoRipIndra then
                    return true
                end
            end
            if fn23("Cake Prince") then
                if getgenv().AutoCakePrince then
                    return true
                end
            end
            if fn23("Dough King") then
                if getgenv().AutoCakePrince then
                    return true
                end
            end
            if fn23("Don Swan") then
                if getgenv().AutoKillDonSwan then
                    return true
                end
            end
            if fn23("Soul Reaper") then
                if getgenv().AutoSoulReaper then
                    return true
                end
            end
            if not fn25("Hallow Essence") then
                skipped9 = true
            end
            if not skipped9 then
                if not getgenv().AutoSoulReaper then
                    skipped9 = true
                end
                if not skipped9 then
                    return true
                end
            end
        end
        if not skipped9 then
            if arg49 == "Raid Pirate" then
                if not fn43() then
                    if getgenv().AutoFarmBone then
                        return true
                    end
                end
                if not fn43() then
                    if getgenv().AutoFarm_Level then
                        return true
                    end
                end
                if not fn43() then
                    if getgenv().AutoEliteHunter then
                        return true
                    end
                end
                if fn43() then
                    skipped9 = true
                end
                if not skipped9 then
                    if not getgenv().TeleportToFruit then
                        skipped9 = true
                    end
                    if not skipped9 then
                        return true
                    end
                end
            end
            if not skipped9 then
                if arg49 == "All Bosses" then
                    if getgenv().KillAllBosses then
                        if fn45() then
                        end
                    end
                else
                    if arg49 == "Candy" then
                        if fn44() then
                            return true
                        end
                        if getgenv().TeleportToFruit then
                            if fn33() then
                                return true
                            end
                        end
                        if fn23("rip_indra True Form") then
                            if getgenv().AutoRipIndra then
                                return true
                            end
                        end
                        if fn25("God's Chalice") then
                            if getgenv().AutoRipIndra then
                                return true
                            end
                        end
                        if fn23("Cake Prince") then
                            if getgenv().AutoCakePrince then
                                return true
                            end
                        end
                        if fn23("Soul Reaper") then
                            if getgenv().AutoSoulReaper then
                                return true
                            end
                        end
                        if not fn25("Hallow Essence") then
                            skipped9 = true
                        end
                        if not skipped9 then
                            if not getgenv().AutoSoulReaper then
                                skipped9 = true
                            end
                            if not skipped9 then
                                return true
                            end
                        end
                    end
                    if not skipped9 then
                        if arg49 == "Elite Hunter" then
                            if getgenv().TeleportToFruit then
                                if fn33() then
                                    return true
                                end
                            end
                            if fn43() then
                                return true
                            end
                            if not fn44() then
                                if getgenv().AutoCandy then
                                    return true
                                end
                            end
                            if getgenv().AutoFarm_Level then
                                if not fn44() then
                                    return true
                                end
                            end
                            if getgenv().AutoFarmBone then
                                if not fn44() then
                                    return true
                                end
                            end
                            if fn23("rip_indra True Form") then
                                if getgenv().AutoRipIndra then
                                    return true
                                end
                            end
                            if fn23("Cake Prince") then
                                if getgenv().AutoCakePrince then
                                    return true
                                end
                            end
                            if fn23("Dough King") then
                                if getgenv().AutoCakePrince then
                                    return true
                                end
                            end
                            if fn23("Soul Reaper") then
                                if getgenv().AutoSoulReaper then
                                    return true
                                end
                            end
                            if fn25("Hallow Essence") then
                                if getgenv().AutoSoulReaper then
                                    return true
                                end
                            end
                            if not fn25("God's Chalice") then
                                skipped9 = true
                            end
                            if not skipped9 then
                                if not getgenv().AutoRipIndra then
                                    skipped9 = true
                                end
                                if not skipped9 then
                                    return true
                                end
                            end
                        end
                        if not skipped9 then
                            if arg49 == "Fruit" then
                                if getgenv().AutoSecondSea then
                                    if 700 <= level.Value then
                                        return true
                                    end
                                end
                                if fn43() then
                                    return true
                                end
                                if getgenv().AutoFarmRaid then
                                    if timer.Visible then
                                        return true
                                    end
                                end
                                if fn23("Awakened Ice Admiral") then
                                    if getgenv().AutoRengoku then
                                        return true
                                    end
                                end
                                if fn23("Darkbeard") then
                                    if getgenv().AutoDarkbeard then
                                        return true
                                    end
                                end
                                if fn23("Soul Reaper") then
                                    if getgenv().AutoSoulReaper then
                                        return true
                                    end
                                end
                                if fn25("Hallow Essence") then
                                    if getgenv().AutoSoulReaper then
                                        return true
                                    end
                                end
                                if fn23("Cake Prince") then
                                    if getgenv().AutoCakePrince then
                                        return true
                                    end
                                end
                                if fn23("Dough King") then
                                    if getgenv().AutoCakePrince then
                                        return true
                                    end
                                end
                                if fn25("God's Chalice") then
                                    if getgenv().AutoRipIndra then
                                        return true
                                    end
                                end
                                if fn33() then
                                    skipped9 = true
                                end
                                if not skipped9 then
                                    return true
                                end
                            end
                            if not skipped9 then
                                if arg49 == "Bone" then
                                    if getgenv().AutoFarm_Level then
                                        return true
                                    end
                                    if fn43() then
                                        return true
                                    end
                                    if fn44() then
                                        return true
                                    end
                                    if fn25("Hallow Essence") then
                                        if getgenv().AutoSoulReaper then
                                            return true
                                        end
                                    end
                                    if fn23("Soul Reaper") then
                                        if getgenv().AutoSoulReaper then
                                            return true
                                        end
                                    end
                                    if fn23("rip_indra True Form") then
                                        if getgenv().AutoRipIndra then
                                            return true
                                        end
                                    end
                                    if not getgenv().TeleportToFruit then
                                        skipped9 = true
                                    end
                                    if not skipped9 then
                                        if not fn33() then
                                            skipped9 = true
                                        end
                                        if not skipped9 then
                                            return true
                                        end
                                    end
                                end
                                if not skipped9 then
                                    if arg49 == "Ectoplasm" then
                                        if getgenv().TeleportToFruit then
                                            if fn33() then
                                                return true
                                            end
                                        end
                                        if not getgenv().AutoCursedCaptain then
                                            skipped9 = true
                                        end
                                        if not skipped9 then
                                            if not fn23("Cursed Captain") then
                                                skipped9 = true
                                            end
                                            if not skipped9 then
                                                return true
                                            end
                                        end
                                    end
                                    if not skipped9 then
                                        if arg49 == "Hallow Boss" then
                                            if getgenv().AutoFarmBone then
                                                if not fn23("Soul Reaper") then
                                                    if not fn25("Hallow Essence") then
                                                        return true
                                                    end
                                                end
                                            end
                                            if not getgenv().AutoRipIndra then
                                                skipped9 = true
                                            end
                                            if not skipped9 then
                                                if fn23("rip_indra True Form") then
                                                    skipped9 = true
                                                end
                                            end
                                        end
                                        if not skipped9 then
                                            if arg49 == "Raid" then
                                                if not getgenv().TeleportToFruit then
                                                    skipped9 = true
                                                end
                                                if not skipped9 then
                                                    if not fn33() then
                                                        skipped9 = true
                                                    end
                                                    if not skipped9 then
                                                        if timer.Visible then
                                                            skipped9 = true
                                                        end
                                                        if not skipped9 then
                                                            return true
                                                        end
                                                    end
                                                end
                                            end
                                            if not skipped9 then
                                                if arg49 == "Don Swan" then
                                                    if getgenv().AutoFarm_Level then
                                                        if not fn23("Don Swan") then
                                                            return true
                                                        end
                                                    end
                                                    if getgenv().AutoFarmEctoplasm then
                                                        if not fn23("Don Swan") then
                                                            return true
                                                        end
                                                    end
                                                    if getgenv().AutoDarkbeard then
                                                        if fn23("Darkbeard") then
                                                            return true
                                                        end
                                                    end
                                                    if not getgenv().AutoCursedCaptain then
                                                        skipped9 = true
                                                    end
                                                    if not skipped9 then
                                                        if not fn23("Cursed Captain") then
                                                            skipped9 = true
                                                        end
                                                        if not skipped9 then
                                                            return true
                                                        end
                                                    end
                                                end
                                                if not skipped9 then
                                                    if arg49 ~= "Saw Boss" and arg49 ~= "Bartilo Quest" and arg49 ~= "Enel Boss" then
                                                        if arg49 == "Cake Prince" then
                                                            if fn44() then
                                                                skipped9 = true
                                                            end
                                                            if not skipped9 then
                                                                if not fn23("Cake Prince") then
                                                                    if getgenv().TeleportToFruit then
                                                                        if fn33() then
                                                                            return true
                                                                        end
                                                                    end
                                                                end
                                                                if not fn23("Dough King") then
                                                                    if getgenv().TeleportToFruit then
                                                                        if fn33() then
                                                                            return true
                                                                        end
                                                                    end
                                                                end
                                                                if fn23("Soul Reaper") then
                                                                    if getgenv().AutoSoulReaper then
                                                                        return true
                                                                    end
                                                                end
                                                                if fn23("rip_indra True Form") then
                                                                    if getgenv().AutoRipIndra then
                                                                        return true
                                                                    end
                                                                end
                                                                if not fn25("God's Chalice") then
                                                                    skipped9 = true
                                                                end
                                                                if not skipped9 then
                                                                    if not getgenv().AutoRipIndra then
                                                                        skipped9 = true
                                                                    end
                                                                    if not skipped9 then
                                                                        return true
                                                                    end
                                                                end
                                                            end
                                                        end
                                                        if not skipped9 then
                                                            if arg49 == "Rip Indra" then
                                                                if not fn25("God's Chalice") then
                                                                    if not fn23("rip_indra True Form") then
                                                                        if getgenv().AutoFarm_Level then
                                                                            return true
                                                                        end
                                                                    end
                                                                end
                                                                if not fn23("rip_indra True Form") then
                                                                    if getgenv().RipIndraLegendaryHaki then
                                                                        if fn46() then
                                                                            skipped9 = true
                                                                        end
                                                                    end
                                                                end
                                                                if not skipped9 then
                                                                    if not fn25("God's Chalice") then
                                                                        if not fn23("rip_indra True Form") then
                                                                            if getgenv().AutoEliteHunter then
                                                                                return true
                                                                            end
                                                                        end
                                                                    end
                                                                    if not fn25("God's Chalice") then
                                                                        if not fn23("rip_indra True Form") then
                                                                            if getgenv().TeleportToFruit then
                                                                                return true
                                                                            end
                                                                        end
                                                                    end
                                                                    if not fn25("God's Chalice") then
                                                                        if not fn23("rip_indra True Form") then
                                                                            if getgenv().AutoFarmBone then
                                                                                return true
                                                                            end
                                                                        end
                                                                    end
                                                                    if not fn25("God's Chalice") then
                                                                        if not fn23("rip_indra True Form") then
                                                                            if getgenv().AutoCakePrince then
                                                                                return true
                                                                            end
                                                                        end
                                                                    end
                                                                    if not fn25("God's Chalice") then
                                                                        if not fn23("rip_indra True Form") then
                                                                            if getgenv().AutoCakePrince then
                                                                                return true
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    local function fn48()
        local v9811, v9813, v9826
        while true do
            local v538 = getgenv
            v538 = v538()
            v538 = v538.AutoFarm_Level
            if not v538 then
                break
            end
            v538 = task
            v538 = v538.wait
            v538()
            v538 = fn47
            v538 = v538("Level")
            if not v538 then
                v538 = fn29
                v538 = v538({tbl[3]})
                fn40()
                if not fn41(tbl[3]) then
                    fn38(tbl[4], tbl[5], tbl[1])
                elseif v538 then
                    if v538.FindFirstChild(v538, "HumanoidRootPart") then
                        fn6(v538.HumanoidRootPart.CFrame + getgenv().FarmPos)
                        v9811 = pcall
                        function v9826()
                            fn21()
                            fn24()
                            fn32()
                            fn42(v538)
                        end
                        v9811(v9826)
                    end
                else
                    v9813 = localPlayer.Character
                    if v9813 then
                        v9813 = localPlayer.Character.PrimaryPart
                    end
                    if tbl2 then
                        if tbl2[1] and v9813 then
                            if (v9813.Position - tbl2[1].p).Magnitude < 1200 then
                                fn11(tbl2)
                            end
                        end
                    elseif tbl[2] then
                        fn6(tbl[2])
                    else
                        fn6(tbl[1])
                    end
                end
            end
        end
    end
    local function fn49()
        local tbl58 = {}
        local cFrame3 = CFrame.new(-16540, 56, 1051)
        local enabled14 = false
        local tbl60 = {}
        local str75 = "Isle Champion"
        local str76 = "Sun-kissed Warrior"
        tbl60[1] = str75
        tbl60[2] = str76
        tbl58.NPCs = tbl60
        local str74 = "TikiQuest2"
        local num18 = 2
        local enabled15 = true
        tbl58[1] = cFrame3
        tbl58[2] = enabled14
        tbl58[3] = str74
        tbl58[4] = num18
        tbl58[5] = enabled15
        local tbl59 = {}
        local cFrame4 = CFrame.new(-16521, 90, 1095)
        local cFrame5 = CFrame.new(-16891, 60, 1003)
        local cFrame6 = CFrame.new(-16521, 90, 1095)
        local v9916, v9947, v10007, v10033, v10045, v10050, v10056
        v9916, v9947, v10007, v10033, v10045, v10050, v10056 = CFrame.new(-16891, 60, 1003)
        tbl59[1] = cFrame4
        tbl59[2] = cFrame5
        tbl59[3] = cFrame6
        tbl59[4] = v9916
        tbl59[5] = v9947
        tbl59[6] = v10007
        tbl59[7] = v10033
        tbl59[8] = v10045
        tbl59[9] = v10050
        tbl59[10] = v10056
        local v9865, v9866, v9868, v9869, v9884, v9887, v9890, v9893, v9900, v9904, v9906, v9910, v9919, v9922, v9925, v9930, v9950, v9953, v9956, v9962, v10009, v10013, v10034, v10037, v10046, v10048, v10051, v10052, v10057, v10058
        if v77 then
            v9865 = {}
            v9884 = CFrame.new(5258, 39, 4052)
            v9900 = false
            v9865.NPCs = {"Galley Captain"}
            v9919 = "FountainQuest"
            v9950 = 2
            v9865[1] = v9884
            v9865[2] = v9900
            v9865[3] = v9919
            v9865[4] = v9950
            tbl58 = v9865
            v9866 = {}
            v9887 = CFrame.new(5985, 70, 4790)
            v9904, v9922, v9953, v10009, v10034, v10046, v10051, v10057 = CFrame.new(5472, 70, 4887)
            v9866[1] = v9887
            v9866[2] = v9904
            v9866[3] = v9922
            v9866[4] = v9953
            v9866[5] = v10009
            v9866[6] = v10034
            v9866[7] = v10046
            v9866[8] = v10051
            v9866[9] = v10057
            tbl59 = v9866
        elseif v78 then
            v9868 = {}
            v9890 = CFrame.new(-3056, 240, -10145)
            v9906 = false
            v9868.NPCs = {"Water Fighter"}
            v9925 = "ForgottenQuest"
            v9956 = 2
            v9868[1] = v9890
            v9868[2] = v9906
            v9868[3] = v9925
            v9868[4] = v9956
            tbl58 = v9868
            v9869 = {}
            v9893 = CFrame.new(-3339, 290, -10412)
            v9910 = CFrame.new(-3518, 290, -10419)
            v9930 = CFrame.new(-3536, 290, -10607)
            v9962, v10013, v10037, v10048, v10052, v10058 = CFrame.new(-3345, 280, -10667)
            v9869[1] = v9893
            v9869[2] = v9910
            v9869[3] = v9930
            v9869[4] = v9962
            v9869[5] = v10013
            v9869[6] = v10037
            v9869[7] = v10048
            v9869[8] = v10052
            v9869[9] = v10058
            tbl59 = v9869
        end
        local v9877, v9932, v9939, v9940, v9963, v9973, v10003, v10020, v10030
        while true do
            if not getgenv().AutoFarmMastery then
                break
            end
            task.wait()
            v9877 = getgenv().HealthSkill
            local v553 = getgenv
            v553 = v553()
            v553 = v553.ToolMastery
            local v554 = fn29
            v554 = v554(tbl58.NPCs)
            v9932 = pcall
            function v9963()
                DestroySkillWarn()
            end
            v9932(v9963)
            if not fn40() then
                if not fn41(tbl58[3]) then
                    fn38(tbl58[3], tbl58[4], tbl58[1])
                end
            elseif v554 then
                v9939 = v554.FindFirstChild(v554, "HumanoidRootPart")
                if v9939 then
                    v9940 = v554 or v9939
                    if v554 then
                        v9940 = v554.FindFirstChild(v554, "Humanoid")
                        if v9940 then
                            v9940 = v554.Humanoid.Health
                        end
                    end
                    if v9940 then
                        if v9940 < v554.Humanoid.MaxHealth * v9877 / 100 then
                            fn6(v554.HumanoidRootPart.CFrame + Vector3.new(0, getgenv().FarmDistance, 0))
                            v9973 = pcall
                            function v10020()
                                fn21()
                                fn24()
                                fn31(v553)
                                fn42(v554, true)
                            end
                            v9973(v10020)
                            if getgenv().AimBotSkill then
                                v83(v554.HumanoidRootPart)
                            end
                            if getgenv().SkillZ then
                                fn30("Z")
                            end
                            if getgenv().SkillX then
                                fn30("X")
                            end
                            if getgenv().SkillC then
                                fn30("C")
                            end
                            if getgenv().SkillV then
                                fn30("V")
                            end
                            if getgenv().SkillF then
                                fn30("F")
                            end
                        end
                    elseif v9940 then
                        if v9940 >= v554.Humanoid.MaxHealth * v9877 / 100 then
                            fn6(v554.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v10003 = pcall
                            function v10030()
                                fn21()
                                fn24()
                                fn31("Melee")
                                fn42(v554)
                            end
                            v10003(v10030)
                        end
                    end
                end
            else
                fn11(tbl59, tbl58.NPCs)
            end
        end
    end
    local function fn99(arg50)
        local v10074 = enemies
        if v10074 then
            v10074 = enemies:FindFirstChild(arg50)
        end
        return v10074
    end
    local function fn50()
        local v10084, v10088, v10092
        v10084, v10088, v10092 = pairs(workspace:WaitForChild("Boats", 9000000000):GetChildren())
        for _, v23 in v10084, v10088, v10092 do
            if v23:FindFirstChild("Owner") then
                if v23.Owner.Value.Name == localPlayer.Name then
                    v23:Destroy()
                end
            end
        end
    end
    local function fn51()
        local boats2 = workspace:WaitForChild("Boats", 9000000000)
        local map2 = workspace:WaitForChild("Map", 9000000000)
        local v574
        local function fn205()
            local v10336, v10340, v10343
            v10336, v10340, v10343 = pairs(boats2:GetChildren())
            for _, v24 in v10336, v10340, v10343 do
                if v24:FindFirstChild("Humanoid") then
                    if 0 < v24.Humanoid.Value then
                        if v24:FindFirstChild("Owner") then
                            if v24.Owner.Value.Name == localPlayer.Name then
                                v574 = v24
                                return v24
                            end
                        end
                    end
                end
            end
        end
        local function fn206()
            local huge4 = math.huge
            local v10365 = nil
            local v10367, v10371, v10374
            v10367, v10371, v10374 = pairs(workspace:GetChildren())
            local v10382
            for _, v25 in v10367, v10371, v10374 do
                if v25.Name == "EmberTemplate" then
                    if v25:FindFirstChild("Part") then
                        v10382 = localPlayer.Character
                        if v10382 then
                            v10382 = localPlayer.Character.PrimaryPart
                        end
                        if v10382 then
                            if huge4 >= (v10382.Position - v25.Part.Position).Magnitude then
                                huge4 = (v10382.Position - v25.Part.Position).Magnitude
                                v10365 = v25.Part
                            end
                        end
                    end
                end
            end
            return v10365
        end
        local enabled16 = true
        local v10119 = nil
        local v10120 = nil
        local v10121 = nil
        local v587, v10128, v10132, v10138, v10139, v10140, v10142, v10151, v10152, v10155, v10160, v10163, v10167, v10168, v10169, v10170, v10174, v10175, v10176, v10177, v10185, v10188, v10192, v10202, v10207, v10212, v10217, v10218, v10220, v10227, v10230, v10249, v10252, v10258, v10263, v10280, v10294, v10307, v10312, v10325, v10326
        while true do
            if not getgenv().AutoKitsuneIsland then
                break
            end
            task.wait()
            v10128 = localPlayer.Character
            v10132 = fn205()
            if v10132 then
                if not v10132:FindFirstChild("BodyVelocity") then
                    v10138 = Instance.new("BodyVelocity", v10132)
                    v10138.Velocity = Vector3.new()
                end
                v10139 = pairs
                v10151, v10167, v587, v10185, v10218, v10249, v10280, v10307, v10325 = v10132:GetDescendants()
                v10140, v10152, v10168 = v10139(v10151, v10167, v587, v10185, v10218, v10249, v10280, v10307, v10325)
                for _, v26 in v10140, v10152, v10168 do
                    v10220 = v26:IsA("BasePart")
                    local skipped10 = false
                    if not v10220 then
                        if not v26:IsA("MeshPart") then
                            skipped10 = true
                        end
                        if not skipped10 then
                            if v26.Name == "VehicleSeat" then
                                skipped10 = true
                            end
                        end
                    end
                    if not skipped10 then
                        v26.CanCollide = false
                    end
                end
            end
            v10169 = "KitsuneIsland"
            v10142 = map2:FindFirstChild(v10169)
            if v10142 then
                v10155 = localPlayer.Character
                v10170 = v10155 or v10169
                if v10155 then
                    v10170 = v10155.PrimaryPart
                end
                v587 = v10155 or v587
                if v10155 then
                    v587 = v10155:FindFirstChild("Humanoid")
                end
                v10252 = "ShrineDialogPart"
                v10188 = v10142:FindFirstChild(v10252)
                v10227 = fn206()
                if v587 then
                    v10252 = v587.Sit
                    if v10252 then
                        v587.Sit = false
                    end
                end
                if not v10227 then
                    if v10170 and v10188 then
                        v10252 = (v10170.Position - v10188.Position).Magnitude
                        if v10252 < 5 then
                            v10252 = v10188:FindFirstChild("ProximityPrompt")
                        end
                    end
                    if not v10252 and v10188 then
                        fn6(v10188.CFrame)
                    end
                elseif v10227 then
                    v10258 = localPlayer.Character
                    if v10258 then
                        v10258 = localPlayer.Character.PrimaryPart
                    end
                    if v10258 then
                        if part then
                            if (v10227.Position - v10258.Position).Magnitude < 100 then
                                v10258.CFrame = v10227.CFrame
                                part.CFrame = v10227.CFrame
                            end
                        end
                    else
                        fn6(v10227.CFrame)
                    end
                else
                    fn6(v10142.WorldPivot)
                end
            elseif not v10132 then
                if (v10128.PrimaryPart.Position - Vector3.new(-6123, 16, -2247)).Magnitude <= 5 then
                    v10174 = fn5
                    v587 = "BuyBoat"
                    v10174(v587, "Guardian")
                else
                    v10175 = fn6
                    v587, v10192, v10230, v10263, v10294, v10312, v10326 = CFrame.new(-6123, 16, -2247)
                    v10175(v587, v10192, v10230, v10263, v10294, v10312, v10326)
                end
            else
                v10176 = v10132
                v10160 = v10132.FindFirstChild
                v587 = "VehicleSeat"
                if v10160(v10176, v587) then
                    v10163 = localPlayer.Character
                    v10177 = v10163 or v10176
                    if v10163 then
                        v10177 = v10163:FindFirstChild("Humanoid")
                    end
                    if v10177 then
                        v587 = v10177.SeatPart
                        if v587 ~= v10132.VehicleSeat then
                            fn6(v10132.VehicleSeat.CFrame)
                            v10177.Sit = false
                            v587 = v10132.PrimaryPart
                            if v587 then
                                v587 = fn7
                                v587(v10132, v10132.PrimaryPart.CFrame)
                            end
                        end
                    else
                        v587 = v10132.PrimaryPart
                        if v587 then
                            v587 = v10132.PrimaryPart
                            if enabled16 then
                                fn7(v10132, CFrame.new(-42000, 21, 500))
                                if (v587.Position - Vector3.new(-42000, 21, 500)).Magnitude < 25 then
                                    v10202 = false
                                    v10119 = true
                                    enabled16 = v10202
                                end
                            elseif v10119 then
                                fn7(v10132, CFrame.new(-50000, 21, 500))
                                if (v587.Position - Vector3.new(-50000, 21, 500)).Magnitude < 25 then
                                    v10207 = false
                                    v10120 = true
                                    v10119 = v10207
                                end
                            elseif v10120 then
                                fn7(v10132, CFrame.new(-50000, 21, 2000))
                                if (v587.Position - Vector3.new(-50000, 21, 2000)).Magnitude < 25 then
                                    v10212 = false
                                    v10121 = true
                                    v10120 = v10212
                                end
                            elseif v10121 then
                                fn7(v10132, CFrame.new(-42000, 21, -1000))
                                if (v587.Position - Vector3.new(-42000, 21, -1000)).Magnitude < 25 then
                                    v10217 = false
                                    enabled16 = true
                                    v10121 = v10217
                                end
                            end
                        end
                    end
                end
            end
        end
        if v574 then
            if v574.PrimaryPart then
                fn7(v574, v574.PrimaryPart.CFrame)
            end
        end
    end
    local function fn52()
        local str = ""
        local spawn10 = task.spawn
        local v612, v614
        local function fn208()
            local enabled = true
            local num = 0
            local v633 = nil
            local v634 = nil
            local v635 = nil
            local spawn14 = task.spawn
            local function fn214()
                local v10730, v10739, v10747, v10755, v10763
                while true do
                    if not getgenv().AutoFarmSea then
                        break
                    end
                    task.wait()
                    v10730 = v612
                    if v10730 then
                        v10730 = v612.PrimaryPart
                    end
                    if v10730 then
                        if num then
                            v614 = CFrame.new(enabled, 21, 500)
                            if (v10730.Position - Vector3.new(enabled, 21, 500)).Magnitude < 50 then
                                v10739 = false
                                v633 = true
                                num = v10739
                            end
                        elseif v633 then
                            v614 = CFrame.new(enabled - 3000, 21, 500)
                            if (v10730.Position - Vector3.new(enabled - 3000, 21, 500)).Magnitude < 50 then
                                v10747 = false
                                v634 = true
                                v633 = v10747
                            end
                        else
                            if v634 then
                                v614 = CFrame.new(enabled - 3000, 21, 2000)
                                if (v10730.Position - Vector3.new(enabled - 3000, 21, 2000)).Magnitude < 50 then
                                    v10755 = false
                                    v635 = true
                                    v634 = v10755
                                end
                            elseif v635 then
                                v614 = CFrame.new(enabled, 21, -1000)
                                if (v10730.Position - Vector3.new(enabled, 21, -1000)).Magnitude < 50 then
                                    v10763 = false
                                    num = true
                                    v635 = v10763
                                end
                            end
                        end
                    end
                end
            end
            spawn14(fn214)
            while true do
                if not getgenv().AutoFarmSea then
                    break
                end
                task.wait()
                if getgenv().SeaLevelTP == "inf" then
                    enabled = -100000000
                elseif getgenv().SeaLevelTP == "6" then
                    enabled = -42700
                else
                    if getgenv().SeaLevelTP == "5" then
                        enabled = -38000
                    elseif getgenv().SeaLevelTP == "4" then
                        enabled = -34000
                    else
                        if getgenv().SeaLevelTP == "3" then
                            enabled = -30000
                        elseif getgenv().SeaLevelTP == "2" then
                            enabled = -26000
                        else
                            if getgenv().SeaLevelTP == "1" then
                                enabled = -22000
                            end
                        end
                    end
                end
            end
        end
        spawn10(fn208)
        local spawn11 = task.spawn
        local v613
        local function fn209()
            local v644, v645, v646, v647, v648, v649, v650, v651
            while true do
                v644 = getgenv().AutoFarmSea
                if not v644 then
                    break
                end
                v644 = task.wait
                v644()
                v644 = localPlayer.Character
                v645 = v644 or v645
                if v644 then
                    v646 = v644
                    v645 = v644.FindFirstChild
                    v647 = "Humanoid"
                    v645 = v645(v646, v647)
                end
                if v645 then
                    v646 = v645.Health
                    v647 = v645.MaxHealth
                    v648 = getgenv().HealthPanic
                    v647 = v647 * v648
                    v647 = v647 / 100
                    if not (v646 < v647) then
                        continue
                    end
                    v646 = true
                    v613 = v646
                    repeat
                        v646 = task.wait
                        v646()
                        v646 = v612
                        if v646 and v645 then
                            v646 = v645.SeatPart
                            if v646 then
                                v646 = v612
                                v647 = v646
                                v646 = v646.FindFirstChild
                                v648 = "VehicleSeat"
                                v646 = v646(v647, v648)
                                if not v646 then
                                    goto lbl_67_87
                                end
                                v646 = v645.SeatPart
                                v647 = v612.VehicleSeat
                                if v646 == v647 then
                                    goto lbl_67_87
                                end
                            end
                            v646 = fn6
                            v647 = v612.VehicleSeat.CFrame
                            v646(v647)
                            v646 = v612.PrimaryPart
                            if v646 then
                                v646 = fn7
                                v647 = v612
                                v648 = v612.PrimaryPart.CFrame
                                v646(v647, v648)
                                goto lbl_93_87
                                ::lbl_67_87::
                                v646 = v612.PrimaryPart
                                if v646 then
                                    v646 = Vector3.new
                                    v647 = 0
                                    v648 = math.clamp
                                    v649 = v612.PrimaryPart.Position.Y + 5
                                    v650 = 0
                                    v651 = 600
                                    v648 = v648(v649, v650, v651)
                                    v649 = 0
                                    v646 = v646(v647, v648, v649)
                                    v647 = v612.PrimaryPart
                                    v648 = v612.PrimaryPart.CFrame + v646
                                    v647.CFrame = v648
                                end
                            end
                        end
                        ::lbl_93_87::
                        v646 = getgenv().AutoFarmSea
                        if not v646 then
                            break
                        end
                        v646 = getgenv().PanicMode
                        if not v646 then
                            break
                        end
                        v646 = v612
                        if not (v646 and v644 and v645) then
                            break
                        end
                        v646 = v645.Health
                        v647 = v645.MaxHealth
                        v648 = math.clamp
                        v649 = getgenv().HealthPanic
                        v650 = 20
                        v651 = 75
                        v648 = v648(v649, v650, v651)
                        v647 = v647 * v648
                        v647 = v647 / 100
                    until v646 > v647
                    v646 = false
                    v613 = v646
                else
                    v646 = false
                    v613 = v646
                end
            end
        end
        spawn11(fn209)
        local spawn12 = task.spawn
        local function fn210()
            while true do
                if not getgenv().AutoFarmSea then
                    break
                end
                if fn26("Melee") then
                    str = "Melee"
                    task.wait(2)
                end
                if fn26("Blox Fruit") then
                    str = "Blox Fruit"
                    task.wait(3)
                end
                if fn26("Sword") then
                    str = "Sword"
                    task.wait(2)
                end
                if fn26("Gun") then
                    str = "Gun"
                    task.wait(2)
                end
            end
        end
        spawn12(fn210)
        local function fn207()
            local v10840, v10844, v10847
            v10840, v10844, v10847 = pairs(boats:GetChildren())
            for _, v27 in v10840, v10844, v10847 do
                if v27:FindFirstChild("Humanoid") then
                    if 0 < v27.Humanoid.Value then
                        if v27:FindFirstChild("Owner") then
                            if v27.Owner.Value.Name == localPlayer.Name then
                                v612 = v27
                                return v27
                            end
                        end
                    end
                end
            end
        end
        local function fn211(arg51)
            local num2 = 2500
            local v662 = nil
            local function fn215(arg52, arg53)
                local v10886, v10887, v10890
                if arg53.Name == arg51 then
                    if arg53:FindFirstChild("Health") then
                        v10886 = arg53.Health.Value
                        if 0 < v10886 then
                            v10887 = arg53 or v10886
                            if arg53 then
                                v10887 = arg53.PrimaryPart
                            end
                            v10890 = v612
                            if v10890 then
                                v10890 = v612.PrimaryPart
                            end
                            if v10890 and v10887 then
                                if (v10890.Position - v10887.Position).Magnitude < num2 then
                                    num2 = (v10890.Position - v10887.Position).Magnitude
                                    v662 = arg53
                                end
                            end
                        end
                    end
                end
            end
            table.foreach(enemies:GetChildren(), fn215)
            table.foreach(ReplicatedStorage:GetChildren(), fn215)
            return v662
        end
        local function fn212(arg54)
            local num3 = 2500
            local v671 = nil
            local function fn216(arg55, arg56)
                local v10918, v10921, v10922, v10924
                if arg56.Name == arg54 then
                    v10918 = arg56:FindFirstChild("Humanoid")
                    if v10918 then
                        v10921 = v10918.Health
                        if 0 < v10921 then
                            v10922 = arg56 or v10921
                            if arg56 then
                                v10922 = arg56.PrimaryPart
                            end
                            v10924 = v612
                            if v10924 then
                                v10924 = v612.PrimaryPart
                            end
                            if v10924 and v10922 then
                                if (v10924.Position - v10922.Position).Magnitude < num3 then
                                    num3 = (v10924.Position - v10922.Position).Magnitude
                                    v671 = arg56
                                end
                            end
                        end
                    end
                end
            end
            table.foreach(enemies:GetChildren(), fn216)
            table.foreach(ReplicatedStorage:GetChildren(), fn216)
            return v671
        end
        local spawn13 = task.spawn
        local function fn213()
            local v10946, v10948, v10957, v10962, v10967
            while true do
                if not getgenv().AutoFarmSea then
                    break
                end
                task.wait()
                if v612 then
                    if not v612:FindFirstChild("BodyVelocity") then
                        v10946 = Instance.new("BodyVelocity", v612)
                        v10946.Velocity = Vector3.new()
                    end
                    v10948, v10957, v10962 = pairs(v612:GetDescendants())
                    for _, v28 in v10948, v10957, v10962 do
                        v10967 = v28:IsA("BasePart")
                        local skipped11 = false
                        if not v10967 then
                            if not v28:IsA("MeshPart") then
                                skipped11 = true
                            end
                            if not skipped11 then
                                if v28.Name == "VehicleSeat" then
                                    skipped11 = true
                                end
                            end
                        end
                        if not skipped11 then
                            v28.CanCollide = false
                        end
                    end
                end
            end
        end
        spawn13(fn213)
        local v618, v628, v10403, v10406, v10410, v10411, v10414, v10417, v10420, v10435, v10447, v10454, v10461, v10472, v10481, v10487, v10491, v10495, v10499, v10503, v10507, v10513, v10522, v10528, v10532, v10536, v10540, v10544, v10548, v10554, v10563, v10569, v10573, v10577, v10581, v10585, v10589, v10592, v10594, v10596, v10604, v10614, v10618, v10624, v10630
        while true do
            v618 = getgenv
            v618 = v618()
            v618 = v618.AutoFarmSea
            if not v618 then
                break
            end
            v618 = task
            v618 = v618.wait
            v618()
            v618 = localPlayer
            v618 = v618.Character
            v10403 = fn207()
            v10406 = fn212("Terrorshark")
            v10410 = fn212
            local str2 = "Shark"
            v10411 = v10410(str2)
            str2 = fn212
            local str3 = "Piranha"
            str2 = str2(str3)
            str3 = fn212
            str3 = str3("Fish Crew Member")
            v10414 = fn211("PirateGrandBrigade")
            v10417 = fn211("PirateBrigade")
            v10420 = fn211("FishBoat")
            if not (getgenv().PanicMode and v613) or not v10403 then
                if not v10403 then
                    if (v618.PrimaryPart.Position - Vector3.new(-6123, 16, -2247)).Magnitude <= 5 then
                        v628 = fn5
                        v628("BuyBoat", "Guardian")
                    else
                        v628 = fn6
                        v628(CFrame.new(-6123, 16, -2247))
                    end
                elseif getgenv().Terrorshark and v10406 then
                    v628 = v10406
                    if v10406.FindFirstChild(v628, "HumanoidRootPart") then
                        fn6(v10406.HumanoidRootPart.CFrame * CFrame.new(0, 40, 50))
                        v10435 = pcall
                        function v10604()
                            fn21()
                            fn24()
                            fn32()
                            v618.Humanoid.Sit = false
                        end
                        v10435(v10604)
                        v628 = v10406
                        if v10406.FindFirstChild(v628, "Humanoid") then
                            if v10406.Humanoid.Health <= 0 then
                                v628 = v10406
                                v10406.Destroy(v628)
                            end
                        end
                    end
                else
                    if getgenv().Piranha and str2 then
                        v628 = str2
                        if str2.FindFirstChild(v628, "HumanoidRootPart") then
                            fn6(str2.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v10447 = pcall
                            function v628()
                                fn21()
                                fn24()
                                fn32()
                                fn42(str2)
                                v618.Humanoid.Sit = false
                            end
                            v10447(v628)
                        end
                    elseif getgenv().FishCrewMember and str3 then
                        v628 = str3
                        if str3.FindFirstChild(v628, "HumanoidRootPart") then
                            fn6(str3.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v10454 = pcall
                            function v628()
                                fn21()
                                fn24()
                                fn32()
                                fn42(str3)
                                v618.Humanoid.Sit = false
                            end
                            v10454(v628)
                        end
                    else
                        if getgenv().Shark and v10411 then
                            v628 = v10411
                            if v10411.FindFirstChild(v628, "HumanoidRootPart") then
                                fn6(v10411.HumanoidRootPart.CFrame + getgenv().FarmPos)
                                v10461 = pcall
                                function v10614()
                                    fn21()
                                    fn24()
                                    fn32()
                                    v618.Humanoid.Sit = false
                                end
                                v10461(v10614)
                                v628 = v10411
                                if v10411.FindFirstChild(v628, "Humanoid") then
                                    if v10411.Humanoid.Health <= 0 then
                                        v628 = v10411
                                        v10411.Destroy(v628)
                                    end
                                end
                            end
                        elseif getgenv().PirateGrandBrigade and v10414 then
                            if v10414.PrimaryPart then
                                fn6(v10414.PrimaryPart.CFrame + getgenv().FarmPos)
                                v10472 = pcall
                                function v10618()
                                    fn24()
                                    v618.Humanoid.Sit = false
                                end
                                v10472(v10618)
                                fn31(str)
                                v628 = v10414
                                if v10414.FindFirstChild(v628, "Humanoid") then
                                    if v10414.Humanoid.Value <= 0 then
                                        v628 = v10414
                                        v10414.Destroy(v628)
                                    end
                                end
                                if v618 then
                                    if v618.PrimaryPart then
                                        v10481 = v618.PrimaryPart.Position
                                        v628 = v10414.PrimaryPart.Position
                                        if (v10481 - v628).Magnitude < 60 then
                                            if getgenv().SeaAimBotSkill then
                                                v10487 = v83
                                                v628 = v10414.PrimaryPart
                                                v10487(v628)
                                            end
                                            if getgenv().SeaSkillZ then
                                                v10491 = fn30
                                                v628 = "Z"
                                                v10491(v628)
                                            end
                                            if getgenv().SeaSkillX then
                                                v10495 = fn30
                                                v628 = "X"
                                                v10495(v628)
                                            end
                                            if getgenv().SeaSkillC then
                                                v10499 = fn30
                                                v628 = "C"
                                                v10499(v628)
                                            end
                                            if getgenv().SeaSkillV then
                                                v10503 = fn30
                                                v628 = "V"
                                                v10503(v628)
                                            end
                                            if getgenv().SeaSkillF then
                                                v10507 = fn30
                                                v628 = "F"
                                                v10507(v628)
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            if getgenv().PirateBrigade and v10417 then
                                if v10417.PrimaryPart then
                                    fn6(v10417.PrimaryPart.CFrame + getgenv().FarmPos)
                                    v10513 = pcall
                                    function v10624()
                                        fn24()
                                        v618.Humanoid.Sit = false
                                    end
                                    v10513(v10624)
                                    fn31(str)
                                    v628 = v10417
                                    if v10417.FindFirstChild(v628, "Humanoid") then
                                        if v10417.Humanoid.Value <= 0 then
                                            v628 = v10417
                                            v10417.Destroy(v628)
                                        end
                                    end
                                    if v618 then
                                        if v618.PrimaryPart then
                                            v10522 = v618.PrimaryPart.Position
                                            v628 = v10417.PrimaryPart.Position
                                            if (v10522 - v628).Magnitude < 60 then
                                                if getgenv().SeaAimBotSkill then
                                                    v10528 = v83
                                                    v628 = v10417.PrimaryPart
                                                    v10528(v628)
                                                end
                                                if getgenv().SeaSkillZ then
                                                    v10532 = fn30
                                                    v628 = "Z"
                                                    v10532(v628)
                                                end
                                                if getgenv().SeaSkillX then
                                                    v10536 = fn30
                                                    v628 = "X"
                                                    v10536(v628)
                                                end
                                                if getgenv().SeaSkillC then
                                                    v10540 = fn30
                                                    v628 = "C"
                                                    v10540(v628)
                                                end
                                                if getgenv().SeaSkillV then
                                                    v10544 = fn30
                                                    v628 = "V"
                                                    v10544(v628)
                                                end
                                                if getgenv().SeaSkillF then
                                                    v10548 = fn30
                                                    v628 = "F"
                                                    v10548(v628)
                                                end
                                            end
                                        end
                                    end
                                end
                            elseif getgenv().FishBoat and v10420 then
                                if v10420.PrimaryPart then
                                    fn6(v10420.PrimaryPart.CFrame + getgenv().FarmPos)
                                    v10554 = pcall
                                    function v10630()
                                        fn24()
                                        v618.Humanoid.Sit = false
                                    end
                                    v10554(v10630)
                                    fn31(str)
                                    v628 = v10420
                                    if v10420.FindFirstChild(v628, "Humanoid") then
                                        if v10420.Humanoid.Value <= 0 then
                                            v628 = v10420
                                            v10420.Destroy(v628)
                                        end
                                    end
                                    if v618 then
                                        if v618.PrimaryPart then
                                            v10563 = v618.PrimaryPart.Position
                                            v628 = v10420.PrimaryPart.Position
                                            if (v10563 - v628).Magnitude < 60 then
                                                if getgenv().SeaAimBotSkill then
                                                    v10569 = v83
                                                    v628 = v10420.PrimaryPart
                                                    v10569(v628)
                                                end
                                                if getgenv().SeaSkillZ then
                                                    v10573 = fn30
                                                    v628 = "Z"
                                                    v10573(v628)
                                                end
                                                if getgenv().SeaSkillX then
                                                    v10577 = fn30
                                                    v628 = "X"
                                                    v10577(v628)
                                                end
                                                if getgenv().SeaSkillC then
                                                    v10581 = fn30
                                                    v628 = "C"
                                                    v10581(v628)
                                                end
                                                if getgenv().SeaSkillV then
                                                    v10585 = fn30
                                                    v628 = "V"
                                                    v10585(v628)
                                                end
                                                if getgenv().SeaSkillF then
                                                    v10589 = fn30
                                                    v628 = "F"
                                                    v10589(v628)
                                                end
                                            end
                                        end
                                    end
                                end
                            elseif v10403 then
                                v628 = v10403
                                if v10403.FindFirstChild(v628, "VehicleSeat") then
                                    v10592 = fn6
                                    v628 = v10403.VehicleSeat.CFrame
                                    v10592(v628)
                                end
                            end
                        end
                    end
                end
            end
            v10594 = localPlayer.Character
            if v10594 then
                v10596 = localPlayer.Character
                v628 = v10596
                v10594 = v10596.FindFirstChild(v628, "Humanoid")
            end
            v628 = v10403 or v628
            if v10403 then
                v628 = v10403:FindFirstChild("VehicleSeat")
            end
            if v10594 and v628 then
                if v10594.Sit then
                    if v10594.SeatPart ~= v628 then
                        v618.Humanoid.Sit = false
                        fn7(v10403, v10403.PrimaryPart.CFrame)
                    end
                end
            elseif v628 and v10594 then
                if v10594.SeatPart then
                    if v10594.SeatPart == v628 and v614 then
                        fn7(v10403, v614)
                    end
                end
            end
        end
        if v612 then
            v618 = v612.PrimaryPart
            if v618 then
                v618 = fn7
                v618(v612, v612.PrimaryPart.CFrame)
            end
        end
    end
    local function fn53()
        local v11017, v11027, v11029, v11033, v11038, v11055
        while true do
            if not getgenv().AutoEliteHunter then
                break
            end
            task.wait()
            if not fn47("Elite Hunter") then
                v11017 = "EliteHunterVerify"
                fn40()
                if fn41("Diablo") then
                    v11017 = "Diablo"
                elseif fn41("Deandre") then
                    v11017 = "Deandre"
                else
                    if fn41("Urban") then
                        v11017 = "Urban"
                    else
                        v11027 = task.spawn
                        function v11033()
                            fn5("EliteHunter")
                        end
                        v11027(v11033)
                    end
                end
                v11029 = fn29({v11017})
                if v11029 then
                    if v11029:FindFirstChild("HumanoidRootPart") then
                        fn6(v11029.HumanoidRootPart.CFrame + getgenv().FarmPos)
                        v11038 = pcall
                        function v11055()
                            fn21()
                            fn24()
                            fn32()
                        end
                        v11038(v11055)
                    end
                elseif not fn23("Deandre") then
                    if not fn23("Diablo") then
                        if not fn23("Urban") then
                            if getgenv().AutoEliteHunterHop then
                                fn22()
                            else
                                fn6(CFrame.new(-5119, 315, -2964))
                            end
                        end
                    end
                end
            end
        end
    end
    local function fn54()
        local v11085, v11091, v11098
        while true do
            if not getgenv().AutoSawBoss then
                break
            end
            task.wait()
            if not fn47("Saw Boss") then
                v11085 = fn29({"The Saw"})
                if v11085 then
                    if v11085:FindFirstChild("HumanoidRootPart") then
                        fn6(v11085.HumanoidRootPart.CFrame + getgenv().FarmPos)
                        v11091 = pcall
                        function v11098()
                            fn21()
                            fn24()
                            fn32()
                        end
                        v11091(v11098)
                    end
                else
                    fn6(CFrame.new(-690, 15, 1583))
                end
            end
        end
    end
    local function fn100()
        local quest3 = localPlayer.PlayerGui.Main.Quest
        local enabled2 = false
        local enabled3 = false
        local num4 = 0
        local commF2 = ReplicatedStorage:WaitForChild("Remotes", 9000000000):WaitForChild("CommF_", 9000000000)
        local spawn15 = task.spawn
        local function fn217()
            while true do
                if not getgenv().AutoKenV2 then
                    break
                end
                task.wait()
                enabled2 = commF2:InvokeServer("CitizenQuestProgress").KilledBoss
                enabled3 = commF2:InvokeServer("CitizenQuestProgress").KilledBandits
                num4 = commF2:InvokeServer("CitizenQuestProgress", "Citizen")
            end
        end
        spawn15(fn217)
        local v725, v11131, v11136, v11148, v11151, v11171, v11187, v11203, v11216, v11226, v11240
        while true do
            if not getgenv().AutoKenV2 then
                break
            end
            task.wait()
            v11131 = level.Value
            v11136 = quest3.Container.QuestTitle.Title
            if not (v11131 < 1800) then
                if num4 == 3 then
                    v725 = fn25
                    v725 = v725("")
                    if not v725 then
                        v725 = fn25
                        v725 = v725("Pineapple")
                        if v725 then
                            v725 = fn25
                            v725 = v725("Apple")
                            if v725 then
                                v725 = fn25
                                v725 = v725("Banana")
                                if v725 then
                                    v725 = localPlayer
                                    v725 = v725.Character
                                    if v725 then
                                        v725 = localPlayer
                                        v725 = v725.Character
                                        v725 = v725.PrimaryPart
                                    end
                                    if v725 then
                                        if (v725.Position - Vector3.new(-12445, 332, -7676)).Magnitude < 5 then
                                            commF2.InvokeServer(commF2, "CitizenQuestProgress", "Citizen")
                                        end
                                    else
                                        fn6(CFrame.new(-12445, 332, -7676))
                                    end
                                end
                            end
                        else
                            v725 = workspace
                            v11148 = v725
                            v725 = v725.WaitForChild
                            v725 = v725(v11148, "AppleSpawner", 9000000000)
                            v11151 = workspace:WaitForChild("BananaSpawner", 9000000000)
                            v11203 = workspace:WaitForChild("PineappleSpawner", 9000000000)
                            v11240 = localPlayer.Character
                            if v11240 then
                                v11240 = localPlayer.Character.PrimaryPart
                            end
                            if v11240 then
                                if v11203:FindFirstChild("Pineapple") then
                                    if not fn25("Pineapple") then
                                        if v11203.Pineapple:FindFirstChild("Handle") then
                                            v11203.Pineapple.Handle.CFrame = v11240.CFrame
                                        end
                                    end
                                elseif v725.FindFirstChild(v725, "Apple") then
                                    if not fn25("Apple") then
                                        if v725.Apple:FindFirstChild("Handle") then
                                            v725.Aplle.Handle.CFrame = v11240.CFrame
                                        end
                                    end
                                else
                                    if v11151:FindFirstChild("Banana") then
                                        if not fn25("Banana") then
                                            if v11151.Banana:FindFirstChild("Handle") then
                                                v11151.Banana.Handle.CFrame = v11240.CFrame
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                elseif not enabled3 then
                    v725 = fn40
                    v725()
                    v725 = fn29
                    v725 = v725({"Forest Pirate"})
                    if quest3.Visible then
                        if not string.find(v11136.Text, "Forest Pirate") then
                            if not string.find(v11136.Text, "50") then
                                fn5("AbandonQuest")
                            end
                        end
                    end
                    if not fn41("Forest Pirate") then
                        if not string.find(v11136.Text, "50") then
                            fn37("CitizenQuest", 1)
                            fn5("CitizenQuestProgress", "Citizen")
                        end
                    elseif v725 then
                        if v725.FindFirstChild(v725, "HumanoidRootPart") then
                            fn6(v725.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v11171 = pcall
                            function v11216()
                                fn21()
                                fn24()
                                fn32()
                                fn42(v725)
                            end
                            v11171(v11216)
                        end
                    end
                elseif not enabled2 then
                    v725 = fn29
                    v725 = v725({"Captain Elephant"})
                    fn40()
                    if quest3.Visible then
                        if not string.find(v11136.Text, "Captain Elephant") then
                            fn5("AbandonQuest")
                        end
                    end
                    if not quest3.Visible then
                        if not string.find(v11136.Text, "Captain Elephant") then
                            fn5("CitizenQuestProgress", "Citizen")
                        end
                    elseif v725 then
                        if v725.FindFirstChild(v725, "HumanoidRootPart") then
                            fn6(v725.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v11187 = pcall
                            function v11226()
                                fn21()
                                fn24()
                                fn32()
                            end
                            v11187(v11226)
                        end
                    else
                        fn6(CFrame.new(-13393, 319, -8423))
                    end
                elseif num4 == 2 then
                    v725 = fn6
                    v725(CFrame.new(-12512, 340, -9872))
                end
            end
        end
    end
    local function fn55()
        local quest4 = localPlayer.PlayerGui.Main.Quest
        local enabled4 = false
        local enabled5 = false
        local num5 = 0
        local spawn16 = task.spawn
        local function fn218()
            while true do
                if not getgenv().AutoMusketeerHat then
                    break
                end
                task.wait()
                enabled4 = fn5("CitizenQuestProgress").KilledBoss
                enabled5 = fn5("CitizenQuestProgress").KilledBandits
                num5 = fn5("CitizenQuestProgress", "Citizen")
            end
        end
        spawn16(fn218)
        local v11369, v11372, v11374, v11376, v11400, v11416, v11433, v11443
        while true do
            if not getgenv().AutoMusketeerHat then
                break
            end
            task.wait()
            v11369 = level.Value
            v11372 = quest4.Container.QuestTitle.Title
            if not (v11369 < 1800) then
                if not enabled5 then
                    v11374 = fn29({"Forest Pirate"})
                    if not quest4.Visible then
                        v11372.Text = ""
                    end
                    if quest4.Visible then
                        if not string.find(v11372.Text, "Forest Pirate") then
                            if not string.find(v11372.Text, "50") then
                                fn5("AbandonQuest")
                            end
                        end
                    end
                    if not quest4.Visible then
                        if not string.find(v11372.Text, "Forest Pirate") then
                            if not string.find(v11372.Text, "50") then
                                fn37("CitizenQuest", 1)
                                fn5("CitizenQuestProgress", "Citizen")
                            end
                        end
                    elseif v11374 then
                        if v11374:FindFirstChild("HumanoidRootPart") then
                            fn6(v11374.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v11400 = pcall
                            function v11433()
                                fn21()
                                fn24()
                                fn32()
                                fn42(Enemies1)
                            end
                            v11400(v11433)
                        end
                    end
                elseif not enabled4 then
                    v11376 = fn29({"Captain Elephant"})
                    if not quest4.Visible then
                        v11372.Text = ""
                    end
                    if quest4.Visible then
                        if not string.find(v11372.Text, "Captain Elephant") then
                            fn5("AbandonQuest")
                        end
                    end
                    if not quest4.Visible then
                        if not string.find(v11372.Text, "Captain Elephant") then
                            fn5("CitizenQuestProgress", "Citizen")
                        end
                    elseif v11376 then
                        if v11376:FindFirstChild("HumanoidRootPart") then
                            fn6(v11376.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v11416 = pcall
                            function v11443()
                                fn21()
                                fn24()
                                fn32()
                                fn42(Enemies1)
                            end
                            v11416(v11443)
                        end
                    else
                        fn6(CFrame.new(-13393, 319, -8423))
                    end
                elseif num5 == 2 then
                    fn6(CFrame.new(-12512, 340, -9872))
                end
            end
        end
    end
    local function fn56()
        local v11512, v11518, v11525
        while true do
            if not getgenv().AutoEnelBossPole then
                break
            end
            task.wait()
            if not fn47("Enel Boss") then
                v11512 = fn29({"Thunder God"})
                if v11512 then
                    if v11512:FindFirstChild("HumanoidRootPart") then
                        fn6(v11512.HumanoidRootPart.CFrame + getgenv().FarmPos)
                        v11518 = pcall
                        function v11525()
                            fn21()
                            fn24()
                            fn32()
                        end
                        v11518(v11525)
                    end
                else
                    fn6(CFrame.new(-7739, 5657, -2289))
                end
            end
        end
    end
    local function fn101()
        local num6 = 1
        local num7 = 1
        local num8 = 0
        local num9 = 0
        local v764 = nil
        local v765 = nil
        local v766 = nil
        local v767 = nil
        local v768 = nil
        local v769 = nil
        local v770 = nil
        local v771 = nil
        local enemies2 = workspace:WaitForChild("Enemies", 9000000000)
        local v772 = ReplicatedStorage
        local commF3 = v772.WaitForChild(v772, "Remotes", 9000000000):WaitForChild("CommF_", 9000000000)
        local cursed = workspace:WaitForChild("Map", 9000000000):WaitForChild("Turtle", 9000000000):WaitForChild("Cursed", 9000000000)
        local function fn80()
            local huge5 = math.huge
            local v11700 = nil
            local v11701 = localPlayer
            if v11701 then
                v11701 = localPlayer.Character
                if v11701 then
                    v11701 = localPlayer.Character.PrimaryPart
                end
            end
            local v11706, v11712, v11719
            v11706, v11712, v11719 = pairs(enemies2:GetChildren())
            for _, v29 in v11706, v11712, v11719 do
                if v29:FindFirstChild("HazeESP") and v11701 and v29 then
                    if v29:FindFirstChild("HumanoidRootPart") then
                        if huge5 >= (v11701.Position - v29.HumanoidRootPart.Position).Magnitude then
                            huge5 = (v11701.Position - v29.HumanoidRootPart.Position).Magnitude
                            v11700 = v29
                        end
                    end
                end
            end
            local v11708, v11716, v11722
            v11708, v11716, v11722 = pairs(v772:GetChildren())
            for _, v30 in v11708, v11716, v11722 do
                if v30:FindFirstChild("HazeESP") and v11701 and v30 then
                    if v30:FindFirstChild("HumanoidRootPart") then
                        if huge5 >= (v11701.Position - v30.HumanoidRootPart.Position).Magnitude then
                            huge5 = (v11701.Position - v30.HumanoidRootPart.Position).Magnitude
                            v11700 = v30
                        end
                    end
                end
            end
            return v11700
        end
        local function fn81()
            local huge6 = math.huge
            local v11768 = nil
            local v11769 = localPlayer
            if v11769 then
                v11769 = localPlayer.Character
                if v11769 then
                    v11769 = localPlayer.Character.PrimaryPart
                end
            end
            local v11774, v11778, v11781
            v11774, v11778, v11781 = pairs(enemies2:GetChildren())
            local v11785
            for _, v31 in v11774, v11778, v11781 do
                v11785 = v31.Name
                if v11785 ~= "Reborn Skeleton" then
                    v11785 = v31.Name
                    if v11785 ~= "Living Zombie" then
                        v11785 = v31.Name
                        if v11785 ~= "Demonic Soul" then
                            v11785 = v31.Name
                        end
                    end
                end
                if v11785 == "Posessed Mummy" and v11769 and v31 then
                    if v31:FindFirstChild("HumanoidRootPart") then
                        if huge6 >= (v11769.Position - v31.HumanoidRootPart.Position).Magnitude then
                            huge6 = (v11769.Position - v31.HumanoidRootPart.Position).Magnitude
                            v11768 = v31
                        end
                    end
                end
            end
            return v11768
        end
        local spawn17 = task.spawn
        local function fn219()
            local v11806
            repeat
                if not getgenv().AutoCursedDualKatana then
                    break
                end
                task.wait()
                v11806 = v770
            until not v11806
        end
        spawn17(fn219)
        local spawn18 = task.spawn
        local function fn220()
            local v11818
            while true do
                if not getgenv().AutoCursedDualKatana then
                    break
                end
                task.wait()
                if v764 then
                    if not fn25("Yama") then
                        fn5("LoadItem", "Yama")
                    else
                        v11818 = enemies:FindFirstChild("Ghost")
                        fn28("Yama")
                        if v11818 then
                            if v11818:FindFirstChild("HumanoidRootPart") then
                                fn6(v11818.HumanoidRootPart.CFrame * CFrame.new(0, 0, 2))
                            end
                        else
                            fn6(CFrame.new(5233, 7, 1105))
                        end
                    end
                end
            end
        end
        spawn18(fn220)
        local spawn19 = task.spawn
        local function fn221()
            local v11854, v11859
            while true do
                local v817 = getgenv
                v817 = v817()
                v817 = v817.AutoCursedDualKatana
                if not v817 then
                    break
                end
                v817 = task
                v817 = v817.wait
                v817()
                v817 = v765
                if v817 then
                    v817 = fn80
                    v817 = v817()
                    if v817 then
                        if v817.FindFirstChild(v817, "HumanoidRootPart") then
                            fn6(v817.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v11854 = pcall
                            function v11859()
                                fn21()
                                fn24()
                                fn32()
                                fn42(v817)
                            end
                            v11854(v11859)
                        end
                    end
                end
            end
        end
        spawn19(fn221)
        local spawn20 = task.spawn
        local function fn222()
            while true do
                if not getgenv().AutoCursedDualKatana then
                    break
                end
                task.wait()
                if v766 then
                end
            end
        end
        spawn20(fn222)
        local spawn21 = task.spawn
        local function fn223()
            local nPCs = workspace:WaitForChild("NPCs", 9000000000)
            local enabled17 = false
            local enabled18 = false
            local enabled19 = false
            local v11886, v11891
            while true do
                if not getgenv().AutoCursedDualKatana then
                    break
                end
                task.wait()
                if v767 then
                    v11886 = localPlayer
                    if v11886 then
                        v11886 = localPlayer.Character
                        if v11886 then
                            v11886 = localPlayer.Character.PrimaryPart
                        end
                    end
                    v11891 = nPCs:FindFirstChild("Luxury Boat Dealer")
                    if not enabled17 and v11886 and v11891 then
                        if (v11886.Position - Vector3.new()).Magnitude < 5 then
                            fn5("CDKQuest", "BoatQuest", v11891)
                            enabled17 = true
                        else
                            fn6(CFrame.new(-9546, 21, 4686))
                        end
                    elseif not enabled18 and v11886 and v11891 then
                        if (v11886.Position - Vector3.new()).Magnitude < 5 then
                            fn5("CDKQuest", "BoatQuest", v11891)
                            enabled18 = true
                        else
                            fn6(CFrame.new(-6120, 16, -2250))
                        end
                    elseif not enabled19 and v11886 and v11891 then
                        if (v11886.Position - Vector3.new()).Magnitude < 5 then
                            fn5("CDKQuest", "BoatQuest", v11891)
                            enabled19 = true
                        else
                            fn6(CFrame.new(-9533, 7, -8372))
                        end
                    end
                end
            end
        end
        spawn21(fn223)
        local spawn22 = task.spawn
        local function fn224()
            while true do
                if not getgenv().AutoCursedDualKatana then
                    break
                end
                task.wait()
                if v768 then
                end
            end
        end
        spawn22(fn224)
        local spawn23 = task.spawn
        local function fn225()
            while true do
                if not getgenv().AutoCursedDualKatana then
                    break
                end
                task.wait()
                if v769 then
                end
            end
        end
        spawn23(fn225)
        local spawn24 = task.spawn
        local function fn226()
            local v11974, v11978
            while true do
                if not getgenv().AutoCursedDualKatana then
                    break
                end
                task.wait()
                if fn25("Yama") then
                    v11974 = fn27("Yama")
                    if tonumber(v11974) then
                        num6 = v11974
                    end
                elseif fn25("Tushita") then
                    v11978 = fn27("Tushita")
                    if tonumber(v11978) then
                        num7 = v11978
                    end
                end
            end
        end
        spawn24(fn226)
        local spawn25 = task.spawn
        local function fn227()
            local v11990, v11992, v11996, v12005
            while true do
                local v846 = getgenv
                v846 = v846()
                v846 = v846.AutoCursedDualKatana
                if not v846 then
                    break
                end
                v846 = task
                v846 = v846.wait
                v846()
                v846 = v771
                if v846 then
                    v846 = num6
                    if 350 <= v846 then
                        v846 = num7
                        if 350 <= v846 then
                            break
                        end
                    end
                    v846 = fn25
                    v846 = v846("Yama")
                    if not v846 then
                        v846 = num6
                        if v846 < 350 then
                            v846 = commF3
                            v11990 = v846
                            v846 = v846.InvokeServer
                            v846(v11990, "LoadItem", "Yama")
                        end
                    else
                        v846 = fn25
                        v846 = v846("Tushita")
                        if not v846 then
                            v846 = num7
                            if v846 < 350 then
                                v846 = commF3
                                v11992 = v846
                                v846 = v846.InvokeServer
                                v846(v11992, "LoadItem", "Tushita")
                            end
                        end
                    end
                    v846 = fn81
                    v846 = v846()
                    fn28("Yama")
                    fn28("Tushita")
                    if v846 then
                        fn6(v846.HumanoidRootPart.CFrame + getgenv().FarmPos)
                        v11996 = pcall
                        function v12005()
                            fn21()
                            fn24()
                            fn32()
                            fn42(v846, true)
                        end
                        v11996(v12005)
                    else
                        fn6(CFrame.new(-9513, 164, 5786))
                    end
                end
            end
        end
        spawn25(fn227)
        local spawn26 = task.spawn
        local function fn228()
            local function fn229(arg57)
                local text = string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(tostring(arg57), "2", "3"), "1", "2"), "0", "1"), "-2", "1"), "-4", "2"), "-6", "2")
                return tonumber(text)
            end
            local v12033
            while true do
                if not getgenv().AutoCursedDualKatana then
                    break
                end
                task.wait(0.5)
                v12033 = commF3:InvokeServer("CDKQuest", "Progress")
                num8 = fn229(v12033.Good)
                num9 = fn229(v12033.Evil)
            end
        end
        spawn26(fn228)
        local v11587, v11589, v11590, v11591, v11594, v11595, v11596, v11599, v11600, v11601, v11604, v11605, v11606, v11609, v11610, v11611, v11614, v11615, v11616, v11619, v11620, v11621, v11624, v11625, v11626, v11628, v11629, v11632, v11633, v11636, v11637, v11640, v11641, v11644, v11645, v11648, v11649, v11652, v11653, v11656, v11657
        while true do
            if not getgenv().AutoCursedDualKatana then
                break
            end
            task.wait()
            v11587 = cursed:FindFirstChild("Breakable")
            if num7 < 350 and num6 < 350 then
                v11589 = false
                v771 = true
                v770 = v11589
                v11590 = false
                v11628 = false
                v766 = false
                v765 = v11628
                v764 = v11590
                v11591 = false
                v11629 = false
                v769 = false
                v768 = v11629
                v767 = v11591
            elseif v11587 then
                commF3.InvokeServer(commF3, "CDKQuest", "OpenDoor")
                commF3.InvokeServer(commF3, "CDKQuest", "OpenDoor", true)
            elseif num9 == 1 then
                v11594 = false
                v771 = false
                v770 = v11594
                v11595 = true
                v11632 = false
                v766 = false
                v765 = v11632
                v764 = v11595
                v11596 = false
                v11633 = false
                v769 = false
                v768 = v11633
                v767 = v11596
                commF3.InvokeServer(commF3, "CDKQuest", "Progress", "Evil")
                commF3.InvokeServer(commF3, "CDKQuest", "StartTrial", "Evil")
            elseif num9 == 2 then
                v11599 = false
                v771 = false
                v770 = v11599
                v11600 = false
                v11636 = true
                v766 = false
                v765 = v11636
                v764 = v11600
                v11601 = false
                v11637 = false
                v769 = false
                v768 = v11637
                v767 = v11601
                commF3.InvokeServer(commF3, "CDKQuest", "Progress", "Evil")
                commF3.InvokeServer(commF3, "CDKQuest", "StartTrial", "Evil")
            elseif num9 == 3 then
                v11604 = false
                v771 = false
                v770 = v11604
                v11605 = false
                v11640 = false
                v766 = true
                v765 = v11640
                v764 = v11605
                v11606 = false
                v11641 = false
                v769 = false
                v768 = v11641
                v767 = v11606
                commF3.InvokeServer(commF3, "CDKQuest", "Progress", "Evil")
                commF3.InvokeServer(commF3, "CDKQuest", "StartTrial", "Evil")
            elseif num8 == 1 then
                v11609 = false
                v771 = false
                v770 = v11609
                v11610 = false
                v11644 = false
                v766 = false
                v765 = v11644
                v764 = v11610
                v11611 = true
                v11645 = false
                v769 = false
                v768 = v11645
                v767 = v11611
                commF3.InvokeServer(commF3, "CDKQuest", "Progress", "Good")
                commF3.InvokeServer(commF3, "CDKQuest", "StartTrial", "Good")
            elseif num8 == 2 then
                v11614 = false
                v771 = false
                v770 = v11614
                v11615 = false
                v11648 = false
                v766 = false
                v765 = v11648
                v764 = v11615
                v11616 = false
                v11649 = true
                v769 = false
                v768 = v11649
                v767 = v11616
                commF3.InvokeServer(commF3, "CDKQuest", "Progress", "Good")
                commF3.InvokeServer(commF3, "CDKQuest", "StartTrial", "Good")
            elseif num8 == 3 then
                v11619 = false
                v771 = false
                v770 = v11619
                v11620 = false
                v11652 = false
                v766 = false
                v765 = v11652
                v764 = v11620
                v11621 = false
                v11653 = false
                v769 = false
                v768 = v11653
                v767 = v11621
                commF3.InvokeServer(commF3, "CDKQuest", "Progress", "Good")
                commF3.InvokeServer(commF3, "CDKQuest", "StartTrial", "Good")
            else
                v11624 = true
                v771 = false
                v770 = v11624
                v11625 = false
                v11656 = false
                v766 = false
                v765 = v11656
                v764 = v11625
                v11626 = false
                v11657 = false
                v769 = false
                v768 = v11657
                v767 = v11626
            end
        end
    end
    local function fn57()
        local v12098, v12102, v12106, v12110, v12114, v12121, v12132, v12143, v12154, v12165, v12177, v12186, v12195, v12204, v12213
        while true do
            if not getgenv().AutoRainbowHaki then
                break
            end
            task.wait()
            if fn41("Stone") then
                v12098 = fn29({"Stone"})
                if v12098 then
                    if v12098:FindFirstChild("HumanoidRootPart") then
                        fn6(v12098.HumanoidRootPart.CFrame + getgenv().FarmPos)
                        v12121 = pcall
                        function v12177()
                            fn21()
                            fn24()
                            fn32()
                        end
                        v12121(v12177)
                    end
                else
                    fn6(CFrame.new(-1049, 40, 6791))
                    if getgenv().RainbowHakiHop then
                        fn22()
                    end
                end
            elseif fn41("Island Empress") then
                v12102 = fn29({"Island Empress"})
                if v12102 then
                    if v12102:FindFirstChild("HumanoidRootPart") then
                        fn6(v12102.HumanoidRootPart.CFrame + getgenv().FarmPos)
                        v12132 = pcall
                        function v12186()
                            fn21()
                            fn24()
                            fn32()
                        end
                        v12132(v12186)
                    end
                else
                    fn6(CFrame.new(5730, 602, 199))
                    if getgenv().RainbowHakiHop then
                        fn22()
                    end
                end
            else
                if fn41("Kilo Admiral") then
                    v12106 = fn29({"Kilo Admiral"})
                    if v12106 then
                        if v12106:FindFirstChild("HumanoidRootPart") then
                            fn6(v12106.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v12143 = pcall
                            function v12195()
                                fn21()
                                fn24()
                                fn32()
                            end
                            v12143(v12195)
                        end
                    else
                        fn6(CFrame.new(2889, 424, -7233))
                        if getgenv().RainbowHakiHop then
                            fn22()
                        end
                    end
                elseif fn41("Captain Elephant") then
                    v12110 = fn29({"Captain Elephant"})
                    if v12110 then
                        if v12110:FindFirstChild("HumanoidRootPart") then
                            fn6(v12110.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v12154 = pcall
                            function v12204()
                                fn21()
                                fn24()
                                fn32()
                            end
                            v12154(v12204)
                        end
                    else
                        fn6(CFrame.new(-13393, 319, -8423))
                        if getgenv().RainbowHakiHop then
                            fn22()
                        end
                    end
                else
                    if fn41("Beautiful Pirate") then
                        v12114 = fn29({"Beautiful Pirate"})
                        if v12114 then
                            if v12114:FindFirstChild("HumanoidRootPart") then
                                fn6(v12114.HumanoidRootPart.CFrame + getgenv().FarmPos)
                                v12165 = pcall
                                function v12213()
                                    fn21()
                                    fn24()
                                    fn32()
                                end
                                v12165(v12213)
                            end
                        else
                            fn6(CFrame.new(5241, 23, 129))
                            if getgenv().RainbowHakiHop then
                                fn22()
                            end
                        end
                    else
                        fn5("HornedMan", "Bet")
                    end
                end
            end
        end
    end
    local function fn102()
        local nPCs2 = workspace:WaitForChild("NPCs", 9000000000)
        local hauntedCastle = workspace:WaitForChild("Map", 9000000000):WaitForChild("Haunted Castle", 9000000000)
        local function fn230()
            local v12343 = localPlayer
            if v12343 then
                v12343 = localPlayer.Character
            end
            local v888
            local v12345 = v12343 or v888
            if v12343 then
                v12345 = v12343.PrimaryPart
            end
            local num19 = 0
            local v12347, v12351, v12354
            v12347, v12351, v12354 = pairs(enemies:GetChildren())
            for _, v32 in v12347, v12351, v12354 do
                if v32 then
                    if v32.Name == "Living Zombie" then
                        if v32.PrimaryPart and v12345 then
                            if (v32.PrimaryPart.Position - v12345.Position).Magnitude < 1000 then
                                v32:SetPrimaryPartCFrame(v12345.CFrame * CFrame.new(0, -15, -15))
                                if v32:FindFirstChild("HumanoidRootPart") then
                                    v32.HumanoidRootPart.CanCollide = false
                                    v32.HumanoidRootPart.Size = Vector3.new(40, 40, 40)
                                end
                                if v32:FindFirstChild("Humanoid") then
                                    if v32.Humanoid:FindFirstChild("Animator") then
                                        v32.Humanoid.Animator:Destroy()
                                    end
                                end
                                if v32:FindFirstChild("Humanoid") then
                                    if v32.Humanoid.Health <= 0 then
                                        v32:Destroy()
                                    end
                                end
                                sethiddenproperty(localPlayer, "SimulationRadius", math.huge)
                                num19 = num19 + 1
                            end
                        end
                    end
                end
            end
            return num19
        end
        local v12302, v12306, v12309, v12310, v12313, v12315, v12326, v12333
        while true do
            if not getgenv().AutoSoulGuitar then
                break
            end
            task.wait()
            v12302 = fn25
            v12313 = "Soul Guitar"
            if not v12302(v12313) then
                if nPCs2:FindFirstChild("Skeleton Machine") then
                    v12306 = fn5
                    v12313 = "soulGuitarBuy"
                    v12306(v12313, true)
                else
                    v12313 = nPCs2
                    if nPCs2.FindFirstChild(v12313, "Ghost") then
                        v12309 = fn5
                        v12313 = "GuitarPuzzleProgress"
                        v12309(v12313, "Ghost")
                    end
                end
            end
            v12310 = localPlayer
            if v12310 then
                v12310 = localPlayer.Character
            end
            v12315 = v12310 or v12313
            if v12310 then
                v12315 = v12310.PrimaryPart
            end
            fn6(CFrame.new(-10129, 154, 5928))
            if v12315 then
                if (v12315.Position - Vector3.new(-10129, 154, 5928)).Magnitude < 5 then
                    if 5 < fn230() then
                        v12326 = pcall
                        function v12333()
                            fn21()
                            fn24()
                            fn32()
                        end
                        v12326(v12333)
                    end
                end
            end
        end
    end
    local function fn58()
        local num10 = 0
        local num11 = 0
        local spawn27 = task.spawn
        local function fn231()
            while true do
                if not getgenv().AutoUnlockSaber then
                    break
                end
                task.wait()
                num10 = fn5("ProQuestProgress", "RichSon")
                num11 = fn5("ProQuestProgress", "SickMan")
            end
        end
        spawn27(fn231)
        local v12430, v12433, v12435, v12439, v12442, v12452, v12464, v12500, v12511, v12522, v12547, v12559, v12570, v12587, v12608, v12620
        while true do
            if not getgenv().AutoUnlockSaber then
                break
            end
            task.wait()
            if 200 < level.Value then
                v12430 = localPlayer
                if v12430 then
                    v12430 = localPlayer.Character
                end
                v12433 = localPlayer.Backpack
                v12435 = v12430:FindFirstChild("HumanoidRootPart")
                v12439 = game:GetService("Workspace")
                v12442 = v12439.Map.Jungle.QuestPlates
                if not workspace.Map.Jungle.Final.Part.CanCollide then
                    v12452 = fn29({"Saber Expert"})
                    if v12452 then
                        if v12452:FindFirstChild("HumanoidRootPart") then
                            fn6(v12452.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v12511 = pcall
                            function v12559()
                                fn21()
                                fn24()
                                fn32()
                            end
                            v12511(v12559)
                        end
                    else
                        fn6(CFrame.new(-1461, 30, -51))
                    end
                elseif v12430 then
                    if fn25("Relic") then
                        fn6(CFrame.new(-1408, 30, 3))
                        fn28("Relic")
                    end
                else
                    if num11 == 1 and num10 == 0 then
                        if not workspace.Map.Desert.Burn.Part.CanCollide then
                            v12464 = fn29({"Mob Leader"})
                            if v12464 then
                                if v12464:FindFirstChild("HumanoidRootPart") then
                                    fn6(v12464.HumanoidRootPart.CFrame + getgenv().FarmPos)
                                    v12522 = pcall
                                    function v12570()
                                        fn21()
                                        fn24()
                                        fn32()
                                    end
                                    v12522(v12570)
                                end
                            end
                        end
                    elseif v12430:FindFirstChild("Cup") then
                        if not v12430.Cup.Handle:FindFirstChild("TouchInterest") then
                            fn5("ProQuestProgress", "SickMan")
                        end
                    else
                        if v12430:FindFirstChild("Cup") then
                            if v12430.Cup.Handle:FindFirstChild("TouchInterest") then
                                fn6(CFrame.new(1393, 37, -1324, -0.408640295, 0, -0.912695527, 0, 1, 0, 0.912695527, 0, -0.408640295))
                            end
                        elseif v12433:FindFirstChild("Cup") then
                            fn28("Cup")
                        else
                            if not workspace.Map.Desert.Burn.Part.CanCollide then
                                fn6(workspace.Map.Desert.Cup.CFrame)
                            elseif v12430:FindFirstChild("Torch") then
                                fn6(CFrame.new(1113, 5, 4352))
                            else
                                if v12433:FindFirstChild("Torch") then
                                    fn28("Torch")
                                elseif v12442:FindFirstChild("Door") then
                                    if v12442.Door.CanCollide then
                                        if v12442 then
                                            v12500 = v12442:FindFirstChild("Plate1")
                                            v12547 = v12442:FindFirstChild("Plate2")
                                            v12587 = v12442:FindFirstChild("Plate3")
                                            v12608 = v12442:FindFirstChild("Plate4")
                                            v12620 = v12442:FindFirstChild("Plate5")
                                            if v12500 then
                                                if v12500:FindFirstChild("Button") then
                                                    if v12500.Button.BrickColor ~= BrickColor.new("Camo") then
                                                        fn6(v12500.Button.CFrame)
                                                    end
                                                end
                                            elseif v12547 then
                                                if v12547:FindFirstChild("Button") then
                                                    if v12547.Button.BrickColor ~= BrickColor.new("Camo") then
                                                        fn6(v12547.Button.CFrame)
                                                    end
                                                end
                                            else
                                                if v12587 then
                                                    if v12587:FindFirstChild("Button") then
                                                        if v12587.Button.BrickColor ~= BrickColor.new("Camo") then
                                                            fn6(v12587.Button.CFrame)
                                                        end
                                                    end
                                                elseif v12608 then
                                                    if v12608:FindFirstChild("Button") then
                                                        if v12608.Button.BrickColor ~= BrickColor.new("Camo") then
                                                            fn6(v12608.Button.CFrame)
                                                        end
                                                    end
                                                elseif v12620 then
                                                    if v12620:FindFirstChild("Button") then
                                                        if v12620.Button.BrickColor ~= BrickColor.new("Camo") then
                                                            fn6(v12620.Button.CFrame)
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                elseif v12435 then
                                    if v12442:FindFirstChild("Door") then
                                        if not v12442.Door.CanCollide then
                                            fn6(workspace.Map.Jungle.Torch.CFrame)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    local function fn59()
        local v12755, v12757, v12759, v12763, v12767, v12773, v12776
        while true do
            local v935 = getgenv
            v935 = v935()
            v935 = v935.AutoFarmEctoplasm
            if not v935 then
                break
            end
            v935 = task
            v935 = v935.wait
            v935()
            v935 = fn47
            v935 = v935("Ectoplasm")
            if not v935 then
                v935 = fn29
                v12755 = {}
                v12759 = "Ship Deckhand"
                v12767 = "Ship Engineer"
                v12773 = "Ship Steward"
                v12776 = "Ship Officer"
                v12755[1] = v12759
                v12755[2] = v12767
                v12755[3] = v12773
                v12755[4] = v12776
                v935 = v935(v12755)
                if v935 then
                    fn6(v935.HumanoidRootPart.CFrame + getgenv().FarmPos)
                    v12757 = pcall
                    function v12763()
                        fn21()
                        fn24()
                        fn32()
                        fn42(v935, true)
                    end
                    v12757(v12763)
                else
                    fn6(CFrame.new(912, 186, 33591))
                end
            end
        end
    end
    local function fn60()
        local tbl5 = {}
        local v939 = nil
        local spawn28 = task.spawn
        local function fn232()
            local v12810, v12812, v12813, v12814, v12815, v12817, v12818, v12819, v12820, v12821, v12823, v12824, v12825, v12826, v12827, v12828, v12829, v12833, v12869, v12881, v12889, v12891, v12901, v12905
            while true do
                if not getgenv().AutoFarmMaterial then
                    break
                end
                task.wait()
                v12810 = getgenv().MaterialSelected
                if v77 then
                    if v12810 == "Angel Wings" then
                        v12812 = {}
                        v12829 = "Royal Soldier"
                        v12889 = "Royal Squad"
                        v12812[1] = v12829
                        v12812[2] = v12889
                        v939 = CFrame.new(-7742, 5634, -1564)
                        tbl5 = v12812
                    elseif v12810 == "Leather + Scrap Metal" then
                        v12813 = {}
                        v12833 = "Pirate"
                        v12891 = "Brute"
                        v12813[1] = v12833
                        v12813[2] = v12891
                        v939 = CFrame.new(-1257, 54, 4091)
                        tbl5 = v12813
                    elseif v12810 == "Magma Ore" then
                        v12814 = {"Military Soldier"}
                        v939 = CFrame.new(-5408, 11, 8456)
                        tbl5 = v12814
                    elseif v12810 == "Fish Tail" then
                        v12815 = {"Fishman Warrior"}
                        v939 = CFrame.new(60931, 19, 1574)
                        tbl5 = v12815
                    end
                elseif v78 then
                    if v12810 == "Leather + Scrap Metal" then
                        v12817 = {"Scrap Metal"}
                        v939 = CFrame.new(-1026, 73, 1375)
                        tbl5 = v12817
                    elseif v12810 == "Magma Ore" then
                        v12818 = {"Lava Pirate"}
                        v939 = CFrame.new(-5241, 50, -4713)
                        tbl5 = v12818
                    elseif v12810 == "Mystic Droplet" then
                        v12819 = {"Water Fighter"}
                        v939 = CFrame.new(-3350, 282, -10527)
                        tbl5 = v12819
                    elseif v12810 == "Radiactive Material" then
                        v12820 = {"Factory Staff"}
                        v939 = CFrame.new(-73, 149, -112)
                        tbl5 = v12820
                    elseif v12810 == "Vampire Fang" then
                        v12821 = {"Vampire"}
                        v939 = CFrame.new(-6030, 6, -1281)
                        tbl5 = v12821
                    end
                else
                    if v79 then
                        if v12810 == "Leather + Scrap Metal" then
                            v12823 = {"Pirate Millionaire"}
                            v939 = CFrame.new(-364, 116, 5692)
                            tbl5 = v12823
                        elseif v12810 == "Fish Tail" then
                            v12824 = {}
                            v12869 = "Fishman Captain"
                            v12901 = "Fishman Raider"
                            v12824[1] = v12869
                            v12824[2] = v12901
                            v939 = CFrame.new(-10679, 398, -8975)
                            tbl5 = v12824
                        elseif v12810 == "Gunpowder" then
                            v12825 = {"Pistol Billionaire"}
                            v939 = CFrame.new(-394, 135, 5981)
                            tbl5 = v12825
                        elseif v12810 == "Mini Tusk" then
                            v12826 = {"Mythological Pirate"}
                            v939 = CFrame.new(-13510, 584, -6986)
                            tbl5 = v12826
                        elseif v12810 == "Conjured Cocoa" then
                            v12827 = {}
                            v12881 = "Cocoa Warrior"
                            v12905 = "Chocolate Bar Battler"
                            v12827[1] = v12881
                            v12827[2] = v12905
                            v939 = CFrame.new(400, 81, -12257)
                            tbl5 = v12827
                        elseif v12810 == "Dragon Scale" then
                            v12828 = {"Dragon Crew Archer"}
                            v939 = CFrame.new(6689, 378, 331)
                            tbl5 = v12828
                        end
                    end
                end
            end
        end
        spawn28(fn232)
        local v12791, v12797
        while true do
            local v950 = getgenv
            v950 = v950()
            v950 = v950.AutoFarmMaterial
            if not v950 then
                break
            end
            v950 = task
            v950 = v950.wait
            v950()
            v950 = fn47
            v950 = v950("Material")
            if not v950 then
                v950 = fn29
                v950 = v950(tbl5)
                if v950 then
                    if v950.FindFirstChild(v950, "HumanoidRootPart") then
                        fn6(v950.HumanoidRootPart.CFrame + getgenv().FarmPos)
                        v12791 = pcall
                        function v12797()
                            fn21()
                            fn24()
                            fn32()
                            fn42(v950, true)
                        end
                        v12791(v12797)
                    end
                elseif v939 then
                    fn6(v939)
                end
            end
        end
    end
    local function fn61()
        local v12945, v12947, v12949, v12953, v12957, v12963, v12966
        while true do
            local v960 = getgenv
            v960 = v960()
            v960 = v960.AutoFarmBone
            if not v960 then
                break
            end
            v960 = task
            v960 = v960.wait
            v960()
            v960 = fn47
            v960 = v960("Bone")
            if not v960 then
                v960 = fn29
                v12945 = {}
                v12949 = "Reborn Skeleton"
                v12957 = "Living Zombie"
                v12963 = "Demonic Soul"
                v12966 = "Posessed Mummy"
                v12945[1] = v12949
                v12945[2] = v12957
                v12945[3] = v12963
                v12945[4] = v12966
                v960 = v960(v12945)
                if v960 then
                    fn6(v960.HumanoidRootPart.CFrame + getgenv().FarmPos)
                    v12947 = pcall
                    function v12953()
                        fn21()
                        fn24()
                        fn32()
                        fn42(v960, true)
                    end
                    v12947(v12953)
                else
                    fn6(CFrame.new(-9513, 164, 5786))
                end
            end
        end
    end
    local function fn62()
        local v12977, v12981, v12986, v12991, v12997, v13013
        while true do
            local v976 = getgenv
            v976 = v976()
            v976 = v976.AutoPiratesSea
            if not v976 then
                break
            end
            v976 = task
            v976 = v976.wait
            v976()
            v976 = fn47
            v976 = v976("Raid Pirate")
            if not v976 then
                v976 = nil
                v12977, v12986, v12997 = pairs(enemies:GetChildren())
                for _, v33 in v12977, v12986, v12997 do
                    if v33.Name ~= "rip_indra True Form" then
                        v13013 = v33:FindFirstChild("Humanoid")
                        if v13013 then
                            if 0 < v13013.Health and v33 then
                                if v33.PrimaryPart then
                                    if (v33.PrimaryPart.Position - Vector3.new(-5556, 314, -2988)).Magnitude < 700 then
                                        v976 = v33
                                    end
                                end
                            end
                        end
                    end
                end
                if v976 then
                    if v976.FindFirstChild(v976, "HumanoidRootPart") then
                        fn6(v976.HumanoidRootPart.CFrame + getgenv().FarmPos)
                        v12981 = pcall
                        function v12991()
                            fn21()
                            fn24()
                            fn32()
                            fn42(v976, true)
                        end
                        v12981(v12991)
                    end
                else
                    fn6(CFrame.new(-5556, 314, -2988))
                end
            end
        end
    end
    local function fn63()
        local v13051, v13055
        while true do
            if not getgenv().AutoFactory then
                break
            end
            task.wait()
            fn6(CFrame.new(410, 200, -414))
            v13051 = pcall
            function v13055()
                fn21()
                fn24()
                fn32()
            end
            v13051(v13055)
        end
    end
    local function fn64()
        local ice = workspace:WaitForChild("Map", 9000000000):WaitForChild("Ice", 9000000000)
        local v13081, v13084, v13090, v13115, v13138, v13155
        while true do
            if not getgenv().AutoSecondSea then
                break
            end
            task.wait()
            if not (level.Value < 700) then
                if localPlayer then
                    v13081 = localPlayer.Character
                end
                v13084 = localPlayer
                if v13084 then
                    v13084 = localPlayer.Character
                    if v13084 then
                        v13084 = localPlayer.Character.PrimaryPart
                    end
                end
                v13090 = ice:FindFirstChild("Door")
                if v13090 then
                    v13090 = ice.Door.CanCollide
                    if v13090 then
                        v13090 = ice.Door.Transparency < 1
                    end
                end
                if not fn25("Key") and v13090 then
                    fn6(CFrame.new(4852, 6, 719))
                    if v13084 then
                        if (v13084.Position - Vector3.new(4852, 6, 719)).Magnitude < 5 then
                            fn5("DressrosaQuestProgress", "Detective")
                        end
                    end
                elseif fn25("Key") and v13090 then
                    fn28("Key")
                    fn6(CFrame.new(1346, 37, -1329))
                else
                    if fn23("Ice Admiral") then
                        if ice:FindFirstChild("Door") then
                            if not ice.Door.CanCollide then
                                if 0 < ice.Door.Transparency then
                                    v13115 = fn29({"Ice Admiral"})
                                    if v13115 then
                                        if v13115:FindFirstChild("HumanoidRootPart") then
                                            fn6(v13115.HumanoidRootPart.CFrame + getgenv().FarmPos)
                                            v13138 = pcall
                                            function v13155()
                                                fn21()
                                                fn24()
                                                fn32()
                                            end
                                            v13138(v13155)
                                        end
                                    end
                                end
                            end
                        end
                    else
                        fn6(CFrame.new(1280, 27, -1380))
                        fn5("TravelDressrosa")
                    end
                end
            end
        end
    end
    local function fn65()
        local num12 = 0
        local function fn233()
            local num20 = 2000
            local v13247 = nil
            local v13248 = localPlayer
            if v13248 then
                v13248 = localPlayer.Character
                if v13248 then
                    v13248 = localPlayer.Character.PrimaryPart
                end
            end
            local v13253, v13257, v13260
            v13253, v13257, v13260 = pairs(enemies:GetChildren())
            for _, v34 in v13253, v13257, v13260 do
                if v34.Name == "rip_indra" and v13248 and v34 then
                    if v34:FindFirstChild("HumanoidRootPart") then
                        if num20 >= (v13248.Position - v34.HumanoidRootPart.Position).Magnitude then
                            num20 = (v13248.Position - v34.HumanoidRootPart.Position).Magnitude
                            v13247 = v34
                        end
                    end
                end
            end
            return v13247
        end
        local spawn29 = task.spawn
        local function fn234()
            while true do
                if not getgenv().AutoThirdSea then
                    break
                end
                task.wait()
                num12 = fn5("ZQuestProgress", "Check")
                fn5("TravelZou")
            end
        end
        spawn29(fn234)
        local v13188, v13192, v13198, v13199, v13207, v13213
        while true do
            if not getgenv().AutoThirdSea then
                break
            end
            task.wait()
            if not (level.Value < 1500) then
                v13188 = fn233()
                if v13188 then
                    if v13188:FindFirstChild("HumanoidRootPart") then
                        fn6(v13188.HumanoidRootPart.CFrame + getgenv().FarmPos)
                        v13192 = pcall
                        function v13207()
                            fn21()
                            fn24()
                            fn32()
                        end
                        v13192(v13207)
                    end
                elseif num12 == 0 then
                    if boss then
                        if boss:FindFirstChild("HumanoidRootPart") then
                            fn6(boss.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v13198 = pcall
                            function v13213()
                                fn21()
                                fn24()
                                fn32()
                            end
                            v13198(v13213)
                        end
                    else
                        v13199 = localPlayer
                        if v13199 then
                            v13199 = localPlayer.Character
                            if v13199 then
                                v13199 = localPlayer.Character.PrimaryPart
                            end
                        end
                        if v13199 then
                            if (v13199.Position - Vector3.new(-1926, 13, 1738)).Magnitude < 5 then
                                fn5("ZQuestProgress", "Begin")
                                task.wait(2)
                            end
                        else
                            fn6(CFrame.new(-1926, 13, 1738))
                        end
                    end
                end
            end
        end
    end
    local function fn66()
        local num13 = 0
        local spawn30 = task.spawn
        local function fn235()
            while true do
                if not getgenv().AutoBartiloQuest then
                    break
                end
                task.wait()
                num13 = fn5("BartiloQuestProgress", "Bartilo")
                fn5("BartiloQuestProgress", "Bartilo")
            end
        end
        spawn30(fn235)
        local quest5 = localPlayer.PlayerGui.Main.Quest
        local v1027, v13310, v13332, v13333, v13338, v13340, v13341, v13401, v13402, v13408, v13449, v13468, v13475, v13483, v13488, v13492, v13495
        while true do
            if not getgenv().AutoBartiloQuest then
                break
            end
            task.wait()
            if 850 <= level.Value then
                v13310 = quest5.Container.QuestTitle.Title
                if num13 == 0 then
                    v1027 = fn29
                    v1027 = v1027({"Swan Pirate"})
                    if not quest5.Visible then
                        v13310.Text = ""
                    end
                    if quest5.Visible then
                        if not string.find(v13310.Text, "Swan Pirate") then
                            if not string.find(v13310.Text, "50") then
                                fn5("AbandonQuest")
                            end
                        end
                    end
                    if not quest5.Visible then
                        if not string.find(v13310.Text, "Swan Pirate") then
                            if not string.find(v13310.Text, "50") then
                                fn37("BartiloQuest", 1)
                            end
                        end
                    elseif v1027 then
                        if v1027.FindFirstChild(v1027, "HumanoidRootPart") then
                            fn6(v1027.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v13332 = pcall
                            function v13401()
                                fn21()
                                fn24()
                                fn32()
                                fn42(v1027)
                            end
                            v13332(v13401)
                        end
                    else
                        v13333 = fn11
                        v13402 = {}
                        v13449 = CFrame.new(778, 110, 1129)
                        v13468 = CFrame.new(1018, 110, 1128)
                        v13475 = CFrame.new(1020, 110, 1366)
                        v13483, v13488, v13492, v13495 = CFrame.new(1016, 110, 1115)
                        v13402[1] = v13449
                        v13402[2] = v13468
                        v13402[3] = v13475
                        v13402[4] = v13483
                        v13402[5] = v13488
                        v13402[6] = v13492
                        v13402[7] = v13495
                        v13333(v13402, "Swan Pirate")
                    end
                elseif num13 == 1 then
                    v1027 = fn29
                    v1027 = v1027({"Jeremy"})
                    if v1027 then
                        if v1027.FindFirstChild(v1027, "HumanoidRootPart") then
                            fn6(v1027.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v13338 = pcall
                            function v13408()
                                fn21()
                                fn24()
                                fn32()
                                fn42(v1027)
                            end
                            v13338(v13408)
                        end
                    else
                        fn6(CFrame.new(2316, 449, 787))
                    end
                elseif num13 == 2 then
                    v1027 = game
                    v13340 = v1027
                    v1027 = v1027.GetService
                    v1027 = v1027(v13340, "Workspace")
                    v1027 = v1027.Map
                    v1027 = v1027.Dressrosa
                    v13341 = v1027
                    v1027 = v1027.FindFirstChild
                    v1027 = v1027(v13341, "BartiloPlates")
                    if v1027 then
                        if v1027.FindFirstChild(v1027, "Plate1") then
                            if v1027.Plate1.Color.G ~= 1 then
                                fn6(v1027.Plate1.CFrame)
                            end
                        end
                    elseif v1027 then
                        if v1027.FindFirstChild(v1027, "Plate2") then
                            if v1027.Plate2.Color.G ~= 1 then
                                fn6(v1027.Plate2.CFrame)
                            end
                        end
                    else
                        if v1027 then
                            if v1027.FindFirstChild(v1027, "Plate3") then
                                if v1027.Plate3.Color.G ~= 1 then
                                    fn6(v1027.Plate3.CFrame)
                                end
                            end
                        elseif v1027 then
                            if v1027.FindFirstChild(v1027, "Plate4") then
                                if v1027.Plate4.Color.G ~= 1 then
                                    fn6(v1027.Plate4.CFrame)
                                end
                            end
                        else
                            if v1027 then
                                if v1027.FindFirstChild(v1027, "Plate5") then
                                    if v1027.Plate5.Color.G ~= 1 then
                                        fn6(v1027.Plate5.CFrame)
                                    end
                                end
                            elseif v1027 then
                                if v1027.FindFirstChild(v1027, "Plate6") then
                                    if v1027.Plate6.Color.G ~= 1 then
                                        fn6(v1027.Plate6.CFrame)
                                    end
                                end
                            else
                                if v1027 then
                                    if v1027.FindFirstChild(v1027, "Plate7") then
                                        if v1027.Plate7.Color.G ~= 1 then
                                            fn6(v1027.Plate7.CFrame)
                                        end
                                    end
                                elseif v1027 then
                                    if v1027.FindFirstChild(v1027, "Plate8") then
                                        if v1027.Plate8.Color.G ~= 1 then
                                            fn6(v1027.Plate8.CFrame)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    local function fn67()
        local v13527, v13533, v13544
        while true do
            if not getgenv().AutoRipIndra then
                break
            end
            task.wait()
            if not fn47("Rip Indra") then
                v13527 = fn29({"rip_indra True Form"})
                if v13527 then
                    if v13527:FindFirstChild("HumanoidRootPart") then
                        fn6(v13527.HumanoidRootPart.CFrame + getgenv().FarmPos)
                        v13533 = pcall
                        function v13544()
                            fn21()
                            fn24()
                            fn32()
                        end
                        v13533(v13544)
                    end
                elseif fn25("God's Chalice") then
                    fn28("God's Chalice")
                    fn6(CFrame.new(-5561, 314, -2663))
                else
                    fn6(CFrame.new(-5333, 424, -2673))
                end
            end
        end
    end
    local function fn68()
        local v13578, v13583, v13590
        while true do
            if not getgenv().AutoKillLawBoss then
                break
            end
            task.wait()
            v13578 = fn29({"Order"})
            if v13578 then
                if v13578:FindFirstChild("HumanoidRootPart") then
                    fn6(v13578.HumanoidRootPart.CFrame + getgenv().FarmPos)
                    v13583 = pcall
                    function v13590()
                        fn21()
                        fn24()
                        fn32()
                    end
                    v13583(v13590)
                end
            else
                fn6(CFrame.new(-6300, 16, -4997))
            end
        end
    end
    local function fn69()
        local v13613, v13618, v13629
        while true do
            if not getgenv().AutoDarkbeard then
                break
            end
            task.wait()
            v13613 = fn29({"Darkbeard"})
            if v13613 then
                if v13613:FindFirstChild("HumanoidRootPart") then
                    fn6(v13613.HumanoidRootPart.CFrame + getgenv().FarmPos)
                    v13618 = pcall
                    function v13629()
                        fn21()
                        fn24()
                        fn32()
                    end
                    v13618(v13629)
                end
            elseif fn25("Fist of Darkness") then
                fn28("Fist of Darkness")
                fn6(CFrame.new(3779, 16, -3500))
            else
                fn6(CFrame.new(3746, 13, -3632))
            end
        end
    end
    local function fn70()
        local v13665, v13671, v13682
        while true do
            if not getgenv().AutoKillDonSwan then
                break
            end
            task.wait()
            if not fn47("Don Swan") then
                v13665 = fn29({"Don Swan"})
                if v13665 then
                    if v13665:FindFirstChild("HumanoidRootPart") then
                        fn6(v13665.HumanoidRootPart.CFrame + getgenv().FarmPos)
                        v13671 = pcall
                        function v13682()
                            fn21()
                            fn24()
                            fn32()
                        end
                        v13671(v13682)
                    end
                elseif getgenv().AutoDonSwanHop then
                    fn22()
                else
                    fn6(CFrame.new(2272, 15, 759))
                end
            end
        end
    end
    local function fn71()
        local v13715, v13722, v13729
        while true do
            if not getgenv().AutoCursedCaptain then
                break
            end
            task.wait()
            if getgenv().AutoFarm_Level then
                if not fn23("Cursed Captain") then
                end
            elseif getgenv().AutoFarmEctoplasm then
                if not fn23("Cursed Captain") then
                end
            else
                v13715 = fn29({"Cursed Captain"})
                if v13715 then
                    if v13715:FindFirstChild("HumanoidRootPart") then
                        fn6(v13715.HumanoidRootPart.CFrame + getgenv().FarmPos)
                        v13722 = pcall
                        function v13729()
                            fn21()
                            fn24()
                            fn32()
                        end
                        v13722(v13729)
                    end
                else
                    fn6(CFrame.new(912, 186, 33591))
                end
            end
        end
    end
    local function fn72()
        local spawn31 = task.spawn
        local function fn236()
            while true do
                if not getgenv().AutoCakePrince then
                    break
                end
                task.wait(1)
                fn5("CakePrinceSpawner")
            end
        end
        spawn31(fn236)
        local v13753, v13759, v13760, v13764, v13771, v13777, v13778, v13783, v13795, v13802, v13805
        while true do
            local v1092 = getgenv
            v1092 = v1092()
            v1092 = v1092.AutoCakePrince
            if not v1092 then
                break
            end
            v1092 = task
            v1092 = v1092.wait
            v1092()
            v1092 = fn47
            v1092 = v1092("Cake Prince")
            if not v1092 then
                v1092 = fn23
                v1092 = v1092("Dough King")
                if v1092 then
                    v1092 = fn29
                    v1092 = v1092({"Dough King"})
                    if v1092 then
                        if v1092.FindFirstChild(v1092, "HumanoidRootPart") then
                            fn6(v1092.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v13753 = pcall
                            function v13771()
                                fn21()
                                fn24()
                                fn32()
                            end
                            v13753(v13771)
                        end
                    end
                else
                    v1092 = fn23
                    v1092 = v1092("Cake Prince")
                    if v1092 then
                        v1092 = fn29
                        v1092 = v1092({"Cake Prince"})
                        if v1092 then
                            if v1092.FindFirstChild(v1092, "HumanoidRootPart") then
                                fn6(v1092.HumanoidRootPart.CFrame + getgenv().FarmPos)
                                v13759 = pcall
                                function v13777()
                                    fn21()
                                    fn24()
                                    fn32()
                                end
                                v13759(v13777)
                            end
                        end
                    else
                        v1092 = getgenv
                        v1092 = v1092()
                        v1092 = v1092.AutoFarm_Level
                        if not v1092 then
                            v1092 = getgenv
                            v1092 = v1092()
                            v1092 = v1092.AutoFarmBone
                            if not v1092 then
                                v1092 = fn29
                                v13760 = {}
                                v13778 = "Head Baker"
                                v13795 = "Baking Staff"
                                v13802 = "Cake Guard"
                                v13805 = "Cookie Crafter"
                                v13760[1] = v13778
                                v13760[2] = v13795
                                v13760[3] = v13802
                                v13760[4] = v13805
                                v1092 = v1092(v13760)
                                if v1092 then
                                    if v1092.FindFirstChild(v1092, "HumanoidRootPart") then
                                        fn6(v1092.HumanoidRootPart.CFrame + getgenv().FarmPos)
                                        v13764 = pcall
                                        function v13783()
                                            fn21()
                                            fn24()
                                            fn32()
                                            fn42(v1092, true)
                                        end
                                        v13764(v13783)
                                    end
                                else
                                    fn6(CFrame.new(-2103, 70, -12165))
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    local function fn73()
        local str4 = ""
        local spawn2 = task.spawn
        local function fn82()
            while true do
                if not getgenv().AutoDoughKing then
                    break
                end
                task.wait()
                str4 = fn5("SweetChaliceNpc")
                if fn25("Sweet Chalice") then
                    fn5("CakePrinceSpawner")
                end
            end
        end
        spawn2(fn82)
        local v1100, v1101, v1102, v1103
        while true do
            local v1106 = getgenv
            v1106 = v1106()
            v1106 = v1106.AutoDoughKing
            if not v1106 then
                break
            end
            v1106 = task
            v1106 = v1106.wait
            v1106()
            v1106 = fn25
            fn82 = "Red Key"
            v1106 = v1106(fn82)
            if v1106 then
                v1106 = fn5
                fn82 = "CakeScientist"
                v1100 = "Check"
                v1106(fn82, v1100)
            else
                v1106 = fn23
                fn82 = "Dough King"
                v1106 = v1106(fn82)
                if v1106 then
                    v1106 = fn29
                    fn82 = {}
                    v1100 = "Dough King"
                    fn82[1] = v1100
                    v1106 = v1106(fn82)
                    if v1106 then
                        v1100 = v1106
                        fn82 = v1106.FindFirstChild
                        v1101 = "HumanoidRootPart"
                        fn82 = fn82(v1100, v1101)
                        if fn82 then
                            fn82 = fn6
                            v1100 = v1106.HumanoidRootPart.CFrame
                            v1101 = getgenv().FarmPos
                            v1100 = v1100 + v1101
                            fn82(v1100)
                            fn82 = pcall
                            function v1100()
                                fn21()
                                fn24()
                                fn32()
                            end
                            fn82(v1100)
                        end
                    end
                else
                    v1106 = fn25
                    fn82 = "God's Chalice"
                    v1106 = v1106(fn82)
                    if v1106 then
                        v1106 = fn25
                        fn82 = "Sweet Chalice"
                        v1106 = v1106(fn82)
                        if not v1106 then
                            v1106 = string
                            v1106 = v1106.find
                            fn82 = str4
                            v1100 = "Where"
                            v1106 = v1106(fn82, v1100)
                            if v1106 then
                                v1106 = fn29
                                fn82 = {}
                                v1100 = "Chocolate Bar Battler"
                                v1101 = "Cocoa Warrior"
                                fn82[1] = v1100
                                fn82[2] = v1101
                                v1106 = v1106(fn82)
                                if v1106 then
                                    v1100 = v1106
                                    fn82 = v1106.FindFirstChild
                                    v1101 = "HumanoidRootPart"
                                    fn82 = fn82(v1100, v1101)
                                    if fn82 then
                                        fn82 = fn6
                                        v1100 = v1106.HumanoidRootPart.CFrame
                                        v1101 = getgenv().FarmPos
                                        v1100 = v1100 + v1101
                                        fn82(v1100)
                                        fn82 = pcall
                                        function v1100()
                                            fn21()
                                            fn24()
                                            fn32()
                                            fn42(v1106, true)
                                        end
                                        fn82(v1100)
                                    end
                                else
                                    fn82 = fn6
                                    v1100, v1101, v1102, v1103 = CFrame.new(400, 81, -12257)
                                    fn82(v1100, v1101, v1102, v1103)
                                end
                            end
                        end
                    else
                        v1106 = fn23
                        fn82 = "Urban"
                        v1106 = v1106(fn82)
                        if v1106 then
                            v1106 = fn25
                            fn82 = "God's Chalice"
                            v1106 = v1106(fn82)
                            if not v1106 then
                                v1106 = fn25
                                fn82 = "Sweet Chalice"
                                v1106 = v1106(fn82)
                                if not v1106 then
                                    goto lbl_161_183
                                end
                            end
                        end
                        v1106 = fn23
                        fn82 = "Deandre"
                        v1106 = v1106(fn82)
                        if v1106 then
                            v1106 = fn25
                            fn82 = "God's Chalice"
                            v1106 = v1106(fn82)
                            if not v1106 then
                                v1106 = fn25
                                fn82 = "Sweet Chalice"
                                v1106 = v1106(fn82)
                                if not v1106 then
                                    goto lbl_161_183
                                end
                            end
                        end
                        v1106 = fn23
                        fn82 = "Diablo"
                        v1106 = v1106(fn82)
                        if v1106 then
                            v1106 = fn25
                            fn82 = "God's Chalice"
                            v1106 = v1106(fn82)
                            if not v1106 then
                                v1106 = fn25
                                fn82 = "Sweet Chalice"
                                v1106 = v1106(fn82)
                                if not v1106 then
                                    ::lbl_161_183::
                                    v1106 = "EliteHunterVerify"
                                    fn82 = fn40
                                    fn82()
                                    fn82 = fn41
                                    v1100 = "Diablo"
                                    fn82 = fn82(v1100)
                                    if fn82 then
                                        v1106 = "Diablo"
                                    else
                                        fn82 = fn41
                                        v1100 = "Deandre"
                                        fn82 = fn82(v1100)
                                        if fn82 then
                                            v1106 = "Deandre"
                                        else
                                            fn82 = fn41
                                            v1100 = "Urban"
                                            fn82 = fn82(v1100)
                                            if fn82 then
                                                v1106 = "Urban"
                                            else
                                                fn82 = task.spawn
                                                function v1100()
                                                    fn5("EliteHunter")
                                                end
                                                fn82(v1100)
                                            end
                                        end
                                    end
                                    fn82 = fn29
                                    v1100 = {}
                                    v1101 = v1106
                                    v1100[1] = v1101
                                    fn82 = fn82(v1100)
                                    if fn82 then
                                        v1101 = fn82
                                        v1100 = fn82.FindFirstChild
                                        v1102 = "HumanoidRootPart"
                                        v1100 = v1100(v1101, v1102)
                                        if v1100 then
                                            v1100 = fn6
                                            v1101 = fn82.HumanoidRootPart.CFrame
                                            v1102 = getgenv().FarmPos
                                            v1101 = v1101 + v1102
                                            v1100(v1101)
                                            v1100 = pcall
                                            function v1101()
                                                fn21()
                                                fn24()
                                                fn32()
                                            end
                                            v1100(v1101)
                                        end
                                    end
                                end
                            end
                        else
                            v1106 = getgenv
                            v1106 = v1106()
                            v1106 = v1106.AutoFarm_Level
                            if not v1106 then
                                v1106 = getgenv
                                v1106 = v1106()
                                v1106 = v1106.AutoFarmBone
                                if not v1106 then
                                    v1106 = fn29
                                    fn82 = {}
                                    v1100 = "Head Baker"
                                    v1101 = "Baking Staff"
                                    v1102 = "Cake Guard"
                                    v1103 = "Cookie Crafter"
                                    fn82[1] = v1100
                                    fn82[2] = v1101
                                    fn82[3] = v1102
                                    fn82[4] = v1103
                                    v1106 = v1106(fn82)
                                    if v1106 then
                                        v1100 = v1106
                                        fn82 = v1106.FindFirstChild
                                        v1101 = "HumanoidRootPart"
                                        fn82 = fn82(v1100, v1101)
                                        if fn82 then
                                            fn82 = fn6
                                            v1100 = v1106.HumanoidRootPart.CFrame
                                            v1101 = getgenv().FarmPos
                                            v1100 = v1100 + v1101
                                            fn82(v1100)
                                            fn82 = pcall
                                            function v1100()
                                                fn21()
                                                fn24()
                                                fn32()
                                                fn42(v1106, true)
                                            end
                                            fn82(v1100)
                                        end
                                    else
                                        fn82 = fn6
                                        v1100, v1101, v1102, v1103 = CFrame.new(-2103, 70, -12165)
                                        fn82(v1100, v1101, v1102, v1103)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    local function fn74()
        local spawn32 = task.spawn
        local v1119
        local function fn237()
            local v13904
            while true do
                local v1133 = getgenv
                v1133 = v1133()
                v1133 = v1133.KillAllBosses
                if not v1133 then
                    break
                end
                v1133 = task
                v1133 = v1133.wait
                v1133()
                v1133 = {}
                function v13904(arg58, arg59)
                    local v13925
                    if table.find(tbl3, arg59.Name) then
                        v13925 = arg59:FindFirstChild("Humanoid")
                        if v13925 then
                            if 0 < v13925.Health then
                                table.insert(v1133, arg59)
                            end
                        end
                    end
                end
                table.foreach(enemies:GetChildren(), v13904)
                table.foreach(ReplicatedStorage:GetChildren(), v13904)
                if v1133[1] then
                    v1119 = v1133[1]
                end
            end
        end
        spawn32(fn237)
        local v1127, v13868, v13870, v13871, v13872, v13873, v13886, v13889, v13890, v13895, v13898, v13900
        while true do
            if not getgenv().KillAllBosses then
                break
            end
            task.wait()
            if v1119 then
                v13868, v13870, v13871, v13872 = fn4(v1119.Name)
                v13873 = v1119
                if v13873 then
                    if fn40() then
                        if not fn41(v13873.Name) then
                            fn5("AbandonQuest")
                        end
                    end
                end
                if v13873 and v13868 then
                    if getgenv().TakeQuestBoss then
                        if not fn40() then
                            if not fn41(v13873.Name) then
                                v13886 = fn37
                                v13895 = v13871
                                v1127 = v13872 or v1127
                                if not v13872 then
                                    v1127 = 3
                                end
                                v13886(v13895, v1127)
                            end
                        end
                    end
                elseif v13873 then
                    v1127 = "HumanoidRootPart"
                    if v13873:FindFirstChild(v1127) then
                        v13889 = fn6
                        v13898 = v13873.HumanoidRootPart.CFrame
                        v1127 = getgenv().FarmPos
                        v13889(v13898 + v1127)
                        v13890 = pcall
                        function v13900()
                            fn21()
                            fn24()
                            fn32()
                        end
                        v13890(v13900)
                    end
                elseif v13870 then
                    fn6(v13870)
                end
            end
        end
    end
    local function fn75()
        local enabled20 = false
        local v13938 = nil
        local v13939 = nil
        local v13940 = nil
        local bossSelected = getgenv().BossSelected
        if not bossSelected then
            bossSelected = ""
        end
        local quest6 = localPlayer.PlayerGui.Main.Quest
        local v1151, v13953, v13955, v13959, v13961, v13962, v13963, v13980, v13982, v13986, v13997, v13998, v14003, v14005, v14006
        while true do
            if not getgenv().AutoFarmBossSelected then
                break
            end
            task.wait()
            v13953 = getgenv().BossSelected
            bossSelected = v13953 or bossSelected
            if not v13953 then
                bossSelected = ""
            end
            v13955 = localPlayer.Character
            if v13955 then
                v13955 = localPlayer.Character.PrimaryPart
            end
            if v13955 then
                v13959, v13961, v13962, v13963 = fn4(bossSelected)
                v1151 = fn23
                v1151 = v1151(bossSelected)
                if v1151 then
                    v1151 = fn29
                    v1151 = v1151({bossSelected})
                    if not quest6.Visible then
                        quest6.Container.QuestTitle.Title.Text = ""
                    end
                    if quest6.Visible then
                        if not string.find(quest6.Container.QuestTitle.Title.Text, bossSelected) then
                            fn5("AbandonQuest")
                        end
                    end
                    if v13959 then
                        if getgenv().TakeQuestBoss then
                            if not quest6.Visible then
                                v13980 = string.find
                                v13997 = quest6.Container.QuestTitle.Title.Text
                                v14005 = bossSelected
                                if not v13980(v13997, v14005) then
                                    v13982 = fn37
                                    v13998 = v13962
                                    v14006 = v13963 or v14005
                                    if not v13963 then
                                        v14006 = 3
                                    end
                                    v13982(v13998, v14006)
                                end
                            end
                        end
                    elseif v1151 then
                        if v1151.FindFirstChild(v1151, "HumanoidRootPart") then
                            fn6(v1151.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v13986 = pcall
                            function v14003()
                                fn21()
                                fn24()
                                fn32()
                                fn42(v1151)
                            end
                            v13986(v14003)
                        end
                    end
                elseif v13961 then
                    v1151 = fn6
                    v1151(v13961)
                end
            end
        end
    end
    local function fn76()
        local v14024, v14030, v14034, v14041, v14044
        while true do
            if not getgenv().AutoSoulReaper then
                break
            end
            task.wait()
            if not fn47("Hallow Boss") then
                v14024 = fn29({"Soul Reaper"})
                if v14024 then
                    if v14024:FindFirstChild("HumanoidRootPart") then
                        fn6(v14024.HumanoidRootPart.CFrame + getgenv().FarmPos)
                        v14030 = pcall
                        function v14041()
                            fn21()
                            fn24()
                            fn32()
                        end
                        v14030(v14041)
                    end
                elseif fn25("Hallow Essence") then
                    fn28("Hallow Essence")
                    v14034 = pcall
                    function v14044()
                        fn6(workspace.Map["Haunted Castle"].Summoner.Detection.CFrame)
                    end
                    v14034(v14044)
                else
                    fn6(CFrame.new(-9529, 316, 6712))
                end
            end
        end
    end
    local function fn77()
        local vector32 = Vector3.new()
        local v14073, v14076
        repeat
            repeat
                task.wait()
                v14073 = localPlayer.Character
            until v14073
            v14076 = localPlayer.Character.PrimaryPart
        until v14076
        local position = localPlayer.Character.PrimaryPart.Position
        local function fn238()
            local num14 = 2500
            local v1173 = nil
            local function fn239(arg60, arg61)
                local humanoid2 = arg61:FindFirstChild("Humanoid")
                local v14116, v14119
                if humanoid2 then
                    if 0 < humanoid2.Health then
                        v14116 = arg61.PrimaryPart
                        v14119 = localPlayer.Character
                        if v14119 then
                            v14119 = localPlayer.Character.PrimaryPart
                        end
                        if v14116 and v14119 then
                            if (v14119.Position - v14116.Position).Magnitude <= num14 then
                                num14 = (v14119.Position - v14116.Position).Magnitude
                                v1173 = arg61
                            end
                        end
                    end
                end
            end
            table.foreach(enemies:GetChildren(), fn239)
            table.foreach(ReplicatedStorage:GetChildren(), fn239)
            return v1173
        end
        local v14083, v14089
        while true do
            local v1183 = getgenv
            v1183 = v1183()
            v1183 = v1183.AutoFarmNearest
            if not v1183 then
                break
            end
            v1183 = task
            v1183 = v1183.wait
            v1183()
            v1183 = getgenv
            v1183 = v1183()
            v1183 = v1183.AutoFarm_Level
            if not v1183 then
                v1183 = getgenv
                v1183 = v1183()
                v1183 = v1183.AutoRipIndra
                if not v1183 then
                    v1183 = getgenv
                    v1183 = v1183()
                    v1183 = v1183.AutoCakePrince
                    if not v1183 then
                        v1183 = fn238
                        v1183 = v1183()
                        if v1183 then
                            if v1183.FindFirstChild(v1183, "HumanoidRootPart") then
                                fn6(v1183.HumanoidRootPart.CFrame + getgenv().FarmPos)
                                v14083 = pcall
                                function v14089()
                                    fn21()
                                    fn24()
                                    fn32()
                                    fn42(v1183, true)
                                end
                                v14083(v14089)
                            end
                        else
                            fn6(CFrame.new(position))
                        end
                    end
                end
            end
        end
    end
    local function fn78()
        local num15 = 0
        local spawn33 = task.spawn
        local function fn240()
            while true do
                if not getgenv().AutoRaceV2 then
                    break
                end
                task.wait()
                num15 = fn5("Alchemist", "1")
            end
        end
        spawn33(fn240)
        local v14145, v14148, v14152, v14154, v14155, v14160, v14163, v14164, v14167, v14168, v14171, v14172, v14176, v14177, v14178, v14179, v14180, v14181, v14185, v14186, v14190, v14195, v14196, v14197, v14198, v14202, v14203, v14210, v14213, v14227, v14228, v14235, v14238, v14245, v14249, v14250, v14254, v14255, v14256, v14261, v14262, v14263, v14269, v14270, v14271, v14275, v14276, v14277, v14280, v14281, v14282, v14284, v14285
        while true do
            if not getgenv().AutoRaceV2 then
                break
            end
            task.wait()
            v14145 = localPlayer.Data.Race
            local str5 = "Evolved"
            if not v14145:FindFirstChild(str5) then
                if num15 == 0 then
                    v14148 = localPlayer
                    if v14148 then
                        v14148 = localPlayer.Character
                        if v14148 then
                            v14148 = localPlayer.Character.PrimaryPart
                        end
                    end
                    if v14148 then
                        v14160 = v14148.Position
                        str5 = Vector3
                        str5 = str5.new
                        str5 = str5(-2777, 73, -3570)
                        if (v14160 - str5).Magnitude < 5 then
                            v14163 = fn5
                            str5 = "Alchemist"
                            v14163(str5, "2")
                        end
                    else
                        v14164 = fn6
                        str5 = CFrame
                        str5 = str5.new
                        str5, v14176, v14213, v14238, v14250, v14256, v14263, v14271, v14277, v14282 = str5(-2777, 73, -3570)
                        v14164(str5, v14176, v14213, v14238, v14250, v14256, v14263, v14271, v14277, v14282)
                    end
                elseif num15 == 1 then
                    v14152 = localPlayer
                    str5 = "Backpack"
                    v14154 = v14152:FindFirstChild(str5)
                    v14167 = localPlayer.Character
                    v14177 = v14167
                    str5 = v14167.FindFirstChild
                    str5 = str5(v14177, "Flower 1")
                    if str5 then
                        str5 = v14167["Flower 1"]
                        str5.Parent = v14154
                    else
                        v14178 = v14167
                        str5 = v14167.FindFirstChild
                        str5 = str5(v14178, "Flower 2")
                        if str5 then
                            str5 = v14167["Flower 2"]
                            str5.Parent = v14154
                        else
                            v14179 = v14167
                            str5 = v14167.FindFirstChild
                            str5 = str5(v14179, "Flower 3")
                            if str5 then
                                str5 = v14167["Flower 3"]
                                str5.Parent = v14154
                            end
                        end
                    end
                    v14180 = v14154
                    str5 = v14154.FindFirstChild
                    str5 = str5(v14180, "Flower 1")
                    if not str5 then
                        str5 = workspace
                        v14181 = str5
                        str5 = str5.FindFirstChild
                        str5 = str5(v14181, "Flower1")
                        if str5 then
                            str5 = workspace
                            str5 = str5.Flower1
                            str5 = str5.Transparency
                            if str5 ~= 1 then
                                str5 = fn6
                                str5(workspace.Flower1.CFrame)
                            end
                        end
                    else
                        v14185 = v14154
                        str5 = v14154.FindFirstChild
                        str5 = str5(v14185, "Flower 2")
                        if not str5 then
                            str5 = workspace
                            v14186 = str5
                            str5 = str5.FindFirstChild
                            str5 = str5(v14186, "Flower2")
                            if str5 then
                                str5 = workspace
                                str5 = str5.Flower2
                                str5 = str5.Transparency
                                if str5 ~= 1 then
                                    str5 = fn6
                                    str5(workspace.Flower2.CFrame)
                                end
                            end
                        else
                            v14190 = v14154
                            str5 = v14154.FindFirstChild
                            str5 = str5(v14190, "Flower 3")
                            if not str5 then
                                str5 = fn29
                                str5 = str5({"Swan Pirate"})
                                if str5 then
                                    if str5.FindFirstChild(str5, "HumanoidRootPart") then
                                        fn6(str5.HumanoidRootPart.CFrame + getgenv().FarmPos)
                                        v14195 = pcall
                                        function v14227()
                                            fn21()
                                            fn24()
                                            fn32()
                                            fn42(str5)
                                        end
                                        v14195(v14227)
                                    end
                                else
                                    v14196 = fn11
                                    v14228 = {}
                                    v14245 = CFrame.new(778, 110, 1129)
                                    v14254 = CFrame.new(1018, 110, 1128)
                                    v14261 = CFrame.new(1020, 110, 1366)
                                    v14269, v14275, v14280, v14284 = CFrame.new(1016, 110, 1115)
                                    v14228[1] = v14245
                                    v14228[2] = v14254
                                    v14228[3] = v14261
                                    v14228[4] = v14269
                                    v14228[5] = v14275
                                    v14228[6] = v14280
                                    v14228[7] = v14284
                                    v14196(v14228, "Swan Pirate")
                                end
                            else
                                v14197 = v14154
                                str5 = v14154.FindFirstChild
                                str5 = str5(v14197, "Flower 1")
                                if not str5 then
                                    str5 = workspace
                                    v14198 = str5
                                    str5 = str5.FindFirstChild
                                    str5 = str5(v14198, "Flower1")
                                    if str5 then
                                        str5 = fn6
                                        str5(workspace.Flower1.CFrame)
                                    end
                                else
                                    v14202 = v14154
                                    str5 = v14154.FindFirstChild
                                    str5 = str5(v14202, "Flower 2")
                                    if not str5 then
                                        str5 = workspace
                                        v14203 = str5
                                        str5 = str5.FindFirstChild
                                        str5 = str5(v14203, "Flower2")
                                        if str5 then
                                            str5 = fn6
                                            str5(workspace.Flower2.CFrame)
                                        end
                                    end
                                end
                            end
                        end
                    end
                elseif num15 == 2 then
                    v14155 = localPlayer
                    if v14155 then
                        v14155 = localPlayer.Character
                        if v14155 then
                            v14155 = localPlayer.Character.PrimaryPart
                        end
                    end
                    if v14155 then
                        v14168 = v14155.Position
                        str5 = Vector3
                        str5 = str5.new
                        str5 = str5(-2777, 73, -3570)
                        if (v14168 - str5).Magnitude < 5 then
                            v14171 = fn5
                            str5 = "Alchemist"
                            v14171(str5, "3")
                        end
                    else
                        v14172 = fn6
                        str5 = CFrame
                        str5 = str5.new
                        str5, v14210, v14235, v14249, v14255, v14262, v14270, v14276, v14281, v14285 = str5(-2777, 73, -3570)
                        v14172(str5, v14210, v14235, v14249, v14255, v14262, v14270, v14276, v14281, v14285)
                    end
                end
            end
        end
    end
    local function fn79()
        local v14316, v14317, v14327, v14329, v14332, v14342, v14343, v14348, v14355, v14364
        while true do
            local v1210 = getgenv
            v1210 = v1210()
            v1210 = v1210.AutoRengoku
            if not v1210 then
                break
            end
            v1210 = task
            v1210 = v1210.wait
            v1210()
            v1210 = fn23
            v1210 = v1210("Darkbeard")
            local skipped12 = false
            if v1210 then
                v1210 = getgenv
                v1210 = v1210()
                v1210 = v1210.AutoDarkbeard
                if v1210 then
                    skipped12 = true
                end
            end
            if not skipped12 then
                v1210 = fn25
                v1210 = v1210("Hidden Key")
                if v1210 then
                    v1210 = fn28
                    v1210("Hidden Key")
                    v1210 = fn6
                    v1210(CFrame.new(6571, 299, -6968))
                else
                    v1210 = fn25
                    v1210 = v1210("Library Key")
                    if v1210 then
                        v1210 = fn28
                        v1210("Library Key")
                        v1210 = fn6
                        v1210(CFrame.new(6373, 293, -6839))
                    else
                        v1210 = fn23
                        v1210 = v1210("Awakened Ice Admiral")
                        if v1210 then
                            v1210 = fn29
                            v1210 = v1210({"Awakened Ice Admiral"})
                            if v1210 then
                                if v1210.FindFirstChild(v1210, "HumanoidRootPart") then
                                    fn6(v1210.HumanoidRootPart.CFrame + getgenv().FarmPos)
                                    v14316 = pcall
                                    function v14342()
                                        fn21()
                                        fn24()
                                        fn32()
                                    end
                                    v14316(v14342)
                                end
                            end
                        else
                            v1210 = fn29
                            v14317 = {}
                            v14343 = "Arctic Warrior"
                            v14364 = "Snow Lurker"
                            v14317[1] = v14343
                            v14317[2] = v14364
                            v1210 = v1210(v14317)
                            if not getgenv().AutoFarm_Level then
                                if not getgenv().AutoFarmBone then
                                    if v1210 then
                                        if v1210.FindFirstChild(v1210, "HumanoidRootPart") then
                                            fn6(v1210.HumanoidRootPart.CFrame + getgenv().FarmPos)
                                            v14327 = pcall
                                            function v14348()
                                                fn21()
                                                fn24()
                                                fn32()
                                                fn42(v1210, true)
                                            end
                                            v14327(v14348)
                                        end
                                    else
                                        fn6(CFrame.new(5707, 28, -6402))
                                    end
                                end
                            end
                        end
                    end
                end
                v1210 = enemies
                v14329 = v1210
                v1210 = v1210.FindFirstChild
                v1210 = v1210(v14329, "Awakened Ice Admiral")
                v14332 = ReplicatedStorage:FindFirstChild("Awakened Ice Admiral")
                v14355 = GetProxyNPC()
            end
        end
    end
    local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    local previousLogoGui = playerGui:FindFirstChild("CATHUB_LogoGui")
    if previousLogoGui then
        previousLogoGui:Destroy()
    end
    local screenGui = Instance.new("ScreenGui")
    local imageButton = Instance.new("ImageButton")
    local uICorner = Instance.new("UICorner")
    local uIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    screenGui.Name = "CATHUB_LogoGui"
    screenGui.ResetOnSpawn = false
    screenGui.Parent = playerGui
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    imageButton.Parent = screenGui
    imageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    imageButton.BackgroundTransparency = 1
    imageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    imageButton.BorderSizePixel = 0
    imageButton.Position = UDim2.new(0.814237297, 0, 0.135593221, 0)
    imageButton.Size = UDim2.new(0, 63, 0, 63)
    imageButton.Image = "rbxassetid://74197694724872"
    local uIStroke = Instance.new("UIStroke", imageButton)
    uIStroke.Thickness = 2
    uIStroke.Color = Color3.fromRGB(133, 21, 124)
    uICorner.Parent = imageButton
    uIAspectRatioConstraint.Parent = imageButton
    local function fn103()
        local localScript = Instance.new("LocalScript", imageButton)
        local parent = localScript.Parent
        local UserInputService2 = game:GetService("UserInputService")
        local enabled6 = false
        local v1218 = nil
        local v1219 = nil
        local function fn83(arg62)
            enabled6 = true
            v1218 = Vector2.new(arg62.Position.X, arg62.Position.Y)
            v1219 = parent.Position
        end
        local function fn84(arg63)
            local v14419
            if enabled6 then
                v14419 = Vector2.new(arg63.Position.X, arg63.Position.Y) - v1218
                parent.Position = UDim2.new(v1219.X.Scale, v1219.X.Offset + v14419.X, v1219.Y.Scale, v1219.Y.Offset + v14419.Y)
            end
        end
        local function fn85()
            enabled6 = false
        end
        local inputBegan = parent.InputBegan
        local function fn241(arg64)
            local userInputType = arg64.UserInputType
            local mouseButton1 = Enum.UserInputType.MouseButton1
            local skipped13 = false
            if userInputType ~= mouseButton1 then
                if arg64.UserInputType ~= Enum.UserInputType.Touch then
                    skipped13 = true
                end
            end
            local v14448, v14457
            if not skipped13 then
                fn83(arg64)
                v14448 = arg64.Changed
                function v14457()
                    if arg64.UserInputState == Enum.UserInputState.End then
                        fn85()
                    end
                end
                v14448:Connect(v14457)
            end
        end
        inputBegan:Connect(fn241)
        local inputChanged = UserInputService2.InputChanged
        local function fn242(arg65)
            local userInputType2 = arg65.UserInputType
            local mouseMovement = Enum.UserInputType.MouseMovement
            local skipped14 = false
            if userInputType2 ~= mouseMovement then
                if arg65.UserInputType ~= Enum.UserInputType.Touch then
                    skipped14 = true
                end
            end
            if not skipped14 then
                fn84(arg65)
            end
        end
        inputChanged:Connect(fn242)
        local mouseButton1Click = parent.MouseButton1Click
        local function fn243()
            local VirtualInputManager2 = game:GetService("VirtualInputManager")
            VirtualInputManager2:SendKeyEvent(true, Enum.KeyCode.End, false, game)
            local VirtualInputManager3 = game:GetService("VirtualInputManager")
            VirtualInputManager3:SendKeyEvent(false, Enum.KeyCode.End, false, game)
        end
        mouseButton1Click:Connect(fn243)
    end
    coroutine.wrap(fn103)()
    local UserInputService = game:GetService("UserInputService")
    local v2254, v2256
    if UserInputService.MouseEnabled then
        if UserInputService.KeyboardEnabled then
            v2254 = getgenv()
            v2254.swuuisize = UDim2.fromOffset(580, 460)
        end
    else
        v2256 = getgenv()
        v2256.swuuisize = UDim2.fromOffset(470, 280)
    end
    local v2259 = loadstring(game:HttpGet("https://raw.githubusercontent.com/ToshyWare/StyxzLibrary/main/Main.lua"))()
    local v2275 = loadstring(game:HttpGet("https://raw.githubusercontent.com/ToshyWare/StyxzLibrary/main/SaveManager.lua"))()
    local v2285 = loadstring(game:HttpGet("https://raw.githubusercontent.com/ToshyWare/StyxzLibrary/main/InterfaceManager.lua"))()
    local tbl15 = {
        Title = "CAT HUB | Blox Fruits",
        SubTitle = "CATJack.gg",
        TabWidth = 160,
        Size = getgenv().swuuisize,
        Acrylic = false,
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.End,
    }
    local v2296 = v2259:CreateWindow(tbl15)
    local v2304 = v2296:AddTab({Title = "Info", Icon = "info"})
    local v2311 = v2304:AddParagraph({Title = "CAT HUB • CATJack.gg"})
    local tbl16 = {Title = "Copy Discord"}
    local function fn104()
        setclipboard("https://discord.gg/bRdE4sfddp")
    end
    tbl16.Callback = fn104
    v2304:AddButton(tbl16)
    local v2325 = v2304:AddParagraph({Title = "Script Developed By : CATJack.gg"})
    local v2333 = v2304:AddParagraph({Title = "Device Support : Mobile & PC"})
    local v2340 = v2304:AddParagraph({
        Title = "Join CAT HUB Discord For Updates And Support!",
    })
    local v2347 = v2296:AddTab({Title = "Farm", Icon = "home"})
    local v105, v2354, v2376, v2430, v2475, v2476, v2478, v2479, v2481, v2483, v2484, v2487, v2488, v2489, v2490, v2492, v2493, v2494, v2496, v2497, v2498, v2499, v2500, v2501, v2503, v2504, v2505, v2507, v2508, v2518, v2519, v2520, v2521, v2522, v2523, v2524, v2525, v2526, v2527, v2528, v2529, v2530, v2531, v2532, v2533, v2534, v2535, v2536, v2537, v2538, v2539, v2540, v2541, v2542, v2551, v2552, v2553, v2554, v2555, v2556, v2557, v2558, v2559, v2560, v2561, v2562, v2563, v2564, v2565, v2566, v2567, v2568, v2569, v2570, v2571, v2572, v2573, v2574, v2575, v2579, v2583, v2587, v2591, v2679, v2749, v2825
    if v79 then
        v2354 = v2296:AddTab({Title = "Sea", Icon = "waves"})
        v2354:AddSection("Kitsune")
        v105 = v2354:AddParagraph({Title = "Kitsune Island : Not Spawn"})
        v2475 = "Toggle"
        v2518 = {Title = "Auto Kitsune Island"}
        function v2551(arg66)
            local v14495 = getgenv()
            v14495.AutoKitsuneIsland = arg66
            fn51()
        end
        v2518.Callback = v2551
        v2354:AddToggle(v2475, v2518)
        v2476 = "Toggle"
        v2519 = {Title = "Auto Trade Azure Ember"}
        function v2552(arg67)
            local v14498 = getgenv()
            v14498.TradeAzureEmber = arg67
            local spawn34 = task.spawn
            local function fn244()
                local rfKitsuneStatuePray = ReplicatedStorage:WaitForChild("Modules", 9000000000):WaitForChild("Net", 9000000000):WaitForChild("RF/KitsuneStatuePray", 9000000000)
                while true do
                    if not getgenv().TradeAzureEmber then
                        break
                    end
                    task.wait(1)
                    rfKitsuneStatuePray:InvokeServer()
                end
            end
            spawn34(fn244)
        end
        v2519.Callback = v2552
        v2354:AddToggle(v2476, v2519)
        v2376 = task.spawn
        function v2430()
            local map = workspace:WaitForChild("Map", 9000000000)
            local spawn35 = task.spawn
            local function fn245()
                local v14553
                while true do
                    if not task.wait() then
                        break
                    end
                    if map:FindFirstChild("KitsuneIsland") then
                        v14553 = localPlayer.Character
                        if v14553 then
                            v14553 = localPlayer.Character.PrimaryPart
                        end
                        if v14553 then
                            Distance = tostring(math.floor((v14553.Position - map.KitsuneIsland.WorldPivot.p).Magnitude / 3))
                        end
                    end
                end
            end
            spawn35(fn245)
            while true do
                if not task.wait() then
                    break
                end
                if map.FindFirstChild(map, "KitsuneIsland") then
                    v105:Set("Kitsune Island : Spawned | Distance : " .. Distance)
                else
                    v105:Set("Kitsune Island : Not Spawned")
                end
            end
        end
        v2376(v2430)
        v2354:AddSection("Sea")
        v2478 = "Toggle"
        v2520 = {Title = "Auto Farm Sea"}
        function v2553(arg68)
            local v14574 = getgenv()
            v14574.AutoFarmSea = arg68
            fn52()
        end
        v2520.Callback = v2553
        v2354:AddToggle(v2478, v2520)
        v2479 = {Title = "Buy New Boat"}
        function v2521()
            fn50()
        end
        v2479.Callback = v2521
        v2354:AddButton(v2479)
        v2354:AddSection("Material")
        v2481 = "Toggle"
        v2522 = {Title = "Auto Wood Planks"}
        function v2554(arg69)
            local v14578 = getgenv()
            v14578.AutoWoodPlanks = arg69
            local spawn36 = task.spawn
            local function fn246()
                local boatCastle = workspace:WaitForChild("Map", 9000000000):WaitForChild("Boat Castle", 9000000000)
                local function fn86()
                    local v14644, v14649, v14652
                    v14644, v14649, v14652 = pairs(boatCastle.IslandModel:GetChildren())
                    for _, v35 in v14644, v14649, v14652 do
                        if v35.Name == "Model" then
                            if v35:FindFirstChild("Tree") then
                                return v35
                            end
                        end
                    end
                end
                local function fn247()
                    local v14664 = fn86()
                    local v14666, v14667, v14669, v14672, v14675, v14680
                    if v14664 then
                        v14666 = math.huge
                        v14667 = nil
                        v14669, v14672, v14675 = pairs(v14664:GetChildren())
                        for _, v36 in v14669, v14672, v14675 do
                            v14680 = localPlayer.Character
                            if v14680 then
                                v14680 = localPlayer.Character.PrimaryPart
                            end
                            if v36 then
                                if v36.PrimaryPart then
                                    if v36.PrimaryPart.Anchored and v14680 then
                                        if v14666 > (v14680.Position - v36.PrimaryPart.Position).Magnitude then
                                            v14666 = (v14680.Position - v36.PrimaryPart.Position).Magnitude
                                            v14667 = v36
                                        end
                                    end
                                end
                            end
                        end
                        return v14667
                    end
                end
                local str6 = ""
                local spawn37 = task.spawn
                local function fn248()
                    while true do
                        if not getgenv().AutoWoodPlanks then
                            break
                        end
                        if fn26("Melee") then
                            str6 = "Melee"
                            task.wait(2)
                        end
                        if fn26("Blox Fruit") then
                            str6 = "Blox Fruit"
                            task.wait(3)
                        end
                        if fn26("Sword") then
                            str6 = "Sword"
                            task.wait(2)
                        end
                        if fn26("Gun") then
                            str6 = "Gun"
                            task.wait(2)
                        end
                    end
                end
                spawn37(fn248)
                local v14597, v14602
                while true do
                    if not getgenv().AutoWoodPlanks then
                        break
                    end
                    task.wait()
                    v14597 = fn247()
                    fn31(str6)
                    if v14597 then
                        if v14597.PrimaryPart then
                            fn6(v14597.PrimaryPart.CFrame)
                            v14602 = localPlayer.Character
                            if v14602 then
                                v14602 = localPlayer.Character.PrimaryPart
                            end
                            if v14602 then
                                if (v14602.Position - v14597.PrimaryPart.Position).Magnitude < 10 then
                                    if getgenv().SeaSkillZ then
                                        fn30("Z")
                                    end
                                    if getgenv().SeaSkillX then
                                        fn30("X")
                                    end
                                    if getgenv().SeaSkillC then
                                        fn30("C")
                                    end
                                    if getgenv().SeaSkillV then
                                        fn30("V")
                                    end
                                    if getgenv().SeaSkillF then
                                        fn30("F")
                                    end
                                    if getgenv().SeaAimBotSkill then
                                        v83(v14597.PrimaryPart)
                                    end
                                end
                            end
                        end
                    end
                end
            end
            spawn36(fn246)
        end
        v2522.Callback = v2554
        v2354:AddToggle(v2481, v2522)
        v2354:AddSection("Panic Mode")
        v2483 = "Slider"
        v2523 = {
            Title = "Select Health",
            Min = 20,
            Max = 70,
            Default = 25,
            Rounding = 1,
        }
        function v2555(arg70)
            local v14729 = getgenv()
            v14729.HealthPanic = arg70
        end
        v2523.Callback = v2555
        v2354:AddSlider(v2483, v2523)
        v2484 = "Toggle"
        v2524 = {Title = "Panic Mode", Default = true}
        function v2556(arg71)
            local v14731 = getgenv()
            v14731.PanicMode = arg71
        end
        v2524.Callback = v2556
        v2354:AddToggle(v2484, v2524)
        v2354:AddSection("Farm Select")
        v2354:AddParagraph({Title = "Fish"})
        v2487 = "Toggle"
        v2525 = {Title = "Terrorshark", Default = true}
        function v2557(arg72)
            local v14733 = getgenv()
            v14733.Terrorshark = arg72
        end
        v2525.Callback = v2557
        v2354:AddToggle(v2487, v2525)
        v2488 = "Toggle"
        v2526 = {Title = "Piranha", Default = true}
        function v2558(arg73)
            local v14735 = getgenv()
            v14735.Piranha = arg73
        end
        v2526.Callback = v2558
        v2354:AddToggle(v2488, v2526)
        v2489 = "Toggle"
        v2527 = {Title = "Fish Crew Member", Default = true}
        function v2559(arg74)
            local v14737 = getgenv()
            v14737.FishCrewMember = arg74
        end
        v2527.Callback = v2559
        v2354:AddToggle(v2489, v2527)
        v2490 = "Toggle"
        v2528 = {Title = "Shark", Default = true}
        function v2560(arg75)
            local v14739 = getgenv()
            v14739.Shark = arg75
        end
        v2528.Callback = v2560
        v2354:AddToggle(v2490, v2528)
        v2354:AddParagraph({Title = "Boats"})
        v2492 = "Toggle"
        v2529 = {Title = "Pirate Brigade", Default = true}
        function v2561(arg76)
            local v14741 = getgenv()
            v14741.PirateBrigade = arg76
        end
        v2529.Callback = v2561
        v2354:AddToggle(v2492, v2529)
        v2493 = "Toggle"
        v2530 = {Title = "Pirate Grand Brigade", Default = true}
        function v2562(arg77)
            local v14743 = getgenv()
            v14743.PirateGrandBrigade = arg77
        end
        v2530.Callback = v2562
        v2354:AddToggle(v2493, v2530)
        v2494 = "Toggle"
        v2531 = {Title = "Fish Boat", Default = true}
        function v2563(arg78)
            local v14745 = getgenv()
            v14745.FishBoat = arg78
        end
        v2531.Callback = v2563
        v2354:AddToggle(v2494, v2531)
        v2354:AddSection("Skill")
        v2496 = "Toggle"
        v2532 = {Title = "AimBot Skill Enemie", Default = true}
        function v2564(arg79)
            local v14747 = getgenv()
            v14747.SeaAimBotSkill = arg79
        end
        v2532.Callback = v2564
        v2354:AddToggle(v2496, v2532)
        v2497 = "Toggle"
        v2533 = {Title = "Skill Z", Default = true}
        function v2565(arg80)
            local v14749 = getgenv()
            v14749.SeaSkillZ = arg80
        end
        v2533.Callback = v2565
        v2354:AddToggle(v2497, v2533)
        v2498 = "Toggle"
        v2534 = {Title = "Skill X", Default = true}
        function v2566(arg81)
            local v14751 = getgenv()
            v14751.SeaSkillX = arg81
        end
        v2534.Callback = v2566
        v2354:AddToggle(v2498, v2534)
        v2499 = "Toggle"
        v2535 = {Title = "Skill C", Default = true}
        function v2567(arg82)
            local v14753 = getgenv()
            v14753.SeaSkillC = arg82
        end
        v2535.Callback = v2567
        v2354:AddToggle(v2499, v2535)
        v2500 = "Toggle"
        v2536 = {Title = "Skill V", Default = true}
        function v2568(arg83)
            local v14755 = getgenv()
            v14755.SeaSkillV = arg83
        end
        v2536.Callback = v2568
        v2354:AddToggle(v2500, v2536)
        v2501 = "Toggle"
        v2537 = {Title = "Skill F"}
        function v2569(arg84)
            local v14757 = getgenv()
            v14757.SeaSkillF = arg84
        end
        v2537.Callback = v2569
        v2354:AddToggle(v2501, v2537)
        v2354:AddSection("NPCs")
        v2503 = "Toggle"
        v2538 = {Title = "Teleport To Shark Hunter"}
        function v2570(arg85)
            local v14759 = getgenv()
            v14759.NPCtween = arg85
            local spawn38 = task.spawn
            local function fn249()
                while true do
                    if not getgenv().NPCtween then
                        break
                    end
                    task.wait()
                    fn6(CFrame.new(-16526, 108, 752))
                end
            end
            spawn38(fn249)
        end
        v2538.Callback = v2570
        v2354:AddToggle(v2503, v2538)
        v2504 = "Toggle"
        v2539 = {Title = "Teleport To Beast Hunter"}
        function v2571(arg86)
            local v14777 = getgenv()
            v14777.NPCtween = arg86
            local spawn39 = task.spawn
            local function fn250()
                while true do
                    if not getgenv().NPCtween then
                        break
                    end
                    task.wait()
                    fn6(CFrame.new(-16281, 73, 263))
                end
            end
            spawn39(fn250)
        end
        v2539.Callback = v2571
        v2354:AddToggle(v2504, v2539)
        v2505 = "Toggle"
        v2540 = {Title = "Teleport To Spy"}
        function v2572(arg87)
            local v14795 = getgenv()
            v14795.NPCtween = arg87
            local spawn40 = task.spawn
            local function fn251()
                while true do
                    if not getgenv().NPCtween then
                        break
                    end
                    task.wait()
                    fn6(CFrame.new(-16471, 528, 539))
                end
            end
            spawn40(fn251)
        end
        v2540.Callback = v2572
        v2354:AddToggle(v2505, v2540)
        v2354:AddSection("Configs")
        v2507 = "Dropdown"
        v2541 = {Title = "Tween Sea Level"}
        v2573 = {}
        v2579 = "1"
        v2583 = "2"
        v2587 = "3"
        v2591 = "4"
        v2679 = "5"
        v2749 = "6"
        v2825 = "inf"
        v2573[1] = v2579
        v2573[2] = v2583
        v2573[3] = v2587
        v2573[4] = v2591
        v2573[5] = v2679
        v2573[6] = v2749
        v2573[7] = v2825
        v2541.Values = v2573
        v2541.Default = 6
        function v2574(arg88)
            local v14813 = getgenv()
            v14813.SeaLevelTP = arg88
        end
        v2541.Callback = v2574
        v2354:AddDropdown(v2507, v2541)
        v2508 = "Slider"
        v2542 = {
            Title = "Boat Tween Speed",
            Min = 10,
            Max = 250,
            Rounding = 10,
            Default = 250,
        }
        function v2575(arg89)
            local v14815 = getgenv()
            v14815.SeaBoatSpeed = arg89
        end
        v2542.Callback = v2575
        v2354:AddSlider(v2508, v2542)
        local boatHeightSlider = {
            Title = "Boat Height",
            Min = 0,
            Max = 150,
            Rounding = 1,
            Default = 31,
        }
        boatHeightSlider.Callback = function(value)
            getgenv().SeaBoatHeight = math.clamp(tonumber(value) or 31, 0, 150)
        end
        v2354:AddSlider("Slider", boatHeightSlider)
    end
    local v2357, v2410, v2411, v2412, v2413, v2414, v2415, v2416, v2463, v2464, v2466, v2467, v2469, v2509, v2510, v2511, v2512, v2513, v2543, v2544, v2545, v2546, v2547
    if v79 then
        if localPlayer.UserId == 2764978820 then
            v105 = v2296
            v2357 = v2296.AddTab(v105, {Title = "Race V4", Icon = ""})
            v2410 = v2357
            v105 = v2357.AddToggle
            v2463 = "Toggle"
            v2509 = {Title = "Auto Pull Lever"}
            function v2543(arg90)
            end
            v2509.Callback = v2543
            v105(v2410, v2463, v2509)
            v2411 = v2357
            v105 = v2357.AddToggle
            v2464 = "Toggle"
            v2510 = {Title = "Auto Stone Puzzle"}
            function v2544(arg91)
            end
            v2510.Callback = v2544
            v105(v2411, v2464, v2510)
            v2412 = v2357
            v105 = v2357.AddSection
            v105(v2412, "Auto Mirage")
            v2413 = v2357
            v105 = v2357.AddToggle
            v2466 = "Toggle"
            v2511 = {Title = "Auto Find Mirage"}
            function v2545(arg92)
            end
            v2511.Callback = v2545
            v105(v2413, v2466, v2511)
            v2414 = v2357
            v105 = v2357.AddToggle
            v2467 = "Toggle"
            v2512 = {Title = "Auto Gear Puzzle"}
            function v2546(arg93)
            end
            v2512.Callback = v2546
            v105(v2414, v2467, v2512)
            v2415 = v2357
            v105 = v2357.AddSection
            v105(v2415, "Auto Race")
            v2416 = v2357
            v105 = v2357.AddToggle
            v2469 = "Toggle"
            v2513 = {Title = "Auto Finish Trial"}
            function v2547(arg94)
                local v14817 = getgenv()
                v14817.AutoFinishTrial = arg94
                local spawn41 = task.spawn
                local function fn252()
                    local spawn42 = task.spawn
                    local v1345
                    local function fn253()
                        while true do
                            if not getgenv().AutoFinishTrial then
                                break
                            end
                            task.wait()
                            v1345 = localPlayer.Data.Race.Value
                        end
                    end
                    spawn42(fn253)
                    local v14831, v14832, v14840, v14841, v14846
                    while true do
                        if not getgenv().AutoFinishTrial then
                            break
                        end
                        task.wait()
                        if v1345 then
                            if typeof(v1345) == "string" then
                                if v1345 == "Cyborg" then
                                    fn6(CFrame.new(28654, 14898, -30))
                                elseif v1345 == "Ghoul" then
                                    fn8()
                                elseif v1345 == "Human" then
                                    fn8()
                                elseif v1345 == "Mink" then
                                    v14831, v14840, v14846 = pairs(workspace:GetDescendants())
                                    for _, v37 in v14831, v14840, v14846 do
                                        if v37.Name == "StartPoint" then
                                            fn6(v37.CFrame)
                                        end
                                    end
                                elseif v1345 == "Skypiea" then
                                    v14832 = pcall
                                    function v14841()
                                        local v14870, v14877, v14880
                                        v14870, v14877, v14880 = pairs(workspace.Map.SkyTrial.Model:GetDescendants())
                                        for _, v38 in v14870, v14877, v14880 do
                                            if v38.Name == "snowisland_Cylinder.081" then
                                                fn6(v38.CFrame)
                                            end
                                        end
                                    end
                                    v14832(v14841)
                                end
                            end
                        end
                    end
                end
                spawn41(fn252)
            end
            v2513.Callback = v2547
            v105(v2416, v2469, v2513)
        end
    end
    v105 = v2296
    local v2359 = v2296.AddTab(v105, {Title = "Quests/Items", Icon = "swords"})
    local v2418 = v2296
    v105 = v2296.AddTab
    v105 = v105(v2418, {Title = "Fruit/Raid", Icon = "cherry"})
    local v107, v108, v109, v110, v111, v112, v113, v2421, v2750, v2751, v2753, v2754, v2755, v2756, v2757, v2826, v2827, v2828, v2829, v2830, v2831, v2832, v2897, v2898, v2899, v2900, v2901, v2902, v2903
    if level.Value < 2551 then
        v2421 = v2296:AddTab({Title = "Stats", Icon = "signal"})
        v107 = 1
        v108 = nil
        v109 = nil
        v110 = nil
        v111 = nil
        v112 = nil
        function v113()
            local commF4 = ReplicatedStorage:WaitForChild("Remotes", 9000000000):WaitForChild("CommF_", 9000000000)
            local function fn254(arg95)
                local v14924
                if 1 <= localPlayer.Data.Points.Value then
                    v14924 = math.clamp(v107, 1, localPlayer.Data.Points.Value)
                    commF4:InvokeServer("AddPoint", arg95, v14924)
                end
            end
            while true do
                if not getgenv().AutoStats then
                    break
                end
                task.wait()
                if v108 then
                    fn254("Melee")
                end
                if v109 then
                    fn254("Defense")
                end
                if v110 then
                    fn254("Sword")
                end
                if v111 then
                    fn254("Gun")
                end
                if v112 then
                    fn254("Demon Fruit")
                end
            end
        end
        v2750 = "Toggle"
        v2826 = {Title = "Auto Stats"}
        function v2897(arg96)
            local v14938 = getgenv()
            v14938.AutoStats = arg96
            v113()
        end
        v2826.Callback = v2897
        v2421:AddToggle(v2750, v2826)
        v2751 = "Slider"
        v2827 = {
            Title = "Select Points",
            Min = 1,
            Max = 100,
            Rounding = 1,
            Default = 1,
        }
        function v2898(arg97)
            v107 = arg97
        end
        v2827.Callback = v2898
        v2421:AddSlider(v2751, v2827)
        v2421:AddSection("Select Stats")
        v2753 = "Toggle"
        v2828 = {Title = "Melee"}
        function v2899(arg98)
            v108 = arg98
        end
        v2828.Callback = v2899
        v2421:AddToggle(v2753, v2828)
        v2754 = "Toggle"
        v2829 = {Title = "Defense"}
        function v2900(arg99)
            v109 = arg99
        end
        v2829.Callback = v2900
        v2421:AddToggle(v2754, v2829)
        v2755 = "Toggle"
        v2830 = {Title = "Sword"}
        function v2901(arg100)
            v110 = arg100
        end
        v2830.Callback = v2901
        v2421:AddToggle(v2755, v2830)
        v2756 = "Toggle"
        v2831 = {Title = "Gun"}
        function v2902(arg101)
            v111 = arg101
        end
        v2831.Callback = v2902
        v2421:AddToggle(v2756, v2831)
        v2757 = "Toggle"
        v2832 = {Title = "Demon Fruit"}
        function v2903(arg102)
            v112 = arg102
        end
        v2832.Callback = v2903
        v2421:AddToggle(v2757, v2832)
    end
    v107 = v2296
    local addTab = v2296.AddTab
    v108 = {}
    v108.Title = "Teleport"
    v108.Icon = "locate"
    local v2422 = addTab(v107, v108)
    v108 = v2296
    v107 = v2296.AddTab
    v109 = {}
    v109.Title = "Visual"
    v109.Icon = "user"
    v107 = v107(v108, v109)
    v109 = v2296
    v108 = v2296.AddTab
    v110 = {}
    v110.Title = "Shop"
    v110.Icon = "shopping-cart"
    v108 = v108(v109, v110)
    v110 = v2296
    v109 = v2296.AddTab
    v111 = {}
    v112 = "Misc"
    v111.Title = v112
    v112 = "settings"
    v111.Icon = v112
    v109 = v109(v110, v111)
    v111 = v2347
    v110 = v2347.AddDropdown
    v112 = "Dropdown"
    v113 = {}
    v113.Title = "Farm Tool"
    local tbl17 = {}
    local str48 = "Melee"
    local str60 = "Sword"
    local str64 = "Blox Fruit"
    tbl17[1] = str48
    tbl17[2] = str60
    tbl17[3] = str64
    v113.Values = tbl17
    v113.Default = 1
    local function fn105(arg103)
        local v14941 = getgenv()
        v14941.FarmTool = arg103
    end
    v113.Callback = fn105
    v110(v111, v112, v113)
    v111 = v2347
    v110 = v2347.AddSection
    v112 = "Farm"
    v110(v111, v112)
    v111 = v2347
    v110 = v2347.AddToggle
    v112 = "Toggle"
    v113 = {}
    v113.Title = "Auto Farm Level"
    local function fn106(arg104)
        local v14943 = getgenv()
        v14943.AutoFarm_Level = arg104
        fn48()
    end
    v113.Callback = fn106
    v110(v111, v112, v113)
    v111 = v2347
    v110 = v2347.AddToggle
    v112 = "Toggle"
    v113 = {}
    v113.Title = "Auto Farm Nearest"
    local function fn107(arg105)
        local v14946 = getgenv()
        v14946.AutoFarmNearest = arg105
        fn77()
    end
    v113.Callback = fn107
    v110(v111, v112, v113)
    local v2605, v2607
    if v79 then
        v111 = v2347
        v110 = v2347.AddToggle
        v112 = "Toggle"
        v113 = {}
        v113.Title = "Auto Pirates Sea"
        function v2605(arg106)
            local v14949 = getgenv()
            v14949.AutoPiratesSea = arg106
            fn62()
        end
        v113.Callback = v2605
        v110(v111, v112, v113)
    elseif v78 then
        v111 = v2347
        v110 = v2347.AddToggle
        v112 = "Toggle"
        v113 = {}
        v113.Title = "Auto Factory"
        function v2607(arg107)
            local v14952 = getgenv()
            v14952.AutoFactory = arg107
            fn63()
        end
        v113.Callback = v2607
        v110(v111, v112, v113)
    end
    local v2609, v2611, v2613, v2615
    if v79 then
        v111 = v2347
        v110 = v2347.AddSection
        v112 = "Bone"
        v110(v111, v112)
        v111 = v2347
        v110 = v2347.AddToggle
        v112 = "Toggle"
        v113 = {}
        v113.Title = "Auto Farm Bone"
        function v2609(arg108)
            local v14955 = getgenv()
            v14955.AutoFarmBone = arg108
            fn61()
        end
        v113.Callback = v2609
        v110(v111, v112, v113)
        v111 = v2347
        v110 = v2347.AddToggle
        v112 = "Toggle"
        v113 = {}
        v113.Title = "Auto Hallow Scythe"
        function v2611(arg109)
            local v14958 = getgenv()
            v14958.AutoSoulReaper = arg109
            fn76()
        end
        v113.Callback = v2611
        v110(v111, v112, v113)
        v111 = v2347
        v110 = v2347.AddToggle
        v112 = "Toggle"
        v113 = {}
        v113.Title = "Auto Trade Bone"
        function v2613(arg110)
            local v14961 = getgenv()
            v14961.AutoTradeBone = arg110
            while true do
                if not getgenv().AutoTradeBone then
                    break
                end
                task.wait()
                fn5("Bones", "Buy", 1, 1)
            end
        end
        v113.Callback = v2613
        v110(v111, v112, v113)
    elseif v78 then
        v111 = v2347
        v110 = v2347.AddSection
        v112 = "Ectoplasm"
        v110(v111, v112)
        v111 = v2347
        v110 = v2347.AddToggle
        v112 = "Toggle"
        v113 = {}
        v113.Title = "Auto Farm Ectoplasm"
        function v2615(arg111)
            local v14973 = getgenv()
            v14973.AutoFarmEctoplasm = arg111
            fn59()
        end
        v113.Callback = v2615
        v110(v111, v112, v113)
    end
    v111 = v2347
    v110 = v2347.AddSection
    v112 = "Chest"
    v110(v111, v112)
    v111 = v2347
    v110 = v2347.AddToggle
    v112 = "Toggle"
    v113 = {}
    v113.Title = "Auto Farm Chest <Tween>"
    local function fn108(arg112)
        local v14976 = getgenv()
        v14976.AutoChestTween = arg112
        fn36()
    end
    v113.Callback = fn108
    v110(v111, v112, v113)
    v111 = v2347
    v110 = v2347.AddToggle
    v112 = "Toggle"
    v113 = {}
    v113.Title = "Auto Farm Chest <Bypass>"
    local function fn109(arg113)
        local v14979 = getgenv()
        v14979.AutoChestBypass = arg113
        fn35()
    end
    v113.Callback = fn109
    v110(v111, v112, v113)
    v111 = v2347
    v110 = v2347.AddSection
    v112 = "Bosses"
    v110(v111, v112)
    v110 = {}
    local v2618, v2619, v2620, v2688, v2689, v2690, v2758, v2759, v2760, v2833, v2834, v2835, v2904, v2905, v2906, v3056, v3057, v3058, v3128, v3129, v3130, v3155, v3156, v3157, v3187, v3188, v3205, v3216, v3223, v3230
    if v77 then
        v111 = {}
        v112 = "Greybeard"
        v113 = "The Saw"
        v2618 = "Saber Expert"
        v2688 = "The Gorilla King"
        v2758 = "Bobby"
        v2833 = "Yeti"
        v2904 = "Vice Admiral"
        v3056 = "Warden"
        v3128 = "Chief Warden"
        v3155 = "Swan"
        v3187 = "Magma Admiral"
        v3205 = "Fishman Lord"
        v3216 = "Wysper"
        v3223 = "Thunder God"
        v3230 = "Cyborg"
        v111[1] = v112
        v111[2] = v113
        v111[3] = v2618
        v111[4] = v2688
        v111[5] = v2758
        v111[6] = v2833
        v111[7] = v2904
        v111[8] = v3056
        v111[9] = v3128
        v111[10] = v3155
        v111[11] = v3187
        v111[12] = v3205
        v111[13] = v3216
        v111[14] = v3223
        v111[15] = v3230
        v110 = v111
    elseif v78 then
        v111 = {}
        v112 = "Darkbeard"
        v113 = "Cursed Captain"
        v2619 = "Order"
        v2689 = "Don Swan"
        v2759 = "Diamond"
        v2834 = "Jeremy"
        v2905 = "Fajita"
        v3057 = "Smoke Admiral"
        v3129 = "Awakened Ice Admiral"
        v3156 = "Tide Keeper"
        v111[1] = v112
        v111[2] = v113
        v111[3] = v2619
        v111[4] = v2689
        v111[5] = v2759
        v111[6] = v2834
        v111[7] = v2905
        v111[8] = v3057
        v111[9] = v3129
        v111[10] = v3156
        v110 = v111
    elseif v79 then
        v111 = {}
        v112 = "Dough King"
        v113 = "Cake Prince"
        v2620 = "rip_indra True Form"
        v2690 = "Soul Reaper"
        v2760 = "Stone"
        v2835 = "Island Empress"
        v2906 = "Kilo Admiral"
        v3058 = "Captain Elephant"
        v3130 = "Beautiful Pirate"
        v3157 = "Cake Queen"
        v3188 = "Longma"
        v111[1] = v112
        v111[2] = v113
        v111[3] = v2620
        v111[4] = v2690
        v111[5] = v2760
        v111[6] = v2835
        v111[7] = v2906
        v111[8] = v3058
        v111[9] = v3130
        v111[10] = v3157
        v111[11] = v3188
        v110 = v111
    end
    v112 = v2347
    v111 = v2347.AddDropdown
    v113 = "Dropdown"
    local tbl18 = {Title = "Boss List", Values = v110}
    local function fn110(arg114)
        local v14982 = getgenv()
        v14982.BossSelected = arg114
    end
    tbl18.Callback = fn110
    v111 = v111(v112, v113, tbl18)
    v113 = v2347
    v112 = v2347.AddToggle
    local str45 = "Toggle"
    local tbl20 = {Title = "Auto Farm Boss Selected"}
    local function fn112(arg115)
        local v14984 = getgenv()
        v14984.AutoFarmBossSelected = arg115
        fn75()
    end
    tbl20.Callback = fn112
    v112(v113, str45, tbl20)
    v113 = v2347
    v112 = v2347.AddToggle
    local str46 = "Toggle"
    local tbl21 = {Title = "Auto Farm All Boss"}
    local function fn113(arg116)
        local v14987 = getgenv()
        v14987.KillAllBosses = arg116
        fn74()
    end
    tbl21.Callback = fn113
    v112(v113, str46, tbl21)
    v113 = v2347
    v112 = v2347.AddToggle
    local str47 = "Toggle"
    local tbl22 = {Title = "Take Quest", Default = true}
    local function fn114(arg117)
        local v14990 = getgenv()
        v14990.TakeQuestBoss = arg117
    end
    tbl22.Callback = fn114
    v112(v113, str47, tbl22)
    v113 = v2347
    v112 = v2347.AddButton
    local tbl19 = {Title = "Server HOP"}
    local function fn111()
        fn22()
    end
    tbl19.Callback = fn111
    v112(v113, tbl19)
    v113 = v2347
    v112 = v2347.AddSection
    v112(v113, "Material")
    v112 = {}
    local v2622, v2623, v2624, v2693, v2694, v2695, v2765, v2766, v2767, v2836, v2837, v2838, v2907, v2908, v3059
    if v77 then
        v113 = {}
        v2622 = "Angel Wings"
        v2693 = "Leather + Scrap Metal"
        v2765 = "Magma Ore"
        v2836 = "Fish Tail"
        v113[1] = v2622
        v113[2] = v2693
        v113[3] = v2765
        v113[4] = v2836
        v112 = v113
    elseif v78 then
        v113 = {}
        v2623 = "Leather + Scrap Metal"
        v2694 = "Magma Ore"
        v2766 = "Mystic Droplet"
        v2837 = "Radiactive Material"
        v2907 = "Vampire Fang"
        v113[1] = v2623
        v113[2] = v2694
        v113[3] = v2766
        v113[4] = v2837
        v113[5] = v2907
        v112 = v113
    elseif v79 then
        v113 = {}
        v2624 = "Leather + Scrap Metal"
        v2695 = "Fish Tail"
        v2767 = "Gunpowder"
        v2838 = "Mini Tusk"
        v2908 = "Conjured Cocoa"
        v3059 = "Dragon Scale"
        v113[1] = v2624
        v113[2] = v2695
        v113[3] = v2767
        v113[4] = v2838
        v113[5] = v2908
        v113[6] = v3059
        v112 = v113
    end
    local v2625 = v2347
    v113 = v2347.AddDropdown
    local str49 = "Dropdown"
    local tbl23 = {Title = "Material List", Values = v112}
    local function fn115(arg118)
        local v14993 = getgenv()
        v14993.MaterialSelected = arg118
    end
    tbl23.Callback = fn115
    v113(v2625, str49, tbl23)
    local v2626 = v2347
    v113 = v2347.AddToggle
    local str50 = "Toggle"
    local tbl24 = {Title = "Auto Farm Material"}
    local function fn116(arg119)
        local v14995 = getgenv()
        v14995.AutoFarmMaterial = arg119
        fn60()
    end
    tbl24.Callback = fn116
    v113(v2626, str50, tbl24)
    local v2627 = v2347
    v113 = v2347.AddSection
    v113(v2627, "Mastery")
    local v2628 = v2347
    v113 = v2347.AddSlider
    local str51 = "Slider"
    local tbl25 = {
        Title = "Select Health",
        Min = 10,
        Max = 100,
        Default = 25,
        Rounding = 1,
    }
    local function fn117(arg120)
        local v14998 = getgenv()
        v14998.HealthSkill = arg120
    end
    tbl25.Callback = fn117
    v113(v2628, str51, tbl25)
    local v2629 = v2347
    v113 = v2347.AddDropdown
    local str52 = "Dropdown"
    local tbl26 = {
        Title = "Select Tool",
        Values = {"Blox Fruit"},
        Default = 1,
    }
    local function fn118(arg121)
        local v15000 = getgenv()
        v15000.ToolMastery = arg121
    end
    tbl26.Callback = fn118
    v113(v2629, str52, tbl26)
    local v2630 = v2347
    v113 = v2347.AddToggle
    local str53 = "Toggle"
    local tbl27 = {Title = "Auto Farm Mastery"}
    local function fn119(arg122)
        local v15002 = getgenv()
        v15002.AutoFarmMastery = arg122
        fn49()
    end
    tbl27.Callback = fn119
    v113(v2630, str53, tbl27)
    local v2631 = v2347
    v113 = v2347.AddSection
    v113(v2631, "Skill")
    local v2632 = v2347
    v113 = v2347.AddToggle
    local str54 = "Toggle"
    local tbl28 = {Title = "AimBot Skill Enemie", Default = true}
    local function fn120(arg123)
        local v15005 = getgenv()
        v15005.AimBotSkill = arg123
    end
    tbl28.Callback = fn120
    v113(v2632, str54, tbl28)
    local v2633 = v2347
    v113 = v2347.AddToggle
    local str55 = "Toggle"
    local tbl29 = {Title = "Skill Z", Default = true}
    local function fn121(arg124)
        local v15007 = getgenv()
        v15007.SkillZ = arg124
    end
    tbl29.Callback = fn121
    v113(v2633, str55, tbl29)
    local v2634 = v2347
    v113 = v2347.AddToggle
    local str56 = "Toggle"
    local tbl30 = {Title = "Skill X", Default = true}
    local function fn122(arg125)
        local v15009 = getgenv()
        v15009.SkillX = arg125
    end
    tbl30.Callback = fn122
    v113(v2634, str56, tbl30)
    local v2635 = v2347
    v113 = v2347.AddToggle
    local str57 = "Toggle"
    local tbl31 = {Title = "Skill C", Default = true}
    local function fn123(arg126)
        local v15011 = getgenv()
        v15011.SkillC = arg126
    end
    tbl31.Callback = fn123
    v113(v2635, str57, tbl31)
    local v2636 = v2347
    v113 = v2347.AddToggle
    local str58 = "Toggle"
    local tbl32 = {Title = "Skill V", Default = true}
    local function fn124(arg127)
        local v15013 = getgenv()
        v15013.SkillV = arg127
    end
    tbl32.Callback = fn124
    v113(v2636, str58, tbl32)
    local v2637 = v2347
    v113 = v2347.AddToggle
    local str59 = "Toggle"
    local tbl33 = {Title = "Skill F"}
    local function fn125(arg128)
        local v15015 = getgenv()
        v15015.SkillF = arg128
    end
    tbl33.Callback = fn125
    v113(v2637, str59, tbl33)
    local v2638 = v105
    v113 = v105.AddSection
    v113(v2638, "Fruits")
    v113 = {}
    local v2699 = v105
    local addToggle = v105.AddToggle
    local str61 = "Toggle"
    local tbl34 = {Title = "Auto Store Fruits"}
    local function fn126(arg129)
        local v15017 = getgenv()
        v15017.AutoStoreFruits = arg129
        local spawn43 = task.spawn
        local function fn255()
            local commF5 = ReplicatedStorage:WaitForChild("Remotes", 9000000000):WaitForChild("CommF_", 9000000000)
            local v15031, v15035, v15039, v15041, v15044, v15047, v15050, v15053
            while true do
                if not getgenv().AutoStoreFruits then
                    break
                end
                task.wait()
                v15031 = localPlayer.Backpack
                v15035 = localPlayer.Character
                if v15035 then
                    v15039, v15044, v15050 = pairs(v15035:GetChildren())
                    for _, v39 in v15039, v15044, v15050 do
                        if not table.find(v113, v39.Name) then
                            if v39:IsA("Tool") then
                                if v39:FindFirstChild("Fruit") then
                                    if commF5:InvokeServer("StoreFruit", fn3(v39.Name), v39) ~= true then
                                        table.insert(v113, v39.Name)
                                    end
                                end
                            end
                        end
                    end
                end
                v15041, v15047, v15053 = pairs(v15031:GetChildren())
                for _, v40 in v15041, v15047, v15053 do
                    if not table.find(v113, v40.Name) then
                        if v40:IsA("Tool") then
                            if v40:FindFirstChild("Fruit") then
                                if commF5:InvokeServer("StoreFruit", fn3(v40.Name), v40) ~= true then
                                    table.insert(v113, v40.Name)
                                end
                            end
                        end
                    end
                end
            end
        end
        spawn43(fn255)
    end
    tbl34.Callback = fn126
    addToggle(v2699, str61, tbl34)
    local v2700 = v105
    local addToggle2 = v105.AddToggle
    local str62 = "Toggle"
    local tbl35 = {Title = "Teleport to Fruits"}
    local function fn127(arg130)
        local v15119 = getgenv()
        v15119.TeleportToFruit = arg130
        local spawn44 = task.spawn
        local function fn256()
            while true do
                if not getgenv().TeleportToFruit then
                    break
                end
                task.wait()
                if not fn47("Fruit") then
                    fn6(fn33().CFrame)
                end
            end
        end
        spawn44(fn256)
    end
    tbl35.Callback = fn127
    addToggle2(v2700, str62, tbl35)
    local v2701 = v105
    local addToggle3 = v105.AddToggle
    local str63 = "Toggle"
    local tbl36 = {Title = "Auto random Fruit"}
    local function fn128(arg131)
        local v15134 = getgenv()
        v15134.AutoRandomFruit = arg131
        local spawn45 = task.spawn
        local function fn257()
            while true do
                if not getgenv().AutoRandomFruit then
                    break
                end
                task.wait(1)
                fn5("Cousin", "Buy")
            end
        end
        spawn45(fn257)
    end
    tbl36.Callback = fn128
    addToggle3(v2701, str63, tbl36)
    v105.AddSection(v105, "Raid")
    local v2643, v2707, v2709, v2710, v2711, v2712, v2772, v2775, v2776, v2777, v2778, v2855, v2856, v2857, v2858, v2859, v2913, v2914, v2915, v3062, v3064, v3066
    if v77 then
        v105.AddParagraph(v105, {Title = "Only on Sea 2 and 3"})
    elseif v78 or v79 then
        Raids_Chip = {}
        v2643 = require(ReplicatedStorage.Raids)
        v2707 = table.foreach
        v2772 = v2643.advancedRaids
        function v2855(arg132, arg133)
            table.insert(Raids_Chip, arg133)
        end
        v2707(v2772, v2855)
        v2709 = table.foreach
        v2775 = v2643.raids
        function v2856(arg134, arg135)
            table.insert(Raids_Chip, arg135)
        end
        v2709(v2775, v2856)
        v2776 = v105
        v2710 = v105.AddDropdown
        v2857 = "Dropdown"
        v2913 = {Title = "select the Raid", Values = Raids_Chip}
        function v3062(arg136)
            local v15154 = getgenv()
            v15154.SelectRaidChip = arg136
        end
        v2913.Callback = v3062
        v2710(v2776, v2857, v2913)
        v2777 = v105
        v2711 = v105.AddToggle
        v2858 = "Toggle"
        v2914 = {Title = "Auto Farm Raid"}
        function v3064(arg137)
            local v15156 = getgenv()
            v15156.AutoFarmRaid = arg137
            local spawn46 = task.spawn
            local function fn258()
                local locations = workspace:WaitForChild("_WorldOrigin", 9000000000):WaitForChild("Locations", 9000000000)
                local function fn87(arg138)
                    local v15206 = localPlayer
                    if v15206 then
                        v15206 = localPlayer.Character
                    end
                    local v1446
                    local v15208 = v15206 or v1446
                    if v15206 then
                        v15208 = v15206.PrimaryPart
                    end
                    local v15210, v15214, v15217
                    v15210, v15214, v15217 = pairs(locations:GetChildren())
                    for _, v41 in v15210, v15214, v15217 do
                        if v41 then
                            if v41.Name == arg138 and v15208 then
                                if (v41.Position - v15208.Position).Magnitude < 3000 then
                                    return v41
                                end
                            end
                        end
                    end
                end
                local spawn47 = task.spawn
                local function fn259()
                    while true do
                        if not getgenv().AutoFarmRaid then
                            break
                        end
                        task.wait(0.5)
                        if not fn47("Raid") then
                            fn5("Awakener", "Check")
                            fn5("Awakener", "Awaken")
                        end
                    end
                end
                spawn47(fn259)
                local spawn48 = task.spawn
                local function fn260()
                    local v15256, v15260, v15263, v15266, v15269
                    while true do
                        if not getgenv().AutoFarmRaid then
                            break
                        end
                        task.wait()
                        if not fn47("Raid") then
                            if localPlayer.PlayerGui.Main.Timer.Visible then
                                fn32()
                                v15256 = fn87("Island 1")
                                v15260 = fn87("Island 2")
                                v15263 = fn87("Island 3")
                                v15266 = fn87("Island 4")
                                v15269 = fn87("Island 5")
                                if v15269 then
                                    fn6(v15269.CFrame + Vector3.new(0, 70, 0))
                                elseif v15266 then
                                    fn6(v15266.CFrame + Vector3.new(0, 70, 0))
                                elseif v15263 then
                                    fn6(v15263.CFrame + Vector3.new(0, 70, 0))
                                elseif v15260 then
                                    fn6(v15260.CFrame + Vector3.new(0, 70, 0))
                                elseif v15256 then
                                    fn6(v15256.CFrame + Vector3.new(0, 70, 0))
                                end
                            end
                        end
                    end
                end
                spawn48(fn260)
                local v15195, v15205
                while true do
                    if not getgenv().AutoFarmRaid then
                        break
                    end
                    task.wait()
                    if not fn47("Raid") then
                        if not localPlayer.PlayerGui.Main.Timer.Visible then
                            if fn25("Special Microchip") then
                                if not fn87("Island 1") then
                                    if not fn87("Island 2") then
                                        if not fn87("Island 3") then
                                            if not fn87("Island 4") then
                                                if not fn87("Island 5") then
                                                    v15195 = pcall
                                                    function v15205()
                                                        local v15321, v15329
                                                        if v78 then
                                                            fireclickdetector(workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                                                            repeat
                                                                task.wait()
                                                                v15321 = fn87("Island 1")
                                                            until v15321
                                                            task.wait(1)
                                                        elseif v79 then
                                                            fireclickdetector(workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                                                            repeat
                                                                task.wait()
                                                                v15329 = fn87("Island 1")
                                                            until v15329
                                                            task.wait(1)
                                                        end
                                                    end
                                                    v15195(v15205)
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            spawn46(fn258)
            local v15159 = getgenv()
            v15159.AutoKillAura = arg137
            fn9()
        end
        v2914.Callback = v3064
        v2711(v2777, v2858, v2914)
        v2778 = v105
        v2712 = v105.AddToggle
        v2859 = "Toggle"
        v2915 = {Title = "Auto Buy Chip"}
        function v3066(arg139)
            local v15351 = getgenv()
            v15351.AutoBuyChip = arg139
            local spawn49 = task.spawn
            local function fn261()
                while true do
                    if not getgenv().AutoBuyChip then
                        break
                    end
                    task.wait()
                    if not fn25("Special Microchip") then
                        fn5("RaidsNpc", "Select", getgenv().SelectRaidChip)
                        task.wait(1)
                    end
                end
            end
            spawn49(fn261)
        end
        v2915.Callback = v3066
        v2712(v2778, v2859, v2915)
    end
    local v114, v115, v116, v117, v2780, v2782, v2784, v2786, v2788, v2789, v2790, v2792, v2794, v2795, v2797, v2798, v2800, v2802, v2804, v2806, v2807, v2808, v2813, v2816, v2860, v2861, v2862, v2863, v2864, v2865, v2866, v2867, v2868, v2869, v2870, v2871, v2872, v2873, v2874, v2875, v2876, v2877, v2880, v2882, v2889, v2917, v2919, v2921, v2923, v2925, v2927, v2929, v2931, v2933, v2935, v2937, v2939, v2941, v2943, v2945, v2947, v2949, v2951, v2953, v2954, v2955, v2958, v2965, v2970, v3067, v3068, v3069, v3071, v3072, v3076, v3132, v3134, v3136, v3137, v3138, v3140, v3141, v3143, v3159, v3161, v3162, v3163, v3164, v3165, v3167, v3168, v3190, v3192, v3194, v3195, v3196, v3198, v3207, v3209
    if v77 then
        v2359:AddSection("Second Sea")
        v2780 = "Toggle"
        v2860 = {Title = "Auto Second Sea"}
        function v2917(arg140)
            local v15371 = getgenv()
            v15371.AutoSecondSea = arg140
            fn64()
        end
        v2860.Callback = v2917
        v2359:AddToggle(v2780, v2860)
        v2359:AddSection("Saber")
        v2782 = "Toggle"
        v2861 = {Title = "Auto Unlock Saber < Level +200 >"}
        function v2919(arg141)
            local v15374 = getgenv()
            v15374.AutoUnlockSaber = arg141
            fn58()
        end
        v2861.Callback = v2919
        v2359:AddToggle(v2782, v2861)
        v2359:AddSection("God Boss")
        v2784 = "Toggle"
        v2862 = {Title = "Auto Pole V1"}
        function v2921(arg142)
            local v15377 = getgenv()
            v15377.AutoEnelBossPole = arg142
            fn56()
        end
        v2862.Callback = v2921
        v2359:AddToggle(v2784, v2862)
        v2359:AddSection("The Saw")
        v2786 = "Toggle"
        v2863 = {Title = "Auto Saw Sword"}
        function v2923(arg143)
            local v15380 = getgenv()
            v15380.AutoSawBoss = arg143
            fn54()
        end
        v2863.Callback = v2923
        v2359:AddToggle(v2786, v2863)
    elseif v78 then
        v2359:AddSection("Third Sea")
        v2788 = "Toggle"
        v2864 = {Title = "Auto Third Sea"}
        function v2925(arg144)
            local v15383 = getgenv()
            v15383.AutoThirdSea = arg144
            fn65()
        end
        v2864.Callback = v2925
        v2359:AddToggle(v2788, v2864)
        v2789 = "Toggle"
        v2865 = {Title = "Auto Kill Don Swan"}
        function v2927(arg145)
            local v15386 = getgenv()
            v15386.AutoKillDonSwan = arg145
            fn70()
        end
        v2865.Callback = v2927
        v2359:AddToggle(v2789, v2865)
        v2790 = "Toggle"
        v2866 = {Title = "Auto Don Swan Hop"}
        function v2929(arg146)
            local v15389 = getgenv()
            v15389.AutoDonSwanHop = arg146
        end
        v2866.Callback = v2929
        v2359:AddToggle(v2790, v2866)
        v2359:AddSection("Bartilo Quest")
        v2792 = "Toggle"
        v2867 = {Title = "Auto Bartilo Quest"}
        function v2931(arg147)
            local v15391 = getgenv()
            v15391.AutoBartiloQuest = arg147
            fn66()
        end
        v2867.Callback = v2931
        v2359:AddToggle(v2792, v2867)
        v2359:AddSection("Rengoku")
        v2794 = "Toggle"
        v2868 = {Title = "Auto Rengoku"}
        function v2933(arg148)
            local v15394 = getgenv()
            v15394.AutoRengoku = arg148
            fn79()
        end
        v2868.Callback = v2933
        v2359:AddToggle(v2794, v2868)
        v2795 = "Toggle"
        v2869 = {Title = "Auto Rengoku Hop"}
        function v2935(arg149)
            local v15397 = getgenv()
            v15397.AutoRengokuHop = arg149
        end
        v2869.Callback = v2935
        v2359:AddToggle(v2795, v2869)
        v2359:AddSection("Legendary Sword")
        v2797 = "Toggle"
        v2870 = {Title = "Auto Buy Legendary Sword"}
        function v2937(arg150)
            local v15399 = getgenv()
            v15399.AutoLegendarySword = arg150
            local spawn50 = task.spawn
            local function fn262()
                while true do
                    if not getgenv().AutoLegendarySword then
                        break
                    end
                    task.wait()
                    fn5("LegendarySwordDealer", "1")
                    fn5("LegendarySwordDealer", "2")
                    fn5("LegendarySwordDealer", "3")
                end
            end
            spawn50(fn262)
        end
        v2870.Callback = v2937
        v2359:AddToggle(v2797, v2870)
        v2798 = "Toggle"
        v2871 = {Title = "Auto Buy True Triple Katana"}
        function v2939(arg151)
            local v15416 = getgenv()
            v15416.AutoTTK = arg151
            local spawn51 = task.spawn
            local function fn263()
                while true do
                    if not getgenv().AutoTTK then
                        break
                    end
                    task.wait()
                    fn5("MysteriousMan", "1")
                    fn5("MysteriousMan", "2")
                end
            end
            spawn51(fn263)
        end
        v2871.Callback = v2939
        v2359:AddToggle(v2798, v2871)
        v2359:AddSection("Race")
        v2800 = "Toggle"
        v2872 = {Title = "Auto Evo Race V2"}
        function v2941(arg152)
            local v15430 = getgenv()
            v15430.AutoRaceV2 = arg152
            fn78()
        end
        v2872.Callback = v2941
        v2359:AddToggle(v2800, v2872)
        v2359:AddSection("Cursed Captain")
        v2802 = "Toggle"
        v2873 = {Title = "Auto Cursed Captain"}
        function v2943(arg153)
            local v15433 = getgenv()
            v15433.AutoCursedCaptain = arg153
            fn71()
        end
        v2873.Callback = v2943
        v2359:AddToggle(v2802, v2873)
        v2359:AddSection("Dark Beard")
        v2804 = "Toggle"
        v2874 = {Title = "Auto Dark Beard"}
        function v2945(arg154)
            local v15436 = getgenv()
            v15436.AutoDarkbeard = arg154
            fn69()
        end
        v2874.Callback = v2945
        v2359:AddToggle(v2804, v2874)
        v2359:AddSection("Law")
        v2806 = "Toggle"
        v2875 = {Title = "Auto Buy Law Chip"}
        function v2947(arg155)
            local v15439 = getgenv()
            v15439.AutoBuyLawChip = arg155
            local spawn52 = task.spawn
            local function fn264()
                while true do
                    if not getgenv().AutoBuyLawChip then
                        break
                    end
                    task.wait()
                    if not fn23("Order") then
                        if not fn25("Microchip") then
                            fn5("BlackbeardReward", "Microchip", "2")
                        end
                    end
                end
            end
            spawn52(fn264)
        end
        v2875.Callback = v2947
        v2359:AddToggle(v2806, v2875)
        v2807 = "Toggle"
        v2876 = {Title = "Auto Start Law Raid"}
        function v2949(arg156)
            local v15457 = getgenv()
            v15457.AutoStartLawRaid = arg156
            local spawn53 = task.spawn
            local function fn265()
                local v15468, v15471
                while true do
                    if not getgenv().AutoStartLawRaid then
                        break
                    end
                    task.wait()
                    if not fn23("Order") then
                        if fn25("Microchip") then
                            v15468 = pcall
                            function v15471()
                                fireclickdetector(workspace.Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                            end
                            v15468(v15471)
                        end
                    end
                end
            end
            spawn53(fn265)
        end
        v2876.Callback = v2949
        v2359:AddToggle(v2807, v2876)
        v2808 = "Toggle"
        v2877 = {Title = "Auto Kill Law Boss"}
        function v2951(arg157)
            local v15481 = getgenv()
            v15481.AutoKillLawBoss = arg157
            fn68()
        end
        v2877.Callback = v2951
        v2359:AddToggle(v2808, v2877)
    elseif v79 then
        v2359:AddSection("Elite Hunter")
        v114 = v2359:AddParagraph({Title = "Elite Stats : Not Spawn"})
        v115 = v2359:AddParagraph({Title = "Elite Hunter progress : 0"})
        v2813 = task.spawn
        function v2880()
            local v15487
            while true do
                if not task.wait() then
                    break
                end
                v15487 = fn23("Urban")
                local skipped15 = false
                if not v15487 then
                    if not fn23("Deandre") then
                        if not fn23("Diablo") then
                            skipped15 = true
                        end
                    end
                end
                if not skipped15 then
                    v114:Set("Elite Stats : Spawned")
                    continue
                end
                v114:Set("Elite Stats : Not Spawn")
            end
        end
        v2813(v2880)
        if localPlayer.UserId ~= 2764978820 then
            v2816 = task.spawn
            function v2882()
                while true do
                    if not task.wait(1) then
                        break
                    end
                    v115:Set("Elite Hunter progress : " .. fn5("EliteHunter", "Progress"))
                end
            end
            v2816(v2882)
        end
        v2953 = "Toggle"
        v3067 = {Title = "Auto Elite Hunter"}
        function v3132(arg158)
            local v15517 = getgenv()
            v15517.AutoEliteHunter = arg158
            fn53()
        end
        v3067.Callback = v3132
        v2359:AddToggle(v2953, v3067)
        v2954 = "Toggle"
        v3068 = {Title = "Auto Collect Yama < Need 30 >"}
        function v3134(arg159)
            local v15520 = getgenv()
            v15520.AutoCollectYama = arg159
            local spawn54 = task.spawn
            local function fn266()
                local v15527, v15528
                while true do
                    if not getgenv().AutoCollectYama then
                        break
                    end
                    task.wait()
                    v15527 = pcall
                    function v15528()
                        if 30 <= fn5("EliteHunter", "Progress") then
                            fireclickdetector(workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector)
                        end
                    end
                    v15527(v15528)
                end
            end
            spawn54(fn266)
        end
        v3068.Callback = v3134
        v2359:AddToggle(v2954, v3068)
        v2955 = "Toggle"
        v3069 = {Title = "Auto Elite Hunter Hop"}
        function v3136(arg160)
            local v15541 = getgenv()
            v15541.AutoEliteHunterHop = arg160
        end
        v3069.Callback = v3136
        v2359:AddToggle(v2955, v3069)
        v2359:AddSection("Tushita")
        v116 = v2359:AddParagraph({Title = "Rip Indra Stats : Not Spawn"})
        v2889 = task.spawn
        function v2958()
            while true do
                if not task.wait(0.5) then
                    break
                end
                if fn23("rip_indra True Form") then
                    v116:Set("Rip Indra Stats : Spawned")
                else
                    v116:Set("Rip Indra Stats : Not Spawn")
                end
            end
        end
        v2889(v2958)
        v3071 = "Toggle"
        v3137 = {Title = "Auto Tushita"}
        function v3159(arg161)
            local v15558 = getgenv()
            v15558.AutoTushita = arg161
            local spawn55 = task.spawn
            local function fn267()
                local turtle = workspace:WaitForChild("Map", 9000000000):WaitForChild("Turtle", 9000000000)
                local questTorches = turtle:WaitForChild("QuestTorches", 9000000000)
                local enabled21 = false
                local enabled22 = false
                local enabled23 = false
                local enabled24 = false
                local enabled25 = false
                local v1550, v1551, v1552, v15583, v15588, v15590, v15594, v15595, v15601, v15602, v15607, v15610, v15615, v15624, v15626, v15633, v15636, v15638, v15642, v15644, v15648, v15653, v15669, v15671, v15675, v15677, v15683, v15688, v15690, v15693, v15694, v15696, v15702, v15703, v15705, v15706, v15707, v15708, v15709, v15713, v15714, v15715, v15716, v15717, v15718, v15719, v15720, v15724, v15725, v15726, v15727, v15732, v15743, v15744, v15754, v15755, v15756, v15764
                while true do
                    if not getgenv().AutoTushita then
                        break
                    end
                    task.wait()
                    if not turtle:FindFirstChild("TushitaGate") then
                        v15583 = enemies:FindFirstChild("Longma")
                        if v15583 then
                            if v15583:FindFirstChild("HumanoidRootPart") then
                                fn6(v15583.HumanoidRootPart.CFrame + getgenv().FarmPos)
                                v15601 = pcall
                                function v15633()
                                    fn21()
                                    fn24()
                                    fn32()
                                end
                                v15601(v15633)
                            end
                        else
                            v15602 = fn6
                            v15636, v15669, v15688, v15702, v15714, v1550, v1551, v1552, v15743, v15755 = CFrame.new(-10218, 333, -9444)
                            v15602(v15636, v15669, v15688, v15702, v15714, v1550, v1551, v1552, v15743, v15755)
                        end
                    elseif fn23("rip_indra True Form") then
                        if not fn25("Holy Torch") then
                            v15588 = fn6
                            v15607, v15638, v15671, v15690, v15703, v15715, v1550, v1551, v1552, v15744, v15756 = CFrame.new(5152, 142, 912)
                            v15588(v15607, v15638, v15671, v15690, v15703, v15715, v1550, v1551, v1552, v15744, v15756)
                        else
                            v15590 = questTorches:FindFirstChild("Torch1")
                            v15610 = questTorches:FindFirstChild("Torch2")
                            v15642 = questTorches:FindFirstChild("Torch3")
                            v15675 = questTorches:FindFirstChild("Torch4")
                            v15705 = questTorches
                            v15693 = questTorches.FindFirstChild
                            v15716 = "Torch5"
                            v15694 = v15693(v15705, v15716)
                            v15706 = v15590 or v15705
                            if v15590 then
                                v15716 = v15590
                                v15707 = v15590.FindFirstChild
                                v1550 = "Particles"
                                v15706 = v15707(v15716, v1550)
                                if v15706 then
                                    v15708 = v15590.Particles
                                    v15716 = v15708
                                    v15709 = v15708.FindFirstChild
                                    v1550 = "PointLight"
                                    v15706 = v15709(v15716, v1550)
                                    if v15706 then
                                        v15706 = not v15590.Particles.PointLight.Enabled
                                    end
                                end
                            end
                            v15717 = v15610 or v15716
                            if v15610 then
                                v1550 = v15610
                                v15718 = v15610.FindFirstChild
                                v1551 = "Particles"
                                v15717 = v15718(v1550, v1551)
                                if v15717 then
                                    v15719 = v15610.Particles
                                    v1550 = v15719
                                    v15720 = v15719.FindFirstChild
                                    v1551 = "PointLight"
                                    v15717 = v15720(v1550, v1551)
                                    if v15717 then
                                        v15717 = not v15610.Particles.PointLight.Enabled
                                    end
                                end
                            end
                            v1550 = v15642 or v1550
                            if v15642 then
                                v1551 = v15642
                                v15725 = v15642.FindFirstChild
                                v1552 = "Particles"
                                v1550 = v15725(v1551, v1552)
                                if v1550 then
                                    v15726 = v15642.Particles
                                    v1551 = v15726
                                    v15727 = v15726.FindFirstChild
                                    v1552 = "PointLight"
                                    v1550 = v15727(v1551, v1552)
                                    if v1550 then
                                        v1550 = not v15642.Particles.PointLight.Enabled
                                    end
                                end
                            end
                            v1551 = v15675 or v1551
                            if v15675 then
                                v1552 = v15675
                                v1551 = v15675.FindFirstChild(v1552, "Particles")
                                if v1551 then
                                    v15732 = v15675.Particles
                                    v1552 = v15732
                                    v1551 = v15732.FindFirstChild(v1552, "PointLight")
                                    if v1551 then
                                        v1551 = not v15675.Particles.PointLight.Enabled
                                    end
                                end
                            end
                            v1552 = v15694 or v1552
                            if v15694 then
                                v1552 = v15694:FindFirstChild("Particles")
                                if v1552 then
                                    v1552 = v15694.Particles:FindFirstChild("PointLight")
                                    if v1552 then
                                        v1552 = not v15694.Particles.PointLight.Enabled
                                    end
                                end
                            end
                            if not enabled21 and v15706 then
                                fn6(v15590.CFrame)
                            elseif not enabled22 and v15717 then
                                fn6(v15610.CFrame)
                                enabled21 = true
                            elseif not enabled23 and v1550 then
                                fn6(v15642.CFrame)
                                enabled22 = true
                            elseif not enabled24 and v1551 then
                                fn6(v15675.CFrame)
                                enabled23 = true
                            elseif not enabled25 and v1552 then
                                fn6(v15694.CFrame)
                                enabled24 = true
                            else
                                enabled25 = true
                            end
                        end
                    else
                        if fn25("God's Chalice") then
                            fn28("God's Chalice")
                            v15594 = fn6
                            v15615, v15644, v15677, v15696, v15713, v15724, v1550, v1551, v1552, v15754, v15764 = CFrame.new(-5561, 314, -2663)
                            v15594(v15615, v15644, v15677, v15696, v15713, v15724, v1550, v1551, v1552, v15754, v15764)
                        else
                            v15595 = "EliteBossVerify"
                            fn40()
                            if fn41("Diablo") then
                                v15595 = "Diablo"
                            elseif fn41("Deandre") then
                                v15595 = "Deandre"
                            else
                                if fn41("Urban") then
                                    v15595 = "Urban"
                                else
                                    v15624 = task.spawn
                                    function v15648()
                                        fn5("EliteHunter")
                                    end
                                    v15624(v15648)
                                end
                            end
                            v15626 = fn29({v15595})
                            if v15626 then
                                if v15626:FindFirstChild("HumanoidRootPart") then
                                    fn6(v15626.HumanoidRootPart.CFrame + getgenv().FarmPos)
                                    v15653 = pcall
                                    function v15683()
                                        fn21()
                                        fn24()
                                        fn32()
                                    end
                                    v15653(v15683)
                                end
                            elseif not fn23("Deandre") then
                                if not fn23("Diablo") then
                                    if not fn23("Urban") then
                                        if getgenv().AutoTushitaHop then
                                            fn22()
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            spawn55(fn267)
        end
        v3137.Callback = v3159
        v2359:AddToggle(v3071, v3137)
        v3072 = "Toggle"
        v3138 = {Title = "Auto Tushita Hop"}
        function v3161(arg162)
            local v15774 = getgenv()
            v15774.AutoTushitaHop = arg162
        end
        v3138.Callback = v3161
        v2359:AddToggle(v3072, v3138)
        v2359:AddSection("Cake Prince + Dough King")
        v117 = v2359:AddParagraph({Title = "Stats : 0"})
        if localPlayer.UserId ~= 2764978820 then
            v2965 = task.spawn
            function v3076()
                local v15787
                while true do
                    if not task.wait(1) then
                        break
                    end
                    if fn23("Dough King") then
                        v117:Set("Stats : Spawned | Dough King")
                    elseif fn23("Cake Prince") then
                        v117:Set("Stats : Spawned | Cake Prince")
                    else
                        v15787 = fn5("CakePrinceSpawner", true)
                        v117:Set("Stats : " .. string.gsub(tostring(v15787), "%D", ""))
                    end
                end
            end
            v2965(v3076)
        end
        v3140 = "Toggle"
        v3162 = {Title = "Auto Cake Prince"}
        function v3190(arg163)
            local v15811 = getgenv()
            v15811.AutoCakePrince = arg163
            fn72()
        end
        v3162.Callback = v3190
        v2359:AddToggle(v3140, v3162)
        v3141 = "Toggle"
        v3163 = {Title = "Auto Dough King"}
        function v3192(arg164)
            local v15814 = getgenv()
            v15814.AutoDoughKing = arg164
            fn73()
        end
        v3163.Callback = v3192
        v2359:AddToggle(v3141, v3163)
        v2359:AddSection("Rip Indra")
        v3143 = "Toggle"
        v3164 = {Title = "Auto Active Button Haki Color"}
        function v3194(arg165)
            local v15817 = getgenv()
            v15817.RipIndraLegendaryHaki = arg165
            local spawn56 = task.spawn
            local function fn268()
                local v15825
                while true do
                    if not getgenv().RipIndraLegendaryHaki then
                        break
                    end
                    task.wait()
                    v15825 = localPlayer
                    if v15825 then
                        v15825 = localPlayer.Character
                        if v15825 then
                            v15825 = localPlayer.Character.PrimaryPart
                        end
                    end
                    if (v15825.Position - Vector3.new(-5415, 314, -2212)).Magnitude < 5 then
                        fn5("activateColor", "Pure Red")
                    elseif (v15825.Position - Vector3.new(-4972, 336, -3720)).Magnitude < 5 then
                        fn5("activateColor", "Snow White")
                    else
                        if (v15825.Position - Vector3.new(-5420, 1089, -2667)).Magnitude < 5 then
                            fn5("activateColor", "Winter Sky")
                        end
                    end
                end
            end
            spawn56(fn268)
            local spawn57 = task.spawn
            local function fn269()
                while true do
                    if not getgenv().RipIndraLegendaryHaki then
                        break
                    end
                    task.wait()
                    if not getgenv().AutoFarm_Level then
                        if not getgenv().AutoFarmBone then
                            if not getgenv().AutoCakePrince then
                                if fn46() then
                                    fn6(fn46().CFrame)
                                elseif not fn46() then
                                    if not getgenv().AutoRipIndra then
                                        fn6(CFrame.new(-5119, 315, -2964))
                                    end
                                end
                            end
                        end
                    end
                end
            end
            spawn57(fn269)
        end
        v3164.Callback = v3194
        v2970 = v2359:AddToggle(v3143, v3164)
        v3165 = "Toggle"
        v3195 = {Title = "Auto Rip Indra"}
        function v3207(arg166)
            local v15901 = getgenv()
            v15901.AutoRipIndra = arg166
            fn67()
        end
        v3195.Callback = v3207
        v2359:AddToggle(v3165, v3195)
        v2359:AddSection("Musketeer Hat")
        v3167 = "Toggle"
        v3196 = {Title = "Auto Musketeer Hat"}
        function v3209(arg167)
            local v15904 = getgenv()
            v15904.AutoMusketeerHat = arg167
            fn55()
        end
        v3196.Callback = v3209
        v2359:AddToggle(v3167, v3196)
        v3168 = {Title = "Server HOP"}
        function v3198()
            fn22()
        end
        v3168.Callback = v3198
        v2359:AddButton(v3168)
    end
    local v2972, v2974, v2976, v2978, v2980, v2982
    if v78 or v79 then
        v115 = v2359
        v114 = v2359.AddSection
        v116 = "Fighting Style"
        v114(v115, v116)
        v115 = v2359
        v114 = v2359.AddToggle
        v116 = "Toggle"
        v117 = {}
        v117.Title = "Auto Death Step"
        function v2972(arg168)
            local v15908 = getgenv()
            v15908.AutoDeathStep = arg168
            local spawn58 = task.spawn
            local function fn270()
                local num21 = 0
                local enabled26 = false
                local function fn271()
                    local huge7 = math.huge
                    local v15995 = nil
                    local v15996 = localPlayer
                    if v15996 then
                        v15996 = localPlayer.Character
                        if v15996 then
                            v15996 = localPlayer.Character.PrimaryPart
                        end
                    end
                    local v16001, v16005, v16008
                    v16001, v16005, v16008 = pairs(enemies:GetChildren())
                    local v16012
                    for _, v42 in v16001, v16005, v16008 do
                        v16012 = v42.Name
                        if v16012 ~= "Reborn Skeleton" then
                            v16012 = v42.Name
                            if v16012 ~= "Living Zombie" then
                                v16012 = v42.Name
                                if v16012 ~= "Demonic Soul" then
                                    v16012 = v42.Name
                                    if v16012 ~= "Posessed Mummy" then
                                        v16012 = v42.Name
                                    end
                                end
                            end
                        end
                        if v16012 == "Water Fighter" and v15996 and v42 then
                            if v42:FindFirstChild("HumanoidRootPart") then
                                if huge7 >= (v15996.Position - v42.HumanoidRootPart.Position).Magnitude then
                                    huge7 = (v15996.Position - v42.HumanoidRootPart.Position).Magnitude
                                    v15995 = v42
                                end
                            end
                        end
                    end
                    return v15995
                end
                local v15916, v15924, v15933, v15947, v15955
                while true do
                    local v1611 = getgenv
                    v1611 = v1611()
                    v1611 = v1611.AutoDeathStep
                    if not v1611 then
                        break
                    end
                    v1611 = task
                    v1611 = v1611.wait
                    v1611()
                    v1611 = fn25
                    v1611 = v1611("Black Leg")
                    if v1611 then
                        v1611 = fn27
                        v1611 = v1611("Black Leg")
                        num21 = v1611
                    end
                    if 400 <= num21 then
                        v1611 = v79
                        if v1611 then
                            v1611 = fn5
                            v1611("TravelDressrosa")
                        end
                    end
                    if enabled26 then
                        v1611 = fn5
                        v1611("BuyDeathStep")
                    end
                    v1611 = fn25
                    v1611 = v1611("Death Step")
                    if v1611 then
                        v1611 = fn28
                        v1611("Death Step")
                    elseif 400 <= num21 then
                        v1611 = enemies
                        v15916 = v1611
                        v1611 = v1611.FindFirstChild
                        v1611 = v1611(v15916, "Awakened Ice Admiral")
                        if fn25("Library Key") then
                            enabled26 = true
                            fn28("Library Key")
                            fn6(CFrame.new(6373, 293, -6839))
                        elseif v1611 then
                            if v1611.FindFirstChild(v1611, "HumanoidRootPart") then
                                fn6(v1611.HumanoidRootPart.CFrame + getgenv().FarmPos)
                                v15924 = pcall
                                function v15947()
                                    fn21()
                                    fn24()
                                    fn32()
                                end
                                v15924(v15947)
                            end
                        else
                            fn6(CFrame.new(6473, 297, -6944))
                        end
                    else
                        v1611 = fn25
                        v1611 = v1611("Black Leg")
                        if not v1611 and num21 < 400 then
                            v1611 = fn5
                            v1611("BuyBlackLeg")
                        else
                            v1611 = fn25
                            v1611 = v1611("Black Leg")
                            if v1611 and num21 < 400 then
                                v1611 = fn28
                                v1611("Black Leg")
                                v1611 = fn271
                                v1611 = v1611()
                                if v1611 then
                                    if v1611.FindFirstChild(v1611, "HumanoidRootPart") then
                                        fn6(v1611.HumanoidRootPart.CFrame + getgenv().FarmPos)
                                        v15933 = pcall
                                        function v15955()
                                            fn21()
                                            fn24()
                                            fn42(v1611)
                                        end
                                        v15933(v15955)
                                    end
                                elseif v79 then
                                    fn6(CFrame.new(-9513, 164, 5786))
                                else
                                    fn6(CFrame.new(-3350, 282, -10527))
                                end
                            end
                        end
                    end
                end
            end
            spawn58(fn270)
        end
        v117.Callback = v2972
        v114(v115, v116, v117)
        v115 = v2359
        v114 = v2359.AddToggle
        v116 = "Toggle"
        v117 = {}
        v117.Title = "Auto Electric Claw <BETA>"
        function v2974(arg169)
            local v16036 = getgenv()
            v16036.AutoElectricClaw = arg169
            local spawn59 = task.spawn
            local function fn272()
                local num22 = 0
                local num23 = 0
                local function fn273()
                    local huge8 = math.huge
                    local v16083 = nil
                    local v16084 = localPlayer
                    if v16084 then
                        v16084 = localPlayer.Character
                        if v16084 then
                            v16084 = localPlayer.Character.PrimaryPart
                        end
                    end
                    local v16089, v16093, v16096
                    v16089, v16093, v16096 = pairs(enemies:GetChildren())
                    local v16100
                    for _, v43 in v16089, v16093, v16096 do
                        v16100 = v43.Name
                        if v16100 ~= "Reborn Skeleton" then
                            v16100 = v43.Name
                            if v16100 ~= "Living Zombie" then
                                v16100 = v43.Name
                                if v16100 ~= "Demonic Soul" then
                                    v16100 = v43.Name
                                    if v16100 ~= "Posessed Mummy" then
                                        v16100 = v43.Name
                                    end
                                end
                            end
                        end
                        if v16100 == "Water Fighter" and v16084 and v43 then
                            if v43:FindFirstChild("HumanoidRootPart") then
                                if huge8 >= (v16084.Position - v43.HumanoidRootPart.Position).Magnitude then
                                    huge8 = (v16084.Position - v43.HumanoidRootPart.Position).Magnitude
                                    v16083 = v43
                                end
                            end
                        end
                    end
                    return v16083
                end
                local v16051, v16059
                while true do
                    local v1638 = getgenv
                    v1638 = v1638()
                    v1638 = v1638.AutoElectricClaw
                    if not v1638 then
                        break
                    end
                    v1638 = task
                    v1638 = v1638.wait
                    v1638()
                    v1638 = fn25
                    v1638 = v1638("Electro")
                    if v1638 then
                        v1638 = fn27
                        v1638 = v1638("Electro")
                        num22 = v1638
                    else
                        v1638 = fn25
                        v1638 = v1638("Electric Claw")
                        if v1638 then
                            v1638 = fn27
                            v1638 = v1638("Electric Claw")
                            num23 = v1638
                        end
                    end
                    if num22 < 400 then
                        v1638 = fn25
                        v1638 = v1638("Electro")
                        if not v1638 then
                            v1638 = fn5
                            v1638("BuyElectro")
                        else
                            v1638 = fn28
                            v1638("Electro")
                        end
                    elseif num23 < 600 then
                        v1638 = fn25
                        v1638 = v1638("Electric Claw")
                        if not v1638 then
                            v1638 = fn5
                            v1638("BuyElectricClaw")
                        else
                            v1638 = fn28
                            v1638("Electric Claw")
                        end
                    end
                    v1638 = fn273
                    v1638 = v1638()
                    if v1638 then
                        if v1638.FindFirstChild(v1638, "HumanoidRootPart") then
                            fn6(v1638.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v16051 = pcall
                            function v16059()
                                fn21()
                                fn24()
                                fn42(v1638)
                            end
                            v16051(v16059)
                        end
                    elseif v79 then
                        fn6(CFrame.new(-9513, 164, 5786))
                    else
                        fn6(CFrame.new(-3350, 282, -10527))
                    end
                end
            end
            spawn59(fn272)
        end
        v117.Callback = v2974
        v114(v115, v116, v117)
        v115 = v2359
        v114 = v2359.AddToggle
        v116 = "Toggle"
        v117 = {}
        v117.Title = "Auto Sharkman Karate"
        function v2976(arg170)
            local v16121 = getgenv()
            v16121.AutoSharkmanKarate = arg170
            local spawn60 = task.spawn
            local function fn274()
                local num24 = 0
                local num25 = 0
                local num16 = 0
                local spawn61 = task.spawn
                local function fn275()
                    while true do
                        if not getgenv().AutoSharkmanKarate then
                            break
                        end
                        task.wait()
                        num16 = fn5("BuySharkmanKarate", true)
                    end
                end
                spawn61(fn275)
                local v16123, v16132, v16136, v16137, v16141, v16145, v16146, v16151, v16155, v16156, v16162, v16163, v16170, v16171, v16177, v16178, v16185, v16193, v16201, v16206, v16210, v16214, v16219, v16224, v16229, v16235, v16241, v16247, v16251, v16255, v16259, v16262, v16265, v16268, v16270, v16272, v16274
                while true do
                    local v1658 = getgenv
                    v1658 = v1658()
                    v1658 = v1658.AutoSharkmanKarate
                    if not v1658 then
                        break
                    end
                    v1658 = task
                    v1658 = v1658.wait
                    v1658()
                    v1658 = fn25
                    v1658 = v1658("Fishman Karate")
                    if v1658 then
                        v1658 = fn27
                        v1658 = v1658("Fishman Karate")
                        num24 = v1658
                    else
                        v1658 = fn25
                        v1658 = v1658("Sharkman Karate")
                        if v1658 then
                            v1658 = fn27
                            v1658 = v1658("Sharkman Karate")
                            v16123 = v1658
                        end
                    end
                    if num16 == 1 then
                        v1658 = fn5
                        v1658("BuySharkmanKarate")
                    else
                        v1658 = fn25
                        v1658 = v1658("Sharkman Karate")
                        if v1658 then
                            v1658 = fn28
                            v1658("Sharkman Karate")
                            v1658 = enemies
                            v16132 = v1658
                            v1658 = v1658.FindFirstChild
                            v1658 = v1658(v16132, "Water Fighter")
                            if v1658 then
                                if v1658.FindFirstChild(v1658, "HumanoidRootPart") then
                                    fn6(v1658.HumanoidRootPart.CFrame + getgenv().FarmPos)
                                    v16136 = pcall
                                    function v16162()
                                        fn21()
                                        fn24()
                                        fn42(v1658, true)
                                    end
                                    v16136(v16162)
                                end
                            else
                                v16137 = fn11
                                v16163 = {}
                                v16185 = CFrame.new(-3339, 290, -10412)
                                v16206 = CFrame.new(-3518, 290, -10419)
                                v16219 = CFrame.new(-3536, 290, -10607)
                                v16235, v16251, v16262, v16270 = CFrame.new(-3345, 280, -10667)
                                v16163[1] = v16185
                                v16163[2] = v16206
                                v16163[3] = v16219
                                v16163[4] = v16235
                                v16163[5] = v16251
                                v16163[6] = v16262
                                v16163[7] = v16270
                                v16137(v16163, "Water Fighter")
                            end
                        else
                            v1658 = fn25
                            v1658 = v1658("Water Key")
                            if v1658 and 400 <= num24 then
                                v1658 = fn5
                                v1658("BuySharkmanKarate", true)
                            else
                                v1658 = fn25
                                v1658 = v1658("Water Key")
                                if not v1658 and 400 <= num24 then
                                    v1658 = enemies
                                    v16141 = v1658
                                    v1658 = v1658.FindFirstChild
                                    v1658 = v1658(v16141, "Water Fighter")
                                    if v1658 then
                                        if v1658.FindFirstChild(v1658, "HumanoidRootPart") then
                                            fn6(v1658.HumanoidRootPart.CFrame + getgenv().FarmPos)
                                            v16145 = pcall
                                            function v16170()
                                                fn21()
                                                fn24()
                                                fn32()
                                                fn42(v1658, true)
                                            end
                                            v16145(v16170)
                                        end
                                    else
                                        v16146 = fn11
                                        v16171 = {}
                                        v16193 = CFrame.new(-3339, 290, -10412)
                                        v16210 = CFrame.new(-3518, 290, -10419)
                                        v16224 = CFrame.new(-3536, 290, -10607)
                                        v16241, v16255, v16265, v16272 = CFrame.new(-3345, 280, -10667)
                                        v16171[1] = v16193
                                        v16171[2] = v16210
                                        v16171[3] = v16224
                                        v16171[4] = v16241
                                        v16171[5] = v16255
                                        v16171[6] = v16265
                                        v16171[7] = v16272
                                        v16146(v16171, "Water Fighter")
                                    end
                                else
                                    v1658 = fn25
                                    v1658 = v1658("Fishman Karate")
                                    if not v1658 and num24 < 400 then
                                        v1658 = fn5
                                        v1658("BuyFishmanKarate")
                                    else
                                        v1658 = fn25
                                        v1658 = v1658("Fishman Karate")
                                        if v1658 and num24 < 400 then
                                            v1658 = fn28
                                            v1658("Fishman Karate")
                                            v1658 = enemies
                                            v16151 = v1658
                                            v1658 = v1658.FindFirstChild
                                            v1658 = v1658(v16151, "Water Fighter")
                                            if v1658 then
                                                if v1658.FindFirstChild(v1658, "HumanoidRootPart") then
                                                    fn6(v1658.HumanoidRootPart.CFrame + getgenv().FarmPos)
                                                    v16155 = pcall
                                                    function v16177()
                                                        fn21()
                                                        fn24()
                                                        fn42(v1658, true)
                                                    end
                                                    v16155(v16177)
                                                end
                                            else
                                                v16156 = fn11
                                                v16178 = {}
                                                v16201 = CFrame.new(-3339, 290, -10412)
                                                v16214 = CFrame.new(-3518, 290, -10419)
                                                v16229 = CFrame.new(-3536, 290, -10607)
                                                v16247, v16259, v16268, v16274 = CFrame.new(-3345, 280, -10667)
                                                v16178[1] = v16201
                                                v16178[2] = v16214
                                                v16178[3] = v16229
                                                v16178[4] = v16247
                                                v16178[5] = v16259
                                                v16178[6] = v16268
                                                v16178[7] = v16274
                                                v16156(v16178, "Water Fighter")
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            spawn60(fn274)
        end
        v117.Callback = v2976
        v114(v115, v116, v117)
        v115 = v2359
        v114 = v2359.AddToggle
        v116 = "Toggle"
        v117 = {}
        v117.Title = "Auto Dragon Talon"
        function v2978(arg171)
            local v16301 = getgenv()
            v16301.AutoDragonTalon = arg171
            local spawn62 = task.spawn
            local function fn276()
                local num26 = 0
                local enabled7 = false
                local function fn277()
                    local huge9 = math.huge
                    local v16354 = nil
                    local v16355 = localPlayer
                    if v16355 then
                        v16355 = localPlayer.Character
                        if v16355 then
                            v16355 = localPlayer.Character.PrimaryPart
                        end
                    end
                    local v16360, v16364, v16367
                    v16360, v16364, v16367 = pairs(enemies:GetChildren())
                    local v16371
                    for _, v44 in v16360, v16364, v16367 do
                        v16371 = v44.Name
                        if v16371 ~= "Reborn Skeleton" then
                            v16371 = v44.Name
                            if v16371 ~= "Living Zombie" then
                                v16371 = v44.Name
                                if v16371 ~= "Demonic Soul" then
                                    v16371 = v44.Name
                                    if v16371 ~= "Posessed Mummy" then
                                        v16371 = v44.Name
                                    end
                                end
                            end
                        end
                        if v16371 == "Water Fighter" and v16355 and v44 then
                            if v44:FindFirstChild("HumanoidRootPart") then
                                if huge9 >= (v16355.Position - v44.HumanoidRootPart.Position).Magnitude then
                                    huge9 = (v16355.Position - v44.HumanoidRootPart.Position).Magnitude
                                    v16354 = v44
                                end
                            end
                        end
                    end
                    return v16354
                end
                local spawn63 = task.spawn
                local function fn278()
                    while true do
                        if not getgenv().AutoDragonTalon then
                            break
                        end
                        task.wait()
                        if not fn25("Fire Essence") then
                            fn5("Bones", "Buy", 1, 1)
                        else
                            fn5("BuyDragonTalon", true)
                            enabled7 = true
                        end
                    end
                end
                spawn63(fn278)
                local v16318, v16328
                while true do
                    local v1694 = getgenv
                    v1694 = v1694()
                    v1694 = v1694.AutoDragonTalon
                    if not v1694 then
                        break
                    end
                    v1694 = task
                    v1694 = v1694.wait
                    v1694()
                    v1694 = fn25
                    v1694 = v1694("Dragon Claw")
                    if v1694 then
                        v1694 = fn27
                        v1694 = v1694("Dragon Claw")
                        num26 = v1694
                    end
                    if 400 <= num26 then
                        v1694 = v78
                        if v1694 then
                            v1694 = fn5
                            v1694("TravelZou")
                        end
                    end
                    local skipped16 = false
                    if enabled7 and 400 <= num26 then
                        v1694 = fn5
                        v1694("BuyDragonTalon")
                    else
                        v1694 = fn25
                        v1694 = v1694("Dragon Claw")
                        local skipped17 = false
                        if v1694 or not (num26 < 400) then
                            if enabled7 then
                                skipped17 = true
                            end
                            if not skipped17 then
                                v1694 = fn25
                                v1694 = v1694("Dragon Claw")
                                if v1694 then
                                    skipped17 = true
                                end
                            end
                        end
                        if not skipped17 then
                            v1694 = fn5
                            v1694("BlackbeardReward", "DragonClaw", "1")
                            v1694 = fn5
                            v1694("BlackbeardReward", "DragonClaw", "2")
                            skipped16 = true
                        end
                        if not skipped16 then
                            v1694 = fn25
                            v1694 = v1694("Dragon Claw")
                            if not v1694 or not (num26 < 400) then
                                if enabled7 then
                                    skipped16 = true
                                end
                                if not skipped16 then
                                    v1694 = fn25
                                    v1694 = v1694("Dragon Claw")
                                    if not v1694 then
                                        skipped16 = true
                                    end
                                end
                            end
                            if not skipped16 then
                                v1694 = fn28
                                v1694("Dragon Claw")
                                v1694 = fn277
                                v1694 = v1694()
                                if v1694 then
                                    if v1694.FindFirstChild(v1694, "HumanoidRootPart") then
                                        fn6(v1694.HumanoidRootPart.CFrame + getgenv().FarmPos)
                                        v16318 = pcall
                                        function v16328()
                                            fn21()
                                            fn24()
                                            fn42(v1694)
                                        end
                                        v16318(v16328)
                                    end
                                elseif v79 then
                                    fn6(CFrame.new(-9513, 164, 5786))
                                else
                                    fn6(CFrame.new(-3350, 282, -10527))
                                end
                            end
                        end
                    end
                end
            end
            spawn62(fn276)
        end
        v117.Callback = v2978
        v114(v115, v116, v117)
        v115 = v2359
        v114 = v2359.AddToggle
        v116 = "Toggle"
        v117 = {}
        v117.Title = "Auto Superhuman"
        function v2980(arg172)
            local v16409 = getgenv()
            v16409.AutoSuperhuman = arg172
            local spawn64 = task.spawn
            local function fn279()
                local num27 = 0
                local num28 = 0
                local num29 = 0
                local num30 = 0
                local num31 = 0
                local function fn280()
                    local huge10 = math.huge
                    local v16476 = nil
                    local v16477 = localPlayer
                    if v16477 then
                        v16477 = localPlayer.Character
                        if v16477 then
                            v16477 = localPlayer.Character.PrimaryPart
                        end
                    end
                    local v16482, v16486, v16489
                    v16482, v16486, v16489 = pairs(enemies:GetChildren())
                    local v16493
                    for _, v45 in v16482, v16486, v16489 do
                        v16493 = v45.Name
                        if v16493 ~= "Reborn Skeleton" then
                            v16493 = v45.Name
                            if v16493 ~= "Living Zombie" then
                                v16493 = v45.Name
                                if v16493 ~= "Demonic Soul" then
                                    v16493 = v45.Name
                                    if v16493 ~= "Posessed Mummy" then
                                        v16493 = v45.Name
                                    end
                                end
                            end
                        end
                        if v16493 == "Water Fighter" and v16477 and v45 then
                            if v45:FindFirstChild("HumanoidRootPart") then
                                if huge10 >= (v16477.Position - v45.HumanoidRootPart.Position).Magnitude then
                                    huge10 = (v16477.Position - v45.HumanoidRootPart.Position).Magnitude
                                    v16476 = v45
                                end
                            end
                        end
                    end
                    return v16476
                end
                local v16440, v16450
                while true do
                    local v1722 = getgenv
                    v1722 = v1722()
                    v1722 = v1722.AutoSuperhuman
                    if not v1722 then
                        break
                    end
                    v1722 = task
                    v1722 = v1722.wait
                    v1722()
                    v1722 = fn25
                    v1722 = v1722("Black Leg")
                    if v1722 then
                        v1722 = fn27
                        v1722 = v1722("Black Leg")
                        num27 = v1722
                    else
                        v1722 = fn25
                        v1722 = v1722("Electro")
                        if v1722 then
                            v1722 = fn27
                            v1722 = v1722("Electro")
                            num28 = v1722
                        else
                            v1722 = fn25
                            v1722 = v1722("Fishman Karate")
                            if v1722 then
                                v1722 = fn27
                                v1722 = v1722("Fishman Karate")
                                num29 = v1722
                            else
                                v1722 = fn25
                                v1722 = v1722("Dragon Claw")
                                if v1722 then
                                    v1722 = fn27
                                    v1722 = v1722("Dragon Claw")
                                    num30 = v1722
                                else
                                    v1722 = fn25
                                    v1722 = v1722("Superhuman")
                                    if v1722 then
                                        v1722 = fn27
                                        v1722 = v1722("Superhuman")
                                        num31 = v1722
                                    end
                                end
                            end
                        end
                    end
                    if num27 < 300 then
                        v1722 = fn25
                        v1722 = v1722("Black Leg")
                        if not v1722 then
                            v1722 = fn5
                            v1722("BuyBlackLeg")
                        else
                            v1722 = fn28
                            v1722("Black Leg")
                        end
                    elseif num28 < 300 then
                        v1722 = fn25
                        v1722 = v1722("Electro")
                        if not v1722 then
                            v1722 = fn5
                            v1722("BuyElectro")
                        else
                            v1722 = fn28
                            v1722("Electro")
                        end
                    elseif num29 < 300 then
                        v1722 = fn25
                        v1722 = v1722("Fishman Karate")
                        if not v1722 then
                            v1722 = fn5
                            v1722("BuyFishmanKarate")
                        else
                            v1722 = fn28
                            v1722("Fishman Karate")
                        end
                    elseif num30 < 300 then
                        v1722 = fn25
                        v1722 = v1722("Dragon Claw")
                        if not v1722 then
                            v1722 = fn5
                            v1722("BlackbeardReward", "DragonClaw", "1")
                            v1722 = fn5
                            v1722("BlackbeardReward", "DragonClaw", "2")
                        else
                            v1722 = fn28
                            v1722("Dragon Claw")
                        end
                    elseif num31 < 600 then
                        v1722 = fn25
                        v1722 = v1722("Superhuman")
                        if not v1722 then
                            v1722 = fn5
                            v1722("BuySuperhuman")
                        else
                            v1722 = fn28
                            v1722("Superhuman")
                        end
                    end
                    v1722 = fn280
                    v1722 = v1722()
                    if v1722 then
                        if v1722.FindFirstChild(v1722, "HumanoidRootPart") then
                            fn6(v1722.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v16440 = pcall
                            function v16450()
                                fn21()
                                fn24()
                                fn42(v1722)
                            end
                            v16440(v16450)
                        end
                    elseif v79 then
                        fn6(CFrame.new(-9513, 164, 5786))
                    else
                        fn6(CFrame.new(-3350, 282, -10527))
                    end
                end
            end
            spawn64(fn279)
        end
        v117.Callback = v2980
        v114(v115, v116, v117)
        v115 = v2359
        v114 = v2359.AddToggle
        v116 = "Toggle"
        v117 = {}
        v117.Title = "Auto God Human"
        function v2982(arg173)
            local v16514 = getgenv()
            v16514.AutoGodHuman = arg173
            local spawn65 = task.spawn
            local function fn281()
                local function fn282()
                    local huge11 = math.huge
                    local v16597 = nil
                    local v16598 = localPlayer
                    if v16598 then
                        v16598 = localPlayer.Character
                        if v16598 then
                            v16598 = localPlayer.Character.PrimaryPart
                        end
                    end
                    local v16603, v16607, v16610
                    v16603, v16607, v16610 = pairs(enemies:GetChildren())
                    local v16614
                    for _, v46 in v16603, v16607, v16610 do
                        v16614 = v46.Name
                        if v16614 ~= "Reborn Skeleton" then
                            v16614 = v46.Name
                            if v16614 ~= "Living Zombie" then
                                v16614 = v46.Name
                                if v16614 ~= "Demonic Soul" then
                                    v16614 = v46.Name
                                end
                            end
                        end
                        if v16614 == "Posessed Mummy" and v16598 and v46 then
                            if v46:FindFirstChild("HumanoidRootPart") then
                                if huge11 >= (v16598.Position - v46.HumanoidRootPart.Position).Magnitude then
                                    huge11 = (v16598.Position - v46.HumanoidRootPart.Position).Magnitude
                                    v16597 = v46
                                end
                            end
                        end
                    end
                    return v16597
                end
                local num32 = 0
                local num33 = 0
                local num34 = 0
                local num35 = 0
                local num36 = 0
                local num37 = 0
                local num38 = 0
                local num39 = 0
                local num40 = 0
                local num41 = 0
                local v16516, v16572, v16580
                while true do
                    local v1755 = getgenv
                    v1755 = v1755()
                    v1755 = v1755.AutoGodHuman
                    if not v1755 then
                        break
                    end
                    v1755 = task
                    v1755 = v1755.wait
                    v1755()
                    v1755 = v78
                    if v1755 then
                        v1755 = fn5
                        v1755("TravelZou")
                    end
                    v1755 = fn25
                    v1755 = v1755("Black Leg")
                    if v1755 then
                        v1755 = fn27
                        v1755 = v1755("Black Leg")
                        num32 = v1755
                    else
                        v1755 = fn25
                        v1755 = v1755("Electro")
                        if v1755 then
                            v1755 = fn27
                            v1755 = v1755("Electro")
                            num33 = v1755
                        else
                            v1755 = fn25
                            v1755 = v1755("Fishman Karate")
                            if v1755 then
                                v1755 = fn27
                                v1755 = v1755("Fishman Karate")
                                num34 = v1755
                            else
                                v1755 = fn25
                                v1755 = v1755("Dragon Claw")
                                if v1755 then
                                    v1755 = fn27
                                    v1755 = v1755("Dragon Claw")
                                    num35 = v1755
                                else
                                    v1755 = fn25
                                    v1755 = v1755("Superhuman")
                                    if v1755 then
                                        v1755 = fn27
                                        v1755 = v1755("Superhuman")
                                        num36 = v1755
                                    else
                                        v1755 = fn25
                                        v1755 = v1755("Death Step")
                                        if v1755 then
                                            v1755 = fn27
                                            v1755 = v1755("Death Step")
                                            num40 = v1755
                                        else
                                            v1755 = fn25
                                            v1755 = v1755("Electric Claw")
                                            if v1755 then
                                                v1755 = fn27
                                                v1755 = v1755("Electric Claw")
                                                num37 = v1755
                                            else
                                                v1755 = fn25
                                                v1755 = v1755("Sharkman Karate")
                                                if v1755 then
                                                    v1755 = fn27
                                                    v1755 = v1755("Sharkman Karate")
                                                    num39 = v1755
                                                else
                                                    v1755 = fn25
                                                    v1755 = v1755("Dragon Talon")
                                                    if v1755 then
                                                        v1755 = fn27
                                                        v1755 = v1755("Dragon Talon")
                                                        num38 = v1755
                                                    else
                                                        v1755 = fn25
                                                        v1755 = v1755("Godhuman")
                                                        if v1755 then
                                                            v1755 = fn27
                                                            v1755 = v1755("Godhuman")
                                                            v16516 = v1755
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    if num32 < 400 then
                        v1755 = fn25
                        v1755 = v1755("Black Leg")
                        if not v1755 then
                            v1755 = fn34
                            v1755("BuyBlackLeg")
                        else
                            v1755 = fn28
                            v1755("Black Leg")
                        end
                    elseif num33 < 400 then
                        v1755 = fn25
                        v1755 = v1755("Electro")
                        if not v1755 then
                            v1755 = fn34
                            v1755("BuyElectro")
                        else
                            v1755 = fn28
                            v1755("Electro")
                        end
                    elseif num34 < 400 then
                        v1755 = fn25
                        v1755 = v1755("Fishman Karate")
                        if not v1755 then
                            v1755 = fn34
                            v1755("BuyFishmanKarate")
                        else
                            v1755 = fn28
                            v1755("Fishman Karate")
                        end
                    elseif num35 < 400 then
                        v1755 = fn25
                        v1755 = v1755("Dragon Claw")
                        if not v1755 then
                            v1755 = fn5
                            v1755("BlackbeardReward", "DragonClaw", "1")
                            v1755 = fn5
                            v1755("BlackbeardReward", "DragonClaw", "2")
                        else
                            v1755 = fn28
                            v1755("Dragon Claw")
                        end
                    elseif num36 < 400 then
                        v1755 = fn25
                        v1755 = v1755("Superhuman")
                        if not v1755 then
                            v1755 = fn34
                            v1755("BuySuperhuman")
                        else
                            v1755 = fn28
                            v1755("Superhuman")
                        end
                    elseif num40 < 400 then
                        v1755 = fn25
                        v1755 = v1755("Death Step")
                        if not v1755 then
                            v1755 = fn34
                            v1755("BuyDeathStep")
                        else
                            v1755 = fn28
                            v1755("Death Step")
                        end
                    elseif num37 < 400 then
                        v1755 = fn25
                        v1755 = v1755("Electric Claw")
                        if not v1755 then
                            v1755 = fn34
                            v1755("BuyElectricClaw")
                        else
                            v1755 = fn28
                            v1755("Electric Claw")
                        end
                    elseif num39 < 400 then
                        v1755 = fn25
                        v1755 = v1755("Sharkman Karate")
                        if not v1755 then
                            v1755 = fn34
                            v1755("BuySharkmanKarate")
                        else
                            v1755 = fn28
                            v1755("Sharkman Karate")
                        end
                    elseif num38 < 400 then
                        v1755 = fn25
                        v1755 = v1755("Dragon Talon")
                        if not v1755 then
                            v1755 = fn34
                            v1755("BuyDragonTalon")
                        else
                            v1755 = fn28
                            v1755("Dragon Talon")
                        end
                    else
                        v1755 = fn25
                        v1755 = v1755("Godhuman")
                        if not v1755 then
                            v1755 = fn34
                            v1755("BuyGodhuman")
                        else
                            v1755 = fn28
                            v1755("Godhuman")
                        end
                    end
                    v1755 = fn282
                    v1755 = v1755()
                    if v1755 then
                        if v1755.FindFirstChild(v1755, "HumanoidRootPart") then
                            fn6(v1755.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v16572 = pcall
                            function v16580()
                                fn21()
                                fn24()
                                fn42(v1755)
                            end
                            v16572(v16580)
                        end
                    else
                        fn6(CFrame.new(-9513, 164, 5786))
                    end
                end
            end
            spawn65(fn281)
        end
        v117.Callback = v2982
        v114(v115, v116, v117)
    end
    local v2988, v2990
    if v79 then
        v115 = v2359
        v114 = v2359.AddSection
        v116 = "Auto Mastery All"
        v114(v115, v116)
        v115 = v2359
        v114 = v2359.AddSlider
        v116 = "Slider"
        v117 = {}
        v117.Title = "Select Mastery"
        v117.Min = 100
        v117.Max = 600
        v117.Default = 600
        v117.Rounding = 10
        function v2988(arg174)
            local v16635 = getgenv()
            v16635.AutoMasteryValue = arg174
        end
        v117.Callback = v2988
        v114(v115, v116, v117)
        v115 = v2359
        v114 = v2359.AddToggle
        v116 = "Toggle"
        v117 = {}
        v117.Title = "Auto Mastery All Fighting Style"
        function v2990(arg175)
            local v16637 = getgenv()
            v16637.AutoMasteryFightingStyle = arg175
            local spawn66 = task.spawn
            local function fn283()
                local function fn284()
                    local huge12 = math.huge
                    local v16731 = nil
                    local v16732 = localPlayer
                    if v16732 then
                        v16732 = localPlayer.Character
                        if v16732 then
                            v16732 = localPlayer.Character.PrimaryPart
                        end
                    end
                    local v16737, v16741, v16744
                    v16737, v16741, v16744 = pairs(enemies:GetChildren())
                    local v16748
                    for _, v47 in v16737, v16741, v16744 do
                        v16748 = v47.Name
                        if v16748 ~= "Reborn Skeleton" then
                            v16748 = v47.Name
                            if v16748 ~= "Living Zombie" then
                                v16748 = v47.Name
                                if v16748 ~= "Demonic Soul" then
                                    v16748 = v47.Name
                                end
                            end
                        end
                        if v16748 == "Posessed Mummy" and v16732 and v47 then
                            if v47:FindFirstChild("HumanoidRootPart") then
                                if huge12 >= (v16732.Position - v47.HumanoidRootPart.Position).Magnitude then
                                    huge12 = (v16732.Position - v47.HumanoidRootPart.Position).Magnitude
                                    v16731 = v47
                                end
                            end
                        end
                    end
                    return v16731
                end
                local num42 = 0
                local num43 = 0
                local num44 = 0
                local num45 = 0
                local num46 = 0
                local num47 = 0
                local num48 = 0
                local num49 = 0
                local num50 = 0
                local num51 = 0
                local num52 = 0
                local v16646, v16706, v16714
                while true do
                    if not getgenv().AutoMasteryFightingStyle then
                        break
                    end
                    task.wait()
                    v16646 = getgenv().AutoMasteryValue
                    local v1791 = fn25
                    v1791 = v1791("Black Leg")
                    if v1791 then
                        v1791 = fn27
                        v1791 = v1791("Black Leg")
                        num42 = v1791
                    else
                        v1791 = fn25
                        v1791 = v1791("Electro")
                        if v1791 then
                            v1791 = fn27
                            v1791 = v1791("Electro")
                            num43 = v1791
                        else
                            v1791 = fn25
                            v1791 = v1791("Fishman Karate")
                            if v1791 then
                                v1791 = fn27
                                v1791 = v1791("Fishman Karate")
                                num44 = v1791
                            else
                                v1791 = fn25
                                v1791 = v1791("Dragon Claw")
                                if v1791 then
                                    v1791 = fn27
                                    v1791 = v1791("Dragon Claw")
                                    num45 = v1791
                                else
                                    v1791 = fn25
                                    v1791 = v1791("Superhuman")
                                    if v1791 then
                                        v1791 = fn27
                                        v1791 = v1791("Superhuman")
                                        num46 = v1791
                                    else
                                        v1791 = fn25
                                        v1791 = v1791("Death Step")
                                        if v1791 then
                                            v1791 = fn27
                                            v1791 = v1791("Death Step")
                                            num50 = v1791
                                        else
                                            v1791 = fn25
                                            v1791 = v1791("Electric Claw")
                                            if v1791 then
                                                v1791 = fn27
                                                v1791 = v1791("Electric Claw")
                                                num47 = v1791
                                            else
                                                v1791 = fn25
                                                v1791 = v1791("Sharkman Karate")
                                                if v1791 then
                                                    v1791 = fn27
                                                    v1791 = v1791("Sharkman Karate")
                                                    num49 = v1791
                                                else
                                                    v1791 = fn25
                                                    v1791 = v1791("Dragon Talon")
                                                    if v1791 then
                                                        v1791 = fn27
                                                        v1791 = v1791("Dragon Talon")
                                                        num48 = v1791
                                                    else
                                                        v1791 = fn25
                                                        v1791 = v1791("Godhuman")
                                                        if v1791 then
                                                            v1791 = fn27
                                                            v1791 = v1791("Godhuman")
                                                            num51 = v1791
                                                        else
                                                            v1791 = fn25
                                                            v1791 = v1791("Sanguine Art")
                                                            if v1791 then
                                                                v1791 = fn27
                                                                v1791 = v1791("Sanguine Art")
                                                                num52 = v1791
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    if v16646 > num42 then
                        v1791 = fn25
                        v1791 = v1791("Black Leg")
                        if not v1791 then
                            v1791 = fn34
                            v1791("BuyBlackLeg")
                        else
                            v1791 = fn28
                            v1791("Black Leg")
                        end
                    elseif v16646 > num43 then
                        v1791 = fn25
                        v1791 = v1791("Electro")
                        if not v1791 then
                            v1791 = fn34
                            v1791("BuyElectro")
                        else
                            v1791 = fn28
                            v1791("Electro")
                        end
                    elseif v16646 > num44 then
                        v1791 = fn25
                        v1791 = v1791("Fishman Karate")
                        if not v1791 then
                            v1791 = fn34
                            v1791("BuyFishmanKarate")
                        else
                            v1791 = fn28
                            v1791("Fishman Karate")
                        end
                    elseif v16646 > num45 then
                        v1791 = fn25
                        v1791 = v1791("Dragon Claw")
                        if not v1791 then
                            v1791 = fn5
                            v1791("BlackbeardReward", "DragonClaw", "1")
                            v1791 = fn5
                            v1791("BlackbeardReward", "DragonClaw", "2")
                        else
                            v1791 = fn28
                            v1791("Dragon Claw")
                        end
                    elseif v16646 > num46 then
                        v1791 = fn25
                        v1791 = v1791("Superhuman")
                        if not v1791 then
                            v1791 = fn34
                            v1791("BuySuperhuman")
                        else
                            v1791 = fn28
                            v1791("Superhuman")
                        end
                    elseif v16646 > num50 then
                        v1791 = fn25
                        v1791 = v1791("Death Step")
                        if not v1791 then
                            v1791 = fn34
                            v1791("BuyDeathStep")
                        else
                            v1791 = fn28
                            v1791("Death Step")
                        end
                    elseif v16646 > num47 then
                        v1791 = fn25
                        v1791 = v1791("Electric Claw")
                        if not v1791 then
                            v1791 = fn34
                            v1791("BuyElectricClaw")
                        else
                            v1791 = fn28
                            v1791("Electric Claw")
                        end
                    elseif v16646 > num49 then
                        v1791 = fn25
                        v1791 = v1791("Sharkman Karate")
                        if not v1791 then
                            v1791 = fn34
                            v1791("BuySharkmanKarate")
                        else
                            v1791 = fn28
                            v1791("Sharkman Karate")
                        end
                    elseif v16646 > num48 then
                        v1791 = fn25
                        v1791 = v1791("Dragon Talon")
                        if not v1791 then
                            v1791 = fn34
                            v1791("BuyDragonTalon")
                        else
                            v1791 = fn28
                            v1791("Dragon Talon")
                        end
                    elseif v16646 > num51 then
                        v1791 = fn25
                        v1791 = v1791("Godhuman")
                        if not v1791 then
                            v1791 = fn34
                            v1791("BuyGodhuman")
                        else
                            v1791 = fn28
                            v1791("Godhuman")
                        end
                    elseif v16646 > num52 then
                        v1791 = fn25
                        v1791 = v1791("Sanguine Art")
                        if not v1791 then
                            v1791 = fn34
                            v1791("BuySanguineArt")
                        else
                            v1791 = fn28
                            v1791("Sanguine Art")
                        end
                    end
                    v1791 = fn284
                    v1791 = v1791()
                    if v1791 then
                        if v1791.FindFirstChild(v1791, "HumanoidRootPart") then
                            fn6(v1791.HumanoidRootPart.CFrame + getgenv().FarmPos)
                            v16706 = pcall
                            function v16714()
                                fn21()
                                fn24()
                                fn42(v1791)
                            end
                            v16706(v16714)
                        end
                    else
                        fn6(CFrame.new(-9513, 164, 5786))
                    end
                end
            end
            spawn66(fn283)
        end
        v117.Callback = v2990
        v114(v115, v116, v117)
    end
    v115 = v2359
    v114 = v2359.AddSection
    v116 = "Haki Color"
    v114(v115, v116)
    v115 = v2359
    v114 = v2359.AddToggle
    v116 = "Toggle"
    v117 = {}
    v117.Title = "Auto Buy Haki Color"
    local function fn129(arg176)
        local v16769 = getgenv()
        v16769.AutoBuyHakiColor = arg176
        local spawn67 = task.spawn
        local function fn285()
            local v16776, v16778
            while true do
                if not getgenv().AutoBuyHakiColor then
                    break
                end
                task.wait(0.5)
                v16776 = pcall
                function v16778()
                    fn5("ColorsDealer", "1")
                    fn5("ColorsDealer", "2")
                end
                v16776(v16778)
            end
        end
        spawn67(fn285)
    end
    v117.Callback = fn129
    v114(v115, v116, v117)
    local v2993, v2995
    if v79 then
        v115 = v2359
        v114 = v2359.AddToggle
        v116 = "Toggle"
        v117 = {}
        v117.Title = "Auto Rainbow Haki"
        function v2993(arg177)
            local v16786 = getgenv()
            v16786.AutoRainbowHaki = arg177
            fn57()
        end
        v117.Callback = v2993
        v114(v115, v116, v117)
        v115 = v2359
        v114 = v2359.AddToggle
        v116 = "Toggle"
        v117 = {}
        v117.Title = "Auto Rainbow Haki HOP"
        function v2995(arg178)
            local v16789 = getgenv()
            v16789.RainbowHakiHop = arg178
        end
        v117.Callback = v2995
        v114(v115, v116, v117)
    end
    v115 = v2422
    v114 = v2422.AddSection
    v116 = "Teleport to Sea"
    v114(v115, v116)
    v115 = v2422
    v114 = v2422.AddButton
    v116 = {}
    v117 = "Teleport to Sea 1"
    v116.Title = v117
    function v117()
        fn5("TravelMain")
    end
    v116.Callback = v117
    v114(v115, v116)
    v115 = v2422
    v114 = v2422.AddButton
    v116 = {}
    v117 = "Teleport to Sea 2"
    v116.Title = v117
    function v117()
        fn5("TravelDressrosa")
    end
    v116.Callback = v117
    v114(v115, v116)
    v115 = v2422
    v114 = v2422.AddButton
    v116 = {}
    v117 = "Teleport to Sea 3"
    v116.Title = v117
    function v117()
        fn5("TravelZou")
    end
    v116.Callback = v117
    v114(v115, v116)
    v115 = v2422
    v114 = v2422.AddSection
    v116 = "Islands"
    v114(v115, v116)
    v114 = {}
    local v2996, v2997, v2998, v3085, v3086, v3087, v3148, v3149, v3150, v3169, v3170, v3171, v3199, v3200, v3201, v3210, v3211, v3212, v3217, v3218, v3219, v3224, v3225, v3226, v3231, v3232, v3233, v3237, v3238, v3239, v3243, v3244, v3248, v3252, v3256
    if v77 then
        v115 = {}
        v116 = "WindMill"
        v117 = "Marine"
        v2996 = "Middle Town"
        v3085 = "Jungle"
        v3148 = "Pirate Village"
        v3169 = "Desert"
        v3199 = "Snow Island"
        v3210 = "MarineFord"
        v3217 = "Colosseum"
        v3224 = "Sky Island 1"
        v3231 = "Sky Island 2"
        v3237 = "Sky Island 3"
        v3243 = "Prison"
        v3248 = "Magma Village"
        v3252 = "Under Water Island"
        v3256 = "Fountain City"
        v115[1] = v116
        v115[2] = v117
        v115[3] = v2996
        v115[4] = v3085
        v115[5] = v3148
        v115[6] = v3169
        v115[7] = v3199
        v115[8] = v3210
        v115[9] = v3217
        v115[10] = v3224
        v115[11] = v3231
        v115[12] = v3237
        v115[13] = v3243
        v115[14] = v3248
        v115[15] = v3252
        v115[16] = v3256
        v114 = v115
    elseif v78 then
        v115 = {}
        v116 = "The Cafe"
        v117 = "Frist Spot"
        v2997 = "Dark Area"
        v3086 = "Flamingo Mansion"
        v3149 = "Flamingo Room"
        v3170 = "Green Zone"
        v3200 = "Zombie Island"
        v3211 = "Two Snow Mountain"
        v3218 = "Punk Hazard"
        v3225 = "Cursed Ship"
        v3232 = "Ice Castle"
        v3238 = "Forgotten Island"
        v3244 = "Ussop Island"
        v115[1] = v116
        v115[2] = v117
        v115[3] = v2997
        v115[4] = v3086
        v115[5] = v3149
        v115[6] = v3170
        v115[7] = v3200
        v115[8] = v3211
        v115[9] = v3218
        v115[10] = v3225
        v115[11] = v3232
        v115[12] = v3238
        v115[13] = v3244
        v114 = v115
    elseif v79 then
        v115 = {}
        v116 = "Mansion"
        v117 = "Port Town"
        v2998 = "Great Tree"
        v3087 = "Castle On The Sea"
        v3150 = "Hydra Island"
        v3171 = "Floating Turtle"
        v3201 = "Haunted Castle"
        v3212 = "Ice Cream Island"
        v3219 = "Peanut Island"
        v3226 = "Cake Island"
        v3233 = "Candy Cane Island"
        v3239 = "Tiki Outpost"
        v115[1] = v116
        v115[2] = v117
        v115[3] = v2998
        v115[4] = v3087
        v115[5] = v3150
        v115[6] = v3171
        v115[7] = v3201
        v115[8] = v3212
        v115[9] = v3219
        v115[10] = v3226
        v115[11] = v3233
        v115[12] = v3239
        v114 = v115
    end
    v116 = v2422
    v115 = v2422.AddDropdown
    v117 = "Dropdown"
    local tbl37 = {Title = "Select Island", Values = v114}
    local function fn173(arg179)
        local v16797 = getgenv()
        v16797.TeleportIslandSelect = arg179
    end
    tbl37.Callback = fn173
    v115(v116, v117, tbl37)
    v116 = v2422
    v115 = v2422.AddToggle
    v117 = "Toggle"
    local tbl38 = {Title = "Teleport To Island"}
    local function fn174(arg180)
        local v16799 = getgenv()
        v16799.TeleportToIsland = arg180
        local spawn68 = task.spawn
        local function fn286()
            local v16808
            while true do
                if not getgenv().TeleportToIsland then
                    break
                end
                task.wait()
                v16808 = getgenv().TeleportIslandSelect
                if v77 then
                    if v16808 == "Middle Town" then
                        fn6(CFrame.new(-688, 15, 1585))
                    elseif v16808 == "MarineFord" then
                        fn6(CFrame.new(-4810, 21, 4359))
                    elseif v16808 == "Marine" then
                        fn6(CFrame.new(-2728, 25, 2056))
                    elseif v16808 == "WindMill" then
                        fn6(CFrame.new(889, 17, 1434))
                    elseif v16808 == "Desert" then
                        fn6(CFrame.new())
                    elseif v16808 == "Snow Island" then
                        fn6(CFrame.new(1298, 87, -1344))
                    elseif v16808 == "Pirate Village" then
                        fn6(CFrame.new(-1173, 45, 3837))
                    elseif v16808 == "Jungle" then
                        fn6(CFrame.new(-1614, 37, 146))
                    elseif v16808 == "Prison" then
                        fn6(CFrame.new(4870, 6, 736))
                    elseif v16808 == "Under Water Island" then
                        fn6(CFrame.new(61164, 5, 1820))
                    elseif v16808 == "Colosseum" then
                        fn6(CFrame.new(-1535, 7, -3014))
                    elseif v16808 == "Magma Village" then
                        fn6(CFrame.new(-5290, 9, 8349))
                    elseif v16808 == "Sky Island 1" then
                        fn6(CFrame.new(-4814, 718, -2551))
                    elseif v16808 == "Sky Island 2" then
                        fn6(CFrame.new(-4652, 873, -1754))
                    elseif v16808 == "Sky Island 3" then
                        fn6(CFrame.new(-7895, 5547, -380))
                    end
                elseif v78 then
                    if v16808 == "The Cafe" then
                        fn6(CFrame.new(-382, 73, 290))
                    elseif v16808 == "Frist Spot" then
                        fn6(CFrame.new(-11, 29, 2771))
                    elseif v16808 == "Dark Area" then
                        fn6(CFrame.new(3494, 13, -3259))
                    elseif v16808 == "Flamingo Mansion" then
                        fn6(CFrame.new(-317, 331, 597))
                    elseif v16808 == "Flamingo Room" then
                        fn6(CFrame.new(2285, 15, 905))
                    elseif v16808 == "Green Zone" then
                        fn6(CFrame.new(-2258, 73, -2696))
                    elseif v16808 == "Zombie Island" then
                        fn6(CFrame.new(-5552, 194, -776))
                    elseif v16808 == "Two Snow Mountain" then
                        fn6(CFrame.new(752, 408, -5277))
                    elseif v16808 == "Punk Hazard" then
                        fn6(CFrame.new(-5897, 18, -5096))
                    elseif v16808 == "Cursed Ship" then
                        fn6(CFrame.new(919, 125, 32869))
                    elseif v16808 == "Ice Castle" then
                        fn6(CFrame.new(5505, 40, -6178))
                    elseif v16808 == "Forgotten Island" then
                        fn6(CFrame.new(-3050, 240, -10178))
                    elseif v16808 == "Ussop Island" then
                        fn6(CFrame.new(4816, 8, 2863))
                    end
                else
                    if v79 then
                        if v16808 == "Mansion" then
                            fn6(CFrame.new(-12471, 374, -7551))
                        elseif v16808 == "Port Town" then
                            fn6(CFrame.new(-334, 7, 5300))
                        elseif v16808 == "Castle On The Sea" then
                            fn6(CFrame.new(-5073, 315, -3153))
                        elseif v16808 == "Hydra Island" then
                            fn6(CFrame.new(5756, 610, -282))
                        elseif v16808 == "Great Tree" then
                            fn6(CFrame.new(2681, 1682, -7190))
                        elseif v16808 == "Floating Turtle" then
                            fn6(CFrame.new(-12528, 332, -8658))
                        elseif v16808 == "Haunted Castle" then
                            fn6(CFrame.new(-9517, 142, 5528))
                        elseif v16808 == "Ice Cream Island" then
                            fn6(CFrame.new(-902, 79, -10988))
                        elseif v16808 == "Peanut Island" then
                            fn6(CFrame.new(-2062, 50, -10232))
                        elseif v16808 == "Cake Island" then
                            fn6(CFrame.new(-1897, 14, -11576))
                        elseif v16808 == "Candy Cane Island" then
                            fn6(CFrame.new(-1038, 10, -14076))
                        elseif v16808 == "Tiki Outpost" then
                            fn6(CFrame.new(-16224, 9, 439))
                        end
                    end
                end
            end
        end
        spawn68(fn286)
    end
    tbl38.Callback = fn174
    v115(v116, v117, tbl38)
    local v3000
    if v79 then
        v116 = v2422
        v115 = v2422.AddSection
        v117 = "Race V4"
        v115(v116, v117)
        v116 = v2422
        v115 = v2422.AddButton
        v117 = {}
        v117.Title = "Teleport To Temple of Time"
        function v3000()
            for i = 1, 5, 1 do
                task.wait()
                localPlayer.Character:SetPrimaryPartCFrame(CFrame.new(28286, 14897, 103))
            end
        end
        v117[1] = v3000
        v115(v116, v117)
    end
    v116 = v109
    v115 = v109.AddSection
    v117 = "Configs"
    v115(v116, v117)
    v116 = v109
    v115 = v109.AddSlider
    v117 = "Slider"
    local tbl39 = {
        Title = "Farm Distance",
        Min = 5,
        Max = 50,
        Default = 20,
        Rounding = 1,
    }
    local function fn175(arg181)
        local v17228 = getgenv()
        local new = Vector3.new
        local num53 = 0
        local v1831
        local v17233 = arg181 or v1831
        if not arg181 then
            v17233 = 15
        end
        local v1832
        local v17234 = arg181 or v1832
        if not arg181 then
            v17234 = 10
        end
        v17228.FarmPos = new(num53, v17233, v17234)
        local v17230 = getgenv()
        v17230.FarmDistance = arg181
    end
    tbl39.Callback = fn175
    v115(v116, v117, tbl39)
    v116 = v109
    v115 = v109.AddSlider
    v117 = "Slider"
    local tbl40 = {
        Title = "Tween Speed",
        Min = 10,
        Max = 250,
        Default = 250,
        Rounding = 5,
    }
    local function fn176(arg182)
        local v17236 = getgenv()
        v17236.TweenSpeed = arg182
    end
    tbl40.Callback = fn176
    v115(v116, v117, tbl40)
    v116 = v109
    v115 = v109.AddSlider
    v117 = "Slider"
    local tbl41 = {
        Title = "Bring Mobs Distance",
        Min = 150,
        Max = 400,
        Default = 350,
        Rounding = 10,
    }
    local function fn177(arg183)
        local v17238 = getgenv()
        -- Keep the fallback aligned with the slider's configured default (350).
        local v1835
        local v17239 = arg183 or v1835
        if not arg183 then
            v17239 = 350
        end
        v17238.BringMobsDistance = v17239
    end
    tbl41.Callback = fn177
    v115(v116, v117, tbl41)
    v116 = v109
    v115 = v109.AddSlider
    v117 = "Slider"
    local tbl42 = {
        Title = "Auto Click Delay",
        Min = 0.01,
        Max = 1,
        Default = 0.18,
        Rounding = 0.01,
    }
    local function fn178(arg184)
        local v17241 = getgenv()
        v17241.AutoClickDelay = arg184
    end
    tbl42.Callback = fn178
    v115(v116, v117, tbl42)
    v116 = v109
    v115 = v109.AddToggle
    v117 = "Toggle"
    local tbl43 = {Title = "Fast Attack"}
    local enabled8 = true
    local function fn182(arg185)
        local v17243 = getgenv()
        v17243.FastAttack = arg185
        task.spawn(fn20)
    end
    tbl43.Callback = fn182
    tbl43[1] = enabled8
    v115(v116, v117, tbl43)
    v116 = v109
    v115 = v109.AddToggle
    v117 = "Toggle"
    local tbl44 = {Title = "Increase Attack Distance"}
    local enabled9 = true
    local function fn183(arg186)
        local v17248 = getgenv()
        v17248.AttackDistance = arg186
        task.spawn(fn19)
    end
    tbl44.Callback = fn183
    tbl44[1] = enabled9
    v115(v116, v117, tbl44)
    v116 = v109
    v115 = v109.AddToggle
    v117 = "Toggle"
    local tbl45 = {Title = "Auto Click"}
    local enabled10 = true
    local function fn184(arg187)
        local v17253 = getgenv()
        v17253.AutoClick = arg187
    end
    tbl45.Callback = fn184
    tbl45[1] = enabled10
    v115(v116, v117, tbl45)
    v116 = v109
    v115 = v109.AddToggle
    v117 = "Toggle"
    local tbl46 = {Title = "Bring Mobs"}
    local enabled11 = true
    local function fn185(arg188)
        local v17255 = getgenv()
        v17255.BringMobs = arg188
    end
    tbl46.Callback = fn185
    tbl46[1] = enabled11
    v115(v116, v117, tbl46)
    v116 = v109
    v115 = v109.AddToggle
    v117 = "Toggle"
    local tbl47 = {Title = "Auto Haki"}
    local enabled12 = true
    local function fn186(arg189)
        local v17257 = getgenv()
        v17257.AutoHaki = arg189
    end
    tbl47.Callback = fn186
    tbl47[1] = enabled12
    v115(v116, v117, tbl47)
    v116 = v109
    v115 = v109.AddSection
    v117 = "Codes"
    v115(v116, v117)
    v116 = v109
    v115 = v109.AddButton
    v117 = {}
    v117.Title = "Redeem all Codes"
    local function fn130()
        local tbl61 = {}
        local str77 = "NEWTROLL"
        local str78 = "KITT_RESET"
        local str79 = "Sub2Fer999"
        local str80 = "Magicbus"
        local str81 = "kittgaming"
        local str82 = "SECRET_ADMIN"
        local str83 = "EXP_5B"
        local str84 = "CONTROL"
        local str85 = "UPDATE11"
        local str86 = "XMASEXP"
        local str87 = "1BILLION"
        local str88 = "ShutDownFix2"
        local str89 = "UPD14"
        local str90 = "STRAWHATMAINE"
        local str91 = "TantaiGaming"
        local str92 = "Colosseum"
        local str93 = "Axiore"
        local str94 = "Sub2Daigrock"
        local str95 = "Sky Island 3"
        local str96 = "Sub2OfficialNoobie"
        local str97 = "SUB2NOOBMASTER123"
        local str98 = "THEGREATACE"
        local str99 = "Fountain City"
        local str100 = "BIGNEWS"
        local str101 = "FUDD10"
        local str102 = "SUB2GAMERROBOT_EXP1"
        local str103 = "UPD15"
        local str104 = "2BILLION"
        local str105 = "UPD16"
        local str106 = "3BVISITS"
        local str107 = "Starcodeheo"
        local str108 = "Bluxxy"
        local str109 = "DRAGONABUSE"
        local str110 = "Sub2CaptainMaui"
        local str111 = "DEVSCOOKING"
        local str112 = "Enyu_is_Pro"
        local str113 = "JCWK"
        local str114 = "Starcodeheo"
        local str115 = "Bluxxy"
        local str116 = "fudd10_v2"
        local str117 = "SUB2GAMERROBOT_EXP1"
        local str118 = "Sub2NoobMaster123"
        local str119 = "Sub2UncleKizaru"
        local str120 = "Sub2Daigrock"
        local str121 = "Axiore"
        local str122 = "TantaiGaming"
        local str123 = "StrawHatMaine"
        tbl61[1] = str77
        tbl61[2] = str78
        tbl61[3] = str79
        tbl61[4] = str80
        tbl61[5] = str81
        tbl61[6] = str82
        tbl61[7] = str83
        tbl61[8] = str84
        tbl61[9] = str85
        tbl61[10] = str86
        tbl61[11] = str87
        tbl61[12] = str88
        tbl61[13] = str89
        tbl61[14] = str90
        tbl61[15] = str91
        tbl61[16] = str92
        tbl61[17] = str93
        tbl61[18] = str94
        tbl61[19] = str95
        tbl61[20] = str96
        tbl61[21] = str97
        tbl61[22] = str98
        tbl61[23] = str99
        tbl61[24] = str100
        tbl61[25] = str101
        tbl61[26] = str102
        tbl61[27] = str103
        tbl61[28] = str104
        tbl61[29] = str105
        tbl61[30] = str106
        tbl61[31] = str107
        tbl61[32] = str108
        tbl61[33] = str109
        tbl61[34] = str110
        tbl61[35] = str111
        tbl61[36] = str112
        tbl61[37] = str113
        tbl61[38] = str114
        tbl61[39] = str115
        tbl61[40] = str116
        tbl61[41] = str117
        tbl61[42] = str118
        tbl61[43] = str119
        tbl61[44] = str120
        tbl61[45] = str121
        tbl61[46] = str122
        tbl61[47] = str123
        local v17259, v17261, v17262
        v17259, v17261, v17262 = pairs(tbl61)
        local v17264, v17265
        for _, v48 in v17259, v17261, v17262 do
            v17264 = task.spawn
            function v17265()
                ReplicatedStorage.Remotes.Redeem:InvokeServer(v48)
            end
            v17264(v17265)
        end
    end
    v117.Callback = fn130
    v115(v116, v117)
    v116 = v109
    v115 = v109.AddSection
    v117 = "Team"
    v115(v116, v117)
    v116 = v109
    v115 = v109.AddButton
    v117 = {}
    v117.Title = "Join Pirates Team"
    local function fn131()
        fn5("SetTeam", "Pirates")
    end
    v117[1] = fn131
    v115(v116, v117)
    v116 = v109
    v115 = v109.AddButton
    v117 = {}
    v117.Title = "Join Marines Team"
    local function fn132()
        fn5("SetTeam", "Marines")
    end
    v117[1] = fn132
    v115(v116, v117)
    v116 = v109
    v115 = v109.AddSection
    v117 = "Menu"
    v115(v116, v117)
    v116 = v109
    v115 = v109.AddButton
    v117 = {}
    v117.Title = "Devil Fruit Shop"
    local function fn133()
        fn5("GetFruits")
        localPlayer.PlayerGui.Main.FruitShop.Visible = true
    end
    v117.Callback = fn133
    v115(v116, v117)
    v116 = v109
    v115 = v109.AddButton
    v117 = {}
    v117.Title = "Titles"
    local function fn134()
        fn5("getTitles")
        localPlayer.PlayerGui.Main.Titles.Visible = true
    end
    v117.Callback = fn134
    v115(v116, v117)
    v116 = v109
    v115 = v109.AddButton
    v117 = {}
    v117.Title = "Haki Color"
    local function fn135()
        localPlayer.PlayerGui.Main.Colors.Visible = true
    end
    v117.Callback = fn135
    v115(v116, v117)
    v116 = v109
    v115 = v109.AddSection
    v117 = "More FPS"
    v115(v116, v117)
    v116 = v109
    v115 = v109.AddToggle
    v117 = "Toggle"
    local tbl48 = {Title = "Remove Damage"}
    local enabled13 = true
    local function fn187(arg190)
        ReplicatedStorage.Assets.GUI.DamageCounter.Enabled = not arg190
    end
    tbl48.Callback = fn187
    local str71 = "Misc/RemoveDamage"
    tbl48[1] = enabled13
    tbl48[2] = str71
    v115(v116, v117, tbl48)
    v116 = v109
    v115 = v109.AddToggle
    v117 = "Toggle"
    local tbl49 = {Title = "Remove Notifications"}
    local function fn179(arg191)
        localPlayer.PlayerGui.Notifications.Enabled = not arg191
    end
    tbl49.Callback = fn179
    tbl49[1] = "Misc/RemoveNotifications"
    v115(v116, v117, tbl49)
    v116 = v109
    v115 = v109.AddSection
    v117 = "Others"
    v115(v116, v117)
    v116 = v109
    v115 = v109.AddToggle
    v117 = "Toggle"
    local tbl50 = {Title = "Walk On Water", Default = true}
    local function fn180(arg192)
        local v17304 = getgenv()
        v17304.WalkOnWater = arg192
        local spawn69 = task.spawn
        local function fn287()
            local map3 = workspace:WaitForChild("Map", 9000000000)
            local v17315
            while true do
                if not getgenv().WalkOnWater then
                    break
                end
                task.wait(0.1)
                v17315 = map3:WaitForChild("WaterBase-Plane", 9000000000)
                v17315.Size = Vector3.new(1000, 113, 1000)
            end
            local waterBasePlane = map3:WaitForChild("WaterBase-Plane", 9000000000)
            waterBasePlane.Size = Vector3.new(1000, 80, 1000)
        end
        spawn69(fn287)
    end
    tbl50.Callback = fn180
    v115(v116, v117, tbl50)
    v116 = v109
    v115 = v109.AddToggle
    v117 = "Toggle"
    local tbl51 = {Title = "Anti AFK", Default = true}
    local function fn181(arg193)
        local v17339 = getgenv()
        v17339.AntiAFK = arg193
        local spawn70 = task.spawn
        local function fn288()
            while true do
                if not getgenv().AntiAFK then
                    break
                end
                VirtualUser:CaptureController()
                VirtualUser:ClickButton1(Vector2.new(math.huge, math.huge))
                task.wait(600)
            end
        end
        spawn70(fn288)
    end
    tbl51.Callback = fn181
    v115(v116, v117, tbl51)
    v116 = v108
    v115 = v108.AddSection
    v117 = "Frags"
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Race Rerol"
    local function fn136()
        fn5("BlackbeardReward", "Reroll", "1")
        fn5("BlackbeardReward", "Reroll", "2")
    end
    v117[1] = fn136
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Reset Stats"
    local function fn137()
        fn5("BlackbeardReward", "Refund", "1")
        fn5("BlackbeardReward", "Refund", "2")
    end
    v117[1] = fn137
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddSection
    v117 = "Fighting Style"
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Black Leg"
    local function fn138()
        fn5("BuyBlackLeg")
    end
    v117[1] = fn138
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Electro"
    local function fn139()
        fn5("BuyElectro")
    end
    v117[1] = fn139
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Fishman Karate"
    local function fn140()
        fn5("BuyFishmanKarate")
    end
    v117[1] = fn140
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Dragon Claw"
    local function fn141()
        fn5("BlackbeardReward", "DragonClaw", "1")
        fn5("BlackbeardReward", "DragonClaw", "2")
    end
    v117[1] = fn141
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Superhuman"
    local function fn142()
        fn5("BuySuperhuman")
    end
    v117[1] = fn142
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Death Step"
    local function fn143()
        fn5("BuyDeathStep")
    end
    v117[1] = fn143
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Sharkman Karate"
    local function fn144()
        fn5("BuySharkmanKarate")
    end
    v117[1] = fn144
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Electric Claw"
    local function fn145()
        fn5("BuyElectricClaw")
    end
    v117[1] = fn145
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Dragon Talon"
    local function fn146()
        fn5("BuyDragonTalon")
    end
    v117[1] = fn146
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy GodHuman"
    local function fn147()
        fn5("BuyGodhuman")
    end
    v117[1] = fn147
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Sanguine Art"
    local function fn148()
        fn5("BuySanguineArt")
    end
    v117[1] = fn148
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddSection
    v117 = "Ability Teacher"
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Geppo"
    local function fn149()
        fn5("BuyHaki", "Geppo")
    end
    v117[1] = fn149
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Buso"
    local function fn150()
        fn5("BuyHaki", "Buso")
    end
    v117[1] = fn150
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Soru"
    local function fn151()
        fn5("BuyHaki", "Soru")
    end
    v117[1] = fn151
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddSection
    v117 = "Sword"
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Katana"
    local function fn152()
        fn5("BuyItem", "Katana")
    end
    v117[1] = fn152
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Cutlass"
    local function fn153()
        fn5("BuyItem", "Cutlass")
    end
    v117[1] = fn153
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Dual Katana"
    local function fn154()
        fn5("BuyItem", "Dual Katana")
    end
    v117[1] = fn154
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Iron Mace"
    local function fn155()
        fn5("BuyItem", "Iron Mace")
    end
    v117[1] = fn155
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Triple Katana"
    local function fn156()
        fn5("BuyItem", "Triple Katana")
    end
    v117[1] = fn156
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Pipe"
    local function fn157()
        fn5("BuyItem", "Pipe")
    end
    v117[1] = fn157
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Dual-Headed Blade"
    local function fn158()
        fn5("BuyItem", "Dual-Headed Blade")
    end
    v117[1] = fn158
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Soul Cane"
    local function fn159()
        fn5("BuyItem", "Soul Cane")
    end
    v117[1] = fn159
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Bisento"
    local function fn160()
        fn5("BuyItem", "Bisento")
    end
    v117[1] = fn160
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddSection
    v117 = "Gun"
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Musket"
    local function fn161()
        fn5("BuyItem", "Musket")
    end
    v117[1] = fn161
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Slingshot"
    local function fn162()
        fn5("BuyItem", "Slingshot")
    end
    v117[1] = fn162
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Flintlock"
    local function fn163()
        fn5("BuyItem", "Flintlock")
    end
    v117[1] = fn163
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Refined Slingshot"
    local function fn164()
        fn5("BuyItem", "Refined Slingshot")
    end
    v117[1] = fn164
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Refined Flintlock"
    local function fn165()
        fn5("BuyItem", "Refined Flintlock")
    end
    v117[1] = fn165
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Cannon"
    local function fn166()
        fn5("BuyItem", "Cannon")
    end
    v117[1] = fn166
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Kabucha"
    local function fn167()
        fn5("BlackbeardReward", "Slingshot", "1")
        fn5("BlackbeardReward", "Slingshot", "2")
    end
    v117[1] = fn167
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddSection
    v117 = "Accessories"
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Black Cape"
    local function fn168()
        fn5("BuyItem", "Black Cape")
    end
    v117[1] = fn168
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Swordsman Hat"
    local function fn169()
        fn5("BuyItem", "Swordsman Hat")
    end
    v117[1] = fn169
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Buy Tomoe Ring"
    local function fn170()
        fn5("BuyItem", "Tomoe Ring")
    end
    v117[1] = fn170
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddSection
    v117 = "Race"
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Ghoul Race"
    local function fn171()
        fn5("Ectoplasm", "Change", 4)
    end
    v117[1] = fn171
    v115(v116, v117)
    v116 = v108
    v115 = v108.AddButton
    v117 = {}
    v117.Title = "Cyborg Race"
    local function fn172()
        fn5("CyborgTrainer", "Buy")
    end
    v117[1] = fn172
    v115(v116, v117)
    v115 = false
    v116 = 15
    local v3044 = v107
    v117 = v107.AddSection
    v117(v3044, "Notifications")
    local v3045 = v107
    v117 = v107.AddSlider
    local str65 = "Slider"
    local tbl52 = {
        Title = "Nofication Time",
        Max = 120,
        Min = 5,
        Rounding = 1,
        Default = 15,
    }
    local function fn188(arg194)
        v116 = arg194
    end
    tbl52.Callback = fn188
    v117(v3045, str65, tbl52)
    local v3046 = v107
    v117 = v107.AddToggle
    local str66 = "Toggle"
    local tbl53 = {Title = "Fruit spawn"}
    local function fn189(arg195)
        v115 = arg195
    end
    tbl53.Callback = fn189
    v117(v3046, str66, tbl53)
    local v3047 = v107
    v117 = v107.AddSection
    v117(v3047, "ESP")
    local v3048, v3124, v3151, v3179
    if v78 then
        v3048 = v107
        v117 = v107.AddToggle
        v3124 = "Toggle"
        v3151 = {Title = "ESP Flowers"}
        function v3179(arg196)
            local v17485 = getgenv()
            v17485.EspFlowers = arg196
            fn15()
        end
        v3151.Callback = v3179
        v117(v3048, v3124, v3151)
    end
    local v3049 = v107
    v117 = v107.AddToggle
    local str67 = "Toggle"
    local tbl54 = {Title = "ESP Players"}
    local function fn190(arg197)
        local v17488 = getgenv()
        v17488.EspPlayer = arg197
        fn14()
    end
    tbl54.Callback = fn190
    v117(v3049, str67, tbl54)
    local v3050 = v107
    v117 = v107.AddToggle
    local str68 = "Toggle"
    local tbl55 = {Title = "ESP Fruits"}
    local function fn191(arg198)
        local v17491 = getgenv()
        v17491.EspFruits = arg198
        fn16()
    end
    tbl55.Callback = fn191
    v117(v3050, str68, tbl55)
    local v3051 = v107
    v117 = v107.AddToggle
    local str69 = "Toggle"
    local tbl56 = {Title = "ESP Chests"}
    local function fn192(arg199)
        local v17494 = getgenv()
        v17494.EspChests = arg199
        fn18()
    end
    tbl56.Callback = fn192
    v117(v3051, str69, tbl56)
    local v3052 = v107
    v117 = v107.AddToggle
    local str70 = "Toggle"
    local tbl57 = {Title = "ESP Islands"}
    local function fn193(arg200)
        local v17497 = getgenv()
        v17497.EspIslands = arg200
        fn17()
    end
    tbl57.Callback = fn193
    v117(v3052, str70, tbl57)
end
v2049(fn89)
