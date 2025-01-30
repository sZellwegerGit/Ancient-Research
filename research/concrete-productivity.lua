local concrete_productivity_research = {
	type = "technology",
	name = "concrete-productivity",
	icons = {
		{
			icon = "__base__/graphics/technology/concrete.png",
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
			recipe = "concrete",
			change = 0.1
		},
		{
			type = "change-recipe-productivity",
			recipe = "refined-concrete",
			change = 0.1
		},
		{
			type = "change-recipe-productivity",
			recipe = "concrete-from-molten-iron",
			change = 0.1
		}
	},
	prerequisites = {
		"concrete",
		"metallurgic-science-pack",
		"space-science-pack"
	},
	unit = {
		count_formula = "1000 * (1.5 ^ (L - 1))",
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"utility-science-pack", 1},
			{"production-science-pack", 1},
			{"space-science-pack", 1},
			{"metallurgic-science-pack", 1}
		},
		time = 45
	},
	max_level = "infinite",
	upgrade = true
}

data:extend({concrete_productivity_research})