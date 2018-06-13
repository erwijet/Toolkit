@ECHO OFF
@EXPAND Sublime.cab . -F:*.*
@EXPAND Toolkit.cab . -F:*.*
rem ;;  CREATE LINK  ;; rem
@echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
@echo sLinkFile = "%HOMEDRIVE%%HOMEPATH%\Desktop\Sublime 3.lnk" >> CreateShortcut.vbs
@echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
@echo oLink.TargetPath = "%cd%\SUBLIME\sublime_text.exe" >> CreateShortcut.vbs
@echo oLink.Save >> CreateShortcut.vbs
@cscript CreateShortcut.vbs
@del CreateShortcut.vbs
