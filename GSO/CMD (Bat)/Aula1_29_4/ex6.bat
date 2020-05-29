@echo off
set nome=""
echo Digite seu nome:
set /p nome=
if %nome% == root (
echo Oi,%nome%!
) else (
echo Usuario desconhecido
)
pause
exit