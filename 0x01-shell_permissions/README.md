to copy permissions from a file to another: chmod --referecne=old new

to change all the subdirectories permisions to +x I did chmod +x */                 */ annoying comment xD
there is another way chmod -R +X with -R being recurscive
to create a directories with premission mkdir -m 7xx
to change ownership of symbolic links we add -h to chown
to change if file belongs to user chmod --from=old_user new_owner file


