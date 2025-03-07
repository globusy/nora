# Hooks
- **[ON_VARIANT_LIST](#ON_VARIANT_LIST)**
- **[ON_TEXT_PACKET](#ON_TEXT_PACKET)**
- **[ON_GAME_PACKET](#ON_GAME_PACKET)**
- **[ON_RAW_PACKET](#ON_RAW_PACKET)**


---

### ON_VARIANT_LIST
```lua
-- example variant list hook to handle the variant list
function on_variant_list(varlist)
    -- Iterate through the provided varlist
    for i = 0, #varlist do
        print("variant " .. i .. ": " .. varlist[i])
    end
end

add_hook("varlist", ON_VARIANT_LIST, on_variant_list) 
-- instead of add_hook you can use add_callback too
```

---

### ON_TEXT_PACKET
```lua
-- blocks slash commands
function text_packet_hook(type, packet)
    if packet:find("action|input\n|text|/") then
		return true;
	end
end

add_hook("text_packet", ON_TEXT_PACKET, text_packet_hook) 
-- instead of add_hook you can use add_callback too
```

---

### ON_GAME_PACKET
```lua
-- prints game packet type (came from other players, server...)
function game_packet_hook(packet)
    print("packet type: ".. packet.type_int)
end

add_hook("game_packet", ON_GAME_PACKET, game_packet_hook) 
-- instead of add_hook you can use add_callback too
```

---

### ON_RAW_PACKET
```lua
-- prints game packet type (your actions)
function on_raw_packet(packet)
    print("packet type: ".. packet.type_int)
end

add_hook("raw_packet", ON_RAW_PACKET, on_raw_packet) 
-- instead of add_hook you can use add_callback too
```
