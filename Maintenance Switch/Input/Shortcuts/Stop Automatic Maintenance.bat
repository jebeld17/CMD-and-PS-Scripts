@echo off
MSchedExe.exe Stop
mshta vbscript:Execute("msgbox ""Windows Automatic Maintenance has successfully been stopped."":close")