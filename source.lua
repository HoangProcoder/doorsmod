print("Working!")

-- loadstrings
loadstring(game:HttpGet("https://raw.githubusercontent.com/HoangProcoder/spdoorsmod/main/OtherSuff/Sprint"))() -- sprint

game.Lighting.FogEnd = "100"
game.Lighting.FogStart = "10"
game.Lighting.FogColor = Color3.fromRGB(0, 0, 0)

-- ampersand entity --
game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
local chance = math.random(1,10)

if chance == 1 then
   Ampersand()
end

if chance == 5 then
   Shocker()
end

if chance == 10 then
   Factory()
   Ampersand()
end	

end)

if game.ReplicatedStorage.GameData.LatestRoom.Value == 50 and game.ReplicatedStorage.GameData.LatestRoom.Value == 100 then
Greed()
end	

function Ampersand()
local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/HoangProcoder/spsdoorsmod/main/Doors%20Entity%20Spawner/Source.lua"))()
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Ampersand", -- Custom name of your entity
    Model = "rbxassetid://12192238265", -- Can be GitHub file or rbxassetid
    Speed = 150, -- Percentage, 100 = default Rush speed
    DelayTime = 4, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 70,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {11, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You Died To Ampersand", "If You Hear Distorted Sounds", "Just Hide In Closet Or Bed.", "Use The Same Tactics Of Rush!"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end

function Shocker() -- shocker entity
local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/HoangProcoder/spsdoorsmod/main/Doors%20Entity%20Spawner/Source.lua"))()
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Shocker", -- Custom name of your entity
    Model = "rbxassetid://12192688089", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 4, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 100,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 3,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {11, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You Died To Shocker", "When The Lights Flicker. Hide Quickly", "He Is Faster Than Ambush.", "Good Luck!"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end

function greed()
local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/HoangProcoder/spsdoorsmod/main/Doors%20Entity%20Spawner/Source.lua"))()
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Greed", -- Custom name of your entity
    Model = "rbxassetid://12192704363", -- Can be GitHub file or rbxassetid
    Speed = 75, -- Percentage, 100 = default Rush speed
    DelayTime = 10, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 30,
    BreakLights = true,
    BackwardsMovement = true,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 9999999,
        Max = 9999999,
        WaitTime = 0,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {14, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        150, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You Died To Greed.", "Greed Looks Like Figure.", "He Is A Figure Assitant", "Dont Touch Him Again!"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end

function Factory()
local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/HoangProcoder/spsdoorsmod/main/Doors%20Entity%20Spawner/Source.lua"))()
-- Create entity
local entity = Creator.createEntity({
    CustomName = "Factory", -- Custom name of your entity
    Model = "rbxassetid://12192922914", -- Can be GitHub file or rbxassetid
    Speed = 500, -- Percentage, 100 = default Rush speed
    DelayTime = 12, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 100,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        5, -- Time (seconds)
    },
    Cycles = {
        Min = 6,
        Max = 6,
        WaitTime = 4,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {24, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        300, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You Died To Factory.", "When The Lights Flicker. Hide Quickly", "He Is Faster Than Ambush.", "Good Luck!"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
end
