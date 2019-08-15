return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`CritterDrops` mod must be lower than Vermintide Mod Framework in your launcher's load order.")

		new_mod("CritterDrops", {
			mod_script       = "scripts/mods/CritterDrops/CritterDrops",
			mod_data         = "scripts/mods/CritterDrops/CritterDrops_data",
			mod_localization = "scripts/mods/CritterDrops/CritterDrops_localization",
		})
	end,
	packages = {
		"resource_packages/CritterDrops/CritterDrops",
	},
}
