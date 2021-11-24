local assets=
{
    Asset("ANIM", "anim/baget.zip"),
    Asset("ANIM", "anim/swap_baget.zip"),
 
    Asset("ATLAS", "images/inventoryimages/baget.xml"),
    Asset("IMAGE", "images/inventoryimages/baget.tex"),
}
prefabs = {
    "baget",
}
local function onfinished(inst)
    inst:Remove()
end

local function fn(sim)
    local inst = CreateEntity()
    local trans = inst.entity:AddTransform()
    local anim = inst.entity:AddAnimState()
    local sound = inst.entity:AddSoundEmitter()

    local function OnEquip(inst, owner)
        owner.AnimState:OverrideSymbol("swap_object", "swap_baget", "swap_baget")
        owner.AnimState:Show("ARM_carry")
        owner.AnimState:Hide("ARM_normal")
    end
 
    local function OnUnequip(inst, owner)
        owner.AnimState:Hide("ARM_carry")
        owner.AnimState:Show("ARM_normal")
    end
 

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()
    
    MakeInventoryPhysics(inst)
     
    anim:SetBank("baget")
    anim:SetBuild("baget")
    anim:PlayAnimation("idle")

    inst:AddTag("sharp")

                if not TheWorld.ismastersim then
            return inst
           end
            inst.entity:SetPristine()

    inst:AddComponent("weapon")
   inst.components.weapon:SetDamage(TUNING.BAGET_DAMAGE)
    
     inst:AddComponent("finiteuses")
	 inst.components.finiteuses:SetMaxUses(TUNING.RUINS_BAT_USES)
     inst.components.finiteuses:SetUses(TUNING.RUINS_BAT_USES)
    inst.components.finiteuses:SetOnFinished(inst.Remove)

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "baget"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/baget.xml"
    
    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip( OnEquip )
    inst.components.equippable:SetOnUnequip( OnUnequip )

    return inst
end

return  Prefab("common/inventory/baget", fn, assets, prefabs)