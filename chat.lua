local _G = ShaguTweaks.GetGlobalEnv()
local T = ShaguTweaks.T

local module = ShaguTweaks:register({
  title = T["Tweaked Chat"],
  description = T["Open general chat tab on login."],
  expansions = { ["vanilla"] = true, ["tbc"] = nil },
  category = T["|cffffcc00Shagu|cffffffffTweaks Tweaked by |cffffcc00Muddle"],
  enabled = false,
})

module.enable = function()      
  local frame = CreateFrame("FRAME")  
  frame:RegisterEvent("PLAYER_ENTERING_WORLD")
  frame:SetScript("OnEvent",  function(self, event)    
    ChatFrame1Tab:Click() 
  end)
end