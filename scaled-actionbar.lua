local _G = ShaguTweaks.GetGlobalEnv()
local T = ShaguTweaks.T

local module = ShaguTweaks:register({
  title = T["Reduced Actionbar Scale"],
  description = T["Reduces actionbar scale."],
  expansions = { ["vanilla"] = true, ["tbc"] = nil },
  category = T["|cffffcc00Shagu|cffffffffTweaks Tweaked"],
  enabled = false,
})

module.enable = function(self)
  MultiBarBottomLeft:SetScale(.6)
  MultiBarBottomRight:SetScale(.6)
  MultiBarRight:SetScale(.6)
  MultiBarLeft:SetScale(.6)
  MainMenuBar:SetScale(.6)     
  MultiBarRight:SetPoint("BOTTOMRIGHT",-5,350)
  -- move gryphons to the front
  MainMenuBar:SetFrameStrata("HIGH")
end