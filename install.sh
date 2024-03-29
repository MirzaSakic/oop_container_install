#!/bin/bash
docker pull registry.gitlab.com/amer.hasanovic/fet_base
wget 'https://gitlab.com/amer.hasanovic/fet_base/raw/master/start_container' -O /usr/local/bin/start_container && chmod +x /usr/local/bin/start_container
wget 'https://gitlab.com/amer.hasanovic/fet_base/raw/master/bin/fzy?inline=false-o' -O /usr/local/bin/fzy && chmod +x /usr/local/bin/fzy

echo "if [ -d \"/opt1/\" ]; then 
   export TERM=xterm-256color
   source /opt1/script.sh
   [ -z \"$TMUX\" ] && exec tmux
fi" >> ~/.bashrc
