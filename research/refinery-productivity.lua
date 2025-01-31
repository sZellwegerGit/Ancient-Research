local refinery_productivity_research = {
	type = "technology",
	name = "refinery-productivity",
	icons = {
		{
			icon = "__base__/graphics/technology/oil-processing.png",
			icon_size = 256
		},
		{
			icon = "__core__/graphics/icons/technology/constants/constant-recipe-productivity.png",
			icon_size = 128,
			scale = 0.5,
			shift = {50, 50}
		}
	},
	effects = {
		{
			type = "change-recipe-productivity",
			recipe = "basic-oil-processing",
			change = 0.1
		},
		{
			type = "change-recipe-productivity",
			recipe = "advanced-oil-processing",
			change = 0.1
		},
		{
			type = "change-recipe-productivity",
			recipe = "simple-coal-liquefaction",
			change = 0.1
		},
		{
			type = "change-recipe-productivity",
			recipe = "coal-liquefaction",
			change = 0.1
		}
	},
	prerequisites = {
		"oil-processing",
		"advanced-oil-processing",
		"coal-liquefaction",
		"electromagnetic-science-pack"
	},
	unit = {
		count_formula = "500 * (1.8 ^ (L - 1))",
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"utility-science-pack", 1},
			{"production-science-pack", 1},
			{"space-science-pack", 1},
			{"electromagnetic-science-pack", 1}
		},
		time = 45
	},
	max_level = "infinite",
	upgrade = true
}

data:extend({refinery_productivity_research})