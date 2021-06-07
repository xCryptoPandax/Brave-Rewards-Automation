```
# Brave-Rewards-Automation
##########################################################################
# Brave & Bing Browser Rewards V1.0                                      #
#                                                                        #
# Made By xCryptoPandax                                                  #
#                                                                        #
# Use at your own risk - Not responsible for any bans / loss of BAT      #
##########################################################################

################################################################################################################################

Script for Windows (Powershell) and Linux (Bash) that does simple actions within the brave browser.
*For Linux you will need xdotool* - install by using the following command in the terminal 'sudo apt install xdotool'

Instructions
----------------------------------------------
1.) Download Brave
	A.) Sign up for the Brave rewards
	B.) Click the BAT symbol at the end of the address bar and click 'rewards settings'
	C.) Hit the radio bar and hit 'ad settings' change maximum ads to 5 (Change ad location if you'd like)
	D.) Scroll over to settings change on start up to 'Open the New Tab Page'

2.) Visit Bing until the Bing icon pops up on the new tab page // This script is made to earn Bing rewards, Sign in with an Microsoft account and click the medal next to the user profile on the main bing page to enable rewards - This will give you up to 50 points a day in searches.

3.) Editing the Script: 	
  A.) Download the script for Windows or Linux
	B.) Right click and edit with the text editor of your choice
	C.) Here you will need to add the mouse coordinates for a few areas
      * For Windows: To get mouse Coordinates for Windows, open Windows Powershell ISE and use the enter the following command '[System.Windows.Forms.Cursor]::Position'
      * For Linux: Use the command 'xdotool getmouselocation' in the terminal
  D.) Get the coordinates of the following areas:
      * Brave Browser Icon on favorites (Linux) or toolbar (Windows)
      * New Tab cross
      * Close tab (x of first tab)
      * Bing Bookmark on new tabs page
      * First article on bing homepage
      * Coordinates of second bing article
      * Coordinates of the bing search bar
      * Coordinates of white space for script to rest
      * Coordinates of the x'out button
      
 4.) Now launch the script
   A.) For Windows: Open Powershell and enter the following command: 'Powershell.exe -ExecutionPolicy Unrestricted -File <File Path of script\Windows_Brave_V1.ps1>'
   B.) For Linux: Open the terminal, go to the directory the script is in and enter the following command 'bash Linux_Brave_V1.sh' 
   
 5.) Profit
 ```

