# Backup
This is a backup of my linux setup.
## Gtk theme
To install my gtk-theme, unzip it and paste it in the `.themes` folder.
## Geany setup
Paste `snippets.conf`, `filetypes.cpp` and `geany.css` in the respective folders.
## Competetive programming
All of my algorithms are in the `snippets.conf` file. Some extra stuff is mentioned here.
### Croupier
Croupier links the stdin of one program to the stdout of other. To run configure run these commands in the terminal.
```sh
chmod 777 A
chmod 777 test
chmod +x run.sh
```
Now enter this command to run croupier
```sh
./run.sh
```
### Snippet Maker
This makes a snippet for use in geany. To use it, paste the entire snippet code to the stdin of the program and the snippet will be printed in the output.txt file.
