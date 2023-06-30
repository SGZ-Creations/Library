local function check_for_error(event)
  local printer = game.print

  if script.active_mods["Insectitron"] then
      if settings.startup["Insectitron-issue"].value then
      printer(
        "\nInsectitron mod should currently be working as expected.\nYou can dissable this message in startup settings if u don't want the warnings."
      )
      end
  end

  if script.active_mods["SpaceMod"] then
    if settings.startup["SpaceMod-issue"].value then
      game.print(
        "\nSpaceMod has changes made by P.A.R mod.\nCurrently bugged if played with bob's.\nPlease report things that could been missed.\nYou can dissable this message in startup settings if u don't want the warnings."
      )
    end
  end

  if script.active_mods["TeleportationEquipment"] then
    if settings.startup["Teleportation-issue"].value then
      game.print(
        "\nTeleportationEquipment mod has technology changes made by P.A.R mod.\nThat also causes issue with shotcuts\nYou can dissable this message in startup settings if u don't want the warnings."
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