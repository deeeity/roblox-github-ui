-- Ready the environment for the library
local function init()
    getgenv().GHUI = getgenv().GHUI or {}
    if #GHUI == 0 then
        GHUI.Exists = true
        GHUI.Version = 1.0
        GHUI.Debug = false
        GHUI.Fork = "https://github.com/deeeity/roblox-github-ui/blob/master/"
        GHUI.ObjectRegister = {}
        GHUI.Include = function(link : string)
            return loadstring(game:HttpGet(GHUI.Fork .. link:lower() .. ".lua", true))()
        end

        -- Load the components
        GHUI.Components = {
            "Base" = GHUI.Include("components/base"),
            "Core" = GHUI.Include("components/core")
        }
    end

    return GHUI
end

return init()