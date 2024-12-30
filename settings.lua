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
