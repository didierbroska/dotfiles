" __     _____ __  __ ____   ____ 
" \ \   / /_ _|  \/  |  _ \ / ___|
"  \ \ / / | || |\/| | |_) | |    
"  _\ V /  | || |  | |  _ <| |___ 
" (_)\_/  |___|_|  |_|_| \_\\____|
"                                
"
"   Author: Didier Bröska <didier.broska@gmail.com>
"   Last change:  18 Janvier 2021
"
" This is loaded if no vimrc file was found.
" Except when Vim is run with "-u NONE" or "-C".
" Individual settings can be reverted with ":set option&".
" Other commands can be reverted as mentioned below.

set-encoding=utf-8

" Rebinding key for azerty keyboard
"" unmaping h
map h <Nop>
"" hjkl change to jklm
noremap j h
noremap k j
noremap l k
noremap m l