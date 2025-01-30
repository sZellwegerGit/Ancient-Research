local technology_effect = {
	type = "change-recipe-productivity",
	recipe = "landfill",
	change = 0.1
}

local landfill_productivity_research = {
	type = "technology",
	name = "landfill-productivity"
	icons = {
		{
			icon = "__base__/graphics/technology/landfill.png",
			icon_size = 256
		},
		{
			icon = "__core__/graphics/icons/technology/constants/constant-recipe-productivity.png",
			icon_size = 128,
			scale = 0.5,
			shift = {50, 50}
		}
	},
	effects = technology_effect,
	prerequisites = {
		"concrete",
		"agricultural-science-pack"
		"space-science-pack"
	},
	unit = {
		count_formula = "500 * (1.4 ^ (L - 1))",
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"utility-science-pack", 1},
			{"production-science-pack", 1},
			{"space-science-pack", 1}
		},
		time = 30
	},
	max_level = "infinite",
	upgrade = true
}

data:extend(landfill_productivity_research)