if mods["SpaceMod"]	then
	data:extend({
		{
			type = "technology",
			name = "protection-fields",
			icon_size =	256, icon_mipmaps =	4,
			icon = "__SpaceMod__/graphics/technology/fusion-reactor.png",
			effects	=
			{
				{
					type = "unlock-recipe",
					recipe = "protection-field-goopless"
				},
				{
					type = "unlock-recipe",
					recipe = "protection-field"
				}
			},
			prerequisites =	
			{
			"shields_5",
			"space-construction",
			},
			unit =
				{
				ingredients	=
					{
						{"automation-science-pack",	1},
						{"logistic-science-pack", 1},
						{"chemical-science-pack", 1},
						{"production-science-pack",	1},
						{"utility-science-pack", 1}
					},
				time = 60,
				count =	30000
				},
			order =	"lib"
		},
		{
			type = "technology",
			name = "fusion-reactor",
			icon_size = 256, icon_mipmaps = 4,
			icon = "__SpaceMod__/graphics/technology/fusion-reactor.png",
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "fusion-reactor"
				}
			},
			prerequisites = 
			{
				"shields_5",
				"space-construction",
			},
			unit =
			{
				ingredients =
				{
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1},
					{"chemical-science-pack", 1},
					{"production-science-pack", 1},
					{"utility-science-pack", 1}
				},
				time = 60,
				count = 30000
			},
			order = "d-e-g"
		},
	})
end