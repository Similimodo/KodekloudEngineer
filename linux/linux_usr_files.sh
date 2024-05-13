# APP Server 2
ssh steve@stapp02
sudo su

find /home/usersdata -type f -user rose -exec cp --parents {} /official \;
ls -l /official/home/usersdata/
# Explanation
# find /home/usersdata: This starts the find command to search for files inside the /home/usersdata directory.
# -type f: This option specifies that we're only interested in files, not directories.
# -user rose: This option filters the search results to files owned by the user "rose".
# -exec cp --parents {} /official \;: This executes the cp --parents command for each found file. The {} placeholder is replaced by the found file path. The --parents option preserves the directory structure, and /official is the destination directory where the files will be copied to.