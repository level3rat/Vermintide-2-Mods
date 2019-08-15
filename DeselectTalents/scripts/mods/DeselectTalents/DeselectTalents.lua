local mod = get_mod("DeselectTalents")

mod:hook_origin(HeroWindowTalents, "_is_talent_pressed", function (self, ...)
	local widgets_by_name = self._widgets_by_name
		for i = 1, NumTalentRows, 1 do
			local widget = widgets_by_name["talent_row_" .. i]
			local content = widget.content
			for j = 1, NumTalentColumns, 1 do
				local name_suffix = "_" .. tostring(j)
				local hotspot_name = "hotspot" .. name_suffix
				local hotspot = content[hotspot_name]
				if hotspot.on_pressed and not hotspot.disabled and hotspot.is_selected then
					return i, 0
				end
				if hotspot.on_pressed and not hotspot.disabled and not hotspot.is_selected then
					return i, j
				end
			end
		end
	end
)