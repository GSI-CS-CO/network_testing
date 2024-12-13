XenaBay configurations:

1. 4 layers of WRSs

- XenaManager config:
    xenabay_gsi_use_case_4_layers.vmcfg

- port/stream config: reserve port and load configuration
    port_dm_broadcast_100m.xpc (rate=100Mb/s, 113636 packet/s, size=90 bytes)
    port_b2b_10m.xpc (rate=10Mb/s, 11363 packet/s, size=90 bytes)

Notes:
    frame sizes are tailored to frame with timing messages (format fid 0x1): 90 = 1 timing message, 134 = 2 timing messages

Packet loss:
- B2B unicast at 100% TX rate
- more than 7x B2B nodes

2. Test with XenaManager v1.96

2.1. Start XenaManager
2.2. Load configuration: rename 'xenabay_gsi_use_case_4_layers.vmcfg' to 'xenabay_gsi_use_case_4_layers.xmcfg' and open.
2.3. Load the port configuration

Port 0 (module 0): reserve port -> load port configuration: port_dm_broadcast_100m.xpc