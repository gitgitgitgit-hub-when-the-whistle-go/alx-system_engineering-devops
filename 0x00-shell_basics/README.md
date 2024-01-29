to list the group and user with their ID us -n with ls
to list with / added to directories use -p to seperate values with commas usr -m

sort -d to sort only blanks and alphanumericals, thus, ignoring . ..

inode is index node number which is a unique number assigned t all files in linux system
hard links require root previlege, symbolic don't
hard links can't take directories while symvolic can.
hard links copy the data: if original file is deleted the link retain the data
hard links have the same inode 
hard links are faster

to copy unexisting file only cp -u; to copy newer file if file exist add -n

type: indicate how it would be interpreted if used as a command name.
file: determine file type 

for wildcard check: https://linuxcommand.org/lc3_lts0020.php

for a file class that start with string 'blabla':
0 string blabla myFileClass data
!:mime myFileClass
