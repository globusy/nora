# Hooks
- **[ON_GAME_PACKET](#ON_GAME_PACKET)**
- **[ON_RAW_PACKET](#ON_RAW_PACKET)**

---

### ON_GAME_PACKET
```lua
-- prints game packet type (came from other players, server...)
function example_hook(packet)
    print("packet type: ".. packet.type_int)
end

add_hook("example", ON_GAME_PACKET, example_hook) 
-- instead of add_hook you can use add_callback too
```

---

### ON_RAW_PACKET
```lua
-- prints game packet type (your actions)
function example_hook(packet)
    print("packet type: ".. packet.type_int)
end

add_hook("example", ON_RAW_PACKET, example_hook) 
-- instead of add_hook you can use add_callback too
```
