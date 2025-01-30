local foundation_productivity_research = {
	type = "technology",
	name = "landfill-productivity",
	icons = {
		{
			icon = "__space-age__/graphics/icons/foundation.png",
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
			recipe = "foundation",
			change = 0.1
		}
	},
	prerequisites = {
		"foundation",
		"cryogenic-science-pack",
		"promethium-science-pack"
	},
	unit = {
		count_formula = "1500 * (1.6 ^ (L - 1))",
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"utility-science-pack", 1},
			{"production-science-pack", 1},
			{"space-science-pack", 1},
			{"cryogenic-science-pack", 1},
			{"promethium-science-pack", 1}
		},
		time = 60
	},
	max_level = "infinite",
	upgrade = true
}

data:extend({foundation_productivity_research})