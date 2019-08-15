local mod = get_mod("CritterDrops")

mod.on_enabled = function()
	mod.on_setting_changed()
end

mod.on_setting_changed = function()
	update_weights()
	get_weight_total()
end

function update_weights()
	crw = {} --critter_rat_weights
	
	crw[01]	= mod:get("first_aid_kit_weight")
	crw[02]	= mod:get("healing_draught_weight")
	crw[03]	= mod:get("damage_boost_potion_weight")
	crw[04]	= mod:get("speed_boost_potion_weight")
	crw[05]	= mod:get("cooldown_reduction_potion_weight")
	crw[06]	= mod:get("explosive_barrel_weight")
	crw[07]	= mod:get("lamp_oil_weight")
	crw[08]	= mod:get("all_ammo_small_weight")
	crw[09]	= mod:get("frag_grenade_t1_weight")
	crw[10]	= mod:get("fire_grenade_t1_weight")	
end

function get_weight_total()
	crw_sum = {}
	total_weight = 0
	for i,v in ipairs(crw) do
		total_weight = total_weight + v
		crw_sum[i] = total_weight
	end
end

function random_item(unit)
	rand_item = math.random(crw_sum[10])
	if rand_item 	 <= crw_sum[01] then
		spawn_drop("first_aid_kit", unit)
	elseif rand_item <= crw_sum[02] then
		spawn_drop("healing_draught", unit)
	elseif rand_item <= crw_sum[03] then
		spawn_drop("damage_boost_potion", unit)	
	elseif rand_item <= crw_sum[04] then
		spawn_drop("speed_boost_potion", unit)
	elseif rand_item <= crw_sum[05] then
		spawn_drop("cooldown_reduction_potion", unit)
	elseif rand_item <= crw_sum[06] then
		spawn_drop("explosive_barrel", unit)
	elseif rand_item <= crw_sum[07] then
		spawn_drop("lamp_oil", unit)
	elseif rand_item <= crw_sum[08] then
		spawn_drop("all_ammo_small", unit)
	elseif rand_item <= crw_sum[09] then
		spawn_drop("frag_grenade_t1", unit)
	elseif rand_item <= crw_sum[10] then
		spawn_drop("fire_grenade_t1", unit)
	end
end

-- Adapted from Sir Aiedail's "Spawn Sack Rats"
function spawn_drop(item_type, unit)
	local pickup_name = item_type
	local pickup_settings = AllPickups[pickup_name]
	local spawn_type = "dropped"

	local pickup_system = Managers.state.entity:system("pickup_system")
	local pickup_unit = pickup_system:_spawn_pickup(
		pickup_settings,
		pickup_name,
		Unit.local_position(unit, 0),
		Quaternion.identity(),
		true,
		spawn_type
	)
end

-- Adapted from Sir Aiedail's "Spawn Sack Rats"
mod:hook_safe(DeathReactions.templates.ai_default.unit, "start", function(unit)
	if mod:is_enabled() then
		local breed_data = Unit.get_data(unit, "breed")
		breed_name = breed_data.name
		if breed_name == "critter_rat" then
			random_item(unit)
		end
	end
end)