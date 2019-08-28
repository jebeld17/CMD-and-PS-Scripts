mshta vbscript:Execute("msgbox ""Please save and close any open work before continuing and disable all 3rd-party antimalware programs."":close")
mshta vbscript:Execute("msgbox ""Continuing from here means you acknowledge and agree to the fact you may lose any open, unsaved work. You will be given three (3) seconds to voluntarily quit after this step."":close")
TIMEOUT /T 3 /NOBREAK
mshta vbscript:Execute("msgbox ""You can re-enable your 3rd-party antimalware programs after the reboot required at the end of this process."":close")
powershell -Command "Start-Process 'cmd' -Verb RunAs -ArgumentList '/k cd c:/program files/nvidia corporation/nvsmi && nvidia-smi -fdm 0 && timeout /t 5 && shutdown -r && exit'"