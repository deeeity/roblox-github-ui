local base = {};
base.__index = base

local function _base()
    local instance = setmetatable({}, BaseComponent)

    instance.objectId = #GHUI.ObjectRegister + 1
    GHUI.ObjectRegister[instance.objectId] = instance


    return instance
end

base.__call = _base()
return setmetatable(base, base)