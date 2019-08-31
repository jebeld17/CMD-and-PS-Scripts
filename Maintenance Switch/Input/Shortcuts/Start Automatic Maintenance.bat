@echo off
MSchedExe.exe Start
mshta vbscript:Execute("msgbox ""Windows Automatic Maintenance has successfully started in the background."":close")