# wakemeup

utility to notify me once a long running process has ended.

## example

Wait for package updates in the background and send a push notification to your smartphone once it's done:

```
> $ ./wakemeup.sh                                                                          
     0	    PID TTY      STAT   TIME COMMAND
     1	  53323 pts/6    Ss+    0:00 /bin/zsh
     2	  52986 pts/5    Ss     0:00 /bin/zsh
     3	  55630 pts/5    S+     0:00  \_ sudo dnf update
     4	  52491 pts/4    Ss     0:00 /bin/zsh
     5	  52609 pts/4    Sl+    0:00  \_ nvim /home/sebastian/.aliases
     6	  51761 pts/2    Ss     0:00 /bin/zsh
     7	  55758 pts/2    S+     0:00  \_ /bin/bash ./wakemeup.sh
     8	  55759 pts/2    R+     0:00      \_ ps a --forest
     9	  36012 pts/3    Ss+    0:02 /bin/zsh
    10	  13252 pts/0    Ss     0:00 /bin/zsh
    11	  20558 pts/0    Sl+    0:41  \_ okular main.pdf
    12	  12960 pts/1    Ss     0:00 /bin/zsh
    13	  20405 pts/1    Sl+    0:40  \_ nvim
    14	   2466 tty1     Ssl+   3:18 /usr/libexec/Xorg -core -noreset :0 -seat seat0 -auth /run/lightdm/root/:0 -nolisten tcp vt1 -novtswitch

Please enter the process list number (not the pid): 3
Waiting for 55630 to finish...
```

## usage

- Download the script
- Customize the webhook call in the script for your use case
