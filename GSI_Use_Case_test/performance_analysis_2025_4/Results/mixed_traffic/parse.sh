#!/bin/bash

# $1 : *.csv filename

param=("TxPackets" "RxPackets")  # number of sent and received packets
b2b_col="56-58,68-70"            # column in *.csv corresponding to ports for the B2B unicast
dm_col="20"                      # column in *.csv corresponding to ports for the DM broadcast
service_col="38"                 # column in *.csv corresponding to ports for the DM broadcast

latencies=("AggrMinLatency" "AggrAvgLatency" "AggrMaxLatency")
ports=("P000:3,4" "P001:6,7" "P002:9,10" "P003:12,13" "P004:15,16" "P005:18,19" \
        "P020:21-37" "P021:39-55" "P023:56" "P024:57" "P025:58" \
        "P040:60,61" "P041:63,64" "P042:66,67" "P043:68" "P044:69" "P045:70")

usage() {
    echo "Missing an user input parameter!"
    echo
    echo "Usage: $0 csv_filename"
    echo
    echo "Example: $0 gsi_use_case_dm_2m_90_b2b_2m_90.csv"
    echo
}

parse_tx_rx_packets() {
    # $1 : filename

    echo "--- DM broadcast ---"
    for p in ${param[@]}; do
        grep $p $1 | cut -d ";" -f $dm_col
    done

    echo "--- Service  trunk ---"
    for p in ${param[@]}; do
        grep $p $1 | cut -d ";" -f $service_col
    done

    echo "--- B2B unicast ---"
    for p in ${param[@]}; do
        grep $p $1 | cut -d ";" -f $b2b_col
    done
}

parse_latency() {
    # $1 : filename

    echo "--- Latencies ---"

    for p in ${ports[@]}; do
        for l in ${latencies[@]}; do
            port_name=${p%%:*}
            port_col=${p##*:}
            echo "$l $port_name: "; grep $l $1 | cut -d ";" -f $port_col | sed -e 's/\r//g' | tr ';' '\n' | sort -g
            echo
        done
    done
}

if [ -z "$1" ]; then
    usage
    exit 1
fi

if [ ! -e "$1" ]; then
    echo "Error: $1 not found!"
    exit 1
fi

# Parse the number of TX/RX packets
#parse_tx_rx_packets $1

# Parse the latency values
parse_latency $1
