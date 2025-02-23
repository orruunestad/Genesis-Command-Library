local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Commands = {}

function setPrefix(newPrefix)
    Prefix = newPrefix or "!"
end

function addCommand(trigger, action)
    Commands[trigger:lower()] = action
end

LocalPlayer.Chatted:Connect(function(message)
    if message:sub(1, #Prefix) == Prefix then
        local args = message:sub(#Prefix + 1):split(" ")
        local cmd = args[1]:lower()
        if Commands[cmd] then
            table.remove(args, 1)
            Commands[cmd](unpack(args))
        end
    end
end)
