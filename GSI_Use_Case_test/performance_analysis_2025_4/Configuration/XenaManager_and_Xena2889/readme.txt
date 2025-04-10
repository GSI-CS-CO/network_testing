XenaBay configurations:

1. B2B traffic, 17->1, 4 layers of WRS

- Xena2889 configuration:
    RFC_2889_4_switches_b2b_17.x2889

Note: no need to test B2B traffic for 7->1 topology

2. DM broadcast, 4 layers of WRS

- Xena2889 configuration:
    RFC_2889_4_switches_dm_broadcast.x2889

3. Mixed traffic (DM, B2B and others), 4 layers of WRSs

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

3.1. Test with XenaManager v1.96

3.1.1. Start XenaManager
3.1.2. Load configuration: rename 'xenabay_gsi_use_case_4_layers.vmcfg' to 'xenabay_gsi_use_case_4_layers.xmcfg' and open.
3.1.3. Load the port configuration

Port 0 (module 0): reserve port -> load port configuration: port_dm_broadcast_100m.xpc
