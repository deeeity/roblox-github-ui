local user = "deeeity"
local repo = "roblox-github-ui"
local branch = "master"

local Init = loadstring(game:HttpGet(("https://raw.githubusercontent.com/%s/%s/%s/init.lua"):format(user, repo, branch), true))()
Init(user, repo, branch)

local main = GHUI.Components.Core("Main")
print(main.name)