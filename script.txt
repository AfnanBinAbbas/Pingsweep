#!/bin/bash

banner = f"""	
	
  _____ _                                         
 |  __ (_)                                        
 | |__) | _ __   __ _ _____      _____  ___ _ __  
 |  ___/ | '_ \ / _` / __\ \ /\ / / _ \/ _ \ '_ \ 
 | |   | | | | | (_| \__ \\ V  V /  __/  __/ |_) |
 |_|   |_|_| |_|\__, |___/ \_/\_/ \___|\___| .__/ 
                 __/ |                     | |    
                |___/                      |_|    

	
	                                		-by Afnan	 
                                                 v1.0.0                          """

if [ "$1" = "" ]; then

  echo "You forgot to enter the IP address!"

  echo "Syntax: ./pingsweep.sh your_ip_address"

else
echo "Avaialable IP addresses: "
  for ip in $(seq 1 254); do

    ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &

  done

fi
