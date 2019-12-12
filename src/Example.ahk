#SingleInstance off
#NoEnv
#NoTrayIcon
#Warn
SendMode Input
SetBatchLines -1
#Persistent

#Include Lib\Webapp.ahk
__Webapp_AppStart:
;<< Header End >>


;Get our HTML DOM object
iWebCtrl := getDOM()

;Change App name on run-time
setAppName("My Webapp.ahk Application")

;------------ VARIABLES ------------
global Hotkeys := "q|w|e|r|t|z|u|i|o|p|a|s|d|f|g|h|j|k|l|y|x|c|v|b|n|m|1|2|3|4|5|6|7|8|9|0|F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12|LButton|RButton|Space|Shift|XButton1|XButton2"
global MantraHK
global EphiphanyHK
global SancHK
global ZephyrHK
global DeadlyReachHK
global TsunamiHK
global EnableDisableHK
global StayWizHK
global BossHK
global ExitAppHK
global StandStillHK
global ShoutHK
global IPHK
global SprintHK
global WarcryHK
global BerserkHK
global LotDHK
global DevourHK
global BoneArmorHK
global SimulacrumHK
global CommSkellHK
global StartStopHK
global Constant_toggle
global StayWizToggle
global ToggleBoss
global MetaBarb
global zBarb
global zBarbBers
global LonNec
global zNec
global MetaBarbToggle
global NecToggle
global SecondSim
global MonkMoveToggle

;------------ INI READ ------------
IniRead, MantraHK, Settings.ini, Settings, MantraHK, 1
IniRead, EphiphanyHK, Settings.ini, Settings, EphiphanyHK, 2
IniRead, ZephyrHK, Settings.ini, Settings, ZephyrHK, 3
IniRead, SancHK, Settings.ini, Settings, SancHK, 4
IniRead, DeadlyReachHK, Settings.ini, Settings, DeadlyReachHK, RButton
IniRead, TsunamiHK, Settings.ini, Settings, TsunamiHK, LButton
IniRead, EnableDisableHK, Settings.ini, Settings, EnableDisableHK, F6
IniRead, StayWizHK, Settings.ini, Settings, StayWizHK, F2
IniRead, BossHK, Settings.ini, Settings, BossHK, F3
IniRead, ExitAppHK, Settings.ini, Settings, ExitAppHK, F12
IniRead, StandStillHK, Settings.ini, Settings, StandStillHK, Shift
IniRead, ShoutHK, Settings.ini, Settings, ShoutHK, 1
IniRead, IPHK, Settings.ini, Settings, IPHK, 2
IniRead, SprintHK, Settings.ini, Settings, SprintHK, 3
IniRead, WarcryHK, Settings.ini, Settings, WarcryHK, 4
IniRead, BerserkHK, Settings.ini, Settings, BerserkHK, RButton
IniRead, LotDHK, Settings.ini, Settings, LotDHK, 1
IniRead, DevourHK, Settings.ini, Settings, DevourHK, 2
IniRead, BoneArmorHK, Settings.ini, Settings, BoneArmorHK, 3
IniRead, SimulacrumHK, Settings.ini, Settings, SimulacrumHK, 4
IniRead, CommSkellHK, Settings.ini, Settings, CommSkellHK, RButton
IniRead, StartStopHK, Settings.ini, Settings, StartStopHK, F4
IniRead, SecondSim, Settings.ini, Settings, SecondSim, 0

HotKey, %StartStopHK%, StartStop
HotKey, %EnableDisableHK%, EnableDisable
HotKey, %StayWizHK%, StayWiz
HotKey, %BossHK%, Boss
HotKey, %ExitAppHK%, ExitAppFunc


HotKey, %StartStopHK%, Off
HotKey, %StayWizHK%, Off
HotKey, %BossHK%, Off
HotKey, %ExitAppHK%, Off

; cut auto run main thread.
Return



; Webapp.ahk-only Sensitive hotkeys
#IfWinActive, ahk_group __Webapp_windows
!Enter::
	;!toggle
	setFullscreen(!__Webapp_FullScreen)
Return
#IfWinActive



Save(CtrlHwnd, GuiEvent, EventInfo, ErrLevel := "") {

GuiControlGet, MantraHK
GuiControlGet, EphiphanyHK
GuiControlGet, SancHK
GuiControlGet, ZephyrHK
GuiControlGet, DeadlyReachHK
GuiControlGet, TsunamiHK
GuiControlGet, EnableDisableHK
GuiControlGet, StayWizHK
GuiControlGet, BossHK
GuiControlGet, ExitAppHK
GuiControlGet, StandStillHK
GuiControlGet, ShoutHK
GuiControlGet, IPHK
GuiControlGet, SprintHK
GuiControlGet, WarcryHK
GuiControlGet, BerserkHK
GuiControlGet, LotDHK
GuiControlGet, DevourHK
GuiControlGet, BoneArmorHK
GuiControlGet, SimulacrumHK
GuiControlGet, CommSkellHK
GuiControlGet, StartStopHK
GuiControlGet, SecondSim

IniWrite %MantraHK%, Settings.ini, Settings, MantraHK
IniWrite %EphiphanyHK%, Settings.ini, Settings, EphiphanyHK
IniWrite %ZephyrHK%, Settings.ini, Settings, ZephyrHK
IniWrite %SancHK%, Settings.ini, Settings, SancHK
IniWrite %DeadlyReachHK%, Settings.ini, Settings, DeadlyReachHK
IniWrite %TsunamiHK%, Settings.ini, Settings, TsunamiHK
IniWrite %EnableDisableHK%, Settings.ini, Settings, EnableDisableHK
IniWrite %StayWizHK%, Settings.ini, Settings, StayWizHK
IniWrite %BossHK%, Settings.ini, Settings, BossHK
IniWrite %ExitAppHK%, Settings.ini, Settings, ExitAppHK
IniWrite %StandStillHK%, Settings.ini, Settings, StandStillHK
IniWrite %ShoutHK%, Settings.ini, Settings, ShoutHK
IniWrite %IPHK%, Settings.ini, Settings, IPHK
IniWrite %SprintHK%, Settings.ini, Settings, SprintHK
IniWrite %WarcryHK%, Settings.ini, Settings, WarcryHK
IniWrite %BerserkHK%, Settings.ini, Settings, BerserkHK
IniWrite %LotDHK%, Settings.ini, Settings, LotDHK
IniWrite %DevourHK%, Settings.ini, Settings, DevourHK
IniWrite %BoneArmorHK%, Settings.ini, Settings, BoneArmorHK
IniWrite %SimulacrumHK%, Settings.ini, Settings, SimulacrumHK
IniWrite %CommSkellHK%, Settings.ini, Settings, CommSkellHK
IniWrite %StartStopHK%, Settings.ini, Settings, StartStopHK
IniWrite %SecondSim%, Settings.ini, Settings, SecondSim

HotKey, %StartStopHK%, StartStop
HotKey, %EnableDisableHK%, EnableDisable
HotKey, %StayWizHK%, StayWiz
HotKey, %BossHK%, Boss
HotKey, %ExitAppHK%, ExitAppFunc

}

Discord:
{
    run % "https://discord.gg/UnnY5UY"
    Return
}



GuiEscape:
GuiClose:
    ExitApp


StartStop:
{
	MonkStartStop()
        Return

    GuiControlGet, MonkRB
    GuiControlGet, BarbRB
    GuiControlGet, NecroRB
    GuiControlGet, MetaBarb
    GuiControlGet, zBarb
    GuiControlGet, zBarbBers
    GuiControlGet, LonNec
    GuiControlGet, zNec
    IF(MonkRB)
    {
        MonkStartStop()
        Return
    }
    IF(BarbRB)
    {
        If(MetaBarb)
            MetaBarb()
        If(zBarb)
            zBarb()
        If(zBarbBers)
            zBarbBers()
        Return
    }
    IF(NecroRB)
    {
        If(LonNec)
            LonNec()
        If(zNec)
            zNec()
        Return
    }
   
    Return
}

EnableDisable:
{
    ;GuiControlGet, HotKeysActive
    If(HotKeysActive)
    {
        HotKey, %StartStopHK%, Off
        HotKey, %StayWizHK%, Off
        HotKey, %BossHK%, Off
        HotKey, %ExitAppHK%, Off
        GuiControl,, HotKeysActive, 0
    }
    Else
    {
        HotKey, %StartStopHK%, On
        HotKey, %StayWizHK%, On
        HotKey, %BossHK%, On

        HotKey, %ExitAppHK%, On 
        GuiControl,, HotKeysActive, 1
    }
    Return
}

StayWiz:
{
    StayWiz()
    Return
}

Boss:
{
    Boss()
    Return
}


MonkStartStop()
{
    StayWizToggle := False
    ToggleBoss := False
    AllTimersOff()
    MonkMoveToggle:=!MonkMoveToggle
	SetTimer, epiph,	% (MonkMoveToggle) ? 1200 : "Off"
	SetTimer, mantra,	% (MonkMoveToggle) ? 100 : "Off"
	SetTimer, zephyr,	% (MonkMoveToggle) ? 150 : "Off"     
    Return
}

StayWiz()
{
    MonkMoveToggle := False
    ToggleBoss := False
    AllTimersOff()
    StayWizToggle := !StayWizToggle
    ToggleStandStill(StayWizToggle)
	;;gosub offScreenMouse ;remove this to turn off the mouse move
	Send, +{%SancHK%}
	SetTimer, punch,	% (StayWizToggle) ? 50 : "Off"
	SetTimer, zephyr,	% (StayWizToggle) ? 200 : "Off"
	SetTimer, sanc,		% (StayWizToggle) ? 400 : "Off"
	SetTimer, mantra,	% (StayWizToggle) ? 100 : "Off"
	SetTimer, epiph,	% (StayWizToggle) ? 250 : "Off"
	return
}


Boss()
{
    AllTimersOff()
    StayWizToggle := False
    MonkMoveToggle := False
    ToggleBoss:=!ToggleBoss
	ToggleStandStill(ToggleBoss)
	;;gosub offScreenMouse ;remove this to turn off the mouse move
	Send, +{%SancHK%}
	SetTimer, DeadlyReach,	% (ToggleBoss) ? 50 : "Off"
	SetTimer, sanc,	% (ToggleBoss) ? 400 : "off"
	SetTimer, zephyr,	% (ToggleBoss) ? 250 : "Off"
	SetTimer, mantra,	% (ToggleBoss) ? 100 : "Off"
	SetTimer, epiph,	% (ToggleBoss) ? 250 : "Off"
}


AllTimersOff()
{
  	SetTimer, DeadlyReach,	% (ToggleBoss) ? 50 : "Off"
	SetTimer, sanc, off
	SetTimer, zephyr, off
	SetTimer, mantra, off
	SetTimer, epiph, off
    SetTimer, punch, off
}


ToggleStandStill(Toggled)
{
    IF(Toggled)
    {
        If !GetKeyState(StandStillHK)
        {
            send, +{%StandStillHK%, DOWN}
        }
        Else
        {
            send, +{%StandStillHK%, UP}
        }
    }
    Else
    IF GetKeyState(StandStillHK)
    {
        send, +{%StandStillHK%, UP}
    }
}

epiph:
	send, +{%EphiphanyHK%}
	return
mantra:
	send, +{%MantraHK%}
    return
zephyr:
	send, +{%ZephyrHK%}
    return
punch:
    send, +{%TsunamiHK%}
    Return
DeadlyReach:
    Send, +{%DeadlyReachHK%}
    Return
Sanc:
    Send, +{%SancHK%}
    Return

MetaBarb()
{
	MetaBarbToggle := !MetaBarbToggle
	SetTimer, ThreateningShout,			% (MetaBarbToggle) ? 100 : "Off"
	;SetTimer, IgnorePain,				% (MetaBarbToggle) ? 150 : "Off"     ; Uncomment this line when you want to cast Ip by Macro
	SetTimer, WarCry,					% (MetaBarbToggle) ? 100 : "Off"
    Return
}

zBarb()
{
    MetaBarbToggle:=!MetaBarbToggle
    Send, +{%SprintHK%}
	SetTimer, ThreateningShout,			% (MetaBarbToggle) ? 100 : "Off"
	SetTimer, IgnorePain,				% (MetaBarbToggle) ? 150 : "Off"
	SetTimer, Sprint,					% (MetaBarbToggle) ? 3000 : "Off"
	SetTimer, WarCry,					% (MetaBarbToggle) ? 100 : "Off"    
    Return
}

zBarbBers()
{
    MetaBarbToggle:=!MetaBarbToggle
    Send, +{%SprintHK%}
	SetTimer, ThreateningShout,			% (MetaBarbToggle) ? 100 : "Off"
	SetTimer, IgnorePain,				% (MetaBarbToggle) ? 150 : "Off"
	SetTimer, Sprint,					% (MetaBarbToggle) ? 3000 : "Off"
	SetTimer, WarCry,					% (MetaBarbToggle) ? 100 : "Off"
    SetTimer, Berserk,					% (MetaBarbToggle) ? 100 : "Off"
    Return
}

ThreateningShout:
    send, +{%ShoutHK%}
return
IgnorePain:
    send, +{%IPHK%}
return
WarCry:
    send, +{%WarCryHK%}
Return
Sprint:
    send, +{%SprintHK%}
return
Berserk:
    send, +{%BerserkHK%}
return   


LonNec()
{
    NecToggle := !NecToggle
    If(!NecToggle)
    {
        SetTimer, Simulacrum, Off
        SetTimer, LandOfTheDeath, Off
    }
    If(!SecondSim)
    {
        Send, +{%LotDHK%}  
        Send, +{%SimulacrumHK%}
        SetTimer, Simulacrum,				% (NecToggle) ? 1000 : "Off"  
        SetTimer, LandOfTheDeath,			% (NecToggle) ? 1000 : "Off"
	}
    Else
    {
        Settimer, SecondSimTiming, % (NecToggle) ? 11000 : "off"
    }
    
	SetTimer, Devour,					% (NecToggle) ? 100 : "Off"
	SetTimer, BoneArmor,				% (NecToggle) ? 5000 : "Off"
  
    Return
}

zNec()
{
	NecToggle := !NecToggle
	SetTimer, CommandSkeletons,			% (NecToggle) ? 100 : "Off"
	SetTimer, LandOfTheDeath,			% (NecToggle) ? 500 : "Off"
	SetTimer, Devour,					% (NecToggle) ? 100 : "Off"  
    Return
}

SecondSimTiming:
    SetTimer, SecondSimTiming, Off
	SetTimer, Simulacrum,				% (NecToggle) ? 1000 : "Off" 
    SetTimer, LandOfTheDeath,			% (NecToggle) ? 1000 : "Off"
Return

LandOfTheDeath:
    send, +{%LotDHK%}
return
Devour:
    send, +{%DevourHK%}
return
BoneArmor:
    send, +{%BoneArmorHK%}
return
Simulacrum:
    send, +{%SimulacrumHK%}
return
CommandSkeletons:
    send, +{%CommSkellHK%}
return
    
ExitAppFunc:
{
    ExitApp
}

;########################################################################################################################################################################
;########################################################################################################################################################################
;########################################################################################################################################################################
;########################################################################################################################################################################
;########################################################################################################################################################################
;########################################################################################################################################################################
;########################################################################################################################################################################
;########################################################################################################################################################################
;########################################################################################################################################################################
;########################################################################################################################################################################
;########################################################################################################################################################################
;########################################################################################################################################################################
;########################################################################################################################################################################

; Our custom protocol's url event handler
app_call(args) {
	MsgBox %args%
	if InStr(args,"msgbox/hello")
		MsgBox Hello world!
	else if InStr(args,"soundplay/ding")
		SoundPlay, %A_WinDir%\Media\ding.wav
}


; function to run when page is loaded
app_page(NewURL) {
	wb := getDOM()
	
	setZoomLevel(100)
	Sleep, 30
	;buildPage()
	disp_info()

	if InStr(NewURL,"oldindex.html") {
		disp_info()
	}
	else if InStr(NewURL,"index.html")
	{
		window := getWindow()
		window.BuildDropDowns()
	}
	
	

}

disp_info() {
	wb := getDOM()
	Sleep, 300
	x := wb.document.getElementById("ahk_info")
	x.innerHTML := "<i>Webapp.ahk is currently running on " . GetAHK_EnvInfo() . ".</i>"
}

; Functions to be called from the html/js source
Hello() {
	MsgBox Hello from JS_AHK :)
}
RunMyJSFunction() {
	window := getWindow()
	window.myFunction()
}

buildPage() {
	MsgBox Hello from JS_AHK :)
	
	window := getWindow()
	window.BuildDropDowns()
}


Run(t) {
	Run, %t%
}
GetAHK_EnvInfo(){
	return "AutoHotkey v" . A_AhkVersion . " " . (A_IsUnicode?"Unicode":"ANSI") . " " . (A_PtrSize*8) . "-bit"
}
Multiply(a,b) {
	;MsgBox % a " * " b " = " a*b
	return a * b
}
MyButton1() {
	wb := getDOM()
	MsgBox % wb.Document.getElementById("MyTextBox").Value
}
MyButton2() {
	wbe := getDOM()
	FormatTime, TimeString, %A_Now%, dddd MMMM d, yyyy HH:mm:ss
    Random, x, %min%, %max%
	datae := "AHK Version " A_AhkVersion " - " (A_IsUnicode ? "Unicode" : "Ansi") " " (A_PtrSize == 4 ? "32" : "64") "bit`nCurrent time: " TimeString "`nRandom number: " x
	wbe.Document.getElementById("MyTextBox").value := datae
}

GetSelectValue(val){
	wb := getDOM()
	settingsVal := ""
	x := wb.Document.getElementById("holdingground")
	IniRead, settingsVal, Settings.ini, Settings, %val%, F6
	x.innerHTML := settingsVal
}