local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    local Window = Rayfield:CreateWindow({
        Name = "GrannyHub",
        Icon = 4483362458,
        LoadingTitle = "Loading GrannyHub",
        LoadingSubtitle = "Gabe Itch",
        Theme = "Default",
        ConfigurationSaving = {
            Enabled = true,
            FolderName = "RayfieldHub",
            FileName = "HubSettings"
        }
    })

    local PlayerTab = Window:CreateTab("Player", 4483362458)

    local PlayerSection = PlayerTab:CreateSection("Player Settings")

    local WalkSpeedSlider = PlayerTab:CreateSlider({
        Name = "WalkSpeed",
        Range = {0, 500},
        Increment = 1,
        Suffix = "Speed",
        CurrentValue = 0,
        Flag = "WalkSpeed",
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
    })

    local JumpPowerSlider = PlayerTab:CreateSlider({
        Name = "JumpPower",
        Range = {0, 500},
        Increment = 1,
        Suffix = "Power",
        CurrentValue = 0,
        Flag = "JumpPower",
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end
    })

    local ESPTab = Window:CreateTab("ESP", 4483362458)

    local ESPSection = ESPTab:CreateSection("ESP Settings")

    local ESPToggle = ESPTab:CreateToggle({
        Name = "ESP Toggle",
        CurrentValue = false,
        Flag = "ESPEnabled",
        Callback = function(Value)
            if Value then
                -- Activate ESP here
            else
                -- Deactivate ESP here
            end
        end
    })

    local ESPHighlightToggle = ESPTab:CreateToggle({
        Name = "Highlight Toggle",
        CurrentValue = false,
        Flag = "ESPHightlightEnabled",
        Callback = function(Value)
            if Value then
                -- Activate Highlight ESP here
            else
                -- Deactivate Highlight ESP here
            end
        end
    })

    local ESPColorPicker = ESPTab:CreateColorPicker({
        Name = "ESP Color",
        Color = Color3.fromRGB(255, 255, 255),
        Flag = "ESPColor",
        Callback = function(Value)
            -- Change ESP color here
        end
    })

    local GrannyESPToggle = ESPTab:CreateToggle({
        Name = "Granny ESP",
        CurrentValue = false,
        Flag = "GrannyESPEnabled",
        Callback = function(Value)
            if Value then
                -- Enable Granny ESP here
            else
                -- Disable Granny ESP here
            end
        end
    })

    local NoclipTab = Window:CreateTab("Noclip", 4483362458)

    local NoclipSection = NoclipTab:CreateSection("Noclip Settings")

    local NoclipToggle = NoclipTab:CreateToggle({
        Name = "Noclip",
        CurrentValue = false,
        Flag = "NoclipEnabled",
        Callback = function(Value)
            if Value then
            else
            end
        end
    })

    local SafeModeNoclipToggle = NoclipTab:CreateToggle({
        Name = "Safe Mode Noclip",
        CurrentValue = false,
        Flag = "SafeModeNoclipEnabled",
        Callback = function(Value)
            if Value then
            else
            end
        end
    })

    Rayfield:Notify({
        Title = "Setup Complete",
        Content = "Your hub is ready to use with the Default theme!",
        Duration = 4,
        Image = 4483362458
    })
else
    game:GetService("Players").LocalPlayer:Kick("Game Unsupported!")
end
