local Utils = {}
function Utils.dupe_loader(entity, item, suffix, order)
    local operating_mode = settings.startup["aai-loaders-mode"].value
    assert(entity, "Missing entity definition")
    assert(item, "Missing item definition")
    assert(suffix, "Missing suffix")
    assert(order, "Missing order")

    local orig_item = data.raw["item"][item.name]
    entity.name = entity.name .. "-" .. suffix
    item.name = entity.name
    item.place_result = entity.name
    item.order = item.order .. "-" .. order
    entity.minable.result = item.name
    if entity.next_upgrade then
        entity.next_upgrade = entity.next_upgrade .. "-" .. suffix
    end
    local protos = { entity = entity, item = item }
    if operating_mode == "lubricated" then
        local pipe = table.deepcopy(data.raw["storage-tank"][orig_item.name .. "-pipe"])
        pipe.name = entity.name .. "-pipe"
        protos.pipe = pipe
    end
    return protos
end

return Utils
