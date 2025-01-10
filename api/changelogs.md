# Changelogs

## 0.6 
- **added timer and transformer library**

## 0.5
- **added structures such as: player_items_t, net_object_manager_t, item_info_manager_t, item_info_t, vec2<uint8_t>, vec3f, vec4f**
- **run_file(string file_name)** (runs script of that file)
- **stop_file(string file_name)** (stops script of that file)
- **get_item_info(int item_id)** (returns item_info_t struct by item id)
- **get_item_info_by_name(string name)** (returns item_info_t struct by name)
- **printps(string text)** (prints colored text like growtopia)
- **warp(string world)**
- **drop(int item_id, item_count)**
- **get_player(int net_id)** (returns player in world by net id)
- **get_nom()** (returns net object manager)
- **get_inventory()** (returns player_items_t struct)
- **get_local_player()** (returns local player (net avatar) struct) 
- **get_item_info_manager()** (returns item_info_manager_t struct)
- **send_varlist(varlist)** 

## 0.4
- **added structures such as: world_t, world_tile_map_t, world_object_map_t, tile_collision_type, tile_flag, tile_extra, tile_t, object_t**
- **get_world()** 
- **get_world().name** 
- **get_world().version** 
- **get_world().tile_map** 
- **get_world().tile_map.tiles**
- **get_world().object_map** 
- **get_world().object_map.objects** 

## 0.3
- **added structures such as: net_avatar_t, body_parts_t, body_part_type**
- **say(string text)** -- can work with: chat(string), talk(string)
- **wrench(int x, int y)**
- **punch(int x, int y, bool animation = false)**
- **place(int x, int y, int item_id, bool animation = false, bool to_client = false)**
- **find_path(int x, int y)** -- can work with teleport(x, y)
- **run_thread(function)**
- **remove_callback(string callback_name)** -- can work with remove_hook(string)
- **remove_callbacks()** -- can work with remove_hooks();
- **add_callback(string callback_name, callback_type (ON_VARIANT_LIST, ON_GAME_PACKET...), function)** -- can work with add_hook(string, callback_type, function)

## 0.2
- **added structures such as: net_avatar_t, body_parts_t, body_part_type**
- **say(string text)** -- can work with: chat(string), talk(string)
- **wrench(int x, int y)**
- **punch(int x, int y, bool animation = false)**
- **place(int x, int y, int item_id, bool animation = false, bool to_client = false)**
- **find_path(int x, int y)** -- can work with teleport(x, y)
- **run_thread(function)**
- **remove_callback(string callback_name)** -- can work with remove_hook(string)
- **remove_callbacks()** -- can work with remove_hooks();
- **add_callback(string callback_name, callback_type (ON_VARIANT_LIST, ON_GAME_PACKET...), function)** -- can work with add_hook(string, callback_type, function)

## 0.1
- **added structures such as: game_packet_t, game_packet_type, vec2i, vec2f**
- **log(string)**
- **sleep(int ms)**
- **send_packet(int type, string packet)**
- **send_packet_raw(game_packet_t, bool to_client = false)**
