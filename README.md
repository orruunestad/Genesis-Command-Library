# Genesis Command Library
> Join the [discord](https://discord.gg/skibiditoilet) for more information and updates!

### Booting the library
```
loadstring(game:HttpGet"https://raw.githubusercontent.com/orruunestad/Genesis-Command-Library/refs/heads/main/source.lua")()
```
> This loads the necessary code to create commands!

### Setting the prefix
```
local Prefix = "!"
```
> This sets the prefix for commands in chat, so for example if the prefix was !, the command would be !explode

### Creating a command
```
addCommand("command name", function()
    -- logic goes here
end)
```
> This creates a command, you can add as many as you want to your script!
