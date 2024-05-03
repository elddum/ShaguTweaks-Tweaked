local _G = ShaguTweaks.GetGlobalEnv()
local T = ShaguTweaks.T

local module = ShaguTweaks:register({
  title = T["Attach Tooltip to Cursor"],
  description = T["Attaches tooltip to cursor"],
  expansions = { ["vanilla"] = true, ["tbc"] = nil },
  category = T["|cffffcc00Shagu|cffffffffTweaks Tweaked"],
  enabled = false,
})

module.enable = function(self)  
  GameTooltip_SetDefaultAnchor = function(t,p) 
    t:SetOwner(p,"ANCHOR_CURSOR")    
    x, y = GetCursorPosition()
    scale = t:GetEffectiveScale()
    t:ClearAllPoints()
    t:SetPoint("BOTTOMLEFT", UIParent, x/scale, y/scale+25)
  end  
  --  GameTooltip:SetScale(.9)
end