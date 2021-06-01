# vim

Getting vim to use clipboard.
```
[machinehum cover_letter]$ vim --version | grep clipboard
-clipboard         +jumplist          +popupwin          +user_commands
+ex_extra          -mouse_jsbterm     -sun_workshop      -xterm_clipboard
```

If you see the -clipboard and -xterm_clipboard you're fucked, the version of
vim you're using doesn't have a clipboard support built in for X. You need
you google "vim with clipboard yourdistrohere" in Fedora it "vim-X11", which
can then be run using the command "vimx". Add `set clipboard=unnamedplus` to
your .vimrc and `alias vim=vimx` to your bashrc.
