local _G = ShaguTweaks.GetGlobalEnv()
local T = ShaguTweaks.T

local module = ShaguTweaks:register({
  title = T["General Chat On Login"],
  description = T["Open general chat on login."],
  expansions = { ["vanilla"] = true, ["tbc"] = nil },
  category = T["|cffffcc00Shagu|cffffffffTweaks Tweaked"],
  enabled = false,
})

module.enable = function(self)    
  if(ChatFrame1Tab) then
    ChatFrame1Tab:Click()
  end
end