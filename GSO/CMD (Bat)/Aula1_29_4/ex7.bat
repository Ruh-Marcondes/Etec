@echo off
set /p nota= Informe uma nota e press Enter:
if %nota% LSS 6 (
echo Nota abaixo da Media
) else (
echo Nota dentro da Media
)
pause
exit