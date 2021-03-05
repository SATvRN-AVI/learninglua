--[[ 
     This file is notes taken on learning tables and their applications
     This file may be used as a reference or edited and reuploaded for personal use.
]]

-- *******************************************************************

--[[
    DESCRIPTION: Tables are the most important part of lua for structuring and organzing complex programs. They
    can be made up of integers, strings, functions, commands, other tables... They are essentially like classes 
    from other languages. They have two primary characteristics. The first is a key, some type of identifier for 
    whatever set of data within the table for the array to find if it is called to do so. The key can be a number, 
    character, another function, etc. Keys are like the keys to your PO box. 
]]
-- *******************************************************************

local monsters = {}  -- This is the start of a table called 'monsters'
local meaningOfLife = 42 -- we set a local variable within the table and assign an integer: '42'
print(monsters) -- We print the table
print(type(meaningOfLife)) -- We print the variable with the table and use the 'type' command to identify what it is, in this case 'number'

-- *******************************************************************

local creatures = {} -- Declare a table name

creatures[1] = "Orc" -- So we assign the first position the value of 1 and value of the string "Orc" // the '[]' is where you assign the position to put the value

print(creatures[1]) -- We then print the key in table 'creatures    '

-- NOTE: the value within '[]' can be almost anything. I.E. (numbers, letters, function names, etc.)

-- *******************************************************************

local hostile = {"Orc" , "Skeleton", "Second Orc"}

for k,v in pairs(hostile) do -- Above we declared a table and put two data pairs inside. 'k'ey '1' with 'v' of 'Orc' etc.
    print(#hostile) -- It prints the lengths of the table you're calling, in this case the 'hostile' table
    print(k .. " , " .. v) -- this line prints both the key and value of the data in the table. 
end 

-- *******************************************************************

--[[ 
    The table below is assigned two tables within itself for values of enemies in a supposed game.
    These can be used in a similar way to classes from languages like Java.
]]
local morehostiles = {
    
    Slime = { Name = "Slime", HitPoints = 42, Description = "Gooey. Caustic."},
    Werewolf = { Name = "Werewolf", HitPoints = 44, Description = "Hope you have silver..."}
}    

print(morehostiles["Slime"]["Name"]) -- Here we specify we want the sub-table 'Slime' and the value of key 'Name' within it.
print(morehostiles.Werewolf.Name) -- This code here is the same as above it's just cleaner and less wordy.
print(morehostiles.Werewolf.HitPoints .. " " .. morehostiles.Werewolf.Description) -- We can call different