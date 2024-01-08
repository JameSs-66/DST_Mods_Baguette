
name = "Baguette!!"
description = "Smells like freshly baked bread"
author = "CRIT1CAL"

version = "1.0.2"
forumthread = ""

api_version = 10

dst_compatible = true

dont_starve_compatible = true
reign_of_giants_compatible = false

all_clients_require_mod = true

icon_atlas = "modicon.xml"
icon = "modicon.tex"

configuration_options =
{
	{
		name = "baget_damage",
		label = "Bagette Damage",
		hover = "How much damage to monsters",
		options =
		{
			{description = "30", 			data = 30},
			{description = "60", 			data = 60},
			{description = "90",           data = 90},
			{description = "Default 120",   data = 120},
			{description = "150", 	    	data = 150},
			{description = "180", 			data = 180},
			{description = "1000", 			data = 1000},
		},
		default = 120,
	}
}


