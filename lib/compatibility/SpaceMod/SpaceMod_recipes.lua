if mods["SpaceMod"] then
  data:extend({
    {
      type = "recipe",
      name = "protection-field",
      enabled = false,
      energy_required = 100,
      ingredients =
      {
        {"s_mk10", 50},
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
        {"s_mk5", 1000},
      },
      result = "protection-field"
    },
  })
end