local Stacking = require("./prototypes/stacking")
local LaneFiltering = require("./prototypes/lane_filtering")
local make_stacking_lane_filtering = require("./prototypes/stacking_lane_filtering")

local function insert_all(ntable, sub)
    if not sub then return end
    for _, v in ipairs(sub) do
        table.insert(ntable, v)
    end
end

local has_stack_inserter = feature_flags["space_travel"] and (data.raw["inserter"]["stack-inserter"] and true or false)

local enable_stacking = settings.startup["aai-loaders-stacking-filtering-enable-stacking"].value and has_stack_inserter
local enable_lane_filtering = settings.startup["aai-loaders-stacking-filtering-enable-lane-filtering"].value
local enable_stacking_lane_filtering = settings.startup["aai-loaders-stacking-filtering-enable-stacking-lane-filtering"]
    .value and enable_stacking

local protos = {}
for k, v in pairs(data.raw["loader-1x1"]) do
    if k:find("aai-") == 1 then
        if enable_stacking then
            insert_all(protos,
                Stacking.make_stacking(table.deepcopy(v), table.deepcopy(data.raw["item"][k]),
                    enable_stacking_lane_filtering))
        end
        if enable_lane_filtering then
            insert_all(protos, LaneFiltering.make_lane_filtering(table.deepcopy(v), table.deepcopy(data.raw["item"][k])))
        end
        if enable_stacking_lane_filtering then
            insert_all(protos, make_stacking_lane_filtering(table.deepcopy(v), table.deepcopy(data.raw["item"][k])))
        end
    end
end

if #protos > 0 then
    data:extend(protos)
end
