# Hooks
- **[ON_GAME_PACKET](#ON_GAME_PACKET)**

---

### ON_GAME_PACKET
```lua
-- prints game packet type 
function example_hook(packet)
    print("packet_type: ".. packet.type_int)
end

add_hook("example", ON_GAME_PACKET, example_hook) 
-- instead of add_hook you can use add_callback too
```

