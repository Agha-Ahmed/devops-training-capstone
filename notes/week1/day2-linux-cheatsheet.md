# Linux Cheat Sheet
Essential commands for DevOps beginners

## File System & Navigation
`ls -lh` : List files with human-readable sizes
`cd` :  Change current directory
`cd ..` : moves you up one level 
`cd ~` : Takes you back to your user's home directory.
`pwd` : Print current working directory
`mkdir -p` : Create directory (and parents if needed) | `mkdir -p notes/week1` 

## File Manipulation
`touch` : Create an empty file | `touch test.txt` 
`rm -rf` : Remove files/folders recursively | `rm -rf temp/` 
`cp -r` : Copy files or directories | `cp script.sh script_backup.sh` 
`mv` : Move or rename a file | `mv old.md new.md` 
`cat` : Display file contents | `cat README.md` 

## Searching & Processing
`grep` : Search for text within files  
`find` : Search for files in a path

## Permissions & System
`chmod +x` : Make a script executable | `chmod +x script.sh`
`df -h` : Show human-readable disk usage | `df -h` 
`whoami` : Show current logged-in user | `whoami`
`history` : List recently used commands | `history`
`clear` : Clean the terminal screen | `clear` 