return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`DeselectTalents` mod must be lower than Vermintide Mod Framework in your launcher's load order.")

		new_mod("DeselectTalents", {
			mod_script       = "scripts/mods/DeselectTalents/DeselectTalents",
			mod_data         = "scripts/mods/DeselectTalents/DeselectTalents_data",
			mod_localization = "scripts/mods/DeselectTalents/DeselectTalents_localization",
		})
	end,
	packages = {
		"resource_packages/DeselectTalents/DeselectTalents",
	},
}
