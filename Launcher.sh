#!/bin/bash
#_______________________________________________________________________
#|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
#||||||||||||||||||||McServerMaker||||||||||||||||||||||||||||||||||||||
#|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
#________________________________________________________________________
#Couleurs

VERT="\\033[1;32m" 
NORMAL="\\033[0;39m" 
ROUGE="\\033[1;31m" 
ROSE="\\033[1;35m" 
BLEU="\\033[1;34m" 
BLANC="\\033[0;02m" 
BLANCLAIR="\\033[1;08m" 
JAUNE="\\033[1;33m" 
CYAN="\\033[1;36m"
clear

read -p 'Menu : setup FPS[1] | setup THREADS[2] | setup RESOLUTION[3] | Stream [4] : ' setup
if [ $setup == "1" ]
then
	read -p 'TwitchConsole : How many FPS you want ?: ' FPS
	sed -i "s/^FPS=.*/FPS=\"$FPS\"/" twitch_ffmpeg.sh
elif [ $setup == "2" ]
then
	read -p 'TwitchConsole : How many Threads you use ?: ' THREADS
	sed -i "s/^THREADS=.*/THREADS=\"$THREADS\"/" twitch_ffmpeg.sh
elif [ $setup == "3" ]
then
	read -p 'TwitchConsole : What quality you want ? (ex : 1920x1080) : ' RESOLUTION
	sed -i "s/^OUTRES=.*/OUTRES=\"$RESOLUTION\"/" twitch_ffmpeg.sh
elif [ $setup == "4" ]
then
	echo -e "$ROUGE STARTING STREAM"
	sh twitch_ffmpeg.sh
else
echo -e "$BLEU Command not found$NORMAL"
fi
