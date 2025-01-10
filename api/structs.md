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
| Collision type | **collision_type** | tile_collision_type |
| Hits to destroy | **break_hits** | int |
| Clothing type | **clothing_type** | body_part_type |
| Body part | **body_part** | body_part_type |
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
| Packet type | **type** | game_packet_type |
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
