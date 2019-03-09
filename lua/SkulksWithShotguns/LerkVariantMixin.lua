Script.Load("lua/SkulksWithShotguns/sws_Globals.lua")

--

function LerkVariantMixin:GetVariantModel()

    if self:GetTeamNumber() == kShadowTeamIndex then
        return LerkVariantMixin.kModelNames[kLerkVariant.shadow]
    else
        return LerkVariantMixin.kModelNames[kLerkVariant.toxin]
    end
end
