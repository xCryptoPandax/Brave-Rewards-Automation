##########################################################################
# Brave & Bing Browser Rewards V1.0 - Windows Edition                    #
#                                                                        #
# Made By xCryptoPandax                                                  #
#                                                                        #
# Use at your own risk - Not responsible for any bans / loss of BAT      #
##########################################################################

################################################################################################################################
#This script is intended to work as if a human was interacting with the browser

#User Input Required: Script uses coordinates of mouse, these coordinates need to be entered into the variables below.

#To get mouse coordinates enter the following command in Powershell ISE: '[System.Windows.Forms.Cursor]::Position'

#Coordinates of Brave Browser Icon on taskbar
$BraveIcon_X = 0
$BraveIcon_Y = 0

#Coordinates of New Tab Button 
$BraveNTab_X = 0
$BraveNTab_Y = 0

#Coordinates of Close Tab Button
$BraveCTab_X = 0
$BraveCTab_Y = 0

#Coordinates of Bing Bookmark
$BingBookmark_X = 0
$BingBookmark_Y = 0

#Coordinates of First Bing Article
$BingArticle1_X = 0
$BingArticle1_Y = 0

#Coordinates of Second Bing Article
$BingArticle2_X = 0
$BingArticle2_Y = 0

#Coordinates of Bing Search Bar
$BingSBar_X = 0
$BingSBar_Y = 0

#Coordinates of Any White space in Bing Window (Right side) 
#FYI: during the script it will sit at this location for ~2 mins as its only 5 ads per hour
$WhiteSpace_X = 0
$WhiteSpace_Y = 0

#Coordinates to X' out of the browser
$XOut_X = 0
$XOut_Y = 0

################################################################################################################################
[Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | out-null
function Click-MouseButton
{
param(
[string]$Button, 
[switch]$help)

    $signature=@' 
      [DllImport("user32.dll",CharSet=CharSet.Auto, CallingConvention=CallingConvention.StdCall)]
      public static extern void mouse_event(long dwFlags, long dx, long dy, long cButtons, long dwExtraInfo);
'@ 

    $SendMouseClick = Add-Type -memberDefinition $signature -name "Win32MouseEventNew" -namespace Win32Functions -passThru 
    if($Button -eq "left")
    {
        $SendMouseClick::mouse_event(0x00000002, 0, 0, 0, 0);
        $SendMouseClick::mouse_event(0x00000004, 0, 0, 0, 0);
    }
    if($Button -eq "right")
    {
        $SendMouseClick::mouse_event(0x00000008, 0, 0, 0, 0);
        $SendMouseClick::mouse_event(0x00000010, 0, 0, 0, 0);
    }
    if($Button -eq "middle")
    {
        $SendMouseClick::mouse_event(0x00000020, 0, 0, 0, 0);
        $SendMouseClick::mouse_event(0x00000040, 0, 0, 0, 0);
    }
}

$i=0

While (1) {
	#Sleep Before Starting
	sleep 5

	#increase i
	$i++

	#Move to Brave Icon Coordinates and left click to launch
	[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($BraveIcon_X,$BraveIcon_Y)
	Click-MouseButton -Button left

	#Sleep 15 seconds to refresh rewards balance
	sleep 15

	#Click New Tab
	[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($BraveNTab_X,$BraveNTab_Y)
	sleep 1
	Click-MouseButton -Button left

	sleep 8

	#Close Tab
	[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($BraveCTab_X,$BraveCTab_Y)
	sleep 1
	Click-MouseButton -Button left

	sleep 8

	#Click Bing Bookmark
	[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($BingBookmark_X,$BingBookmark_Y)
	Click-MouseButton -Button left

	sleep 8

	#Click Bing Article 1
	[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($BingArticle1_X,$BingArticle1_Y)
	Click-MouseButton -Button left

	sleep 8

	#Click Bing Article 2
	[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($BingArticle2_X,$BingArticle2_Y)
	Click-MouseButton -Button left

	sleep 8

	#Click Bing Search Bar
	[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($BingSBar_X,$BingSBar_Y)
	Click-MouseButton -Button left

	sleep 5

	#Type in search bar
	$wshell = New-Object -ComObject wscript.shell;
	$wshell.AppActivate('Brave')
	Sleep 3
	$wshell.SendKeys($i)
	sleep 3
	$wshell.SendKeys('~')

	Sleep 5

	#Set Random Timer (180-220 seconds)
	$Timer = Get-Random -Maximum 220 -Minimum 180

	#Go to White-space
	[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($WhiteSpace_X,$WhiteSpace_Y)

	#Sleep Counter (Random)
	Sleep $Timer

	#Open New Tab / Show balance before closing broswer window
	[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($BraveNTab_X,$BraveNTab_Y)
	sleep 1
	Click-MouseButton -Button left

	sleep 8

	#Close Browser
	[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($XOut_X,$XOut_Y)
	sleep 1
	Click-MouseButton -Button left

	#State Cycle Completed
	echo "Cycle Complete : $i - Script continues forever, press [Ctrl + C] in this window to stop it"
}
