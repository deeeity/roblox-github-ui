local base = GHUI.Components.Base

local core = {}
core.__index = core

local function _core(name : string)
    local instance = base()

    instance.name = name

    return instance
end

core.__call = _core
return setmetatable(core, core)