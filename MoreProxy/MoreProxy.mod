return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`MoreProxy` mod must be lower than Vermintide Mod Framework in your launcher's load order.")

		new_mod("MoreProxy", {
			mod_script       = "scripts/mods/MoreProxy/MoreProxy",
			mod_data         = "scripts/mods/MoreProxy/MoreProxy_data",
			mod_localization = "scripts/mods/MoreProxy/MoreProxy_localization",
		})
	end,
	packages = {
		"resource_packages/MoreProxy/MoreProxy",
	},
}
