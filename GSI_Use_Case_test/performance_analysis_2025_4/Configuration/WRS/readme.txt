WRS configurations (SW v8.0):

Note: dot-config for HW v3.3 is cloned from dot-config for HW v3.4

4 layers of WRS:
- localmaster:
	wrs: nwt0010m66
	dot-config: dot-config_timing_localmaster_xenabay
- distribution:
	wrs: nwt0016m66, nwt0296m66
	dot-config: dot-config_timing_distribution
- access:
	wrs: nwt0297m66
	dot-config: dot-config_timing_access_all/mixed_xenabay
