WRS configurations:

1. 4 layers of WRSs

- localmaster:
    wrs: nwt0010m66
    dot-config: git_hash=9effb7a;role=timing_localmaster

- distribution:
    wrs: nwt0016m66, nwt0296m66
    dot-config: git_hash=9effb7a;role=timing_distribution

- access:
    wrs: nwt0297m66
    dot-config: git_hash=3d0a819;role=timing_access
