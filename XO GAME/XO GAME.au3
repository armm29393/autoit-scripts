#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <StaticConstants.au3>
#include "GUICtrlOnHover.au3"

Global $1, $x1, $2, $x2, $3, $x3, $4, $x4, $5, $x5, $6, $x6, $7, $x7, $8, $x8, $9, $x9
Global $startgame, $p1, $p2, $Label1, $Label2, $Label3, $c
Global $Xwin = 0, $Owin = 0
Global $count = 0
Global $Player1, $Player2
Global $Btn_Color = 0xFFFFFF
Global $Hover_Color = 0xC0C0C0

#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("XO Game", 801, 601, -1, -1)
$title = GUICtrlCreateLabel("XO GAME!!", 248, 112, 314, 81)
GUICtrlSetFont(-1, 48, 400, 0, "Tahoma")
$start_btn = GUICtrlCreateButton("START!", 88, 344, 275, 113)
GUICtrlSetFont(-1, 48, 400, 0, "Tahoma")
GUICtrlSetColor(-1, 0x008000)
GUICtrlSetCursor(-1, 0)
$exit_btn = GUICtrlCreateButton("EXIT", 456, 344, 273, 113)
GUICtrlSetFont(-1, 48, 400, 0, "Tahoma")
GUICtrlSetColor(-1, 0xFF0000)
GUICtrlSetCursor(-1, 0)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $exit_btn
			Exit
		Case $start_btn
			_start()
	EndSwitch
WEnd

Func _start()
	GUICtrlDelete($title)
	GUICtrlDelete($start_btn)
	GUICtrlDelete($exit_btn)
	$Label1 = GUICtrlCreateLabel("Player Name", 264, 40, 269, 62)
	GUICtrlSetFont(-1, 36, 400, 0, "Tahoma")
	$p1 = GUICtrlCreateInput("Player 1", 64, 168, 681, 50)
	GUICtrlSetFont(-1, 26, 400, 0, "Tahoma")
	GUICtrlSetColor(-1, 0x2E85FF)
	$p2 = GUICtrlCreateInput("Player 2", 64, 264, 681, 50)
	GUICtrlSetFont(-1, 26, 400, 0, "Tahoma")
	GUICtrlSetColor(-1, 0xC47300)
	$startgame = GUICtrlCreateButton("Start Game!", 200, 440, 403, 105)
	GUICtrlSetFont(-1, 36, 400, 0, "Tahoma")
	GUICtrlSetCursor(-1, 0)
	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $GUI_EVENT_CLOSE
				Exit
			Case $startgame

				$Player1 = GUICtrlRead($p1)
				$Player2 = GUICtrlRead($p2)
				GUICtrlDelete($Label1)
				GUICtrlDelete($p1)
				GUICtrlDelete($p2)
				GUICtrlDelete($startgame)
				GUICtrlCreateLabel("Let's GO!", 216, 208, 392, 120)
				GUICtrlSetFont(-1, 72, 400, 0, "Tahoma")
				GUICtrlSetColor(-1, 0x000080)
				Sleep(2000)
				GUICtrlDelete(-1)
				_Game()
				ExitLoop
		EndSwitch
	WEnd
EndFunc   ;==>_start

Func _Game()

	$1 = GUICtrlCreateButton("", 352, 160, 137, 129)
	_GUICtrl_OnHoverRegister(-1, "_Hover_Func", "_Leave_Hover_Func")
	GUICtrlSetFont(-1, 72, 400, 0, "Tahoma")
	GUICtrlSetBkColor(-1, 0xFFFFFF)
	GUICtrlSetCursor(-1, 0)
	$2 = GUICtrlCreateButton("", 488, 160, 137, 129)
	_GUICtrl_OnHoverRegister(-1, "_Hover_Func", "_Leave_Hover_Func")
	GUICtrlSetFont(-1, 72, 400, 0, "Tahoma")
	GUICtrlSetBkColor(-1, 0xFFFFFF)
	GUICtrlSetCursor(-1, 0)
	$3 = GUICtrlCreateButton("", 624, 160, 137, 129)
	_GUICtrl_OnHoverRegister(-1, "_Hover_Func", "_Leave_Hover_Func")
	GUICtrlSetFont(-1, 72, 400, 0, "Tahoma")
	GUICtrlSetBkColor(-1, 0xFFFFFF)
	GUICtrlSetCursor(-1, 0)
	$4 = GUICtrlCreateButton("", 352, 288, 137, 129)
	_GUICtrl_OnHoverRegister(-1, "_Hover_Func", "_Leave_Hover_Func")
	GUICtrlSetFont(-1, 72, 400, 0, "Tahoma")
	GUICtrlSetBkColor(-1, 0xFFFFFF)
	GUICtrlSetCursor(-1, 0)
	$5 = GUICtrlCreateButton("", 488, 288, 137, 129)
	_GUICtrl_OnHoverRegister(-1, "_Hover_Func", "_Leave_Hover_Func")
	GUICtrlSetFont(-1, 72, 400, 0, "Tahoma")
	GUICtrlSetBkColor(-1, 0xFFFFFF)
	GUICtrlSetCursor(-1, 0)
	$6 = GUICtrlCreateButton("", 624, 288, 137, 129)
	_GUICtrl_OnHoverRegister(-1, "_Hover_Func", "_Leave_Hover_Func")
	GUICtrlSetFont(-1, 72, 400, 0, "Tahoma")
	GUICtrlSetBkColor(-1, 0xFFFFFF)
	GUICtrlSetCursor(-1, 0)
	$7 = GUICtrlCreateButton("", 352, 416, 137, 129)
	_GUICtrl_OnHoverRegister(-1, "_Hover_Func", "_Leave_Hover_Func")
	GUICtrlSetFont(-1, 72, 400, 0, "Tahoma")
	GUICtrlSetBkColor(-1, 0xFFFFFF)
	GUICtrlSetCursor(-1, 0)
	$8 = GUICtrlCreateButton("", 488, 416, 137, 129)
	_GUICtrl_OnHoverRegister(-1, "_Hover_Func", "_Leave_Hover_Func")
	GUICtrlSetFont(-1, 72, 400, 0, "Tahoma")
	GUICtrlSetBkColor(-1, 0xFFFFFF)
	GUICtrlSetCursor(-1, 0)
	$9 = GUICtrlCreateButton("", 624, 416, 137, 129)
	_GUICtrl_OnHoverRegister(-1, "_Hover_Func", "_Leave_Hover_Func")
	GUICtrlSetFont(-1, 72, 400, 0, "Tahoma")
	GUICtrlSetBkColor(-1, 0xFFFFFF)
	GUICtrlSetCursor(-1, 0)
	$Label1 = GUICtrlCreateLabel("XO GAME", 296, 32, 206, 62)
	GUICtrlSetFont(-1, 36, 400, 0, "Tahoma")
	GUICtrlSetColor(-1, 0x808080)
	$Label2 = GUICtrlCreateLabel("TURN", 104, 352, 160, 81)
	GUICtrlSetFont(-1, 48, 400, 0, "Tahoma")
	GUICtrlSetColor(-1, 0x0000FF)
	$Label3 = GUICtrlCreateLabel("- Player Name -", 48, 248, 257, 49, $SS_CENTER)
	GUICtrlSetFont(-1, 28, 400, 0, "Tahoma")
	GUICtrlSetColor(-1, 0xFF0000)

	Switch Random(0, 1, 1)
		Case 0
			GUICtrlSetData($Label3, $Player1)
			$c = 1
		Case 1
			GUICtrlSetData($Label3, $Player2)
			$c = 0
	EndSwitch
	AdlibRegister("_Check")
	While 1
		_Check()
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $GUI_EVENT_CLOSE
				Exit
			Case $1
				_click($1)
			Case $2
				_click($2)
			Case $3
				_click($3)
			Case $4
				_click($4)
			Case $5
				_click($5)
			Case $6
				_click($6)
			Case $7
				_click($7)
			Case $8
				_click($8)
			Case $9
				_click($9)
		EndSwitch
	WEnd
EndFunc   ;==>_Game

Func _click($btn)
	If $c = 0 Then
		GUICtrlSetData($Label3, $Player1)
		GUICtrlSetData($btn, "X")
		GUICtrlSetState($btn, $GUI_DISABLE)
		$c = 1
	Else
		GUICtrlSetData($Label3, $Player2)
		GUICtrlSetData($btn, "O")
		GUICtrlSetState($btn, $GUI_DISABLE)
		$c = 0
	EndIf
EndFunc   ;==>_click

Func _Check()
	$count = 0
	If GUICtrlRead($1) = "X" And GUICtrlRead($2) = "X" And GUICtrlRead($3) = "X" Then
		$count = 1
	ElseIf GUICtrlRead($4) = "X" And GUICtrlRead($5) = "X" And GUICtrlRead($6) = "X" Then
		$count = 1
	ElseIf GUICtrlRead($7) = "X" And GUICtrlRead($8) = "X" And GUICtrlRead($9) = "X" Then
		$count = 1
	ElseIf GUICtrlRead($1) = "X" And GUICtrlRead($4) = "X" And GUICtrlRead($7) = "X" Then
		$count = 1
	ElseIf GUICtrlRead($2) = "X" And GUICtrlRead($5) = "X" And GUICtrlRead($8) = "X" Then
		$count = 1
	ElseIf GUICtrlRead($3) = "X" And GUICtrlRead($6) = "X" And GUICtrlRead($9) = "X" Then
		$count = 1
	ElseIf GUICtrlRead($1) = "X" And GUICtrlRead($5) = "X" And GUICtrlRead($9) = "X" Then
		$count = 1
	ElseIf GUICtrlRead($3) = "X" And GUICtrlRead($5) = "X" And GUICtrlRead($7) = "X" Then
		$count = 1
	ElseIf GUICtrlRead($1) = "O" And GUICtrlRead($2) = "O" And GUICtrlRead($3) = "O" Then
		$count = 2
	ElseIf GUICtrlRead($4) = "O" And GUICtrlRead($5) = "O" And GUICtrlRead($6) = "O" Then
		$count = 2
	ElseIf GUICtrlRead($7) = "O" And GUICtrlRead($8) = "O" And GUICtrlRead($9) = "O" Then
		$count = 2
	ElseIf GUICtrlRead($1) = "O" And GUICtrlRead($4) = "O" And GUICtrlRead($7) = "O" Then
		$count = 2
	ElseIf GUICtrlRead($2) = "O" And GUICtrlRead($5) = "O" And GUICtrlRead($8) = "O" Then
		$count = 2
	ElseIf GUICtrlRead($3) = "O" And GUICtrlRead($6) = "O" And GUICtrlRead($9) = "O" Then
		$count = 2
	ElseIf GUICtrlRead($1) = "O" And GUICtrlRead($5) = "O" And GUICtrlRead($9) = "O" Then
		$count = 2
	ElseIf GUICtrlRead($3) = "O" And GUICtrlRead($5) = "O" And GUICtrlRead($7) = "O" Then
		$count = 2
	ElseIf GUICtrlRead($1) <> "" And GUICtrlRead($2) <> "" And GUICtrlRead($3) <> "" And GUICtrlRead($4) <> "" And GUICtrlRead($5) <> "" _
			And GUICtrlRead($6) <> "" And GUICtrlRead($7) <> "" And GUICtrlRead($8) <> "" And GUICtrlRead($9) <> "" Then
		$count = 3
	EndIf

	If $count = 2 Then
		$Xwin += 1
		winner($Player1)
	ElseIf $count = 1 Then
		$Owin += 1
		winner($Player2)
	ElseIf $count = 3 Then
		winner("DRAW!!")
	EndIf


EndFunc   ;==>_Check

Func winner($who)
	AdlibUnRegister("_Check")
	GUICtrlDelete($Label1)
	GUICtrlDelete($Label2)
	GUICtrlDelete($Label3)
	For $i = $1 To $9
		GUICtrlDelete($i)
	Next
	If $who = "DRAW!!" Then
	$DRAW = GUICtrlCreateLabel("DRAW!!", 528, 160, 249, 104, $SS_CENTER)
	GUICtrlSetFont(-1, 48, 400, 0, "Tahoma")
	GUICtrlSetColor(-1, 0x808080)

	Else
	$Label1 = GUICtrlCreateLabel($who, 456, 144, 333, 62, $SS_CENTER)
	GUICtrlSetFont(-1, 36, 400, 0, "Tahoma")
	$Label2 = GUICtrlCreateLabel("WIN!!!", 483, 216, 287, 120)
	GUICtrlSetFont(-1, 72, 400, 0, "Tahoma")
	GUICtrlSetColor(-1, 0x008000)

	EndIf

	GUISetFont(8, 400, 0, "Jokerman")
	$Player01 = GUICtrlCreateLabel($Player1, 24, 152, 197, 46, $SS_RIGHT)
	GUICtrlSetFont(-1, 26, 400, 0, "Tahoma")
	$Player02 = GUICtrlCreateLabel($Player2, 280, 152, 197, 46)
	GUICtrlSetFont(-1, 26, 400, 0, "Tahoma")
	$Cscore = GUICtrlCreateLabel("-", 240, 312, 17, 49)
	GUICtrlSetFont(-1, 28, 400, 0, "Tahoma")
	$score1 = GUICtrlCreateLabel($Xwin, 80, 280, 125, 117, $SS_RIGHT)
	GUICtrlSetFont(-1, 72, 400, 0, "Tahoma")
	$score2 = GUICtrlCreateLabel($Owin,304, 280, 130, 117)
	GUICtrlSetFont(-1, 72, 400, 0, "Tahoma")
	$game0 = GUICtrlCreateLabel("GAME", 136, 40, 75, 29)
	GUICtrlSetFont(-1, 16, 400, 0, "Jokerman")
	$game1 = GUICtrlCreateLabel("X - O", 56, 32, 77, 47)
	GUICtrlSetFont(-1, 22, 400, 0, "Jokerman")
	GUICtrlSetColor(-1, 0x000000)
	$Label4 = GUICtrlCreateLabel("VS", 232, 158, 35, 37)
	GUICtrlSetFont(-1, 20, 400, 0, "Stencil")
	$Button1 = GUICtrlCreateButton("New Game", 552, 440, 235, 65)
	GUICtrlSetFont(-1, 24, 400, 0, "Tahoma")
	GUICtrlSetCursor (-1, 0)
	$Button2 = GUICtrlCreateButton("Continue", 552, 360, 233, 65)
	GUICtrlSetFont(-1, 24, 400, 0, "Tahoma")
	GUICtrlSetCursor (-1, 0)
	$exit_btn = GUICtrlCreateButton("EXIT", 552, 520, 233, 65)
	GUICtrlSetFont(-1, 28, 400, 0, "Tahoma")


	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $GUI_EVENT_CLOSE
				Exit
			Case $exit_btn
				Exit

			Case $Button1
				GUICtrlDelete($game0)
				GUICtrlDelete($game1)
				GUICtrlDelete($Player01)
				GUICtrlDelete($Player02)
				GUICtrlDelete($Cscore)
				GUICtrlDelete($score1)
				GUICtrlDelete($score2)
				GUICtrlDelete($Label3)
				GUICtrlDelete($Label4)
				GUICtrlDelete($Label1)
				GUICtrlDelete($Label2)
				GUICtrlDelete($Button1)
				GUICtrlDelete($Button2)
				GUICtrlDelete($exit_btn)
				If $count=3 Then
					GUICtrlDelete($DRAW)
				EndIf
				$Xwin = 0
				$Owin = 0
				_start()

			Case $Button2
				GUICtrlDelete($game0)
				GUICtrlDelete($game1)
				GUICtrlDelete($Player01)
				GUICtrlDelete($Player02)
				GUICtrlDelete($Cscore)
				GUICtrlDelete($score1)
				GUICtrlDelete($score2)
				GUICtrlDelete($Label3)
				GUICtrlDelete($Label4)
				GUICtrlDelete($Label1)
				GUICtrlDelete($Label2)
				GUICtrlDelete($Button1)
				GUICtrlDelete($Button2)
				GUICtrlDelete($exit_btn)
				If $count=3 Then
					GUICtrlDelete($DRAW)
				EndIf
				GUICtrlCreateLabel("Let's GO!", 216, 208, 392, 120)
				GUICtrlSetFont(-1, 72, 400, 0, "Tahoma")
				GUICtrlSetColor(-1, 0x000080)
				Sleep(2000)
				GUICtrlDelete(-1)
				_Game()
				ExitLoop
		EndSwitch
	WEnd
EndFunc   ;==>winner

Func bot_AI()
	;;;;
EndFunc

Func _Hover_Func($iCtrlID)
	GUICtrlSetBkColor($iCtrlID, $Hover_Color)
EndFunc   ;==>_Hover_Func

Func _Leave_Hover_Func($iCtrlID)
	GUICtrlSetBkColor($iCtrlID, $Btn_Color)
EndFunc   ;==>_Leave_Hover_Func
