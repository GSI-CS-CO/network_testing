XenaBay configurations:

1. 4 layers of WRSs

- ValkyrieManager config:
    xenabay_gsi_use_case_4_layers.vmcfg (used to generate mixed traffic)

- port/stream config: reserve port and load configuration
    port_dm_broadcast_100m.xpc (DM broadcast)
    port_b2b_unicast_<rate>.xpc (B2B unicast)
    port_service_broadcast_140k.xpc (service broadcast)
    port_service_trunk_vid_2600_140k.xpc (service broadcast with VID=2600, for trunk port)

Notes:
    frame sizes correspond to timing messages (format fid 0x1): 90 = 1 timing message, 134 = 2 timing messages
