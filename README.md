vimrc
=====

vim config file

This includes pathogen and vdebug.

Usage:
Add a symbolic link from your home directory to the .vimrc file in this repository.
ex. ln -s ~/.vimrc ~/vim/.vimrc

Mappings in this config:
ctrl-j = move window down 10 lines
ctrl-k = move window up 10 lines

Hints:
<command mode> (enter by hitting ESC)
j = move down one line
j## move down ## lines
k = move up one line
k## move up ## lines
shift-V = select current line
v = select from cursor
y = copy selected text
c = cut selected text
p = paste copied text
##g = go to line ##
gg = go to beginning of file
GG = go to end of file
dd = delete current line
d$ = delete from cursor to end of line
dw = delete word at cursor
d## = delete current line and ## following lines
dgg = delete current line to beginning of file
dGG = delete current line to end of file
Commands (precede with ':')
w = write
q = quite
wq = write + save
q! = quite without saving
%s/<pcre-pattern>/<replace>/[g] = global replace
%/<pcre-pattern>//gn = count occurances of pattern
set hlsearch = highlight matches

