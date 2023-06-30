--[[
for tech_name, _ in pairs(data.raw.technology) do
  if bobmods.lib.tech.has_prerequisite(tech_name, "old-tech-name") then
    bobmods.lib.tech.replace_prerequisite(tech_name, "old-tech-name", "new-tech-name")
  end
end
]]