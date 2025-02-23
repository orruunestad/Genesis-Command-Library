# Genesis Command Library
Join the [discord](https://discord.gg/skibiditoilet) for more information and updates! This is like a UI library but for commands!

### Booting the library
```
loadstring(game:HttpGet"https://raw.githubusercontent.com/orruunestad/Genesis-Command-Library/refs/heads/main/source.lua")()
```
This loads the necessary code to create commands!

### Setting the prefix
```
local Prefix = "!"
```
This sets the prefix for commands in chat, so for example if the prefix was !, the command would be !explode

### Creating a command
```
addCommand("command name", function()
    -- logic goes here
end)
```
This creates a command, you can add as many as you want to your script!

## Example
```
loadstring(game:HttpGet"https://raw.githubusercontent.com/orruunestad/Genesis-Command-Library/refs/heads/main/source.lua")()

local Prefix = "?"

addCommand("explode", function()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local explosion = Instance.new("Explosion")
        explosion.Position = LocalPlayer.Character.HumanoidRootPart.Position
        explosion.Parent = workspace
    end
end)
```
