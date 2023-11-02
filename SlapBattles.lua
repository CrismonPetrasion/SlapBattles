if game.PlaceId == 6403373529 then
    if game:IsLoaded() then
        local bypass;
        bypass = hookmetamethod(game, "__namecall", function(method, ...) 
            if getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Ban then
                return
            elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.AdminGUI then
                return
            elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.WalkSpeedChanged then
                return
            end
            return bypass(method, ...)
        end)
    
        if workspace:FindFirstChild("Spot") == nil then
            Notify("Spot", "Spot has been unable to find! We trying to spawn back", 1)
            local SafeSpot = Instance.new("Part", workspace)
    
            SafeSpot.Position = Vector3.new(math.random(-25000,-2500),500,math.random(-25000,-2500))
            SafeSpot.Name = "Spot"
            SafeSpot.Size = Vector3.new(500,50,500)
            SafeSpot.Anchored = true
            SafeSpot.Transparency = .5
        end
    elseif not game:IsLoaded() then
        game.Loaded:Wait()
    end
    
    --// Settings
    
    local Library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local System = Library:MakeWindow({Name = "Key System | TroXer Protection", HidePremium = false, SaveConfig = true, ConfigFolder = "TheKeyHub"})
    
    --// Variables
    
    local SlapEvent = game.ReplicatedStorage.Events.Slap
    local Player = game.Players.LocalPlayer
    local Character = Player.Character
    local Humanoid = Character.Humanoid
    
    local PlaceID = game.PlaceId
    local JobId = game.JobId
    
    local BasicImage = "rbxassetid://4483345998"
    
    Notify("Player", "Player logged as ".. Player.Name, BasicImage, 1.5)
    
    --// Values
    
    _G.Key = "Key"
    _G.KeyInput = "string"
    
    _G.KeySystem = true
    
    --// Functions
    
    function Notify(Name, Content, Image, Duration)
        Library:MakeNotification({
            Name = Name,
            Content = Content,
            Image = Image,
            Time = Duration or 1
        })    
    end
    
    function ScriptHub()
        --// Settings
    
        local SystemLibrary = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
        local System = SystemLibrary:MakeWindow({Name = "TroXer Hub | Slap Battles", HidePremium = false, SaveConfig = true, ConfigFolder = "TheRealHub"})
    
        --// Functions
    
        function SystemNotify(Name, Content, Image, Duration)
            SystemLibrary:MakeNotification({
                Name = Name,
                Content = Content,
                Image = Image,
                Time = Duration or 1
            })    
        end
    
        --// Script
    
        local HomeTab = System:MakeTab({
            Name = "Home",
            Icon = "rbxassetid://4370345144",
            PremiumOnly = false,
        })
    
        local CombatTab = System:MakeTab({
            Name = "Combat",
            Icon = "rbxassetid://7733674079",
            PremiumOnly = false,
        })
    
        local MiscTab = System:MakeTab({
            Name = "Misc",
            Icon = "rbxassetid://4370318685",
            PremiumOnly = false,
        })
    
        local PlayerTab = System:MakeTab({
            Name = "Player",
            Icon = "rbxassetid://4335489011",
            PremiumOnly = false,
        })
    
        local InfiniteYield = HomeTab:AddButton({
            Name = "Infinite Yield",
            Callback = function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Infinite%20Yield%20but%20with%20secure%20dex'))()
            end
        })
    
        local DestroyGUI = HomeTab:AddButton({
            Name = "Infinite Yield",
            Callback = function()
                SystemLibrary:Destroy()
            end
        })
    
        local RejoinServer = HomeTab:AddButton({
            Name = "Rejoin Server",
            Callback = function()
                game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, JobId, Player)
            end
        })
    
        local SlapAura = CombatTab:AddToggle({
            Name = "Slap Aura",
            Defualt = false,
            Callback = function(Value)
                SlapAuraX = Value
                while SlapAuraX do
                    for i,v in pairs(game.Players:GetChildren()) do
                        if v ~= Player and v.Character then
                            if v.Character:FindFirstChild("Dead") == nil and v.Character:FindFirstChild("Humanoid") then
                                Magnitude = (Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                                if 25 >= Magnitude then
                                    SlapEvent:FireServer(v.Character:WaitForChild("HumanoidRootPart"))
                                end
                            end
                        end
                    end
                    task.wait()
                end
            end
        })
    
        local FreeEmotes = MiscTab:AddButton({
            Name = "Free Emotes",
            Callback = function()
                Floss = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Floss, game.Players.LocalPlayer.Character.Humanoid)
                Groove = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Groove, game.Players.LocalPlayer.Character.Humanoid)
                Headless = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Headless, game.Players.LocalPlayer.Character.Humanoid)
                Helicopter = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Helicopter, game.Players.LocalPlayer.Character.Humanoid)
                Kick = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Kick, game.Players.LocalPlayer.Character.Humanoid)
                L = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.L, game.Players.LocalPlayer.Character.Humanoid)
                Laugh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Laugh, game.Players.LocalPlayer.Character.Humanoid)
                Parker = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Parker, game.Players.LocalPlayer.Character.Humanoid)
                Spasm = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Spasm, game.Players.LocalPlayer.Character.Humanoid)
                Thriller = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Thriller, game.Players.LocalPlayer.Character.Humanoid)
                game.Players.LocalPlayer.Chatted:Connect(function(msg)
                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                Floss = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Floss, game.Players.LocalPlayer.Character.Humanoid)
                Groove = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Groove, game.Players.LocalPlayer.Character.Humanoid)
                Headless = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Headless, game.Players.LocalPlayer.Character.Humanoid)
                Helicopter = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Helicopter, game.Players.LocalPlayer.Character.Humanoid)
                Kick = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Kick, game.Players.LocalPlayer.Character.Humanoid)
                L = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.L, game.Players.LocalPlayer.Character.Humanoid)
                Laugh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Laugh, game.Players.LocalPlayer.Character.Humanoid)
                Parker = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Parker, game.Players.LocalPlayer.Character.Humanoid)
                Spasm = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Spasm, game.Players.LocalPlayer.Character.Humanoid)
                Thriller = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Thriller, game.Players.LocalPlayer.Character.Humanoid)
                if string.lower(msg) == "/e floss" then
                    Floss:Play()
                    elseif string.lower(msg) == "/e groove" then
                    Groove:Play()
                    elseif string.lower(msg) == "/e headless" then
                    Headless:Play()
                    elseif string.lower(msg) == "/e helicopter" then
                    Helicopter:Play()
                    elseif string.lower(msg) == "/e kick" then
                    Kick:Play()
                    elseif string.lower(msg) == "/e l" then
                    L:Play()
                    elseif string.lower(msg) == "/e laugh" then
                    Laugh:Play()
                    elseif string.lower(msg) == "/e parker" then
                    Parker:Play()
                    elseif string.lower(msg) == "/e spasm" then
                    Spasm:Play()
                    elseif string.lower(msg) == "/e thriller" then
                    Thriller:Play()
                    end
                    EP = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    end
                    end)
                    game:GetService("RunService").Heartbeat:Connect(function()
                    if EP ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and Floss.IsPlaying or Groove.IsPlaying or Headless.IsPlaying or Helicopter.IsPlaying or Kick.IsPlaying or L.IsPlaying or Laugh.IsPlaying or Parker.IsPlaying or Spasm.IsPlaying or Thriller.IsPlaying then
                        Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - EP).Magnitude
                    if Magnitude > 1 then
                        Floss:Stop(); Groove:Stop(); Headless:Stop(); Helicopter:Stop(); Kick:Stop(); L:Stop(); Laugh:Stop(); Parker:Stop(); Spasm:Stop(); Thriller:Stop()
                       end
                    end
                end)
            end
        })
    
        local TeleportDropdown = MiscTab:AddDropdown({
            Name = "Teleport",
            Defualt = "Input",
            Options = {"Safe Spot", "Arena", "Defualt Arena", "Lobby", "Tournament", "Moai Island", "Slapple Island", "Plate"},
            Callback = function(Value)
                if Value == "Safe Spot" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,28,0)
                elseif Value == "Arena" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
                elseif Value == "Moai Island" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(215, -15.5, 0.5)
                elseif Value == "Slapple Island" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.island5.Union.CFrame * CFrame.new(0,3.25,0)
                elseif Value == "Plate" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame * CFrame.new(0,2,0)
                elseif Value == "Tournament" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(0,10,0)
                elseif Value == "Default Arena" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120,360,-3)
                elseif Value == "Lobby" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-800,328,-2.5)
                end
            end
        })
    
        local WalkSlider = PlayerTab:AddSlider({
            Name = "Walk Speed",
            Min = 20,
            Max = 1000,
            Defualt = 20,
            Color = Color3.fromRGB(140,185,255),
            Increment = 1,
            ValueName = "WS",
            Callback = function(Value)
                Humanoid.WalkSpeed = Value
                WalkSpeed = Value
            end
        })
    
        local KeepWalkToogle = PlayerTab:AddToggle({
            Name = "Keep WalkSpeed",
            Defualt = false,
            Callback = function(Value)
                Keep = Value
                while Keep do
                    if Humanoid ~= nil and Humanoid.WalkSpeed ~= WalkSpeed then
                        Humanoid.WalkSpeed = WalkSpeed
                    end
                task.wait()
                end
            end
        })
    
        local JumpSlider = PlayerTab:AddSlider({
            Name = "Jump Power",
            Min = 50,
            Max = 1000,
            Defualt = 50,
            Color = Color3.fromRGB(255,185,140),
            Increment = 1,
            ValueName = "JP",
            Callback = function(Value)
                Humanoid.JumpPower = Value
                JumpPower = Value
            end
        })
    
        local KeepJumpToogle = PlayerTab:AddToggle({
            Name = "Keep JumpPower",
            Defualt = false,
            Callback = function(Value)
                Keep2 = Value
                while Keep2 do
                    if Humanoid ~= nil and Humanoid.WalkSpeed ~= JumpPower then
                        Humanoid.WalkSpeed = JumpPower
                    end
                task.wait()
                end
            end
        })
    
    
    end
    
    --// Script
    
    local KeyTab = System:MakeTab({
        Name = "Key System",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    local KeySection = KeyTab:AddSection({
        Name = "Configuration"
    })
    
    local Input = KeyTab:AddTextbox({
        Name = "Enter Key",
        Default = "Input",
        TextDisappear = true,
        Callback = function(Value)
            if _G.KeySystem == true then
                Notify("Script", "The Key System is was turned on! The script need a key to protect from bots!", BasicImage, 1)
                _G.KeyInput = Value
            else
                Notify("Script", "The Key System is was disabled! The script will spawn after 5 seconds", BasicImage, 1)
                wait(5)
                ScriptHub()
            end
        end	  
    })
    
    local Button = KeyTab:AddButton({
        Name = "Check Key",
        Callback = function()
            if _G.KeyInput == _G.Key and _G.KeySystem == true then
                Notify("Key", "You entered a correct key! Please wait 5 second to spawn it!", BasicImage, 1)
                Library:Destroy()
                wait(5)
                ScriptHub()
            elseif _G.KeySystem == false then
                Notify("Key", "Key System is turned off! Please wait 5 second to spawn it!", BasicImage, 1)
                Library:Destroy()
                wait(5)
                ScriptHub()
            elseif not _G.KeyInput == _G.Key then
                Notify("Key", "You entered a incorrect key! Join our Discord {https://discord.gg/4MEFskRUhy}", BasicImage, 1)
            end
        end
    })
end
