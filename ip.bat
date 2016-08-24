@ipconfig -all|findstr IPv4 >1.txt
@start 1.txt
@ping -n 2 127.1>nul
@del 1.txt