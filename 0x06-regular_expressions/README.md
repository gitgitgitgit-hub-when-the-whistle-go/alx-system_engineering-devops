very good youtube tutorial: https://www.youtube.com/watch?v=rhzKDrUiJVk
w3s tutorial: https://intranet.alxswe.com/rltoken/VOQCF4_WTOCyQ92h0dGPyA
https://rubular.com/

search the text for pattern in an advanced way
they start with / and ends with / and ends with a flag. example: /regexp/g
g is global means seach in the entire file and i is for case sensitiveness

the string is not a line if we want the string to be a line we habe to append /m

n+	Matches any string that contains at least one n
n *	(no space between n and star) Matches any string that contains zero or more occurrences of n
n?	Matches any string that contains zero or one occurrences of n
n{X}	Matches any string that contains a sequence of X n's
n{X,Y}	Matches any string that contains a sequence of X to Y n's
n{X,}	Matches any string that contains a sequence of at least X n's
n$	Matches any string with n at the end of it
^n	Matches any string with n at the beginning of it
?=n	Matches any string that is followed by a specific string n
?!n	Matches any string that is not followed by a specific string n

/g	Perform a global match (find all)
/i	Perform case-insensitive matching
/m	Perform multiline matching

[abc]	Find any character between the brackets
[^abc]	Find any character NOT between the brackets
[0-9]	Find any character between the brackets (any digit)
[^0-9]	Find any character NOT between the brackets (any non-digit)
(x|y)	Find any of the alternatives specified

.	Find a single character, except newline or line terminator
\w	Find a word character
\W	Find a non-word character
\d	Find a digit
\D	Find a non-digit character
\s	Find a whitespace character
\S	Find a non-whitespace character
\b	Find a match at the beginning/end of a word, beginning like this: \bHI, end like this: HI\b
\B	Find a match, but not at the beginning/end of a word
\0	Find a NULL character
\n	Find a new line character
\f	Find a form feed character
\r	Find a carriage return character
\t	Find a tab character
\v	Find a vertical tab character
\xxx	Find the character specified by an octal number xxx
\xdd	Find the character specified by a hexadecimal number dd
\udddd	Find the Unicode character specified by a hexadecimal number dddd

Examples:

/(?<=[abc])./g : look for one character after a or b or c
turn the = to ! to negate the above statement
also the location of . depends on <

to select a phone number 06.52.48.93.21  //  06 52 48 93 21
/(\d{2}[\. ]?){5}/g
(this selects the whole number and can be used to retrive numbers from a file)

now with an american number  (123) 456-1235
/[(](\d{3})[)] (\d{3})-(\d{4})/m

in this $1 is 123 ,  $2 456 and $3 1235
we can retrive the fields with parentheses.
