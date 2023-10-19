#!/bin/bash  
 
mode=$1  
device_ids=$2  
 
IFS=',' read -ra DEVICE_ID_ARRAY <<< "$device_ids"  
 
if [ "$mode" == "start" ]; then  
  for device_id in "${DEVICE_ID_ARRAY[@]}"; do  
    echo "Starting occ.py with --deviceid $device_id"  
    python occ.py --deviceid "$device_id" &  
    sleep 1  
  done  
elif [ "$mode" == "end" ]; then  
  for device_id in "${DEVICE_ID_ARRAY[@]}"; do  
    echo "Killing occ.py with --deviceid $device_id"  
    pkill -f "python occ.py --deviceid $device_id"  
  done  
else  
  echo "Invalid mode. Use 'start' or 'end'."  
fi  
