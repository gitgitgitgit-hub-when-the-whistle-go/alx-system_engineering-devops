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

