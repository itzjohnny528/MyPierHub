-- MyPierHub GUI Script
local library = loadstring(game:HttpGet("https://pastebin.com/raw/edJT9EGX"))() -- UiLib
local w = library:CreateWindow("MyPierHub")
local espTab = w:CreateFolder("ESP")
local farmTab = w:CreateFolder("AutoFarm")
local baitsTab = w:CreateFolder("Baits")

-- ESP toggle
espTab:Toggle("Enable ESP", function(state)
    if state then
        print("ESP Enabled") -- replace with actual ESP logic
    else
        print("ESP Disabled")
    end
end)

-- AutoFarm toggle
farmTab:Toggle("Auto Fish", function(state)
    if state then
        print("AutoFish On") -- replace with actual autofarm logic
    else
        print("AutoFish Off")
    end
end)

-- Lista przynęt
local baits = {
    "Bread", "Worm", "Minnow", "Insect", "Cricket", "Shrimp", "Leech",
    "Grub", "Frog", "Baitfish", "PowerBait", "Bloodworm", "Mealworm",
    "Cutbait", "Artificial Fly", "Salmon Egg", "Corn", "Cheese", "Nightcrawler"
}

baitsTab:Dropdown("Select Bait", baits, function(selectedBait)
    print("Selected bait:", selectedBait)
end)

-- Notification
game.StarterGui:SetCore("SendNotification", {
    Title = "MyPierHub Loaded!",
    Text = "GUI Initialized",
    Duration = 5
})

