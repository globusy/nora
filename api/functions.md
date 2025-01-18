## functions
* **[log(string)](#log)**
* **[sleep(int ms)](#sleep)**
* **[send_packet(int type, string packet)](#send_packet)**
* **[send_packet_raw(table game_packet_t, bool to_client = false)](#send_packet_raw)**

### log
```lua
-- logs to growtopia console
log("Hello Nora!")
```

### sleep
```lua
sleep(1337) -- sleeps 1337 milliseconds
```


### send_packet
```lua
-- sends packet to game
send_packet(2, "action|input\n|text|Hello Nora!")
```

### send_packet_raw
```lua
-- Sends Raw Packet to game
packet = {}
packet.type = game_packet_type.state -- or packet.type_int = 0
packet.flags_int = 48
send_packet_raw(packet) 
```
