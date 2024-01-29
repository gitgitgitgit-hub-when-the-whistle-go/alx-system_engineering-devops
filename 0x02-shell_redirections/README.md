' inside " don't need anything.
' inside ' don't work
" need \ inside " only
when in doubt use ""

$ echo \normalcharacter # gives \nor..... the \ is printed if what follows is normal char

to be sure to delete only files and not directories use: find PATH -type f,d,l,... -name 'sequence*' -delete
instead of delete we can -exec -print -ls ... (man find)

in grep -v 'pattern$' -v means 'do not contain' and $ means that pattern should be at the end of the line
grep -A 3 pattern will print 3 lines after finding pattern
grep ^pat means the first thing in the line should be pat
gerp 'pat1\|pat2' means contain pat1 or pat2

find do not return . and ..
find PATH -mindepth [int] to see how far inside our directory we start looking for stuff. -mindepth 2 for example is from path/xxx/pattern, path/pattern is no retruned
find -empty # for empty dir and sub dir

tr recaive output of cat | tr set1 set2. if we want to delete: tr -s set

to reverse string: rev

split in python3: cut -d delimiter -f 1,4  # from field one to four
we use rev and cut to retrieve last elements of a string

paste: merges lines of files