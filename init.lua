-- Ready the environment for the library
function get(user, repo, branch)
    print("Test 1")
    getgenv().GHUI = getgenv().GHUI or {}
    if not rawget(GHUI, "Exists") then
        print("Test 2")
        GHUI.Exists = true
        GHUI.Version = 1.0
        GHUI.Debug = false
        GHUI.Fork = ("https://raw.githubusercontent.com/%s/%s/%s/"):format(user, repo, branch)
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
end

return get