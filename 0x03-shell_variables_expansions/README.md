Expansion is the process that transform an expresion to another one before the execution of the command, like:

echo *   # in this example echo didn't see * , the shell expanded it before the execution
Note: echo can print listing of active with echo * this is called pathname expansion
~ expand to $HOME

another type of expansions is arithmetic expansion: $((expression)) or $(($((expression)) + cte)) you get me ??? xD

$ in single quotes don't expand but inside double quotes it needs \

To write long lines:
this is a\
long\
line

to assign variable usr VAR=1 and not VAR = 1

for every operator in arithmetic expressions check this: https://www.gnu.org/software/bash/manual/html_node/Shell-Arithmetic.html

Global variable are available for all the shells while local variables are available only in the current shell

Variables more in detail: https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_02.html
