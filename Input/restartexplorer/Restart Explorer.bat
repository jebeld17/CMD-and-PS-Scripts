@echo off
mshta vbscript:Execute("msgbox ""Please save and close any open work before continuing."":close")
mshta vbscript:Execute("msgbox ""Continuing from here means you acknowledge and agree to the fact you may lose any open, unsaved work. You will be given three (3) seconds to voluntarily quit after this step."":close")
TIMEOUT /T 3 /NOBREAK
taskkill /f /im explorer.exe
start explorer.exe && mshta vbscript:Execute("msgbox ""Windows Explorer has successfully reboot."":close")