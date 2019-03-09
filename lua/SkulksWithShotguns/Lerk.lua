--

function LerkVariantMixin:GetVariantModel()

    if self:GetTeamNumber() == 1 then
        return LerkVariantMixin.kModelNames[kLerkVariant.shadow]
    else
        return LerkVariantMixin.kModelNames[kLerkVariant.toxin]
    end
end
