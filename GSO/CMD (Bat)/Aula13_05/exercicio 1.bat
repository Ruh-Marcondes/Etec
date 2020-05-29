@echo off
cls
set nome=""
echo Digite seu nome:
set /p nome=
set idade=""
echo  %nome%, digite sua idade:
set /p idade=

if %idade% LSS 10 ( GOTO ID1 ) 
if %idade% LEQ 18 ( GOTO ID2 )
if %idade% LSS 64 ( GOTO ID3 ) else (GOTO ID4)
	
:ID1
echo Bom Dia, %nome%! 
echo.
echo Voce vai brincar?
pause
GOTO sair

:ID2
echo Bom dia, %nome%!
echo.
echo Voce vai a aula?
pause
GOTO sair

:ID3
echo Bom dia, %nome%!
echo.
echo Voce vai ao trabalho?
pause
GOTO sair

: ID4
echo Bom dia, %nome%!
echo.
echo O que vai fazer hoje?
	pause
:sair 
cls

pause

