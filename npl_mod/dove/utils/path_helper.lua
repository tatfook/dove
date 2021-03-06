--[[
title: helpers to operate file paths
author: chenqh
date: 2017/12/17
]]
local _M = commonlib.gettable("Dove.Utils.PathHelper")

function _M.concat(...)
    local args = {...}
    return _M.concat_table(args)
end

function _M.concat_table(t)
    local full_path = ""
    for i, v in ipairs(t) do
        v = tostring(v)
        if (i == 1) then
            full_path = v -- do nothing
        else
            if (v:sub(1, 1) ~= "/" and full_path:sub(-1, 1) ~= "/") then
                full_path = full_path .. "/" .. v
            else
                full_path = full_path .. v
            end
        end
    end
    return full_path
end
