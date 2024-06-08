#!/bin/bash

# Customize your colors here
text_color="\e[30m"      # Black
highlight_color="\e[103m" # Cyan
reset_color="\e[0m"       # Reset color

# Customize banner size here
banner_size=25

banner=$(cat <<"EOF"


   ██████╗ ██╗███╗   ██╗ ██████╗ ███████╗██╗    ██╗███████╗███████╗██████╗ 
   ██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝██║    ██║██╔════╝██╔════╝██╔══██╗
   ██████╔╝██║██╔██╗ ██║██║  ███╗███████╗██║ █╗ ██║█████╗  █████╗  ██████╔╝
   ██╔═══╝ ██║██║╚██╗██║██║   ██║╚════██║██║███╗██║██╔══╝  ██╔══╝  ██╔═══╝
   ██║     ██║██║ ╚████║╚██████╔╝███████║╚███╔███╔╝███████╗███████╗██║ 
   ╚═╝     ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝ ╚══╝╚══╝ ╚══════╝╚══════╝╚═╝
		                                	-by Afnan	 
	                                                 v1.0.0                          
EOF
)

# Function to display banner
display_banner() {
    local size=$1
    local highlighted_banner=$(echo -e "${highlight_color}${banner}${reset_color}")
    echo -e "${text_color}${highlighted_banner}${reset_color}"
}

# Display the banner
display_banner "$banner_size"

echo "________________________________________"
echo " "

if [ "$1" = "" ]; then

  echo "You forgot to enter the IP address!"

  echo "Syntax: ./pingsweep.sh your_ip_address"

else
  echo "Available IP addresses: "
  for ip in $(seq 1 254); do
    ping -c 1 "$1.$ip" | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
  done
fi
