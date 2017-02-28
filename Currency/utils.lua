
-- utils.lua

-- Declares some utility functions

function hasvalue(t, value)
  for _, v in pairs(t) do
    if v == value then
      return true
    end
  end
  return false
end

function haskey(t, key)
  for k, _ in pairs(t) do
    if k == key then
      return true
    end
  end
  return false
end

function size(t)
  return table.getn(t)
end

function coinstr(value)
  return tostring(value) .. "c"
end
