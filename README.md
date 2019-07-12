# CS:GO plugin
This is a hello world plugin.  

# Installation
To use this plugin correctly, you'll need the to install the [linuxGSM](https://linuxgsm.com/) and install the [CS:GO](https://linuxgsm.com/lgsm/csgoserver/) server.  
After installing the CS:GO server, you'll need to install the [sourcemod](https://www.sourcemod.net/downloads.php) and the [metamod](https://metamodsource.net/downloads.php).  
Just download them and extract the files inside the `serverfiles/csgo/addons` folder.

# Compiling
To compile this plugin, clone this repository inside the folder `serverfiles/csgo/addons/sourcemod/scripting`.  
After that just run the file `build.sh`.  

# Running the server
Ensure that the IP of the server is in the file `common.cfg` is set.  
This file is encountered inside the folder `lgsm/config-lgsm/csgoserver`.  
You can check your IP using the `ifconfig` command on unix systems.  
After that, go to the directory that the `csgoserver` **executable** is saved, and execute the command below.  

`> ./csgoserver start`