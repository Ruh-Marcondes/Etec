@echo off
cls
echo "SCRIPT.BAT para realizar backup"
pause
cd/
md backup
cd\bat
copy *.* c:\backup
pause
echo "Abrir calculadora"
start calc.exe
pause
exit