@echo off
FOR /L %%A IN (1,1,4000) DO (
 FOR /L %%A IN (1,1,10000) DO (
   start chrome "https://google.com"
 )
 timeout /t 7
 taskkill /f /im chrome.exe
 timeout /t 1
 goto a
)