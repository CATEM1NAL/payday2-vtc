local vtc_options = io.load_as_json(SavePath .. "vtc.txt") or {
	vtc_main_menu = true,
	vtc_crimenet = true,
	vtc_preplanning = true,
	vtc_gameplay = true,
	vtc_discord = true
}

local VTCPath = ModPath
-- I don't know why I need this but BeardLib is overwriting ModPath inside
-- the LocalizationManagerPostInit hook, causing the mod to fail to load.

Hooks:Add("MenuManagerBuildCustomMenus", "vtc_menumanager", function()
	function MenuCallbackHandler:vtc_save_json(item)
		vtc_options[item:name()] = item:value() == "on"
		io.save_as_json(vtc_options, SavePath .. "vtc.txt")
	end
end)

Hooks:Add("LocalizationManagerPostInit", "vtc_loc", function(loc)
	loc:load_localization_file(VTCPath .. "fixes.json")
	if vtc_options.vtc_main_menu then
		loc:load_localization_file(VTCPath .. "menu.json")
	end
	if vtc_options.vtc_crimenet then
		LocalizationManager:load_localization_file(VTCPath .. "crimenet.json")
	end
	if vtc_options.vtc_preplanning then
		LocalizationManager:load_localization_file(VTCPath .. "preplanning.json")
	end
	if vtc_options.vtc_gameplay then
		LocalizationManager:load_localization_file(VTCPath .. "gameplay.json")
		LocalizationManager:load_localization_file(VTCPath .. "hints.json")
	end
	if vtc_options.vtc_discord then
		LocalizationManager:load_localization_file(VTCPath .. "discord.json")
	end
end)

MenuHelper:LoadFromJsonFile(ModPath .. "vtc_menu.txt", nil, vtc_options)