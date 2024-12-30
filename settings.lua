data:extend {
    {
        type = "int-setting",
        name = "aai-loaders-stacking-filtering-stack-size",
        setting_type = "startup",
        default_value = 4,
        order = "a",
    },
    {
        type = "bool-setting",
        name = "aai-loaders-stacking-filtering-enable-stacking",
        setting_type = "startup",
        default_value = true,
        order = "b",
    },
    {
        type = "bool-setting",
        name = "aai-loaders-stacking-filtering-enable-lane-filtering",
        setting_type = "startup",
        default_value = true,
        order = "c",
    },
    {
        type = "bool-setting",
        name = "aai-loaders-stacking-filtering-enable-stacking-lane-filtering",
        setting_type = "startup",
        default_value = true,
        order = "c",
    },
    {
        type = "bool-setting",
        name = "aai-loaders-stacking-filtering-lane-splitter-integration",
        setting_type = "startup",
        default_value = true,
        order = "z",
    },
}

local function dlc_disable(name)
    local setting = data.raw["bool-setting"]["aai-loaders-stacking-filtering-" .. name]
    setting.forced_value = false
    setting.hidden = true
end

if not feature_flags["space_travel"] then
    dlc_disable("enable-stacking")
    dlc_disable("enable-stacking-lane-filtering")
end
