tile_map = get_world().tile_map

-- gets tiles of the world you can use 'getTiles()'
for i, tile in ipairs(tile_map.tiles) do
    if tile == nil then
        print("Tile " .. i .. " is invalid (nil).")
    else
        print("Tile " .. i)
        print("  Foreground:", tile.fg)
        print("  Background:", tile.bg)
        print("  Flags:", tile.flags)
        print("  Position:", tile.pos.x, tile.pos.y)
        print("  Extra:", tile.extra)
    end
end

-- Alternatively, use get_tile for specific coordinates
local tile = tile_map:get_tile(0, 0) -- Get the tile at position (0, 0)

if tile == nil then
    print("No tile found at (0, 0).")
else
    print("Specific Tile at (0, 0):")
    print("  Foreground:", tile.fg)
    print("  Background:", tile.bg)
    print("  Flags:", tile.flags)
    print("  Position:", tile.pos.x, tile.pos.y)
    print("  Extra:", tile.extra)
end

-- gets tile by id like tiles[2] forgot why added
local tile_by_id = tile_map:get_tile_by_id(2) 

if tile_by_id == nil then
    print("No tile found with ID 0.")
else
    print("Tile with ID 2:")
    print("  Foreground:", tile_by_id.fg)
    print("  Background:", tile_by_id.bg)
    print("  Flags:", tile_by_id.flags)
    print("  Position:", tile_by_id.pos.x, tile_by_id.pos.y)
    print("  Extra:", tile_by_id.extra)
end

-- prints world's size as x and y
print("Map Size:", tile_map.size.x, tile_map.size.y)
