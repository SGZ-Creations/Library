
if mods["SpaceMod"] then
  data:extend({
    {
      type = "recipe",
      name = "protection-field",
      enabled = false,
      energy_required = 100,
      ingredients =
      {
        {"s_mk10", 100},
      },
      result = "protection-field"
    },
    {
      type = "recipe",
      name = "protection-field-goopless",
      enabled = false,
      energy_required = 100,
      ingredients =
      {
        {"s_mk5", 100},
        {"advanced-processing-unit", 1000},
        {"effectivity-module-4", 400},
        {"productivity-module-4", 400},
        {"effectivity-module-6", 200},
        {"productivity-module-6", 200},
        {"effectivity-module-8", 100},
        {"productivity-module-8", 100},	  
      },
      result = "protection-field"
    },
  })
end
--[[
if mods["boblibrary"] and mods["SpaceMod"] then 
  bobmods.lib.recipe.replace_ingredient ("fusion-reactor", "fusion-reactor-equipment", "f_mk5")
  bobmods.lib.recipe.replace_ingredient ("protection-field", "energy-shield-mk2-equipment", "s_mk5")
end
]]