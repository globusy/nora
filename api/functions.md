## functions
* **[log(string)](#log)**
* **[sleep(int ms)](#sleep)**
* **[printps(string)](#printps)**
* **[set_fps_limit(float)](#set_fps_limit)**
* **[send_packet(int type, string packet)](#send_packet)**
* **[send_packet_raw(table game_packet_t, bool to_client = false)](#send_packet_raw)**
* **[get_ping()](#get_ping)**
* **[get_world()](#get_world)**
* **[get_players()](#get_players)**
* **[get_inventory()](#get_inventory)**
* **[get_local_player()](#get_local_player)**
* **[get_item_info_manager()](#get_item_info_manager)**
* **[warp(string world name)](#warp)**
* **[drop(int item_id, int count)](#drop)**

### log
```lua
-- logs to growtopia console
log("Hello Nora!")
```

### sleep
```lua
sleep(1337) -- sleeps 1337 milliseconds
```

### printps
```lua
-- prints to console colorful like growtopia's game console
printps("`9Hello `@Nora```c!``.")
```

### set_fps_limit
```lua
-- sets fps limit of growtopia app
set_fps_limit(90) -- sets max fps to 90
set_fps_limit(0) -- sets max fps unlimited
```

### send_packet
```lua
-- sends packet to game
send_packet(2, "action|input\n|text|Hello Nora!")
```

### send_packet_raw
```lua
-- sends raw packet to game
packet = {}
packet.type = game_packet_type.state -- or packet.type_int = 0
packet.flags = packet_flag.facing_right -- or packet.flags_int = 48
send_packet_raw(packet) 
```

### get_ping
```lua
-- logs your connection ping
log("`9your current ping:`` `@" .. get_ping() .. "``.")
```

### get_world
```lua
-- logs your world name
log("`9current world name:`` `@" .. get_world().name .. "``.")
```

### get_players
```lua
-- prints players name in world
for _, player in ipairs(get_players()) do
    printps(player.name)
end
```

### get_inventory
```lua
-- prints inventory item's id and count
for _, item in ipairs(get_inventory()) do
    printps("item id, count: " .. item.item_id ..", ".. item.count)
end
```

### get_local_player
```lua
-- logs local player name
log("`9local player name:`` `@" .. get_local_player().name .. "``.")
```

### get_item_info_manager
```lua
-- logs item id (2) name 'Dirt' 
item_info_manager = get_item_info_manager()
log("`9item id (2) name:`` `@" .. item_info_manager.get_item(2).name .. "``.")
```

### warp
```lua
-- warps to world
warp("norabetter")
```

### drop
```lua
-- drops all inventory
item_info_manager = get_item_info_manager()
for _, item in ipairs(get_inventory()) do
     item_info = item_info_manager.get_item(item.item_id)
     if item_info.flags ~= item_flag.untradeable then -- checks item untradeable or not
        drop(item.item_id, item.count)
     end
end
```




