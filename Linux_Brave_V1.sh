#!/bin/bash
##########################################################################
# Brave & Bing Browser Rewards V1.0 - Linux Edition                      #
#                                                                        #
# Made By xCryptoPandax                                                  #
#                                                                        #
# Use at your own risk - Not responsible for any bans / loss of BAT      #
##########################################################################

################################################################################################################################
#This script is intended to work as if a human was interacting with the browser

#User Input Required: Script uses coordinates of mouse, these coordinates need to be entered into the variables below.

#Linux version uses xdotool, to download use the command 'sudo apt install xdotool'
#To get coordinates use the command 'xdotool getmouselocation'

#Coordinates of Brave Browser Icon on favorites - for desktop icon you will have to add and extra click (double click)
BraveIcon_X=0
BraveIcon_Y=0

#Coordinates of New Tab Button 
BraveNTab_X=0
BraveNTab_Y=0

#Coordinates of Close Tab Button
BraveCTab_X=0
BraveCTab_Y=0

#Coordinates of Bing Bookmark
BingBookmark_X=0
BingBookmark_Y=0

#Coordinates of First Bing Article
BingArticle1_X=0
BingArticle1_Y=0

#Coordinates of Second Bing Article
BingArticle2_X=0
BingArticle2_Y=0

#Coordinates of Bing Search Bar
BingSBar_X=0
BingSBar_Y=0

#Coordinates of Any White space in Bing Window (Right side) 
#FYI: during the script it will sit at this location for ~2 mins as its only 5 ads per hour
WhiteSpace_X=0
WhiteSpace_Y=0

#Coordinates to X out of the browser
XOut_X=0
XOut_Y=0

################################################################################################################################
i=0

while :
do
	#Sleep before script starts/continues
	sleep 5
	
	#Increase i variable
	((i++))
	
	#Move to Brave Icon Coordinates and left click to launch
	xdotool mousemove $BraveIcon_X $BraveIcon_Y click 1
	
	#Sleep 15 seconds to refresh rewards balance
	sleep 15
	
	#Click New Tab
	xdotool mousemove $BraveNTab_X $BraveNTab_Y click 1
	
	sleep 8
	
	#Close Tab
	xdotool mousemove $BraveCTab_X $BraveCTab_Y click 1
	
	sleep 8

	#Click Bing Bookmark
	xdotool mousemove $BingBookmark_X $BingBookmark_Y	
	sleep 1
	xdotool mousemove $BingBookmark_X $BingBookmark_Y click 1
	
	sleep 8
	
	#Click Bing Article 1
	xdotool mousemove $BingArticle1_X $BingArticle1_Y click 1
	
	sleep 8

	#Click Bing Article 2
	xdotool mousemove $BingArticle2_X $BingArticle2_Y click 1
	
	sleep 8

	#Click Bing Search Bar
	xdotool mousemove $BingSBar_X $BingSBar_Y click 1
	
	sleep 5

	#Type in search bar
	xdotool type $i	
	sleep 3
	xdotool key Return

	sleep 5
	
	#Set Random Timer (180-220 seconds)
	n=$((RANDOM%220+180))

	#Move to White-space
	xdotool mousemove $WhiteSpace_X $WhiteSpace_Y	
	
	#Sleep Counter (Random)
	sleep $n
	
	#Open New Tab / Show balance before closing broswer window
	xdotool mousemove $BraveNTab_X $BraveNTab_Y click 1

	sleep 8
	
	#Close Browser
	xdotool mousemove $XOut_X $XOut_Y click 1

	sleep 1

	#State Cycle Completed	
	echo Cycle Complete : $i - Script continues forever, press [Ctrl + C] in this window to stop it

#Loop Back To Start	
done
