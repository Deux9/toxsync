#!/bin/bash
ID="111111"; #PGP ID
TOXFILE="~/.config/tox/2222222222.tox"; #Path to Your Tox file
BACKUP="~/ownCloud/toxbackup.asc"; #Path to your Backup File
CLIENT="qtox"; #Tox start command, e.g. qtox, utox...


################################  Don't change anything below this line unless you know what you are doing
gpg --yes -o "$TOXFILE" -d "$BACKUP";
$CLIENT;
gpg --yes -r "$ID" -o "$BACKUP" -e "$TOXFILE"


exit 0
