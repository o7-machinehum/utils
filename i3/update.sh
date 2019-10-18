#!/bin/bash

#Copy vim config from this folder to ~
mkdir -p ~/.config/i3
ln -sf ~/wlkrUtils/i3/config ~/.config/i3/config
mkdir -p ~/.config/i3status
ln i3status.conf ~/.config/i3status/config
i3-msg reload
i3-msg restart
