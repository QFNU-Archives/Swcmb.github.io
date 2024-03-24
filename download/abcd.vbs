On Error Resume Next
str="你要说的话"
Set Wshshell=WScript.CreateObject("WScript.Shell")
WshShell.run"mshta vbscript:clipboardData.SetData("+""""+"text"+""""+","+""""&str&""""+")(close)",0,true
WScript.Sleep 1000
WshShell.SendKeys"^v"
'WScript.Sleep 1000
WshShell.SendKeys "%s"
WScript.Sleep 1000
