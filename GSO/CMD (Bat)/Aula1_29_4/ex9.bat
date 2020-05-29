@echo off
echo OPCOES:
echo.
echo 0 - sair do prompt
echo 1 - listar diretorios
echo 2 - exibir data
echo.
echo.
set /p opcao=Escolha uma opcao:
echo --------------------------------------------------------------------------------
echo.
if %opcao% EQU 1 ( goto listar )
if %opcao% EQU 2 ( goto exibirdata ) else ( goto sair )
:listar
set /p local=Informe o Local ou Unidade:
echo.
dir %local%
echo.
pause
goto sair
:exibirdata
date
pause
goto sair
:sair
exit