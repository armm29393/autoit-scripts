#NoTrayIcon
#RequireAdmin

#region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_icon=Icon.ico
#AutoIt3Wrapper_outfile=Anti Ncafe.exe
#AutoIt3Wrapper_Res_Description=Anti Ncafe 1.5 by Arm
#AutoIt3Wrapper_Res_Fileversion=1.5.0.0
#AutoIt3Wrapper_Res_LegalCopyright=Copyright freeware 2010 (Arm_2468@hotmail.com)
#AutoIt3Wrapper_Res_Language=1054
#endregion ;**** Directives created by AutoIt3Wrapper_GUI ****

#include <Misc.au3>
_Singleton(@ScriptName, 0)

SplashTextOn("", "กำลังทำงาน...", "110", "30", "-1", "-1", 33, "", "", "")
Sleep(1000)

Do
	$2 = ProcessClose("ieshell.exe")
Until $2 = 0
Do
	$3 = ProcessClose("WinVNC.exe")
Until $3 = 0
Do
	$1 = ProcessClose("ncafec.exe")
Until $1 = 0

Sleep(5000)

Do
	$e = ProcessClose("ncafec.exe")
Until $e = 0

FileSetAttrib(@WindowsDir & "\ieshell.exe", "-RSH")
FileDelete(@WindowsDir & "\ieshell.exe")

SplashOff()

If FileExists(@HomeDrive & "\ncafe") = 0 Then
	$s = FileSelectFolder("กรุณาเลือกโฟลเดอร์ที่ติดตั้ง Ncafe (เช่น C:\ncafe)", "", 6)
	If @error Then
		MsgBox(266288, "Error!", "คุณไม่ได้เลือกโฟลเดอร์ที่ติดตั้งโปรแกรม" & @CRLF & "ออกจากโปรแกรม...")
		Exit
	EndIf
	If FileExists($s & "\ncafec.exe") = 0 Then
		MsgBox(262192, "Error!", "โปรแกรมค้นหาไฟล์ ncafec.exe ในโฟลเดอร์ที่คุณเลือกไว้ไม่พบ" & @CRLF & "ออกจากโปรแกรม..")
		Exit
	EndIf
	SplashTextOn("", "กำลังลบไฟล์ทั้งหมด...", "170", "30", "-1", "-1", 33, "", "", "")
	FileSetAttrib($s & "\", "-RSH", 1)
	DirRemove($s & "\", 1)
	Sleep(500)
	SplashOff()
	MsgBox(0, "Anti Ncafe 1.5", "ok.")
	Exit
EndIf

SplashTextOn("", "กำลังลบไฟล์ทั้งหมด...", "170", "30", "-1", "-1", 33, "", "", "")
FileSetAttrib(@HomeDrive & "\ncafe", "-RSH", 1)

$un = DirRemove(@HomeDrive & "\ncafe", 1)

Sleep(500)
SplashOff()
MsgBox(262208, "Anti Ncafe 1.5", "ok.", 5)
Exit
