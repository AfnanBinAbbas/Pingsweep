# Ping Sweep Script

This is a simple Bash script to perform a ping sweep on a given subnet. It sends ICMP echo requests to all IP addresses in the specified subnet and reports the IP addresses that respond.

## Usage

To run the script, you need to provide the base IP address of the subnet you want to scan. The script will then ping all addresses in the range `1` to `254` of the provided subnet.

### Syntax

```bash
./pingsweep.sh <your_ip_address>
```

### Example

If you want to perform a ping sweep on the subnet `10.175.1`, you would run:

```bash
./pingsweep.sh 10.175.1
```

## Output

The script will output the IP addresses of hosts that respond to the ping requests and display a completion message.

## Notes

- Ensure you have the necessary permissions to run ping commands and perform network scans. (change the permissions using the chmod +x script_name.sh in linux)
- Use responsibly and within the boundaries of your network's policy to avoid any unintended disruptions or breaches of network security policies.

## License

This script is provided as-is, without any warranty. Use at your own risk. Ensure compliance with your local laws and network policies when using this script.
```
