navigator

.../bin/env bash allows better portability. how is that ?? I don't have clue xD

eq lt are used for integers while == >= are used for strings, note that > must be escaped \< or \>
if i is an integer we can also do "$i" == "10" (we turn it to a string)

task 0
to obtain an ssh key we can use $ ssh-keygen -t rsa
this will prompt us to choose the file where to store our ssh key
a passphrase can be added optionally
2 files will be genereated one .pub is public while the second one is private and to be stored securelly

task 1
is we use
for i in {1..10}
	echo "blabla"
the i is not used and that pisses off the shellcheck
use
for ((i = 0; i < 10; i++))
similary to C

task 2
do not use $(($var * 2)) use $((var * 2))
because if var="1+1" in the first one will return 1+1x2 while in the secont (1+1)x2 and that is what we want
while [ int -eq val ]
do
	...
done

task 3
until is the opposite of while. works until condition is true.
the syntax remains the same

task 4
the if structure:
if [ condition ]; then
	statement
elif [ condition ]; then
	statement
else
	statement
fi

task 5
fyi 4 is bad and 8 is good luck in the Chinese culture

task 6
case var in
	pattern1)
		statements
		;;
	pattern2)
		statements
		;;
	*)
		statements
		;;
esac

task 7
nested loops

task 8
to itterate accross all files and folders:
for file in * ; then

task 9
always put the variablae inside "$var"
"$var" == "$var2" for string comparaison
alternatively there is if [ -f,c,... $file ] to test regular files etc
more about this in: https://tldp.org/LDP/abs/html/fto.html

task 10
when needing two conditions use if [[ cond1 && cond2 ]] with double brackets
https://www.pluralsight.com/resources/blog/cloud/conditions-in-bash-scripting-if-statements  C-f &&
we can also use arithmetic expression in comparaison. if ((var1 - var2)); then .....

task 11
I cheated on this one xD but it works lel
read must be learned
Ok I felt guilty so I checked read:
To read line per line we will use the loop while and a redirection
while read -r line
do
	# the line is stored in $line
done < $filePath
note that the redirection is done at the done statement
we must use read with the -r flag (thanks to shellcheck), because the possibility of the file containing '\' and we don't want it to escape character
manual of read for bash: https://linuxcommand.org/lc3_man_pages/readh.html
this task could be done without reading line by line and a loop. Only cut ..... is needed

task 12
/etc/passwd contains 
user : password or not : id : group id : group : home direcory : shell path
/etc/shadow contains
password in hashed mode

task13
awk is a scripting language used for manipulating data
it scan line per line looks for patterns or split into fields and perfom operaions on matched lines
awk option 'pattern {action}' file
for more about awk: https://www.geeksforgeeks.org/awk-command-unixlinux-examples/

task 14
always remenber to sort before uniq lol
