@echo off
set /P rcomp="Enter name or IP of a Remote PC: "
for /f "tokens=3 delims= " %%G in ('query session console /server:%rcomp%') do set rid=%%G
start mstsc /shadow:%rid% /v:%rcomp% /control /noConsentPrompt
