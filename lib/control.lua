local function check_for_error(event)
  local printer = game.print

  if script.active_mods["Insectitron"] then
      if settings.startup["Insectitron-issue"].value then
      printer(
        "\nInsectitron mod currenty has recipe that don't work due to items it uses.\nYou can dissable this message in startup settings if u don't want the warnings."
      )
      end
  end

  if script.active_mods["SpaceMod"] then
    if settings.startup["SpaceMod-issue"].value then
      game.print(
        "\nSpaceMod should be working fine.\nPlease report things that could been missed.\nYou can dissable this message in startup settings if u don't want the warnings."
      )
    end
  end

  if script.active_mods["TeleportationEquipment"] then
    if settings.startup["Teleportation-issue"].value then
      game.print(
        "\nTeleportationEquipment mod has technology changes made by this mod.\nYou can dissable this message in startup settings if u don't want the warnings."
      )
    end
  end

  if script.active_mods["osm-radioactivity"] then
    if settings.startup["radioactivity-issue"].value then
      game.print(
        "\nosm-radioactivity Should be working fine has no changes to it.\nShould u find issue please let me know\nYou can dissable this message in startup settings if u don't want the warnings."
      )
    end
  end
end

local function on_configuration_changed()
  check_for_error()

end

script.on_init(on_configuration_changed)
script.on_configuration_changed(on_configuration_changed)
script.on_event(defines.events.on_player_created, check_for_error)