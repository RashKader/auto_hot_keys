Process, Priority, , High
#SingleInstance force
; AHK Setup

#Include  %A_ScriptDir%
INI=%A_scriptdir%\settings.ini

checkError := "ERROR"

CustomHotkeys:
IniRead, showSettings, %ini%, targetSettings, KEY1
IniWrite, new, %ini%, targetSettings, KEY1

WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, showFull, %ini%, customSetup, KEY1

height = 500
GuiWidth = 600

Gui, theCustom:Add, Picture, w180 h-1 vLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, theCustom:Add, Picture, w150 h-1 vCustom gCustom, %A_ScriptDir%\images\custom_hotkeys.jpg
Gui, theCustom:Add, Picture, w140 h-1 vExit gGuiClose, %A_ScriptDir%\images\exit.jpg
Gui, theCustom:Color, FFFFFF
Gui, theCustom:Font, S26, w700
if (customSetup = complete)
{
Gui, theCustom:Add, Text, center CGray w550 vWb, Welcome Back!
Gui, theCustom:Font, S14, w700
Gui, theCustom:Add, Text, center CGray w550 vSelection, Make your selection below:
}
else
{
Gui, theCustom:Add, Text, center CGray x20 y129 w550, Setup Your Custom Hotkeys
}
GuiControl, theCustom:Move, Logo, x210
GuiControl, theCustom:Move, Custom, x230 y230
GuiControl, theCustom:Move, Exit, x230 y430

GuiControl, theCustom:Move, Wb, x20 y139
GuiControl, theCustom:Move, Selection, x20 y179
Gui, theCustom:Font, S10, w700

Gui, theCustom:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, AutoHotkey Setup Menu - Selection


Gui, theChoice:destroy
Gui, theHotkeyChoice:destroy
Gui, theCustomList:destroy
Gui, theCustomList2:destroy
Gui, theCustomList3:destroy
Gui, theCustomList4:destroy
Gui, userHotkeys01:destroy
Gui, userHotkeys02:destroy
Gui, userHotkeys03:destroy
Gui, userHotkeys04:destroy
Gui, userHotkeys05:destroy
Gui, userHotkeys06:destroy
Gui, userHotkeys07:destroy
Gui, userHotkeys08:destroy
Gui, userHotkeys09:destroy
Gui, userHotkeys10:destroy
Gui, userHotkeys11:destroy
Gui, userHotkeys12:destroy
Gui, userHotkeys13:destroy
Gui, userHotkeys14:destroy
Gui, userHotkeys15:destroy
Gui, userHotkeys16:destroy
Gui, userHotkeys17:destroy
Gui, userHotkeys18:destroy
Gui, userHotkeys19:destroy
Gui, userHotkeys20:destroy
Gui, theCustomChat:destroy
Gui, theCustomChat2:destroy
Return

Logo:
gosub, CustomHotkeys
Return

Target1on:
Return

Target1off:
Return

UpdateNow:
TrayTip, Your AutoHotkeys are now being updated,This process typically takes 30 seconds or less for the update to complete. You can continue to work while these files are updated. The setup menu will now close., 5000
sleep 5000
Run, %A_ScriptDir%\updater.ahk
gosub, GuiCloseLaunch
Return



Custom:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, showSettings, %ini%, targetSettings, KEY1

height = 500
GuiWidth = 600

Gui, theHotkeyChoice:Color, FFFFFF

Gui, theHotkeyChoice:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, theHotkeyChoice:Add, Picture, w140 h-1 vExit gGuiClose, %A_ScriptDir%\images\exit.jpg
Gui, theHotkeyChoice:Add, Picture, w140 h-1 vGoBack gCustomHotkeys, %A_ScriptDir%\images\go_back.jpg
; Gui, theHotkeyChoice:Add, Picture, w50 h-1 vNew, %A_ScriptDir%\images\new.jpg
;Gui, theHotkeyChoice:Add, Picture, w50 h-1 vChatNew, %A_ScriptDir%\images\new.jpg
Gui, theHotkeyChoice:Font, S26, w700
Gui, theHotkeyChoice:Add, Text, center CGray x20 h50 w550 y129, Edit Your AutoHotkeys:
Gui, theHotkeyChoice:Font, S14, w700
if ((showskill = 1) || (showskill = 5))
{
Gui, theHotkeyChoice:Add, Text, center CGray x200 y+20 w200 gCustomChat, Edit Chat Hotkeys
}
Gui, theHotkeyChoice:Add, Text, center CGray x200 y+20 w200 gCustomList, My Custom Hotkeys
Gui, theHotkeyChoice:Font, S10, w700
GuiControl, theHotkeyChoice:Move, Logo, x210
GuiControl, theHotkeyChoice:Move, Exit, x310 y430
GuiControl, theHotkeyChoice:Move, GoBack, x140 y430
GuiControl, theHotkeyChoice:Move, New, x145 y330
GuiControl, theHotkeyChoice:Move, ChatNew, x145 y375
Gui, theHotkeyChoice:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Edit AutoHotkeys - Categories

Gui, theCustom:destroy
Gui, theHeyDesign:destroy
Gui, theHeyPricing:destroy
Gui, openingHK:destroy
Gui, closingHK:destroy
Gui, followHK:destroy
Gui, theFUDesign:destroy
Gui, theFUGeneral:destroy
Gui, theFUFix:destroy
Gui, theFUOrder:destroy
Gui, theFUQuote:destroy
Gui, userHotkeys:destroy
Gui, theCustomList:destroy
Gui, theCustomList2:destroy
Gui, theCustomChat:destroy
Gui, theCustomChat2:destroy
Gui, theSpellingMenu:destroy
Gui, theSpellingList:destroy
Gui, theSpellingList2:destroy
Gui, theSpellingList3:destroy

Return


$F9::Reload ; disabling F9 key while tool is open.

UHOutputClose:
GuiControl, disable, OutputClose

if (CustHotkey = 1)
{
Gui, userHotkeys01:Submit, NoHide
redirectTo = CustomList
}
else if (CustHotkey = 2)
{
Gui, userHotkeys02:Submit, NoHide
redirectTo = CustomList
}
else if (CustHotkey = 3)
{
Gui, userHotkeys03:Submit, NoHide
redirectTo = CustomList
}
else if (CustHotkey = 4)
{
Gui, userHotkeys04:Submit, NoHide
redirectTo = CustomList
}
else if (CustHotkey = 5)
{
Gui, userHotkeys05:Submit, NoHide
redirectTo = CustomList
}
else if (CustHotkey = 6)
{
Gui, userHotkeys06:Submit, NoHide
redirectTo = CustomList2
}
else if (CustHotkey = 7)
{
Gui, userHotkeys07:Submit, NoHide
redirectTo = CustomList2
}
else if (CustHotkey = 8)
{
Gui, userHotkeys08:Submit, NoHide
redirectTo = CustomList2
}
else if (CustHotkey = 9)
{
Gui, userHotkeys09:Submit, NoHide
redirectTo = CustomList2
}
else if (CustHotkey = 10)
{
Gui, userHotkeys10:Submit, NoHide
redirectTo = CustomList2
}
else if (CustHotkey = 11)
{
Gui, userHotkeys11:Submit, NoHide
redirectTo = CustomList3
}
else if (CustHotkey = 12)
{
Gui, userHotkeys12:Submit, NoHide
redirectTo = CustomList3
}
else if (CustHotkey = 13)
{
Gui, userHotkeys13:Submit, NoHide
redirectTo = CustomList3
}
else if (CustHotkey = 14)
{
Gui, userHotkeys14:Submit, NoHide
redirectTo = CustomList3
}
else if (CustHotkey = 15)
{
Gui, userHotkeys15:Submit, NoHide
redirectTo = CustomList3
}
else if (CustHotkey = 16)
{
Gui, userHotkeys16:Submit, NoHide
redirectTo = CustomList4
}
else if (CustHotkey = 17)
{
Gui, userHotkeys17:Submit, NoHide
redirectTo = CustomList4
}
else if (CustHotkey = 18)
{
Gui, userHotkeys18:Submit, NoHide
redirectTo = CustomList4
}
else if (CustHotkey = 19)
{
Gui, userHotkeys19:Submit, NoHide
redirectTo = CustomList4
}
else if (CustHotkey = 20)
{
Gui, userHotkeys20:Submit, NoHide
redirectTo = CustomList4
}



If (NewUserHotkeyCommand = "Enter the hotkey command starting with #.")
{
MsgBox Please enter a valid hotkey command	; show error message
			GuiControl, enable, OutputClose
			return						; stop
}

If (NewUserHotkeyText = "Enter your hotkey text here.")
{
MsgBox Please enter the text for your hotkey	; show error message
			GuiControl, enable, OutputClose
			return						; stop
}
	
	begOperator = #
	x := SubStr(NewUserHotkeyCommand, 1, 1)
	if (x = begOperator)
	{
	}
	else
	{
	MsgBox The hotkey command must start with #. Please try again.	; show error message
			GuiControl, enable, OutputClose
			return		
	}


emptyfields1 = NewUserHotkeyCommand, NewUserHotkeyText, 
loop, parse, emptyfields1, `,, %A_Space% 				; loop through the list
{
	GuiControlGet, OutputClose, Enabled, %A_LoopField%
		If !(%A_LoopField%) && OutputClose ; if the value of the variable whose name is saved in A_LoopField is empty and is enabled
		{
		if A_LoopField = NewUserHotkeyCommand
			{
			required = Hotkey Command
			}
			else if A_LoopField = NewUserHotkeyText
			{
			required = Hotkey Text
			}

			MsgBox A required field is empty: %required%	; show error message
			GuiControl, enable, OutputClose
			return						; stop
		}
}

emptyfields = #3m, #wow, #ap, #turn, #turncost, #awrquestion, #awrquestions, #awr, #partner, #holiday, #bulkperks, #bulkquote, #canada, #jobs, #script, #transcript, #chatclose, #collegeno, #content, #contentstand, #covid, #account, #designemail, #cs, #csemail, #csquestions, #address, #guarantee, #delay, #deleteact, #discon, #disney, #donate, #embsimple, #gof, #extendhood, #extendedhood, #extendshirt, #extendedshirt, #filetype, #filetypes, #discount, #foil, #fund, #fundtransone, #fundtranstwo, #glitter, #glow, #gofdesign, #goalchange, #changegoal, #gofgoal, #gofink, #gofhcp, #goftrick, #goftransfer, #gofpers, #tones, #halftones, #hcpmin, #hood, #iscost, #isturn, #islimit, #infobulk, #infosingles, #accountemail, #checkinfo, #inkchange, #intercheck, #interinfo, #inter, #kit, #kitlimit, #kitprice, #lowres, #metallic, #mixmatch, #multi, #neon, #nomin, #notvoucher, #offsite, #offsitequestion, #offsitequestions, #offsitetemp, #stock, #oos, #orderinfo, #otherleg, #constraint, #constraints, #pad, #perscost, #multipers, #inkmatch, #poemail, #poly, #pps, #spam, #increase, #pricing, #personal, #poinfo, #qrcode, #redraw, #redrawn, #refemail, #reset, #rtq, #reverse, #chest, #roemail, #roughquote, #satransfer, #samesome, #servicetransone, #sideleg, #sideshirt, #singlesperks, #singlesquote, #sleeve, #font, #specialfont, #sponsor, #linkbulk, #linksingles, #store, #stores, #subblank, #subink, #prevention, #notax, #trap, #uninote, #uniquest, #cartvoucher, #vouchercart, #vss, #vsscost, #checkinfo, #checkinfofast, #quotebulk, #quotesingles, #designlink, #linkdesign, #peml, #digscreen, #specquote, #quotespec, #satemp, #blanksample, #taxorg, #taxstat, #ds, #dsemail, #dsquestions

loop, parse, emptyfields, `,, %A_Space% 				; loop through the list
{
	GuiControlGet, OutputClose, Enabled, %A_LoopField%
		If (NewUserHotkeyCommand = A_LoopField) 
		{
			MsgBox The hotkey command you've selected is already taken. Please enter a different command name.	; show error message
			GuiControl, enable, OutputClose
			return						; stop
		}
}


gosub, PushCustomHotkey
Return

DeleteCustomHotkey:

theFile = %A_ScriptDir%\text_files\%theCustFilename%.txt

if FileExist(theFile) 
{
FileDelete, %theFile%
}

INI=%A_scriptdir%\settings.ini


IniRead, CustomHotkeyCommand1, %ini%, custHotkey01, KEY2, thecustHotkey01
IniRead, CustomHotkeyCommand2, %ini%, custHotkey02, KEY2, thecustHotkey02
IniRead, CustomHotkeyCommand3, %ini%, custHotkey03, KEY2, thecustHotkey03
IniRead, CustomHotkeyCommand4, %ini%, custHotkey04, KEY2, thecustHotkey04
IniRead, CustomHotkeyCommand5, %ini%, custHotkey05, KEY2, thecustHotkey05
IniRead, CustomHotkeyCommand6, %ini%, custHotkey06, KEY2, thecustHotkey06
IniRead, CustomHotkeyCommand7, %ini%, custHotkey07, KEY2, thecustHotkey07
IniRead, CustomHotkeyCommand8, %ini%, custHotkey08, KEY2, thecustHotkey08
IniRead, CustomHotkeyCommand9, %ini%, custHotkey09, KEY2, thecustHotkey09
IniRead, CustomHotkeyCommand10, %ini%, custHotkey10, KEY2, thecustHotkey10
IniRead, CustomHotkeyCommand11, %ini%, custHotkey11, KEY2, thecustHotkey11
IniRead, CustomHotkeyCommand12, %ini%, custHotkey12, KEY2, thecustHotkey12
IniRead, CustomHotkeyCommand13, %ini%, custHotkey13, KEY2, thecustHotkey13
IniRead, CustomHotkeyCommand14, %ini%, custHotkey14, KEY2, thecustHotkey14
IniRead, CustomHotkeyCommand15, %ini%, custHotkey15, KEY2, thecustHotkey15
IniRead, CustomHotkeyCommand16, %ini%, custHotkey16, KEY2, thecustHotkey16
IniRead, CustomHotkeyCommand17, %ini%, custHotkey17, KEY2, thecustHotkey17
IniRead, CustomHotkeyCommand18, %ini%, custHotkey18, KEY2, thecustHotkey18
IniRead, CustomHotkeyCommand19, %ini%, custHotkey19, KEY2, thecustHotkey19
IniRead, CustomHotkeyCommand20, %ini%, custHotkey20, KEY2, thecustHotkey20

FileRead, UserHotkeyText1, %A_ScriptDir%\text_files\custHotkey01.txt
if ErrorLevel
{
UserHotkeyText1 = Press F9 to set up your custom hotkeys!
}

FileRead, UserHotkeyText2, %A_ScriptDir%\text_files\custHotkey02.txt
if ErrorLevel
{
UserHotkeyText2 = Press F9 to set up your custom hotkeys!
}

FileRead, UserHotkeyText3, %A_ScriptDir%\text_files\custHotkey03.txt
if ErrorLevel
{
UserHotkeyText3 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText4, %A_ScriptDir%\text_files\custHotkey04.txt
if ErrorLevel
{
UserHotkeyText4 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText5, %A_ScriptDir%\text_files\custHotkey05.txt
if ErrorLevel
{
UserHotkeyText5 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText6, %A_ScriptDir%\text_files\custHotkey06.txt
if ErrorLevel
{
UserHotkeyText6 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText7, %A_ScriptDir%\text_files\custHotkey07.txt
if ErrorLevel
{
UserHotkeyText7 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText8, %A_ScriptDir%\text_files\custHotkey08.txt
if ErrorLevel
{
UserHotkeyText8 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText9, %A_ScriptDir%\text_files\custHotkey09.txt
if ErrorLevel
{
UserHotkeyText9 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText10, %A_ScriptDir%\text_files\custHotkey10.txt
if ErrorLevel
{
UserHotkeyText10 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText11, %A_ScriptDir%\text_files\custHotkey11.txt
if ErrorLevel
{
UserHotkeyText11 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText12, %A_ScriptDir%\text_files\custHotkey12.txt
if ErrorLevel
{
UserHotkeyText12 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText13, %A_ScriptDir%\text_files\custHotkey13.txt
if ErrorLevel
{
UserHotkeyText13 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText14, %A_ScriptDir%\text_files\custHotkey14.txt
if ErrorLevel
{
UserHotkeyText14 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText15, %A_ScriptDir%\text_files\custHotkey15.txt
if ErrorLevel
{
UserHotkeyText15 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText16, %A_ScriptDir%\text_files\custHotkey16.txt
if ErrorLevel
{
UserHotkeyText16 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText17, %A_ScriptDir%\text_files\custHotkey17.txt
if ErrorLevel
{
UserHotkeyText17 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText18, %A_ScriptDir%\text_files\custHotkey18.txt
if ErrorLevel
{
UserHotkeyText18 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText19, %A_ScriptDir%\text_files\custHotkey19.txt
if ErrorLevel
{
UserHotkeyText19 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText20, %A_ScriptDir%\text_files\custHotkey20.txt
if ErrorLevel
{
UserHotkeyText20 = Press F9 to set up your custom hotkeys!
}

if (theCustFilename = "custHotkey01")
{
opening := "("
closing := ")"
clipboard=
(
#SingleInstance force
#NoTrayIcon

clipboard=
(
::thecustHotkey01::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%	
%UserHotkeyText9%
%closing%
send ^v
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%	
%UserHotkeyText18%
%closing%
send ^v
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
Return

)
}
else if (theCustFilename = "custHotkey02")
{
opening := "("
closing := ")"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
Return

::thecustHotkey02::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%	
%UserHotkeyText18%
%closing%
send ^v
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
Return
)
}
else if (theCustFilename = "custHotkey03")
{
opening := "("
closing := ")"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
Return

::thecustHotkey03::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%	
%UserHotkeyText18%
%closing%
send ^v
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
Return

)
}
else if (theCustFilename = "custHotkey04")
{
opening := "("
closing := ")"
clipboard=
(

#SingleInstance force
#NoTrayIcon

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
Return

::thecustHotkey04::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%	
%UserHotkeyText18%
%closing%
send ^v
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
Return

)

}
else if (theCustFilename = "custHotkey05")
{
opening := "("
closing := ")"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
Return

::thecustHotkey05::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%	
%UserHotkeyText18%
%closing%
send ^v
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
Return
)

}
else if (theCustFilename = "custHotkey06")
{
opening := "("
closing := ")"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
Return

::thecustHotkey06::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%	
%UserHotkeyText18%
%closing%
send ^v
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
Return
)

}
else if (theCustFilename = "custHotkey07")
{
opening := "("
closing := ")"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
Return

::thecustHotkey07::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%	
%UserHotkeyText18%
%closing%
send ^v
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
Return

)

}
else if (theCustFilename = "custHotkey08")
{
opening := "("
closing := ")"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
Return

::thecustHotkey08::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%	
%UserHotkeyText18%
%closing%
send ^v
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
Return
)

}
else if (theCustFilename = "custHotkey09")
{
opening := "("
closing := ")"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
Return

::thecustHotkey09::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%	
%UserHotkeyText18%
%closing%
send ^v
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
Return
)

}
else if (theCustFilename = "custHotkey10")
{
opening := "("
closing := ")"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
Return

::thecustHotkey10::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%	
%UserHotkeyText18%
%closing%
send ^v
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
Return
)
}
else if (theCustFilename = "custHotkey11")
{
opening := "("
closing := ")"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
Return

::thecustHotkey11::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%	
%UserHotkeyText18%
%closing%
send ^v
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
Return
)
} 
else if (theCustFilename = "custHotkey12")
{
opening := "("
closing := ")"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
Return

::thecustHotkey12::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%	
%UserHotkeyText18%
%closing%
send ^v
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
Return
)
}
else if (theCustFilename = "custHotkey13")
{
opening := "("
closing := ")"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
Return

::thecustHotkey13::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%	
%UserHotkeyText18%
%closing%
send ^v
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
Return
)
}
else if (theCustFilename = "custHotkey14")
{
opening := "("
closing := ")"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
Return

::thecustHotkey14::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%	
%UserHotkeyText18%
%closing%
send ^v
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
Return
)
}
else if (theCustFilename = "custHotkey15")
{
opening := "("
closing := ")"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::thecustHotkey15::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%	
%UserHotkeyText18%
%closing%
send ^v
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
Return
)
}
else if (theCustFilename = "custHotkey16")
{
opening := "("
closing := ")"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
Return

::thecustHotkey16::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%	
%UserHotkeyText18%
%closing%
send ^v
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
Return
)
}

else if (theCustFilename = "custHotkey17")
{
opening := "("
closing := ")"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
Return

::thecustHotkey17::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%	
%UserHotkeyText18%
%closing%
send ^v
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
Return
)
}
else if (theCustFilename = "custHotkey18")
{
opening := "("
closing := ")"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
Return

::thecustHotkey18::
clipboard=
%opening%	
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
Return
)
}
else if (theCustFilename = "custHotkey19")
{
opening := "("
closing := ")"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%	
%UserHotkeyText18%
%closing%
send ^v
Return

::thecustHotkey19::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
Return
)
}
else if (theCustFilename = "custHotkey20")
{
opening := "("
closing := ")"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%	
%UserHotkeyText18%
%closing%
send ^v
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
Return

::thecustHotkey20::
clipboard=
%opening%
Press F9 to set up your custom hotkeys!
%closing%
send ^v
Return
)
}

replacing := Clipboard

closingFile = userCreated.ahk

	DetectHiddenWindows On
	SetTitleMatchMode RegEx
	IfWinExist, i)%closingFile%.* ahk_class AutoHotkey
		{
		WinClose
		WinWaitClose, i)%closingFile%.* ahk_class AutoHotkey, , 2
		}	

FileDelete, %A_ScriptDir%\userCreated.ahk

FileAppend, %replacing%, %A_ScriptDir%\userCreated.ahk
	
Run, %A_ScriptDir%\userCreated.ahk

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

; IniDelete, Filename, Section [, Key]

IniDelete, %INI%, %theCustFilename%

deleteINI=%A_scriptdir%\settings.ini

IniDelete, %deleteINI%, %theCustFilename%

if (CustHotkey = 1)
{
redirectTo = CustomList
}
else if (CustHotkey = 2)
{
redirectTo = CustomList
}
else if (CustHotkey = 3)
{
redirectTo = CustomList
}
else if (CustHotkey = 4)
{
redirectTo = CustomList
}
else if (CustHotkey = 5)
{
redirectTo = CustomList
}
else if (CustHotkey = 6)
{
redirectTo = CustomList2
}
else if (CustHotkey = 7)
{
redirectTo = CustomList2
}
else if (CustHotkey = 8)
{
redirectTo = CustomList2
}
else if (CustHotkey = 9)
{
redirectTo = CustomList2
}
else if (CustHotkey = 10)
{
redirectTo = CustomList2
}
if (CustHotkey = 11)
{
redirectTo = CustomList3
}
else if (CustHotkey = 12)
{
redirectTo = CustomList3
}
else if (CustHotkey = 13)
{
redirectTo = CustomList3
}
else if (CustHotkey = 14)
{
redirectTo = CustomList3
}
else if (CustHotkey = 15)
{
redirectTo = CustomList3
}
else if (CustHotkey = 16)
{
redirectTo = CustomList4
}
else if (CustHotkey = 17)
{
redirectTo = CustomList4
}
else if (CustHotkey = 18)
{
redirectTo = CustomList4
}
else if (CustHotkey = 19)
{
redirectTo = CustomList4
}
else if (CustHotkey = 20)
{
redirectTo = CustomList4
}


gosub, %redirectTo%
Return

PushCustomHotkey:

; Save custom hotkey text to a text file.

StringReplace, NewUserHotkeyText, NewUserHotkeyText, `%, ```%, All

theFile = %A_ScriptDir%\text_files\%theCustFilename%.txt

if FileExist(theFile) 
{
FileDelete, %theFile%
}

FileAppend, %NewUserHotkeyText%, %A_ScriptDir%\text_files\%theCustFilename%.txt

INI=%A_scriptdir%\settings.ini


IniRead, CustomHotkeyCommand1, %ini%, custHotkey01, KEY2, thecustHotkey01
IniRead, CustomHotkeyCommand2, %ini%, custHotkey02, KEY2, thecustHotkey02
IniRead, CustomHotkeyCommand3, %ini%, custHotkey03, KEY2, thecustHotkey03
IniRead, CustomHotkeyCommand4, %ini%, custHotkey04, KEY2, thecustHotkey04
IniRead, CustomHotkeyCommand5, %ini%, custHotkey05, KEY2, thecustHotkey05
IniRead, CustomHotkeyCommand6, %ini%, custHotkey06, KEY2, thecustHotkey06
IniRead, CustomHotkeyCommand7, %ini%, custHotkey07, KEY2, thecustHotkey07
IniRead, CustomHotkeyCommand8, %ini%, custHotkey08, KEY2, thecustHotkey08
IniRead, CustomHotkeyCommand9, %ini%, custHotkey09, KEY2, thecustHotkey09
IniRead, CustomHotkeyCommand10, %ini%, custHotkey10, KEY2, thecustHotkey10
IniRead, CustomHotkeyCommand11, %ini%, custHotkey11, KEY2, thecustHotkey11
IniRead, CustomHotkeyCommand12, %ini%, custHotkey12, KEY2, thecustHotkey12
IniRead, CustomHotkeyCommand13, %ini%, custHotkey13, KEY2, thecustHotkey13
IniRead, CustomHotkeyCommand14, %ini%, custHotkey14, KEY2, thecustHotkey14
IniRead, CustomHotkeyCommand15, %ini%, custHotkey15, KEY2, thecustHotkey15
IniRead, CustomHotkeyCommand16, %ini%, custHotkey16, KEY2, thecustHotkey16
IniRead, CustomHotkeyCommand17, %ini%, custHotkey17, KEY2, thecustHotkey17
IniRead, CustomHotkeyCommand18, %ini%, custHotkey18, KEY2, thecustHotkey18
IniRead, CustomHotkeyCommand19, %ini%, custHotkey19, KEY2, thecustHotkey19
IniRead, CustomHotkeyCommand20, %ini%, custHotkey20, KEY2, thecustHotkey20

FileRead, UserHotkeyText1, %A_ScriptDir%\text_files\custHotkey01.txt
if ErrorLevel
{
UserHotkeyText1 = Press F9 to set up your custom hotkeys!
}

FileRead, UserHotkeyText2, %A_ScriptDir%\text_files\custHotkey02.txt
if ErrorLevel
{
UserHotkeyText2 = Press F9 to set up your custom hotkeys!
}

FileRead, UserHotkeyText3, %A_ScriptDir%\text_files\custHotkey03.txt
if ErrorLevel
{
UserHotkeyText3 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText4, %A_ScriptDir%\text_files\custHotkey04.txt
if ErrorLevel
{
UserHotkeyText4 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText5, %A_ScriptDir%\text_files\custHotkey05.txt
if ErrorLevel
{
UserHotkeyText5 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText6, %A_ScriptDir%\text_files\custHotkey06.txt
if ErrorLevel
{
UserHotkeyText6 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText7, %A_ScriptDir%\text_files\custHotkey07.txt
if ErrorLevel
{
UserHotkeyText7 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText8, %A_ScriptDir%\text_files\custHotkey08.txt
if ErrorLevel
{
UserHotkeyText8 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText9, %A_ScriptDir%\text_files\custHotkey09.txt
if ErrorLevel
{
UserHotkeyText9 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText10, %A_ScriptDir%\text_files\custHotkey10.txt
if ErrorLevel
{
UserHotkeyText10 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText11, %A_ScriptDir%\text_files\custHotkey11.txt
if ErrorLevel
{
UserHotkeyText11 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText12, %A_ScriptDir%\text_files\custHotkey12.txt
if ErrorLevel
{
UserHotkeyText12 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText13, %A_ScriptDir%\text_files\custHotkey13.txt
if ErrorLevel
{
UserHotkeyText13 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText14, %A_ScriptDir%\text_files\custHotkey14.txt
if ErrorLevel
{
UserHotkeyText14 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText15, %A_ScriptDir%\text_files\custHotkey15.txt
if ErrorLevel
{
UserHotkeyText15 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText16, %A_ScriptDir%\text_files\custHotkey16.txt
if ErrorLevel
{
UserHotkeyText16 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText17, %A_ScriptDir%\text_files\custHotkey17.txt
if ErrorLevel
{
UserHotkeyText17 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText18, %A_ScriptDir%\text_files\custHotkey18.txt
if ErrorLevel
{
UserHotkeyText18 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText19, %A_ScriptDir%\text_files\custHotkey19.txt
if ErrorLevel
{
UserHotkeyText19 = Press F9 to set up your custom hotkeys!
}
FileRead, UserHotkeyText20, %A_ScriptDir%\text_files\custHotkey20.txt
if ErrorLevel
{
UserHotkeyText20 = Press F9 to set up your custom hotkeys!
}


if (theCustFilename = "custHotkey01")
{
exiting = customlist
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
CustomReport("custHotkey06")
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%	
%UserHotkeyText9%
%closing%
send ^v
CustomReport("custHotkey09")
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
CustomReport("custHotkey12")
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%
%UserHotkeyText18%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
CustomReport("custHotkey19")
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
CustomReport("custHotkey20")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)
}
else if (theCustFilename = "custHotkey02")
{
exiting = customlist
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
CustomReport("custHotkey06")
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
CustomReport("custHotkey9")
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
CustomReport("custHotkey12")
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%
%UserHotkeyText18%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
CustomReport("custHotkey19")
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
CustomReport("custHotkey20")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)
}
else if (theCustFilename = "custHotkey03")
{
exiting = customlist
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
CustomReport("custHotkey06")
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
CustomReport("custHotkey09")
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
CustomReport("custHotkey12")
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%
%UserHotkeyText18%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
CustomReport("custHotkey19")
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
CustomReport("custHotkey20")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)
}
else if (theCustFilename = "custHotkey04")
{
exiting = customlist
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
CustomReport("custHotkey06")
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
CustomReport("custHotkey09")
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
CustomReport("custHotkey12")
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%
%UserHotkeyText18%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
CustomReport("custHotkey19")
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
CustomReport("custHotkey20")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)
}
else if (theCustFilename = "custHotkey05")
{
exiting = customlist
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
CustomReport("custHotkey09")
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
CustomReport("custHotkey12")
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%
%UserHotkeyText18%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
CustomReport("custHotkey19")
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
CustomReport("custHotkey20")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)

}
else if (theCustFilename = "custHotkey06")
{
exiting = customlist2
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey06")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
CustomReport("custHotkey09")
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
CustomReport("custHotkey12")
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%
%UserHotkeyText18%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
CustomReport("custHotkey19")
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
CustomReport("custHotkey20")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)

}
else if (theCustFilename = "custHotkey07")
{
exiting = customlist2
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
CustomReport("custHotkey06")
Return


::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
CustomReport("custHotkey09")
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
CustomReport("custHotkey12")
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%
%UserHotkeyText18%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
CustomReport("custHotkey19")
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
CustomReport("custHotkey20")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)

}
else if (theCustFilename = "custHotkey08")
{
exiting = customlist2
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
CustomReport("custHotkey06")
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
CustomReport("custHotkey09")
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
CustomReport("custHotkey12")
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%
%UserHotkeyText18%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
CustomReport("custHotkey19")
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
CustomReport("custHotkey20")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)

}
else if (theCustFilename = "custHotkey09")
{
exiting = customlist2
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey09")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand4%::
clipboard=
%opening%
%UserHotkeyText4%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
CustomReport("custHotkey06")
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
CustomReport("custHotkey12")
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%
%UserHotkeyText18%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
CustomReport("custHotkey19")
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
CustomReport("custHotkey20")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)

}
else if (theCustFilename = "custHotkey10")
{
exiting = customlist2
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
CustomReport("custHotkey06")
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%	
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
CustomReport("custHotkey09")
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
CustomReport("custHotkey12")
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%
%UserHotkeyText18%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
CustomReport("custHotkey19")
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
CustomReport("custHotkey20")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)
}
else if (theCustFilename = "custHotkey11")
{
exiting = customlist3
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
CustomReport("custHotkey06")
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%	
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
CustomReport("custHotkey09")
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand12%::
clipboard=
%opening%
%UserHotkeyText12%
%closing%
send ^v
CustomReport("custHotkey12")
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%
%UserHotkeyText18%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
CustomReport("custHotkey19")
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
CustomReport("custHotkey20")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)
}
else if (theCustFilename = "custHotkey12")
{
exiting = customlist3
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey12")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
CustomReport("custHotkey06")
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%	
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
CustomReport("custHotkey09")
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%
%UserHotkeyText18%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
CustomReport("custHotkey19")
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
CustomReport("custHotkey20")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)
}
else if (theCustFilename = "custHotkey13")
{
exiting = customlist3
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
CustomReport("custHotkey06")
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%	
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
CustomReport("custHotkey09")
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%
%UserHotkeyText18%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
CustomReport("custHotkey19")
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
CustomReport("custHotkey20")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)
}

else if (theCustFilename = "custHotkey14")
{
exiting = customlist3
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
CustomReport("custHotkey06")
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%	
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
CustomReport("custHotkey09")
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%
%UserHotkeyText18%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
CustomReport("custHotkey19")
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
CustomReport("custHotkey20")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)
}

else if (theCustFilename = "custHotkey15")
{
exiting = customlist3
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
CustomReport("custHotkey06")
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%	
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
CustomReport("custHotkey09")
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%
%UserHotkeyText18%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
CustomReport("custHotkey19")
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
CustomReport("custHotkey20")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)
}

else if (theCustFilename = "custHotkey16")
{
exiting = customlist4
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
CustomReport("custHotkey06")
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%	
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
CustomReport("custHotkey09")
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%
%UserHotkeyText18%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
CustomReport("custHotkey19")
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
CustomReport("custHotkey20")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)
}

else if (theCustFilename = "custHotkey17")
{
exiting = customlist4
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
CustomReport("custHotkey06")
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%	
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
CustomReport("custHotkey09")
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%
%UserHotkeyText18%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
CustomReport("custHotkey19")
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
CustomReport("custHotkey20")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)
}

else if (theCustFilename = "custHotkey18")
{
exiting = customlist4
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
CustomReport("custHotkey06")
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%	
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
CustomReport("custHotkey09")
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
CustomReport("custHotkey19")
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
CustomReport("custHotkey20")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)
}

else if (theCustFilename = "custHotkey19")
{
exiting = customlist4
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey19")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
CustomReport("custHotkey06")
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%	
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
CustomReport("custHotkey09")
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%
%UserHotkeyText18%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand20%::
clipboard=
%opening%
%UserHotkeyText20%
%closing%
send ^v
CustomReport("custHotkey20")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)
}

else if (theCustFilename = "custHotkey20")
{
exiting = customlist4
opening := "("
closing := ")"
openBracket := "{"
closeBracket := "}"
INI=%A_scriptdir%\reports\CHreport.ini
fileINI = %A_ScriptDir%\reports\
percent := "%"
clipboard=
(
#SingleInstance force
#NoTrayIcon

::%NewUserHotkeyCommand%::
clipboard=
%opening%
%NewUserHotkeyText%
%closing%
send ^v
CustomReport("custHotkey20")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey01")
Return

::%CustomHotkeyCommand2%::
clipboard=
%opening%
%UserHotkeyText2%
%closing%
send ^v
CustomReport("custHotkey02")
Return

::%CustomHotkeyCommand3%::
clipboard=
%opening%
%UserHotkeyText3%
%closing%
send ^v
CustomReport("custHotkey03")
Return

::%CustomHotkeyCommand1%::
clipboard=
%opening%
%UserHotkeyText1%
%closing%
send ^v
CustomReport("custHotkey04")
Return

::%CustomHotkeyCommand5%::
clipboard=
%opening%
%UserHotkeyText5%
%closing%
send ^v
CustomReport("custHotkey05")
Return

::%CustomHotkeyCommand6%::
clipboard=
%opening%
%UserHotkeyText6%
%closing%
send ^v
CustomReport("custHotkey06")
Return

::%CustomHotkeyCommand7%::
clipboard=
%opening%
%UserHotkeyText7%
%closing%	
send ^v
CustomReport("custHotkey07")
Return

::%CustomHotkeyCommand8%::
clipboard=
%opening%
%UserHotkeyText8%
%closing%
send ^v
CustomReport("custHotkey08")
Return

::%CustomHotkeyCommand9%::
clipboard=
%opening%
%UserHotkeyText9%
%closing%
send ^v
CustomReport("custHotkey09")
Return

::%CustomHotkeyCommand10%::
clipboard=
%opening%
%UserHotkeyText10%
%closing%
send ^v
CustomReport("custHotkey10")
Return

::%CustomHotkeyCommand11%::
clipboard=
%opening%
%UserHotkeyText11%
%closing%
send ^v
CustomReport("custHotkey11")
Return

::%CustomHotkeyCommand13%::
clipboard=
%opening%
%UserHotkeyText13%
%closing%
send ^v
CustomReport("custHotkey13")
Return

::%CustomHotkeyCommand14%::
clipboard=
%opening%
%UserHotkeyText14%
%closing%
send ^v
CustomReport("custHotkey14")
Return

::%CustomHotkeyCommand15%::
clipboard=
%opening%
%UserHotkeyText15%
%closing%
send ^v
CustomReport("custHotkey15")
Return

::%CustomHotkeyCommand16%::
clipboard=
%opening%
%UserHotkeyText16%
%closing%
send ^v
CustomReport("custHotkey16")
Return

::%CustomHotkeyCommand17%::
clipboard=
%opening%
%UserHotkeyText17%
%closing%
send ^v
CustomReport("custHotkey17")
Return

::%CustomHotkeyCommand18%::
clipboard=
%opening%
%UserHotkeyText18%
%closing%
send ^v
CustomReport("custHotkey18")
Return

::%CustomHotkeyCommand19%::
clipboard=
%opening%
%UserHotkeyText19%
%closing%
send ^v
CustomReport("custHotkey19")
Return

CustomReport(keyname)
%openBracket%

INI = %percent%A_ScriptDir%percent%\reports\CHreport.ini
overallINI = %percent%A_ScriptDir%percent%\reports\settings.ini 

IniRead, overallTotal, %percent%overallINI%percent%, completeTotal, Total

IniRead, completeTotal, %percent%ini%percent%, %percent%keyname%percent%, Total

if (completeTotal = "ERROR")
%openBracket%
completeTotal = 0
overallTotal++
%closeBracket%
else
%openBracket%
completeTotal++
overallTotal++
%closeBracket%

iniwrite, %percent%completeTotal%percent%, %percent%ini%percent%, %percent%keyname%percent%, Total
iniwrite, %percent%overallTotal%percent%, %percent%overallini%percent%, completeTotal, Total

%closeBracket%
)
}

replacing := Clipboard

closingFile = userCreated.ahk

	DetectHiddenWindows On
	SetTitleMatchMode RegEx
	IfWinExist, i)%closingFile%.* ahk_class AutoHotkey
		{
		WinClose
		WinWaitClose, i)%closingFile%.* ahk_class AutoHotkey, , 2
		}	

FileDelete, %A_ScriptDir%\userCreated.ahk

FileAppend, %replacing%, %A_ScriptDir%\userCreated.ahk

	
Run, %A_ScriptDir%\userCreated.ahk

INI=%A_scriptdir%\settings.ini

IniWrite, yes, %ini%, %theCustFilename%, KEY1
IniWrite, %NewUserHotkeyCommand%, %ini%, %theCustFilename%, KEY2

TrayTip, Custom Hotkey Saved!, Your custom hotkey is ready to use..., , 3000

gosub, %redirectTo%
Return


CustomList:
ini = %A_ScriptDir%\settings.ini
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}
height = 500
GuiWidth = 600

IniRead, CustomHotkeyText1, %ini%, custHotkey01, KEY1
IniRead, CustomHotkeyCommand1, %ini%, custHotkey01, KEY2

IniRead, CustomHotkeyText2, %ini%, custHotkey02, KEY1
IniRead, CustomHotkeyCommand2, %ini%, custHotkey02, KEY2

IniRead, CustomHotkeyText3, %ini%, custHotkey03, KEY1
IniRead, CustomHotkeyCommand3, %ini%, custHotkey03, KEY2

IniRead, CustomHotkeyText4, %ini%, custHotkey04, KEY1
IniRead, CustomHotkeyCommand4, %ini%, custHotkey04, KEY2

IniRead, CustomHotkeyText5, %ini%, custHotkey05, KEY1
IniRead, CustomHotkeyCommand5, %ini%, custHotkey05, KEY2

Gui, theCustomList:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, theCustomList:Add, Picture, w140 h-1 vExit gGuiClose, %A_ScriptDir%\images\exit.jpg
Gui, theCustomList:Add, Picture, w140 h-1 vGoBack gCustom, %A_ScriptDir%\images\go_back.jpg
Gui, theCustomList:Add, Picture, w140 h-1 vNext gCustomList2, %A_ScriptDir%\images\next.jpg
Gui, theCustomList:Color, FFFFFF
Gui, theCustomList:Font, S24, w700
Gui, theCustomList:Add, Text, center CGray x20 y129 w550, Click on a Hotkey to edit
Gui, theCustomList:Font, S14, w700
if (CustomHotkeyText1 = "yes")
{
Gui, theCustomList:Add, Text, center CGreen x175 y+30 w250 gUserHotkeys01, %CustomHotkeyCommand1%
}
else
{
Gui, theCustomList:Add, Text, center CRed x175 y+30 w250 gUserHotkeys01, Custom Hotkey 01
}
if (CustomHotkeyText2 = "yes")
{
Gui, theCustomList:Add, Text, center CGreen x175 y+20 w250 gUserHotkeys02, %CustomHotkeyCommand2%
}
else
{
Gui, theCustomList:Add, Text, center CRed x175 y+20 w250 gUserHotkeys02, Custom Hotkey 02
}
if (CustomHotkeyText3 = "yes")
{
Gui, theCustomList:Add, Text, center CGreen x175 y+20 w250 gUserHotkeys03, %CustomHotkeyCommand3%
}
else
{
Gui, theCustomList:Add, Text, center CRed x175 y+20 w250 gUserHotkeys03, Custom Hotkey 03
}
if (CustomHotkeyText4 = "yes")
{
Gui, theCustomList:Add, Text, center CGreen x175 y+20 w250 gUserHotkeys04, %CustomHotkeyCommand4%
}
else
{
Gui, theCustomList:Add, Text, center CRed x175 y+20 w250 gUserHotkeys04, Custom Hotkey 04
}
if (CustomHotkeyText5 = "yes")
{
Gui, theCustomList:Add, Text, center CGreen x175 y+20 w250 gUserHotkeys05, %CustomHotkeyCommand5%
}
else
{
Gui, theCustomList:Add, Text, center CRed x175 y+20 w250 gUserHotkeys05, Custom Hotkey 05
}
Gui, theCustomList:Font, S10, w700
GuiControl, theCustomList:Move, Logo, x210
GuiControl, theCustomList:Move, Exit, x230 y430
GuiControl, theCustomList:Move, GoBack, x80 y430
GuiControl, theCustomList:Move, Next, x380 y430
Gui, theCustomList:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Edit AutoHotkeys - Custom Hotkeys 1 of 4

Gui, theCustom:destroy
Gui, userHotkeys01:destroy
Gui, userHotkeys02:destroy
Gui, userHotkeys03:destroy
Gui, userHotkeys04:destroy
Gui, userHotkeys05:destroy
Gui, userHotkeys06:destroy
Gui, userHotkeys07:destroy
Gui, userHotkeys08:destroy
Gui, userHotkeys09:destroy
Gui, userHotkeys10:destroy
Gui, theHotkeyChoice:destroy
Gui, theCustomList2:destroy

Return

CustomList2:

IniRead, CustomHotkeyText6, %ini%, custHotkey06, KEY1
IniRead, CustomHotkeyCommand6, %ini%, custHotkey06, KEY2

IniRead, CustomHotkeyText7, %ini%, custHotkey07, KEY1
IniRead, CustomHotkeyCommand7, %ini%, custHotkey07, KEY2

IniRead, CustomHotkeyText8, %ini%, custHotkey08, KEY1
IniRead, CustomHotkeyCommand8, %ini%, custHotkey08, KEY2

IniRead, CustomHotkeyText9, %ini%, custHotkey09, KEY1
IniRead, CustomHotkeyCommand9, %ini%, custHotkey09, KEY2

IniRead, CustomHotkeyText10, %ini%, custHotkey10, KEY1
IniRead, CustomHotkeyCommand10, %ini%, custHotkey10, KEY2

WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}


height = 500
GuiWidth = 600

Gui, theCustomList2:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, theCustomList2:Add, Picture, w140 h-1 vExit gGuiClose, %A_ScriptDir%\images\exit.jpg
Gui, theCustomList2:Add, Picture, w140 h-1 vGoBack gCustomList, %A_ScriptDir%\images\go_back.jpg
Gui, theCustomList2:Add, Picture, w140 h-1 vNext gCustomList3, %A_ScriptDir%\images\next.jpg
Gui, theCustomList2:Color, FFFFFF
Gui, theCustomList2:Font, S24, w700
Gui, theCustomList2:Add, Text, center CGray x20 y129 w550, Click on a Hotkey to edit
Gui, theCustomList2:Font, S14, w700
if (CustomHotkeyText6 = "yes")
{
Gui, theCustomList2:Add, Text, center CGreen x175 y+30 w250 gUserHotkeys06, %CustomHotkeyCommand6%
}
else
{
Gui, theCustomList2:Add, Text, center CRed x175 y+30 w250 gUserHotkeys06, Custom Hotkey 06
}
if (CustomHotkeyText7 = "yes")
{
Gui, theCustomList2:Add, Text, center CGreen x175 y+20 w250 gUserHotkeys07, %CustomHotkeyCommand7%
}
else
{
Gui, theCustomList2:Add, Text, center CRed x175 y+20 w250 gUserHotkeys07, Custom Hotkey 07
}
if (CustomHotkeyText8 = "yes")
{
Gui, theCustomList2:Add, Text, center CGreen x175 y+20 w250 gUserHotkeys08, %CustomHotkeyCommand8%
}
else
{
Gui, theCustomList2:Add, Text, center CRed x175 y+20 w250 gUserHotkeys08, Custom Hotkey 08
}
if (CustomHotkeyText9 = "yes")
{
Gui, theCustomList2:Add, Text, center CGreen x175 y+20 w250 gUserHotkeys09, %CustomHotkeyCommand9%
}
else
{
Gui, theCustomList2:Add, Text, center CRed x175 y+20 w250 gUserHotkeys09, Custom Hotkey 09
}
if (CustomHotkeyText10 = "yes")
{
Gui, theCustomList2:Add, Text, center CGreen x175 y+20 w250 gUserHotkeys10, %CustomHotkeyCommand10%
}
else
{
Gui, theCustomList2:Add, Text, center CRed x175 y+20 w250 gUserHotkeys10, Custom Hotkey 10
}
Gui, theCustomList2:Font, S10, w700
GuiControl, theCustomList2:Move, Logo, x210
GuiControl, theCustomList2:Move, Exit, x230 y430
GuiControl, theCustomList2:Move, GoBack, x80 y430
GuiControl, theCustomList2:Move, Next, x380 y430
Gui, theCustomList2:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Edit AutoHotkeys - Custom Hotkeys 2 of 4

Gui, userHotkeys01:destroy
Gui, userHotkeys02:destroy
Gui, userHotkeys03:destroy
Gui, userHotkeys05:destroy
Gui, userHotkeys06:destroy
Gui, userHotkeys07:destroy
Gui, userHotkeys08:destroy
Gui, userHotkeys09:destroy
Gui, userHotkeys10:destroy
Gui, userHotkeys11:destroy
Gui, userHotkeys12:destroy
Gui, userHotkeys13:destroy
Gui, userHotkeys14:destroy
Gui, userHotkeys15:destroy
Gui, theCustomList:destroy
Gui, theCustomList3:destroy
Return

CustomList3:

IniRead, CustomHotkeyText11, %ini%, custHotkey11, KEY1
IniRead, CustomHotkeyCommand11, %ini%, custHotkey11, KEY2

IniRead, CustomHotkeyText12, %ini%, custHotkey12, KEY1
IniRead, CustomHotkeyCommand12, %ini%, custHotkey12, KEY2

IniRead, CustomHotkeyText13, %ini%, custHotkey13, KEY1
IniRead, CustomHotkeyCommand13, %ini%, custHotkey13, KEY2

IniRead, CustomHotkeyText14, %ini%, custHotkey14, KEY1
IniRead, CustomHotkeyCommand14, %ini%, custHotkey14, KEY2

IniRead, CustomHotkeyText15, %ini%, custHotkey15, KEY1
IniRead, CustomHotkeyCommand15, %ini%, custHotkey15, KEY2

WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}


height = 500
GuiWidth = 600

Gui, theCustomList3:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, theCustomList3:Add, Picture, w140 h-1 vExit gGuiClose, %A_ScriptDir%\images\exit.jpg
Gui, theCustomList3:Add, Picture, w140 h-1 vGoBack gCustomList2, %A_ScriptDir%\images\go_back.jpg
Gui, theCustomList3:Add, Picture, w140 h-1 vNext gCustomList4, %A_ScriptDir%\images\next.jpg
Gui, theCustomList3:Color, FFFFFF
Gui, theCustomList3:Font, S24, w700
Gui, theCustomList3:Add, Text, center CGray x20 y129 w550, Click on a Hotkey to edit
Gui, theCustomList3:Font, S14, w700
if (CustomHotkeyText11 = "yes")
{
Gui, theCustomList3:Add, Text, center CGreen x175 y+30 w250 gUserHotkeys11, %CustomHotkeyCommand11%
}
else
{
Gui, theCustomList3:Add, Text, center CRed x175 y+30 w250 gUserHotkeys11, Custom Hotkey 11
}
if (CustomHotkeyText12 = "yes")
{
Gui, theCustomList3:Add, Text, center CGreen x175 y+20 w250 gUserHotkeys12, %CustomHotkeyCommand12%
}
else
{
Gui, theCustomList3:Add, Text, center CRed x175 y+20 w250 gUserHotkeys12, Custom Hotkey 12
}
if (CustomHotkeyText13 = "yes")
{
Gui, theCustomList3:Add, Text, center CGreen x175 y+20 w250 gUserHotkeys13, %CustomHotkeyCommand13%
}
else
{
Gui, theCustomList3:Add, Text, center CRed x175 y+20 w250 gUserHotkeys13, Custom Hotkey 13
}
if (CustomHotkeyText14 = "yes")
{
Gui, theCustomList3:Add, Text, center CGreen x175 y+20 w250 gUserHotkeys14, %CustomHotkeyCommand14%
}
else
{
Gui, theCustomList3:Add, Text, center CRed x175 y+20 w250 gUserHotkeys14, Custom Hotkey 14
}
if (CustomHotkeyText15 = "yes")
{
Gui, theCustomList3:Add, Text, center CGreen x175 y+20 w250 gUserHotkeys15, %CustomHotkeyCommand15%
}
else
{
Gui, theCustomList3:Add, Text, center CRed x175 y+20 w250 gUserHotkeys15, Custom Hotkey 15
}
Gui, theCustomList3:Font, S10, w700
GuiControl, theCustomList3:Move, Logo, x210
GuiControl, theCustomList3:Move, Exit, x230 y430
GuiControl, theCustomList3:Move, GoBack, x80 y430
GuiControl, theCustomList3:Move, Next, x380 y430
Gui, theCustomList3:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Edit AutoHotkeys - Custom Hotkeys 3 of 4

Gui, theCustomList2:destroy
Gui, theCustomList4:destroy
Gui, userHotkeys06:destroy
Gui, userHotkeys07:destroy
Gui, userHotkeys08:destroy
Gui, userHotkeys09:destroy
Gui, userHotkeys10:destroy
Gui, userHotkeys11:destroy
Gui, userHotkeys12:destroy
Gui, userHotkeys13:destroy
Gui, userHotkeys14:destroy
Gui, userHotkeys15:destroy
Gui, userHotkeys16:destroy
Gui, userHotkeys17:destroy
Gui, userHotkeys18:destroy
Gui, userHotkeys19:destroy
Gui, userHotkeys20:destroy

Return

CustomList4:

IniRead, CustomHotkeyText16, %ini%, custHotkey16, KEY1
IniRead, CustomHotkeyCommand16, %ini%, custHotkey16, KEY2

IniRead, CustomHotkeyText17, %ini%, custHotkey17, KEY1
IniRead, CustomHotkeyCommand17, %ini%, custHotkey17, KEY2

IniRead, CustomHotkeyText18, %ini%, custHotkey18, KEY1
IniRead, CustomHotkeyCommand18, %ini%, custHotkey18, KEY2

IniRead, CustomHotkeyText19, %ini%, custHotkey19, KEY1
IniRead, CustomHotkeyCommand19, %ini%, custHotkey19, KEY2

IniRead, CustomHotkeyText20, %ini%, custHotkey20, KEY1
IniRead, CustomHotkeyCommand20, %ini%, custHotkey20, KEY2

WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}


height = 500
GuiWidth = 600

Gui, theCustomList4:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, theCustomList4:Add, Picture, w140 h-1 vExit gGuiClose, %A_ScriptDir%\images\exit.jpg
Gui, theCustomList4:Add, Picture, w140 h-1 vGoBack gCustomList3, %A_ScriptDir%\images\go_back.jpg
Gui, theCustomList4:Color, FFFFFF
Gui, theCustomList4:Font, S24, w700
Gui, theCustomList4:Add, Text, center CGray x20 y129 w550, Click on a Hotkey to edit
Gui, theCustomList4:Font, S14, w700
if (CustomHotkeyText16 = "yes")
{
Gui, theCustomList4:Add, Text, center CGreen x175 y+30 w250 gUserHotkeys16, %CustomHotkeyCommand16%
}
else
{
Gui, theCustomList4:Add, Text, center CRed x175 y+30 w250 gUserHotkeys16, Custom Hotkey 16
}
if (CustomHotkeyText17 = "yes")
{
Gui, theCustomList4:Add, Text, center CGreen x175 y+20 w250 gUserHotkeys17, %CustomHotkeyCommand17%
}
else
{
Gui, theCustomList4:Add, Text, center CRed x175 y+20 w250 gUserHotkeys17, Custom Hotkey 17
}
if (CustomHotkeyText18 = "yes")
{
Gui, theCustomList4:Add, Text, center CGreen x175 y+20 w250 gUserHotkeys18, %CustomHotkeyCommand18%
}
else
{
Gui, theCustomList4:Add, Text, center CRed x175 y+20 w250 gUserHotkeys18, Custom Hotkey 18
}
if (CustomHotkeyText19 = "yes")
{
Gui, theCustomList4:Add, Text, center CGreen x175 y+20 w250 gUserHotkeys19, %CustomHotkeyCommand19%
}
else
{
Gui, theCustomList4:Add, Text, center CRed x175 y+20 w250 gUserHotkeys19, Custom Hotkey 19
}
if (CustomHotkeyText20 = "yes")
{
Gui, theCustomList4:Add, Text, center CGreen x175 y+20 w250 gUserHotkeys20, %CustomHotkeyCommand20%
}
else
{
Gui, theCustomList4:Add, Text, center CRed x175 y+20 w250 gUserHotkeys20, Custom Hotkey 20
}
Gui, theCustomList4:Font, S10, w700
GuiControl, theCustomList4:Move, Logo, x210
GuiControl, theCustomList4:Move, Exit, x230 y430
GuiControl, theCustomList4:Move, GoBack, x80 y430
Gui, theCustomList4:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Edit AutoHotkeys - Custom Hotkeys 4 of 4

Gui, theCustomList3:destroy
Gui, userHotkeys11:destroy
Gui, userHotkeys12:destroy
Gui, userHotkeys13:destroy
Gui, userHotkeys14:destroy
Gui, userHotkeys15:destroy
Gui, userHotkeys16:destroy
Gui, userHotkeys17:destroy
Gui, userHotkeys18:destroy
Gui, userHotkeys19:destroy
Gui, userHotkeys20:destroy

Return

UserHotkeys01:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText1, %ini%, custHotkey01, KEY1
IniRead, CustomHotkeyCommand1, %ini%, custHotkey01, KEY2

if (CustomHotkeyText1 = "yes")
{
FileRead, UserHotkeyText1, %A_ScriptDir%\text_files\custHotkey01.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 1
theCustFilename = custHotkey01

Gui, userHotkeys01:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, userHotkeys01:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, userHotkeys01:Add, Picture, w140 h-1 vGoBack gCustomList, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText1 = "yes")
{
Gui, userHotkeys01:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, userHotkeys01:Color, FFFFFF
Gui, userHotkeys01:Font, S14, w700
Gui, userHotkeys01:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, userHotkeys01:Font, S12, w700
if (CustomHotkeyText1 = "yes")
{
Gui, userHotkeys01:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand1%
}
else
{
Gui, userHotkeys01:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, userHotkeys01:Font, S12, w700
if (CustomHotkeyText1 = "yes")
{
Gui, userHotkeys01:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText1%
}
else
{
Gui, userHotkeys01:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, userHotkeys01:Font, S10, w700
GuiControl, userHotkeys01:Move, Logo, x210
GuiControl, userHotkeys01:Move, OutputClose, x380 y430
GuiControl, userHotkeys01:Move, GoBack, x80 y430
if (CustomHotkeyText1 = "yes")
{
GuiControl, userHotkeys01:Move, Delete, x230 y430
}
Gui, userHotkeys01:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList:destroy

GuiControl, userHotkeys01:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%

Return

UserHotkeys02:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText2, %ini%, custHotkey02, KEY1
IniRead, CustomHotkeyCommand2, %ini%, custHotkey02, KEY2

if (CustomHotkeyText2 = "yes")
{
FileRead, UserHotkeyText2, %A_ScriptDir%\text_files\custHotkey02.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 2
theCustFilename = custHotkey02

Gui, userHotkeys02:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, userHotkeys02:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, userHotkeys02:Add, Picture, w140 h-1 vGoBack gCustomList, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText2 = "yes")
{
Gui, userHotkeys02:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, userHotkeys02:Color, FFFFFF
Gui, userHotkeys02:Font, S14, w700
Gui, userHotkeys02:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, userHotkeys02:Font, S12, w700
if (CustomHotkeyText2 = "yes")
{
Gui, userHotkeys02:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand2%
}
else
{
Gui, userHotkeys02:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, userHotkeys02:Font, S12, w700
if (CustomHotkeyText2 = "yes")
{
Gui, userHotkeys02:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText2%
}
else
{
Gui, userHotkeys02:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, userHotkeys02:Font, S10, w700
GuiControl, userHotkeys02:Move, Logo, x210
GuiControl, userHotkeys02:Move, OutputClose, x380 y430
GuiControl, userHotkeys02:Move, GoBack, x80 y430
if (CustomHotkeyText2 = "yes")
{
GuiControl, userHotkeys02:Move, Delete, x230 y430
}
Gui, userHotkeys02:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList:destroy

GuiControl, userHotkeys02:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%

Return

UserHotkeys03:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText3, %ini%, custHotkey03, KEY1
IniRead, CustomHotkeyCommand3, %ini%, custHotkey03, KEY2

if (CustomHotkeyText3 = "yes")
{
FileRead, UserHotkeyText3, %A_ScriptDir%\text_files\custHotkey03.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 3
theCustFilename = custHotkey03

Gui, userHotkeys03:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, userHotkeys03:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, userHotkeys03:Add, Picture, w140 h-1 vGoBack gCustomList, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText3 = "yes")
{
Gui, userHotkeys03:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, userHotkeys03:Color, FFFFFF
Gui, userHotkeys03:Font, S14, w700
Gui, userHotkeys03:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, userHotkeys03:Font, S12, w700
if (CustomHotkeyText3 = "yes")
{
Gui, userHotkeys03:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand3%
}
else
{
Gui, userHotkeys03:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, userHotkeys03:Font, S12, w700
if (CustomHotkeyText3 = "yes")
{
Gui, userHotkeys03:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText3%
}
else
{
Gui, userHotkeys03:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, userHotkeys03:Font, S10, w700
GuiControl, userHotkeys03:Move, Logo, x210
GuiControl, userHotkeys03:Move, OutputClose, x380 y430
GuiControl, userHotkeys03:Move, GoBack, x80 y430
if (CustomHotkeyText3 = "yes")
{
GuiControl, userHotkeys03:Move, Delete, x230 y430
}

Gui, userHotkeys03:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList:destroy

GuiControl, userHotkeys03:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%

Return

UserHotkeys04:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText4, %ini%, custHotkey04, KEY1
IniRead, CustomHotkeyCommand4, %ini%, custHotkey04, KEY2

if (CustomHotkeyText4 = "yes")
{
FileRead, UserHotkeyText4, %A_ScriptDir%\text_files\custHotkey04.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 4
theCustFilename = custHotkey04

Gui, userHotkeys04:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, userHotkeys04:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, userHotkeys04:Add, Picture, w140 h-1 vGoBack gCustomList, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText4 = "yes")
{
Gui, userHotkeys04:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, userHotkeys04:Color, FFFFFF
Gui, userHotkeys04:Font, S14, w700
Gui, userHotkeys04:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, userHotkeys04:Font, S12, w700
if (CustomHotkeyText4 = "yes")
{
Gui, userHotkeys04:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand4%
}
else
{
Gui, userHotkeys04:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, userHotkeys04:Font, S12, w700
if (CustomHotkeyText4 = "yes")
{
Gui, userHotkeys04:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText4%
}
else
{
Gui, userHotkeys04:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, userHotkeys04:Font, S10, w700
GuiControl, userHotkeys04:Move, Logo, x210
GuiControl, userHotkeys04:Move, OutputClose, x380 y430
GuiControl, userHotkeys04:Move, GoBack, x80 y430
if (CustomHotkeyText4 = "yes")
{
GuiControl, userHotkeys04:Move, Delete, x230 y430
}

Gui, userHotkeys04:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList:destroy

GuiControl, userHotkeys04:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%

Return

UserHotkeys05:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText5, %ini%, custHotkey05, KEY1
IniRead, CustomHotkeyCommand5, %ini%, custHotkey05, KEY2

if (CustomHotkeyText5 = "yes")
{
FileRead, UserHotkeyText5, %A_ScriptDir%\text_files\custHotkey05.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 5
theCustFilename = custHotkey05

Gui, userHotkeys05:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, userHotkeys05:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, userHotkeys05:Add, Picture, w140 h-1 vGoBack gCustomList, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText5 = "yes")
{
Gui, userHotkeys05:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, userHotkeys05:Color, FFFFFF
Gui, userHotkeys05:Font, S14, w700
Gui, userHotkeys05:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, userHotkeys05:Font, S12, w700
if (CustomHotkeyText5 = "yes")
{
Gui, userHotkeys05:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand5%
}
else
{
Gui, userHotkeys05:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, userHotkeys05:Font, S12, w700
if (CustomHotkeyText5 = "yes")
{
Gui, userHotkeys05:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText5%
}
else
{
Gui, userHotkeys05:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, userHotkeys05:Font, S10, w700
GuiControl, userHotkeys05:Move, Logo, x210
GuiControl, userHotkeys05:Move, OutputClose, x380 y430
GuiControl, userHotkeys05:Move, GoBack, x80 y430
if (CustomHotkeyText5 = "yes")
{
GuiControl, userHotkeys05:Move, Delete, x230 y430
}

Gui, userHotkeys05:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList:destroy

GuiControl, userHotkeys05:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%

Return

UserHotkeys06:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText6, %ini%, custHotkey06, KEY1
IniRead, CustomHotkeyCommand6, %ini%, custHotkey06, KEY2

if (CustomHotkeyText6 = "yes")
{
FileRead, UserHotkeyText6, %A_ScriptDir%\text_files\custHotkey06.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 6
theCustFilename = custHotkey06

Gui, userHotkeys06:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, userHotkeys06:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, userHotkeys06:Add, Picture, w140 h-1 vGoBack gCustomList2, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText6 = "yes")
{
Gui, userHotkeys06:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, userHotkeys06:Color, FFFFFF
Gui, userHotkeys06:Font, S14, w700
Gui, userHotkeys06:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, userHotkeys06:Font, S12, w700
if (CustomHotkeyText6 = "yes")
{
Gui, userHotkeys06:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand6%
}
else
{
Gui, userHotkeys06:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, userHotkeys06:Font, S12, w700
if (CustomHotkeyText6 = "yes")
{
Gui, userHotkeys06:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText6%
}
else
{
Gui, userHotkeys06:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, userHotkeys06:Font, S10, w700
GuiControl, userHotkeys06:Move, Logo, x210
GuiControl, userHotkeys06:Move, OutputClose, x380 y430
GuiControl, userHotkeys06:Move, GoBack, x80 y430
if (CustomHotkeyText6 = "yes")
{
GuiControl, userHotkeys06:Move, Delete, x230 y430
}

Gui, userHotkeys06:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList2:destroy

GuiControl, userHotkeys06:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%

Return

UserHotkeys07:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText7, %ini%, custHotkey07, KEY1
IniRead, CustomHotkeyCommand7, %ini%, custHotkey07, KEY2

if (CustomHotkeyText7 = "yes")
{
FileRead, UserHotkeyText7, %A_ScriptDir%\text_files\custHotkey07.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 7
theCustFilename = custHotkey07

Gui, userHotkeys07:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, userHotkeys07:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, userHotkeys07:Add, Picture, w140 h-1 vGoBack gCustomList2, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText7 = "yes")
{
Gui, userHotkeys07:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, userHotkeys07:Color, FFFFFF
Gui, userHotkeys07:Font, S14, w700
Gui, userHotkeys07:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, userHotkeys07:Font, S12, w700
if (CustomHotkeyText7 = "yes")
{
Gui, userHotkeys07:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand7%
}
else
{
Gui, userHotkeys07:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, userHotkeys07:Font, S12, w700
if (CustomHotkeyText7 = "yes")
{
Gui, userHotkeys07:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText7%
}
else
{
Gui, userHotkeys07:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, userHotkeys07:Font, S10, w700
GuiControl, userHotkeys07:Move, Logo, x210
GuiControl, userHotkeys07:Move, OutputClose, x380 y430
GuiControl, userHotkeys07:Move, GoBack, x80 y430
if (CustomHotkeyText7 = "yes")
{
GuiControl, userHotkeys07:Move, Delete, x230 y430
}

Gui, userHotkeys07:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList2:destroy

GuiControl, userHotkeys07:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%

Return

UserHotkeys08:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText8, %ini%, custHotkey08, KEY1
IniRead, CustomHotkeyCommand8, %ini%, custHotkey08, KEY2

if (CustomHotkeyText8 = "yes")
{
FileRead, UserHotkeyText8, %A_ScriptDir%\text_files\custHotkey08.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 8
theCustFilename = custHotkey08

Gui, userHotkeys08:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, userHotkeys08:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, userHotkeys08:Add, Picture, w140 h-1 vGoBack gCustomList2, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText8 = "yes")
{
Gui, userHotkeys08:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, userHotkeys08:Color, FFFFFF
Gui, userHotkeys08:Font, S14, w700
Gui, userHotkeys08:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, userHotkeys08:Font, S12, w700
if (CustomHotkeyText8 = "yes")
{
Gui, userHotkeys08:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand8%
}
else
{
Gui, userHotkeys08:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, userHotkeys08:Font, S12, w700
if (CustomHotkeyText8 = "yes")
{
Gui, userHotkeys08:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText8%
}
else
{
Gui, userHotkeys08:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, userHotkeys08:Font, S10, w700
GuiControl, userHotkeys08:Move, Logo, x210
GuiControl, userHotkeys08:Move, OutputClose, x380 y430
GuiControl, userHotkeys08:Move, GoBack, x80 y430
if (CustomHotkeyText8 = "yes")
{
GuiControl, userHotkeys08:Move, Delete, x230 y430
}

Gui, userHotkeys08:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList2:destroy

GuiControl, userHotkeys08:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%

Return

UserHotkeys09:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText9, %ini%, custHotkey09, KEY1
IniRead, CustomHotkeyCommand9, %ini%, custHotkey09, KEY2

if (CustomHotkeyText9 = "yes")
{
FileRead, UserHotkeyText9, %A_ScriptDir%\text_files\custHotkey09.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 9
theCustFilename = custHotkey09

Gui, userHotkeys09:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, userHotkeys09:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, userHotkeys09:Add, Picture, w140 h-1 vGoBack gCustomList2, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText9 = "yes")
{
Gui, userHotkeys09:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, userHotkeys09:Color, FFFFFF
Gui, userHotkeys09:Font, S14, w700
Gui, userHotkeys09:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, userHotkeys09:Font, S12, w700
if (CustomHotkeyText9 = "yes")
{
Gui, userHotkeys09:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand9%
}
else
{
Gui, userHotkeys09:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, userHotkeys09:Font, S12, w700
if (CustomHotkeyText9 = "yes")
{
Gui, userHotkeys09:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText9%
}
else
{
Gui, userHotkeys09:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, userHotkeys09:Font, S10, w700
GuiControl, userHotkeys09:Move, Logo, x210
GuiControl, userHotkeys09:Move, OutputClose, x380 y430
GuiControl, userHotkeys09:Move, GoBack, x80 y430
if (CustomHotkeyText9 = "yes")
{
GuiControl, userHotkeys09:Move, Delete, x230 y430
}

Gui, userHotkeys09:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList2:destroy

GuiControl, userHotkeys09:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%
Return

UserHotkeys10:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText10, %ini%, custHotkey10, KEY1
IniRead, CustomHotkeyCommand10, %ini%, custHotkey10, KEY2

if (CustomHotkeyText10 = "yes")
{
FileRead, UserHotkeyText10, %A_ScriptDir%\text_files\custHotkey10.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 10
theCustFilename = custHotkey10

Gui, userHotkeys10:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, userHotkeys10:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, userHotkeys10:Add, Picture, w140 h-1 vGoBack gCustomList2, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText10 = "yes")
{
Gui, userHotkeys10:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, userHotkeys10:Color, FFFFFF
Gui, userHotkeys10:Font, S14, w700
Gui, userHotkeys10:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, userHotkeys10:Font, S12, w700
if (CustomHotkeyText10 = "yes")
{
Gui, userHotkeys10:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand10%
}
else
{
Gui, userHotkeys10:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, userHotkeys10:Font, S12, w700
if (CustomHotkeyText10 = "yes")
{
Gui, userHotkeys10:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText10%
}
else
{
Gui, userHotkeys10:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, userHotkeys10:Font, S10, w700
GuiControl, userHotkeys10:Move, Logo, x210
GuiControl, userHotkeys10:Move, OutputClose, x380 y430
GuiControl, userHotkeys10:Move, GoBack, x80 y430
if (CustomHotkeyText10 = "yes")
{
GuiControl, userHotkeys10:Move, Delete, x230 y430
}

Gui, userHotkeys10:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList2:destroy

GuiControl, userHotkeys10:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%
Return

userHotkeys11:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText11, %ini%, custHotkey11, KEY1
IniRead, CustomHotkeyCommand11, %ini%, custHotkey11, KEY2

if (CustomHotkeyText11 = "yes")
{
FileRead, UserHotkeyText11, %A_ScriptDir%\text_files\custHotkey11.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 11
theCustFilename = custHotkey11

Gui, userHotkeys11:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, userHotkeys11:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, userHotkeys11:Add, Picture, w140 h-1 vGoBack gCustomList3, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText11 = "yes")
{
Gui, userHotkeys11:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, userHotkeys11:Color, FFFFFF
Gui, userHotkeys11:Font, S14, w700
Gui, userHotkeys11:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, userHotkeys11:Font, S12, w700
if (CustomHotkeyText11 = "yes")
{
Gui, userHotkeys11:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand11%
}
else
{
Gui, userHotkeys11:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, userHotkeys11:Font, S12, w700
if (CustomHotkeyText11 = "yes")
{
Gui, userHotkeys11:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText11%
}
else
{
Gui, userHotkeys11:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, userHotkeys11:Font, S10, w700
GuiControl, userHotkeys11:Move, Logo, x210
GuiControl, userHotkeys11:Move, OutputClose, x380 y430
GuiControl, userHotkeys11:Move, GoBack, x80 y430
if (CustomHotkeyText11 = "yes")
{
GuiControl, userHotkeys11:Move, Delete, x230 y430
}
Gui, userHotkeys11:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList3:destroy

GuiControl, userHotkeys11:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%

Return

UserHotkeys12:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText12, %ini%, custHotkey12, KEY1
IniRead, CustomHotkeyCommand12, %ini%, custHotkey12, KEY2

if (CustomHotkeyText12 = "yes")
{
FileRead, UserHotkeyText12, %A_ScriptDir%\text_files\custHotkey12.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 12
theCustFilename = custHotkey12

Gui, UserHotkeys12:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, UserHotkeys12:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, UserHotkeys12:Add, Picture, w140 h-1 vGoBack gCustomList3, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText12 = "yes")
{
Gui, UserHotkeys12:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, UserHotkeys12:Color, FFFFFF
Gui, UserHotkeys12:Font, S14, w700
Gui, UserHotkeys12:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, UserHotkeys12:Font, S12, w700
if (CustomHotkeyText12 = "yes")
{
Gui, UserHotkeys12:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand12%
}
else
{
Gui, UserHotkeys12:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, UserHotkeys12:Font, S12, w700
if (CustomHotkeyText12 = "yes")
{
Gui, UserHotkeys12:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText12%
}
else
{
Gui, UserHotkeys12:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, UserHotkeys12:Font, S10, w700
GuiControl, UserHotkeys12:Move, Logo, x210
GuiControl, UserHotkeys12:Move, OutputClose, x380 y430
GuiControl, UserHotkeys12:Move, GoBack, x80 y430
if (CustomHotkeyText12 = "yes")
{
GuiControl, UserHotkeys12:Move, Delete, x230 y430
}
Gui, UserHotkeys12:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList3:destroy

GuiControl, UserHotkeys12:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%

Return

UserHotkeys13:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText13, %ini%, custHotkey13, KEY1
IniRead, CustomHotkeyCommand13, %ini%, custHotkey13, KEY2

if (CustomHotkeyText13 = "yes")
{
FileRead, UserHotkeyText3, %A_ScriptDir%\text_files\custHotkey13.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 13
theCustFilename = custHotkey13

Gui, UserHotkeys13:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, UserHotkeys13:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, UserHotkeys13:Add, Picture, w140 h-1 vGoBack gCustomList3, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText13 = "yes")
{
Gui, UserHotkeys13:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, UserHotkeys13:Color, FFFFFF
Gui, UserHotkeys13:Font, S14, w700
Gui, UserHotkeys13:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, UserHotkeys13:Font, S12, w700
if (CustomHotkeyText13 = "yes")
{
Gui, UserHotkeys13:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand13%
}
else
{
Gui, UserHotkeys13:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, UserHotkeys13:Font, S12, w700
if (CustomHotkeyText13 = "yes")
{
Gui, UserHotkeys13:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText3%
}
else
{
Gui, UserHotkeys13:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, UserHotkeys13:Font, S10, w700
GuiControl, UserHotkeys13:Move, Logo, x210
GuiControl, UserHotkeys13:Move, OutputClose, x380 y430
GuiControl, UserHotkeys13:Move, GoBack, x80 y430
if (CustomHotkeyText13 = "yes")
{
GuiControl, UserHotkeys13:Move, Delete, x230 y430
}

Gui, UserHotkeys13:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList3:destroy

GuiControl, UserHotkeys13:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%

Return

UserHotkeys14:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText14, %ini%, custHotkey14, KEY1
IniRead, CustomHotkeyCommand14, %ini%, custHotkey14, KEY2

if (CustomHotkeyText14 = "yes")
{
FileRead, UserHotkeyText4, %A_ScriptDir%\text_files\custHotkey14.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 14
theCustFilename = custHotkey14

Gui, UserHotkeys14:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, UserHotkeys14:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, UserHotkeys14:Add, Picture, w140 h-1 vGoBack gCustomList3, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText14 = "yes")
{
Gui, UserHotkeys14:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, UserHotkeys14:Color, FFFFFF
Gui, UserHotkeys14:Font, S14, w700
Gui, UserHotkeys14:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, UserHotkeys14:Font, S12, w700
if (CustomHotkeyText14 = "yes")
{
Gui, UserHotkeys14:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand14%
}
else
{
Gui, UserHotkeys14:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, UserHotkeys14:Font, S12, w700
if (CustomHotkeyText14 = "yes")
{
Gui, UserHotkeys14:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText4%
}
else
{
Gui, UserHotkeys14:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, UserHotkeys14:Font, S10, w700
GuiControl, UserHotkeys14:Move, Logo, x210
GuiControl, UserHotkeys14:Move, OutputClose, x380 y430
GuiControl, UserHotkeys14:Move, GoBack, x80 y430
if (CustomHotkeyText14 = "yes")
{
GuiControl, UserHotkeys14:Move, Delete, x230 y430
}

Gui, UserHotkeys14:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList3:destroy

GuiControl, UserHotkeys14:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%

Return

UserHotkeys15:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText15, %ini%, custHotkey15, KEY1
IniRead, CustomHotkeyCommand15, %ini%, custHotkey15, KEY2

if (CustomHotkeyText15 = "yes")
{
FileRead, UserHotkeyText5, %A_ScriptDir%\text_files\custHotkey15.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 15
theCustFilename = custHotkey15

Gui, UserHotkeys15:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, UserHotkeys15:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, UserHotkeys15:Add, Picture, w140 h-1 vGoBack gCustomList3, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText15 = "yes")
{
Gui, UserHotkeys15:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, UserHotkeys15:Color, FFFFFF
Gui, UserHotkeys15:Font, S14, w700
Gui, UserHotkeys15:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, UserHotkeys15:Font, S12, w700
if (CustomHotkeyText15 = "yes")
{
Gui, UserHotkeys15:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand15%
}
else
{
Gui, UserHotkeys15:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, UserHotkeys15:Font, S12, w700
if (CustomHotkeyText15 = "yes")
{
Gui, UserHotkeys15:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText5%
}
else
{
Gui, UserHotkeys15:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, UserHotkeys15:Font, S10, w700
GuiControl, UserHotkeys15:Move, Logo, x210
GuiControl, UserHotkeys15:Move, OutputClose, x380 y430
GuiControl, UserHotkeys15:Move, GoBack, x80 y430
if (CustomHotkeyText15 = "yes")
{
GuiControl, UserHotkeys15:Move, Delete, x230 y430
}

Gui, UserHotkeys15:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList3:destroy

GuiControl, UserHotkeys15:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%

Return

UserHotkeys16:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText16, %ini%, custHotkey16, KEY1
IniRead, CustomHotkeyCommand16, %ini%, custHotkey16, KEY2

if (CustomHotkeyText16 = "yes")
{
FileRead, UserHotkeyText6, %A_ScriptDir%\text_files\custHotkey16.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 16
theCustFilename = custHotkey16

Gui, UserHotkeys16:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, UserHotkeys16:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, UserHotkeys16:Add, Picture, w140 h-1 vGoBack gCustomList4, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText16 = "yes")
{
Gui, UserHotkeys16:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, UserHotkeys16:Color, FFFFFF
Gui, UserHotkeys16:Font, S14, w700
Gui, UserHotkeys16:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, UserHotkeys16:Font, S12, w700
if (CustomHotkeyText16 = "yes")
{
Gui, UserHotkeys16:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand16%
}
else
{
Gui, UserHotkeys16:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, UserHotkeys16:Font, S12, w700
if (CustomHotkeyText16 = "yes")
{
Gui, UserHotkeys16:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText6%
}
else
{
Gui, UserHotkeys16:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, UserHotkeys16:Font, S10, w700
GuiControl, UserHotkeys16:Move, Logo, x210
GuiControl, UserHotkeys16:Move, OutputClose, x380 y430
GuiControl, UserHotkeys16:Move, GoBack, x80 y430
if (CustomHotkeyText16 = "yes")
{
GuiControl, UserHotkeys16:Move, Delete, x230 y430
}

Gui, UserHotkeys16:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList4:destroy

GuiControl, UserHotkeys16:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%

Return

UserHotkeys17:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText17, %ini%, custHotkey17, KEY1
IniRead, CustomHotkeyCommand17, %ini%, custHotkey17, KEY2

if (CustomHotkeyText17 = "yes")
{
FileRead, UserHotkeyText7, %A_ScriptDir%\text_files\custHotkey17.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 17
theCustFilename = custHotkey17

Gui, UserHotkeys17:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, UserHotkeys17:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, UserHotkeys17:Add, Picture, w140 h-1 vGoBack gCustomList4, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText17 = "yes")
{
Gui, UserHotkeys17:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, UserHotkeys17:Color, FFFFFF
Gui, UserHotkeys17:Font, S14, w700
Gui, UserHotkeys17:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, UserHotkeys17:Font, S12, w700
if (CustomHotkeyText17 = "yes")
{
Gui, UserHotkeys17:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand17%
}
else
{
Gui, UserHotkeys17:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, UserHotkeys17:Font, S12, w700
if (CustomHotkeyText17 = "yes")
{
Gui, UserHotkeys17:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText7%
}
else
{
Gui, UserHotkeys17:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, UserHotkeys17:Font, S10, w700
GuiControl, UserHotkeys17:Move, Logo, x210
GuiControl, UserHotkeys17:Move, OutputClose, x380 y430
GuiControl, UserHotkeys17:Move, GoBack, x80 y430
if (CustomHotkeyText17 = "yes")
{
GuiControl, UserHotkeys17:Move, Delete, x230 y430
}

Gui, UserHotkeys17:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList4:destroy

GuiControl, UserHotkeys17:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%

Return

UserHotkeys18:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText18, %ini%, custHotkey18, KEY1
IniRead, CustomHotkeyCommand18, %ini%, custHotkey18, KEY2

if (CustomHotkeyText18 = "yes")
{
FileRead, UserHotkeyText8, %A_ScriptDir%\text_files\custHotkey18.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 18
theCustFilename = custHotkey18

Gui, UserHotkeys18:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, UserHotkeys18:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, UserHotkeys18:Add, Picture, w140 h-1 vGoBack gCustomList4, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText18 = "yes")
{
Gui, UserHotkeys18:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, UserHotkeys18:Color, FFFFFF
Gui, UserHotkeys18:Font, S14, w700
Gui, UserHotkeys18:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, UserHotkeys18:Font, S12, w700
if (CustomHotkeyText18 = "yes")
{
Gui, UserHotkeys18:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand18%
}
else
{
Gui, UserHotkeys18:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, UserHotkeys18:Font, S12, w700
if (CustomHotkeyText18 = "yes")
{
Gui, UserHotkeys18:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText8%
}
else
{
Gui, UserHotkeys18:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, UserHotkeys18:Font, S10, w700
GuiControl, UserHotkeys18:Move, Logo, x210
GuiControl, UserHotkeys18:Move, OutputClose, x380 y430
GuiControl, UserHotkeys18:Move, GoBack, x80 y430
if (CustomHotkeyText18 = "yes")
{
GuiControl, UserHotkeys18:Move, Delete, x230 y430
}

Gui, UserHotkeys18:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList4:destroy

GuiControl, UserHotkeys18:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%

Return

UserHotkeys19:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText19, %ini%, custHotkey19, KEY1
IniRead, CustomHotkeyCommand19, %ini%, custHotkey19, KEY2

if (CustomHotkeyText19 = "yes")
{
FileRead, UserHotkeyText19, %A_ScriptDir%\text_files\custHotkey19.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 19
theCustFilename = custHotkey19

Gui, UserHotkeys19:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, UserHotkeys19:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, UserHotkeys19:Add, Picture, w140 h-1 vGoBack gCustomList4, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText19 = "yes")
{
Gui, UserHotkeys19:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, UserHotkeys19:Color, FFFFFF
Gui, UserHotkeys19:Font, S14, w700
Gui, UserHotkeys19:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, UserHotkeys19:Font, S12, w700
if (CustomHotkeyText19 = "yes")
{
Gui, UserHotkeys19:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand19%
}
else
{
Gui, UserHotkeys19:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, UserHotkeys19:Font, S12, w700
if (CustomHotkeyText19 = "yes")
{
Gui, UserHotkeys19:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText9%
}
else
{
Gui, UserHotkeys19:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, UserHotkeys19:Font, S10, w700
GuiControl, UserHotkeys19:Move, Logo, x210
GuiControl, UserHotkeys19:Move, OutputClose, x380 y430
GuiControl, UserHotkeys19:Move, GoBack, x80 y430
if (CustomHotkeyText19 = "yes")
{
GuiControl, UserHotkeys19:Move, Delete, x230 y430
}

Gui, UserHotkeys19:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList4:destroy

GuiControl, UserHotkeys19:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%
Return

UserHotkeys20:
WinGetPos, Xpos, Ypos
if Xpos is space
{
Xpos = Center
Ypos = Center
}

IniRead, CustomHotkeyText20, %ini%, custHotkey20, KEY1
IniRead, CustomHotkeyCommand20, %ini%, custHotkey20, KEY2

if (CustomHotkeyText20 = "yes")
{
FileRead, UserHotkeyText20, %A_ScriptDir%\text_files\custHotkey20.txt
}

tp := 6

height = 500
GuiWidth = 600
CustHotkey = 20
theCustFilename = custHotkey20

Gui, UserHotkeys20:Add, Picture, w180 h-1 vLogo gLogo, %A_ScriptDir%\images\ahk_manual.jpg
Gui, UserHotkeys20:Add, Picture, w140 h-1 vOutputClose gUHOutputClose, %A_ScriptDir%\images\save.jpg
Gui, UserHotkeys20:Add, Picture, w140 h-1 vGoBack gCustomList4, %A_ScriptDir%\images\go_back.jpg
if (CustomHotkeyText20 = "yes")
{
Gui, UserHotkeys20:Add, Picture, w140 h-1 vDelete gDeleteCustomHotkey, %A_ScriptDir%\images\delete.jpg
}
Gui, UserHotkeys20:Color, FFFFFF
Gui, UserHotkeys20:Font, S14, w700
Gui, UserHotkeys20:Add, Text, center CGray x80 y129 w440, *Create Your Custom Hotkey*
Gui, UserHotkeys20:Font, S12, w700
if (CustomHotkeyText20 = "yes")
{
Gui, UserHotkeys20:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, %CustomHotkeyCommand20%
}
else
{
Gui, UserHotkeys20:Add, Edit, xs-10 CGray x115 y169 w370 h35 +0x200 hwndEdit vNewUserHotkeyCommand, Enter the hotkey command starting with #.
}
Gui, UserHotkeys20:Font, S12, w700
if (CustomHotkeyText20 = "yes")
{
Gui, UserHotkeys20:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, %UserHotkeyText20%
}
else
{
Gui, UserHotkeys20:Add, Edit, xs-10 CGray x80 y219 w440 h190 +0x200 hwndEdit vNewUserHotkeyText, Enter your hotkey text here.
}
Gui, UserHotkeys20:Font, S10, w700
GuiControl, UserHotkeys20:Move, Logo, x210
GuiControl, UserHotkeys20:Move, OutputClose, x380 y430
GuiControl, UserHotkeys20:Move, GoBack, x80 y430
if (CustomHotkeyText20 = "yes")
{
GuiControl, UserHotkeys20:Move, Delete, x230 y430
}

Gui, UserHotkeys20:Show, x%Xpos% y%Ypos% h%height% w%GuiWidth%, Add Custom Hotkey

Gui, theHotkeyChoice:destroy
Gui, theCustomList4:destroy

GuiControl, UserHotkeys20:Focus, NewUserHotkeyCommand

VarSetCapacity( R, 16, 0 )

SendMessage, 0xB2,, % &R,, ahk_id %Edit%

x1:=NumGet( &R+0 ), y1:=NumGet( &R+4 )

x2:=NumGet( &R+8 ), y2:=NumGet( &R+12 )

NumPut( (x1+tp), &R, 0 ), NumPut( (y1+tp), &R, 4 )

NumPut( (x2+1), &R, 8 ), NumPut( (y2+y1+1), &R, 12 ) ; <-- compensation for upper padding

SendMessage, 0xB3, 0x0, % &R,, ahk_id %Edit%
Return


GuiCloseLaunch:
ExitApp
Return

theHotkeyChoiceGuiClose:
ExitApp


theMenuGuiClose:
ExitApp

theNickGuiClose:
ExitApp

theEmailGuiClose:
ExitApp

theChoiceGuiClose:
ExitApp

theCustomGuiClose:
ExitApp

openingHKGuiClose:
ExitApp

theHeyDesignGuiClose:
ExitApp

theHeyPricingGuiClose:
ExitApp

theSettings1GuiClose:
ExitApp

theSettingsGuiClose:
ExitApp

theGeneralClosingGuiClose:
ExitApp

theByeOrderGuiClose:
ExitApp

userHotkeys01GuiClose:
ExitApp

userHotkeys02GuiClose:
ExitApp

userHotkeys03GuiClose:
ExitApp

userHotkeys04GuiClose:
ExitApp

userHotkeys05GuiClose:
ExitApp

userHotkeys06GuiClose:
ExitApp

userHotkeys07GuiClose:
ExitApp

userHotkeys08GuiClose:
ExitApp

userHotkeys09GuiClose:
ExitApp

userHotkeys10GuiClose:
ExitApp

userHotkeys11GuiClose:
ExitApp

userHotkeys12GuiClose:
ExitApp

userHotkeys13GuiClose:
ExitApp

userHotkeys14GuiClose:
ExitApp

userHotkeys15GuiClose:
ExitApp

userHotkeys16GuiClose:
ExitApp

userHotkeys17GuiClose:
ExitApp

userHotkeys18GuiClose:
ExitApp

userHotkeys19GuiClose:
ExitApp

userHotkeys20GuiClose:
ExitApp


theCustomListGuiClose:
ExitApp

theCustomList2GuiClose:
ExitApp

theCustomList3GuiClose:
ExitApp

theCustomList4GuiClose:
ExitApp

theCustomChatGuiClose:
ExitApp

theCustomChat2GuiClose:
ExitApp

GuiClose:
ExitApp
