cat test | xargs  -t -l -P 1 -I % screen -S pts-1.Yan-PC-Ubuntu -p 0 -X stuff '%\n'



https://github.com/tmux/tmux
https://github.com/libevent/libevent
https://github.com/mirror/ncurses
