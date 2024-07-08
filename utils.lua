-- utils.lua
local utils = {
    function EnemyTarget()
        local entities = world.entities()
        local target = nil
        for i = 1, #entities do
            if entities[i] ~= player.id() and world.is_player(entities[i]) then
                if target == nil then
                    target = entities[i]
                else
                    if player.distance_to_entity(entities[i]) < player.distance_to_entity(target) then
                        target = entities[i]
                    end
                end
            end
        end
    return target
end
}



return utils
