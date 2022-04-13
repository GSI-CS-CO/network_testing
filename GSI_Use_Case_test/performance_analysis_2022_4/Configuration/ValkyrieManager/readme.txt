XenaBay configurations for 3 testbeds:

1. 4 layers of WRSs

- ValkyrieManager config:
    ttf_4wrs_traffic_latency.vmcfg

- port config:
    <portname>_access.xpc

2. single WRS (VLAN tagging by WRS)

- ValkyrieManager config:
    ttf_nwt0297_traffic_latency.vmcfg

- port config:
    <portname>_access.xpc

3. single WRS (VLAN tagging by XenaBay)

- ValkyrieManager config:
    ttf_nwt0297_vlan_traffic_latency.vmcfg

- port config:
    <portname>_vlan.xpc
