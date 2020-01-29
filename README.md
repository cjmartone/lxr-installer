# LXR Installer
The lxr.sh script aids with the installation of Linux Cross Referencer

## Installation
Move the lxr.sh file to the desired directory where your LXR will reside, go to that directory, and run the script as root.
```bash
sudo ./lxr.sh
```

The script will download all nececcary dependencies and auto-fill most user input.
Once running, the script will prompt for a password as shown below. Enter 'lxrpw' and the script should begin initializing the MySQL databases.
```bash
Enter password: 
```

The password 'lxrpw' will need to be entered once more to configure the tables.
```bash
*** MySQL - Creating tree user lxr
Enter password: 
```

After that, the script will begin indexing through the kernel source code which may take several hours.

Once completed, open a web browser and go to http://localhost/lxr/source to begin viewing the kernel source code!
