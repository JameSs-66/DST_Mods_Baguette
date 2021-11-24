PrefabFiles = {
    "baget",
}

 Assets = 
{
	
    Asset("ATLAS", "images/inventoryimages/baget.xml"),

}

		STRINGS = GLOBAL.STRINGS
        RECIPETABS = GLOBAL.RECIPETABS
        Recipe = GLOBAL.Recipe
        Ingredient = GLOBAL.Ingredient
        TECH = GLOBAL.TECH



GLOBAL.STRINGS.NAMES.BAGET = "Baguette"
STRINGS.RECIPE_DESC.BAGET = "Smells like freshly baked bread"
 GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BAGET = "Stab or feed it's up to you"
AddRecipe("baget", { Ingredient("frogglebunwich", 3), Ingredient("livinglog", 1), Ingredient("nightmarefuel", 1) }, GLOBAL.RECIPETABS.WAR, GLOBAL.TECH.ONE, nil, nil, nil, nil, nil, "images/inventoryimages/baget.xml", "baget.tex" )

GLOBAL.TUNING.BAGET_DAMAGE = GetModConfigData("baget_damage")



