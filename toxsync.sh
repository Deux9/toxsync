#!/bin/bash
ID= #PGP ID
TOXFILE="~/.config/tox/myfile.tox"; #Path to Your Tox file
BACKUP="~/backup.asc"; #Path to your Backup File
CLIENT="qtox"; #Tox start command, e.g. qtox, utox...


################################  Don't change anything below this line unless you know what you are doing
gpg -o "$TOXFILE" -d "$BACKUP";
$CLIENT;
gpg -r "$ID$" -o "$BACKUP" -e "$TOXFILE"


exit 0
