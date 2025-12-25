local recipe = data.raw.recipe
local technology = data.raw.technology

local function add_delivery(material)
  local delivery = util.table.deepcopy(recipe["iron-delivery"])
  delivery.name = material .. "-delivery"
  delivery.result = material

  data:extend({delivery})
end

if mods["SpaceMod"] then
  bobmods.lib.tech.add_prerequisite("fusion-reactor", "orbital-assembler-power-problem")
  bobmods.lib.tech.add_prerequisite("orbital-ai-core", "ftl-propulsion")
  bobmods.lib.tech.add_prerequisite("orbital-autonomous-fabricators", "space-station-assembly")
  bobmods.lib.tech.add_prerequisite("space-assembly", "space-assembler-theory")
  bobmods.lib.tech.add_prerequisite("space-station-assembly", "astrometrics")
  bobmods.lib.tech.add_prerequisite("space-station-assembly", "fuel-cells")
  bobmods.lib.tech.add_prerequisite("space-station-assembly", "fusion-reactor")
  bobmods.lib.tech.add_prerequisite("space-station-assembly", "habitation")
  bobmods.lib.tech.add_prerequisite("space-station-assembly", "life-support-systems")
  bobmods.lib.tech.add_prerequisite("space-station-assembly", "protection-fields")
  bobmods.lib.tech.add_prerequisite("space-station-assembly", "space-casings")
  bobmods.lib.tech.add_prerequisite("space-station-assembly", "space-thrusters")
  bobmods.lib.tech.add_prerequisite("space-station-assembly", "spaceship-command")
  bobmods.lib.tech.add_prerequisite("spy-shuttle", "space-telescope")

  bobmods.lib.tech.remove_prerequisite("space-assembly", "rocket-silo")
  bobmods.lib.tech.remove_prerequisite("space-station-assembly", "extremely-advanced-rocket-payloads")

  table.insert(technology["space-assembly"].unit.ingredients, {"space-science-pack", 1})
  table.insert(technology["space-assembly"].unit.ingredients, {"utility-science-pack", 1})
  table.insert(technology["space-casings"].unit.ingredients, {"space-science-pack", 1})
  table.insert(technology["space-casings"].unit.ingredients, {"utility-science-pack", 1})
  table.insert(technology["space-construction"].unit.ingredients, {"space-science-pack", 1})
  table.insert(technology["space-construction"].unit.ingredients, {"utility-science-pack", 1})
  table.insert(technology["protection-fields"].unit.ingredients, {"space-science-pack", 1})
  table.insert(technology["fusion-reactor"].unit.ingredients, {"space-science-pack", 1})
  table.insert(technology["space-thrusters"].unit.ingredients, {"space-science-pack", 1})
  table.insert(technology["space-thrusters"].unit.ingredients, {"utility-science-pack", 1})
  table.insert(technology["fuel-cells"].unit.ingredients, {"space-science-pack", 1})
  table.insert(technology["habitation"].unit.ingredients, {"space-science-pack", 1})
  table.insert(technology["life-support-systems"].unit.ingredients, {"space-science-pack", 1})
  table.insert(technology["spaceship-command"].unit.ingredients, {"space-science-pack", 1})
end
if mods["SpaceModFeorasFork"] then
  bobmods.lib.tech.add_prerequisite("fusion-reactor", "orbital-assembler-power-problem")
  bobmods.lib.tech.add_prerequisite("orbital-ai-core", "ftl-propulsion")
  bobmods.lib.tech.add_prerequisite("orbital-autonomous-fabricators", "space-station-assembly")
  bobmods.lib.tech.add_prerequisite("space-assembly", "space-assembler-theory")
  bobmods.lib.tech.add_prerequisite("space-station-assembly", "astrometrics")
  bobmods.lib.tech.add_prerequisite("space-station-assembly", "fuel-cells")
  bobmods.lib.tech.add_prerequisite("space-station-assembly", "fusion-reactor")
  bobmods.lib.tech.add_prerequisite("space-station-assembly", "habitation")
  bobmods.lib.tech.add_prerequisite("space-station-assembly", "life-support-systems")
  bobmods.lib.tech.add_prerequisite("space-station-assembly", "protection-fields")
  bobmods.lib.tech.add_prerequisite("space-station-assembly", "space-casings")
  bobmods.lib.tech.add_prerequisite("space-station-assembly", "space-thrusters")
  bobmods.lib.tech.add_prerequisite("space-station-assembly", "spaceship-command")
  bobmods.lib.tech.add_prerequisite("spy-shuttle", "space-telescope")

  bobmods.lib.tech.remove_prerequisite("space-assembly", "rocket-silo")
  bobmods.lib.tech.remove_prerequisite("space-station-assembly", "extremely-advanced-rocket-payloads")
end
if mods["bobinserters"] and settings.startup["ERPCSESC-use-bobinserters"].value then
  table.insert(recipe["advanced-assembler"].ingredients, {"express-stack-inserter", 10})
  table.insert(recipe["autonomous-space-mining-drone"].ingredients, {"express-stack-filter-inserter", 100})
  table.insert(recipe["orbital-fabricator-component"].ingredients, {"express-stack-filter-inserter", 500})
else
  table.insert(recipe["advanced-assembler"].ingredients, {"stack-inserter", 10})
  table.insert(recipe["autonomous-space-mining-drone"].ingredients, {"stack-filter-inserter", 100})
  table.insert(recipe["orbital-fabricator-component"].ingredients, {"stack-filter-inserter", 500})
end