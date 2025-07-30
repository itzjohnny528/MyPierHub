-- MyPierHub PRO by FishyJohnny

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/username/library/main/lib.lua"))()

local window = library:CreateWindow("MyPierHub PRO")

-- Tabs
local baitTab = window:CreateTab("Baits")
local autoTab = window:CreateTab("AutoFarm")
local espTab = window:CreateTab("ESP")
local settingsTab = window:CreateTab("Settings")

-- Baits List
local baitList = {
    "Bread", "Insect", "Plankton Gel", "Shellfish", "Cybernetic Bait",
    "Cryptic Relic", "Ancient Fossil", "Shark Bait", "Serpent Bait"
}
baitTab:CreateDropdown("Choose Bait", baitList, function(selected)
    print("Selected bait:", selected)
end)

-- AutoFarm Toggle
autoTab:CreateToggle("Auto Catch", false, function(value)
    _G.autoCatch = value
end)

-- ESP
espTab:CreateToggle("Show Fish ESP", false, function(state)
    _G.showESP = state
end)

-- Settings
settingsTab:CreateButton("Destroy GUI", function()
    library:Destroy()
end)
