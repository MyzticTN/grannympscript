local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Rayfield Example Window | Gabe Itch",
    Icon = 0,
    LoadingTitle = "Rayfield Interface Suite",
    LoadingSubtitle = "by Sirius",
    Theme = "BlackAndWhite",
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = "Big Hub"
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",
        RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
        Title = "Untitled",
        Subtitle = "Key System",
        Note = "No method of obtaining the key is provided",
        FileName = "Key",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"Hello"}
    }
})

local playerTab = Window:CreateTab("Player Settings", "rewind")
local espTab = Window:CreateTab("ESP Settings", "eye")
local noclipTab = Window:CreateTab("Noclip Settings", "airplay")

local playerSection = playerTab:CreateSection("Player Controls")
local espSection = espTab:CreateSection("ESP Controls")
local noclipSection = noclipTab:CreateSection("Noclip Settings")

local walkspeedSlider = playerSection:CreateSlider({
    Name = "Walkspeed",
    Range = {0, 100},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 0,
    Flag = "WalkSpeed",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end
})

local jumppowerSlider = playerSection:CreateSlider({
    Name = "Jump Power",
    Range = {0, 100},
    Increment = 1,
    Suffix = "Jump Power",
    CurrentValue = 0,
    Flag = "JumpPower",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end
})

local grannyESP = espSection:CreateToggle({
    Name = "Granny ESP",
    CurrentValue = false,
    Flag = "GrannyESP",
    Callback = function(state)
        if state then
        else
        end
    end
})

local nameESP = espSection:CreateToggle({
    Name = "Name ESP",
    CurrentValue = false,
    Flag = "NameESP",
    Callback = function(state)
    end
})

local highlightESP = espSection:CreateToggle({
    Name = "Highlight ESP",
    CurrentValue = false,
    Flag = "HighlightESP",
    Callback = function(state)
    end
})

local espColorPicker = espSection:CreateColorPicker({
    Name = "ESP Color",
    Color = Color3.fromRGB(255, 255, 255),
    Flag = "ESPColor",
    Callback = function(color)
    end
})

local safeModeToggle = noclipSection:CreateToggle({
    Name = "Safe Mode Noclip",
    CurrentValue = false,
    Flag = "SafeModeNoclip",
    Callback = function(state)
        if state then
        else
        end
    end
})

local noclipToggle = noclipSection:CreateToggle({
    Name = "Noclip",
    CurrentValue = false,
    Flag = "Noclip",
    Callback = function(state)
        if state then
        else
        end
    end
})

Rayfield:Notify({
    Title = "Welcome to the Script!",
    Content = "Features are ready to use.",
    Duration = 5,
    Image = "rewind"
})
