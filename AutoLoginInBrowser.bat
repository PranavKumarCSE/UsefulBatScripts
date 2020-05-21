@if (@CodeSection == @Batch) @then

@echo off
set SendKeys=CScript //nologo //E:JScript "%~F0"
START chrome "<complete url>"
REM timeout to allow the above url to load in browser
timeout /t 6
REM tab to goto the login section of page
%SendKeys% "{TAB}"
%SendKeys% "<Uname>"
%SendKeys% "{TAB}"
%SendKeys% "<password>"
REM tab to goto the login icon of page
%SendKeys% "{TAB}"
REM Enter to click on the login icon of page
%SendKeys% "{ENTER}"
goto :EOF

@end
// JScript section
var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));
