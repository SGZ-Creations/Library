local function check_for_error(event)
  local printer = game.print

  if script.active_mods["Insectitron"] then
      if settings.startup["Insectitron-issue"].value then
          printer(
            "The mod currenty has recipe that don't work due to items it uses.\nYou can dissable this message in startup settings if u don't want the warnings."
          )
      end
  end

  if script.active_mods["SpaceMod"] then
    if settings.startup["SpaceMod-issue"].value then
        game.print(
          "The mod currenty has recipe that don't work due to items it uses Compatibilit is being worked on.\nYou can dissable this message in startup settings if u don't want the warnings."
        )
    end
  end

  if script.active_mods["TeleportationEquipment"] then
    if settings.startup["Teleportation-issue"].value then
        game.print(
          "This mod is block by tech.\nYou can dissable this message in startup settings if u don't want the warnings."
        )
    end
  end

  if script.active_mods["osm-radioactivity"] then
    if settings.startup["radioactivity-issue"].value then
        game.print(
          "This mod is block by tech.\nYou can dissable this message in startup settings if u don't want the warnings."
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