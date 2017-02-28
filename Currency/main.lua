
-- main.lua

-- Plugin initialization


PLUGIN = nil

function Initialize(Plugin)
  Plugin:SetName("Currency")
  Plugin:SetVersion(0)

  PLUGIN = Plugin

  InitializeAccountDB()

  BindCommands()

  LOG("Initialised " .. Plugin:GetName() .. " v." .. Plugin:GetVersion())
  return true
end

function OnDisable()
  LOG("Currency plugin is shutting down ...")
end
