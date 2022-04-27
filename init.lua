-- Ready the environment for the library
print("Test 1")
getgenv().GHUI = getgenv().GHUI or {}
if GHUI.Exists == nil then
    print("Test 2")
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
    print("Test 3")
end