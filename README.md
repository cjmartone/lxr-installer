# LXR Installer
The lxr.sh script aids with the installation of Linux Cross Referencer by installing all necessary dependencies and running scripts

## Installation
Move the lxr.sh file to the desired directory where your LXR will reside. Run the script as root.
```bash
sudo ./lxr.sh
```
When prompted for LXR configuration, hit enter for these following prompts to select the default:
```bash
Configure for single/multiple trees? [S/m] >
Do you intend to add other trees later? [yes/NO] >
Hostname or IP? [//localhost] >
--- Alias name ? (hit return to stop) >
URL section name for LXR in your server? [/lxr] >
Database engine? [MYSQL/oracle/postgres/sqlite] >
```

The following prompts require the user to enter custom input:
```bash
--- Directory for glimpse databases? > glimpse_DB
```

Once again, for the following prompts, hit enter to select the default option:
```bash
--- Use 'buttons-and-menus' instead of ;ink interface? [YES/no] >
Do you need a specific encoding for this tree ? [yes/NO] >
How is your tree stored? [FILES/cvs/git/subversion/bitkeeper] ?
```

For the following prompts, enter information as follows:
```bash
---Source directory? (e.g. /home/myself/project-tree) > kernel
```

Hit enter for the following prompts to select the default option:
```bash
Name to display for the path root? (e.g. Project or $v for version) [$v] >
Label for version selection menu? [Version] >
Version enumeration method? [LIST/file/function] >
```

For the next prompt, enter v1 for version name as follows:
```bash
--- Version name? (hit return to stop) > v1
```
