local mod = get_mod("CritterDrops")

return {
	name = "Critter Drops",
	description = mod:localize("mod_description"),
	is_togglable = true,
	options = {
		widgets = {
			{
				setting_id      = "first_aid_kit_weight",
				type            = "numeric",
				default_value   = 0,
				range           = {0, 100},
				decimals_number = 0
			},
			{
				setting_id      = "healing_draught_weight",
				type            = "numeric",
				default_value   = 0,
				range           = {0, 100},
				decimals_number = 0
			},
			{
				setting_id      = "damage_boost_potion_weight",
				type            = "numeric",
				default_value   = 0,
				range           = {0, 100},
				decimals_number = 0
			},
			{
				setting_id      = "speed_boost_potion_weight",
				type            = "numeric",
				default_value   = 0,
				range           = {0, 100},
				decimals_number = 0
			},
			{
				setting_id      = "cooldown_reduction_potion_weight",
				type            = "numeric",
				default_value   = 0,
				range           = {0, 100},
				decimals_number = 0
			},
			{
				setting_id      = "explosive_barrel_weight",
				type            = "numeric",
				default_value   = 0,
				range           = {0, 100},
				decimals_number = 0
			},
			{
				setting_id      = "lamp_oil_weight",
				type            = "numeric",
				default_value   = 0,
				range           = {0, 100},
				decimals_number = 0
			},
			{
				setting_id      = "all_ammo_small_weight",
				type            = "numeric",
				default_value   = 0,
				range           = {0, 100},
				decimals_number = 0
			},
			{
				setting_id      = "frag_grenade_t1_weight",
				type            = "numeric",
				default_value   = 0,
				range           = {0, 100},
				decimals_number = 0
			},
			{
				setting_id      = "fire_grenade_t1_weight",
				type            = "numeric",
				default_value   = 0,
				range           = {0, 100},
				decimals_number = 0
			},
		}
	}
}
