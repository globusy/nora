## Structs

* **[vec2<uint8_t>](#vec2_uint8_t)**
* **[vec2i](#vec2i)**
* **[vec2f](#vec2f)**
* **[vec3f](#vec3f)**
* **[vec4f](#vec4f)**
* **[tile_t](#tile_t)**
* **[world_object_t](#world_object_t)**
* **[inventory_item_t](#inventory_item_t)**
* **[player_items_t](#player_items_t)**
* **[world_t](#world_t)**
* **[item_info_t](#item_info_t)**
* **[net_avatar_t](#net_avatar_t)**
* **[game_packet_t](#game_packet_t)**

---

### vec2<uint8_t>
| Description | Name | Type |
|:------------|:----:|:-----|
| X-coordinate | **x** | uint8_t |
| Y-coordinate | **y** | uint8_t |

---

### vec2i
| Description | Name | Type |
|:------------|:----:|:-----|
| X-coordinate | **x** | int |
| Y-coordinate | **y** | int |

---

### vec2f
| Description | Name | Type |
|:------------|:----:|:-----|
| X-coordinate | **x** | float |
| Y-coordinate | **y** | float |

---

### vec3f
| Description | Name | Type |
|:------------|:----:|:-----|
| X-coordinate | **x** | float |
| Y-coordinate | **y** | float |
| Z-coordinate | **z** | float |

---

### vec4f
| Description | Name | Type |
|:------------|:----:|:-----|
| X-coordinate | **x** | float |
| Y-coordinate | **y** | float |
| Z-coordinate | **z** | float |
| W-coordinate | **w** | float |

---

### tile_t
| Description | Name | Type |
|:------------|:----:|:-----|
| Foreground tile ID | **id** | int |
| Background tile ID | **count** | int |
| Tile flags | **flag** | int |
| Tile position | **pos** | vec2i |
| Extra tile data | **extra** | pointer |

---

### world_object_t
| Description | Name | Type |
|:------------|:----:|:-----|
| Object ID | **id** | int |
| Object count | **count** | int |
| Object amount | **amount** | int |
| Object flags | **flags** | int |
| Object unique ID | **oid** | int |
| Object position | **pos** | vec2i |

---

### inventory_item_t
| Description | Name | Type |
|:------------|:----:|:-----|
| Item ID | **id** | int |
| Item count | **count** | int |
| Item amount | **amount** | int |
| Item flags | **flags** | int |

---

### player_items_t
| Description | Name | Type |
|:------------|:----:|:-----|
| Check if an item exists | **id** | function(int) -> bool |
| Get item count | **get_item_count** | function(int) -> int |
| Get all items | **get_items** | function() -> table |
| Get specific item | **get_item** | function(int) -> inventory_item_t |

---

### world_t
| Description | Name | Type |
|:------------|:----:|:-----|
| World version | **version** | int |
| Tile map | **tile_map** | world_tile_map_t |
| Object map | **object_map** | world_object_map_t |
| World name | **name** | string |

---

### item_info_t
| Description | Name | Type |
|:------------|:----:|:-----|
| Item name | **name** | string |
| Item ID | **id** | int |
| Collision type | **collision_type** | [tile_collision_type](#tile_collision_type) |
| Hits to destroy | **break_hits** | int |
| Clothing type | **clothing_type** | [body_part_type](#body_part_type) |
| Body part | **body_part** | [body_part_type](#body_part_type) |
| Item flags | **flags** | int |
| Item rarity | **rarity** | int |
| Item grow time | **grow_time** | int |

---

### net_avatar_t
| Description | Name | Type |
|:------------|:----:|:-----|
| Player name | **name** | string |
| Country | **country** | string |
| Network ID | **net_id** | int |
| User ID | **user_id** | int |
| Facing left | **facing_left** | bool |
| Invisible state | **invis** | bool |
| Moderator status | **mod** | bool |
| Super Moderator status | **smod** | bool |
| Position | **pos** | vec2f |
| Tile position | **tile** | vec2i |
| Clothing details | **clothes** | body_parts_t |
| Body parts | **body_parts** | body_parts_t |

---

### game_packet_t
| Description | Name | Type |
|:------------|:----:|:-----|
| Packet type | **type** | [game_packet_type](#game_packet_type) |
| Object type | **object_type** | int |
| First count value | **count1** | int |
| Second count value | **count2** | int |
| Network ID | **netid** | int |
| Item ID | **item** | int |
| Flags | **flags** | int |
| Float value 1 | **float1** | float |
| Integer data | **int_data** | int |
| First position | **pos** | vec2f |
| Second position | **pos2** | vec2f |
| Float value 2 | **float2** | float |
| Tile position | **tile** | vec2i |
| Extra data size | **extra_data_size** | int |

---

## Enums

### tile_flag
| Name | Value |
|:-----|:-----:|
| **none** | `tile_flag::none` |
| **extra_data** | `tile_flag::extra_data` |
| **locked** | `tile_flag::locked` |
| **spliced_tree** | `tile_flag::spliced_tree` |
| **tree_will_drop_seed** | `tile_flag::tree_will_drop_seed` |
| **tree** | `tile_flag::tree` |
| **flipped** | `tile_flag::flipped` |
| **enabled** | `tile_flag::enabled` |
| **public_** | `tile_flag::public_` |
| **extra_frame** | `tile_flag::extra_frame` |
| **silenced** | `tile_flag::silenced` |
| **water** | `tile_flag::water` |
| **glue** | `tile_flag::glue` |
| **fire** | `tile_flag::fire` |
| **red** | `tile_flag::red` |
| **green** | `tile_flag::green` |
| **blue** | `tile_flag::blue` |

---

### body_part_type
| Name | Value |
|:-----|:-----:|
| **hat** | `body_part_type::hat` |
| **shirt** | `body_part_type::shirt` |
| **pants** | `body_part_type::pants` |
| **shoes** | `body_part_type::shoes` |
| **face_item** | `body_part_type::face_item` |
| **hand** | `body_part_type::hand` |
| **back** | `body_part_type::back` |
| **hair** | `body_part_type::hair` |
| **chest_item** | `body_part_type::chest_item` |

---

### tile_collision_type
| Name | Value |
|:-----|:-----:|
| **none** | `tile_collision_type::none` |
| **solid** | `tile_collision_type::solid` |
| **jump_through** | `tile_collision_type::jump_through` |
| **gateway** | `tile_collision_type::gateway` |
| **if_off** | `tile_collision_type::if_off` |
| **one_way** | `tile_collision_type::one_way` |
| **vip** | `tile_collision_type::vip` |
| **jump_down** | `tile_collision_type::jump_down` |
| **adventure** | `tile_collision_type::adventure` |
| **if_on** | `tile_collision_type::if_on` |
| **faction** | `tile_collision_type::faction` |
| **guild** | `tile_collision_type::guild` |
| **cloud** | `tile_collision_type::cloud` |
| **friends_enterance** | `tile_collision_type::friends_enterance` |

---

### game_packet_type
| Name | Value |
|:-----|:-----:|
| **state** | `game_packet_type::state` |
| **call_function** | `game_packet_type::call_function` |
| **update_status** | `game_packet_type::update_status` |
| **tile_change_request** | `game_packet_type::tile_change_request` |
| **send_map_data** | `game_packet_type::send_map_data` |
| **send_tile_update_data** | `game_packet_type::send_tile_update_data` |
| **send_tile_update_data_multiple** | `game_packet_type::send_tile_update_data_multiple` |
| **tile_activate_request** | `game_packet_type::tile_activate_request` |
| **tile_apply_damage** | `game_packet_type::tile_apply_damage` |
| **send_inventory_state** | `game_packet_type::send_inventory_state` |
| **item_activate_request** | `game_packet_type::item_activate_request` |
| **item_activate_object_request** | `game_packet_type::item_activate_object_request` |
| **send_tile_tree_state** | `game_packet_type::send_tile_tree_state` |
| **modify_item_inventory** | `game_packet_type::modify_item_inventory` |
| **item_change_object** | `game_packet_type::item_change_object` |
| **send_lock** | `game_packet_type::send_lock` |
| **send_item_database_data** | `game_packet_type::send_item_database_data` |
| **send_particle_effect** | `game_packet_type::send_particle_effect` |
| **set_icon_state** | `game_packet_type::set_icon_state` |
| **item_effect** | `game_packet_type::item_effect` |
| **set_character_state** | `game_packet_type::set_character_state` |
| **ping_reply** | `game_packet_type::ping_reply` |
| **ping_request** | `game_packet_type::ping_request` |
| **got_punched** | `game_packet_type::got_punched` |
| **app_check_response** | `game_packet_type::app_check_response` |
| **app_integrity_fail** | `game_packet_type::app_integrity_fail` |
| **disconnect** | `game_packet_type::disconnect` |
| **battle_join** | `game_packet_type::battle_join` |
| **battle_event** | `game_packet_type::battle_event` |
| **use_door** | `game_packet_type::use_door` |
| **send_parental** | `game_packet_type::send_parental` |
| **gone_fishin** | `game_packet_type::gone_fishin` |
| **steam** | `game_packet_type::steam` |
| **pet_battle** | `game_packet_type::pet_battle` |
| **npc** | `game_packet_type::npc` |
| **special** | `game_packet_type::special` |
| **send_particle_effect_v2** | `game_packet_type::send_particle_effect_v2` |
| **active_arrow_to_item** | `game_packet_type::active_arrow_to_item` |
| **select_tile_index** | `game_packet_type::select_tile_index` |
| **send_player_tribute_data** | `game_packet_type::send_player_tribute_data` |
| **ftue_set_item_to_quick_inventory** | `game_packet_type::ftue_set_item_to_quick_inventory` |
| **pve_npc** | `game_packet_type::pve_npc` |
| **pvpcard_battle** | `game_packet_type::pvpcard_battle` |
| **pve_apply_player_damage** | `game_packet_type::pve_apply_player_damage` |
| **pve_npc_position_update** | `game_packet_type::pve_npc_position_update` |
| **set_extra_mods** | `game_packet_type::set_extra_mods` |
| **on_step_on_tile_mod** | `game_packet_type::on_step_on_tile_mod` |
