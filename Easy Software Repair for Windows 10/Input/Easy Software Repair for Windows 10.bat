@echo off
mshta vbscript:Execute("msgbox ""Please save and close any open work before continuing."":close")
mshta vbscript:Execute("msgbox ""Continuing from here means you acknowledge and agree to the fact you may lose any open, unsaved work. You will be given three (3) seconds to voluntarily quit after this step."":close")
TIMEOUT /T 3 /NOBREAK
taskkill /f /im explorer.exe && mshta vbscript:Execute("msgbox ""Windows Explorer has successfully shut down. Software repair will now initialize..."":close")
mshta vbscript:Execute("msgbox ""During this step, Windows will download a fresh recovery image to be used in the next step."":close") && dism /online /cleanup-image /restorehealth
mshta vbscript:Execute("msgbox ""Download complete! Now, Windows will perform what is called a 'System File Check.' If any corruption is found, it will be repaired when possible."":close") && sfc /scannow
mshta vbscript:Execute("msgbox ""Repair step complete. Now, Windows will repair and reinstall any modern and/or Store apps. Ignore any errors on the next screen."":close") && powershell -encodedcommand RwBlAHQALQBBAHAAcAB4AFAAYQBjAGsAYQBnAGUAIAAtAEEAbABsAFUAcwBlAHIAcwB8ACAARgBvAHIAZQBhAGMAaAAgAHsAQQBkAGQALQBBAHAAcAB4AFAAYQBjAGsAYQBnAGUAIAAtAEQAaQBzAGEAYgBsAGUARABlAHYAZQBsAG8AcABtAGUAbgB0AE0AbwBkAGUAIAAtAFIAZQBnAGkAcwB0AGUAcgAgABwgJAAoACQAXwAuAEkAbgBzAHQAYQBsAGwATABvAGMAYQB0AGkAbwBuACkAXABBAHAAcABYAE0AYQBuAGkAZgBlAHMAdAAuAHgAbQBsAB0gfQA=
mshta vbscript:Execute("msgbox ""Repair and reinstallation of all modern and/or Store apps complete. Windows will now reboot."":close")
shutdown -r -c "Windows is about to restart your PC. You can use your computer normally after rebooting."