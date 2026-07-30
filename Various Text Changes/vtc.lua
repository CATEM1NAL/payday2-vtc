if Global.CrimDusk then return end
-- Criminal Dusk contains its own version of VTC, abort

local vtc_options = io.load_as_json(SavePath .. "vtc.txt") or {
  vtc_main_menu = true,
  vtc_crimenet = true,
  vtc_preplanning = true,
  vtc_gameplay = true,
  vtc_discord = true
}

local VTCPath = ModPath

Hooks:Add("MenuManagerBuildCustomMenus", "vtc_menumanager", function()
  function MenuCallbackHandler:vtc_save_json(item)
    vtc_options[item:name()] = item:value() == "on"
    io.save_as_json(vtc_options, SavePath .. "vtc.txt")
  end
end)

Hooks:Add("LocalizationManagerPostInit", "vtc_loc", function(loc)
  loc:load_localization_file(VTCPath .. "loc/fixes.json")
  if vtc_options.vtc_main_menu then
    loc:load_localization_file(VTCPath .. "loc/menu.json")
    if not CrimDawn then
      loc:load_localization_file(VTCPath .. "loc/cd_compat/menu.json")
    end
  end
  if vtc_options.vtc_crimenet then
    loc:load_localization_file(VTCPath .. "loc/crimenet.json")
  end
  if vtc_options.vtc_preplanning then
    loc:load_localization_file(VTCPath .. "loc/preplanning.json")
  end
  if vtc_options.vtc_gameplay then
    loc:load_localization_file(VTCPath .. "loc/gameplay.json")
    loc:load_localization_file(VTCPath .. "loc/hints.json")
  end
  if vtc_options.vtc_discord then
    loc:load_localization_file(VTCPath .. "loc/discord.json")
  end
end)

MenuHelper:LoadFromJsonFile(VTCPath .. "vtc_menu.txt", nil, vtc_options)