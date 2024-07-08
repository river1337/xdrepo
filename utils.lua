-- utils.lua
local utils = {
    kaTarget = function(wrld, plyr)
        local entities = wrld.entities()
        local target = nil
        for i = 1, #entities do
            if entities[i] ~= plyr.id() and wrld.is_player(entities[i]) then
                if target == nil then
                    target = entities[i]
                else
                    if plyr.distance_to_entity(entities[i]) < plyr.distance_to_entity(target) then
                        target = entities[i]
                    end
                end
            end
        end
        return target
    end   
}
