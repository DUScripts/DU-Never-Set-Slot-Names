lights = {}
for slot_name, slot in pairs(unit) do
    if
        type(slot) == "table"
        and type(slot.export) == "table"
        and slot.getClass
        then
        local elementClass = slot.getClass():lower()
        system.print("elementClass: " .. elementClass)
        if elementClass:find("coreunit") then
            core = slot
        elseif elementClass:find("emitter") then
            emitter = slot
        elseif elementClass:find("screen") then
            screen = slot
        elseif elementClass:find("light") then
            table.insert(lights,slot)
        end
    end
end
