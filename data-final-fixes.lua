-- checks that ERPC special science has only ERPC item in the ingredience list
-- and removes other science packs

local techs = {
  data.raw.technology["space-station-assembly"],
  data.raw.technology["orbital-ai-core"],
  data.raw.technology["vacuum-smelting"],
  data.raw.technology["space-mining-theory"],
  data.raw.technology["extremely-advanced-rocket-payloads"],
  data.raw.technology["advanced-battery-research-1"],
  data.raw.technology["advanced-battery-research-11"],
  data.raw.technology["advanced-battery-research-21"],
  data.raw.technology["advanced-fan-research-1"],
  data.raw.technology["advanced-fan-research-11"],
  data.raw.technology["advanced-fan-research-21"],
  data.raw.technology["space-telescope-research-1"],
  data.raw.technology["space-telescope-research-11"],
  data.raw.technology["space-telescope-research-21"],
  data.raw.technology["robot-global-positioning-system-1"],
  data.raw.technology["robot-global-positioning-system-11"],
  data.raw.technology["robot-global-positioning-system-21"],
  data.raw.technology["stack-inserter-research-1"],
  data.raw.technology["stack-inserter-research-5"],
  data.raw.technology["stack-inserter-research-10"],
  data.raw.technology["stack-inserter-research-15"],
}

--angels-enable-tech - boolean
if mods["angelsindustries"] then
if settings.startup["angels-enable-tech"].value then
  for _, tech in pairs(techs) do
    for key, item in pairs(tech.unit.ingredients) do
      if item.name and
          item.name ~= "station-science" and
          item.name ~= "planetary-data"
      then
        tech.unit.ingredients[key] = nil
       end
      end
    end
  end
end
