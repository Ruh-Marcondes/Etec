@echo off
set /p x= Informe um numero and press enter:
cls
if %x% == 1 GOTO ok
echo x naum eh 1, x igual a %x%
pause
GOTO saida
:ok 
echo x igual a 1
pause
:saida
exit 