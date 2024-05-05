local _G = ShaguTweaks.GetGlobalEnv()
local T = ShaguTweaks.T

local module = ShaguTweaks:register({
  title = T["Tweaked Actionbars"],
  description = T["Reduces actionbars scale'. Vertically position right actionsbars. Gryphons in front of actionbars."],
  expansions = { ["vanilla"] = true, ["tbc"] = nil },
  category = T["|cffffcc00Shagu|cffffffffTweaks Tweaked by |cffffcc00Muddle"],
  enabled = false,
})

module.enable = function(self)

  local s = .6

  -- reduce actionbar scale
  MultiBarBottomLeft:SetScale(s)
  MultiBarBottomRight:SetScale(s)
  MultiBarRight:SetScale(s)
  MultiBarLeft:SetScale(s)
  MainMenuBar:SetScale(s)     

  -- move right side vertical bars
  MultiBarRight:SetPoint("BOTTOMRIGHT",-5,365)
  
  -- move gryphons to the front
  MainMenuBar:SetFrameStrata("HIGH")
  MultiBarBottomLeft:SetFrameStrata("MEDIUM")
  MultiBarBottomRight:SetFrameStrata("MEDIUM")

end