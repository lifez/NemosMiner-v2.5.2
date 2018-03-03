@echo off
color 0A
title NVmon
mode con: cols=100 lines=8
PATH=%PATH%;"%PROGRAMFILES%\NVIDIA Corporation\NVSMI\"
:loop
nvidia-smi --query-gpu=index,name,temperature.gpu,fan.speed,clocks.gr,clocks.mem,pstate,power.draw,power.limit --format=csv,noheader
timeout /t 5 /nobreak >nul
@cls
goto loop