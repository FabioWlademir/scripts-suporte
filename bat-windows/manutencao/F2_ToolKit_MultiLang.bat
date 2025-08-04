@echo off
rem ==============================================
rem Arquivo: F2_ToolKit_MultiLang.bat
rem Descricao: Menu de Reparo e Ferramentas de TI Multilíngue
rem Autor: Fábio Wlademir
rem GitHub: https://github.com/FabioWlademir
rem Versao: 3.1
rem Data: Agosto de 2025
rem ==============================================

title F2 ToolKit - Menu de Suporte Multilíngue v3.1
color 0A

rem === Selecionar idioma ===
:selectlang
cls
echo ================================================
echo        Selecione o idioma / Select language
rem               Seleccione el idioma
echo ================================================
echo 1. Português (BR)
echo 2. English (EN)
echo 3. Español (ES)
echo ================================================
set /p langop=Escolha / Choose / Elija (1-3): 

if %langop%==1 set lang=pt&goto init
if %langop%==2 set lang=en&goto init
if %langop%==3 set lang=es&goto init
goto selectlang

:init
rem === Verifica permissão admin ===
fsutil dirty query %systemdrive% >nul 2>&1
if %errorlevel% NEQ 0 (
    if "%lang%"=="pt" echo Este script precisa ser executado como Administrador.
    if "%lang%"=="en" echo This script must be run as Administrator.
    if "%lang%"=="es" echo Este script debe ejecutarse como Administrador.
    pause
    exit
)

rem === Carrega texto do idioma ===
if "%lang%"=="pt" call :load_pt
if "%lang%"=="en" call :load_en
if "%lang%"=="es" call :load_es

goto menu

rem ======= PORTUGUÊS =======
:load_pt
set t1=MENU DE REPARO E FERRAMENTAS DE TI - v3.1
set t2=Escolha uma opção (1-5): 
set opt1=Verificar Disco (CHKDSK)
set opt2=Reparar Sistema (SFC)
set opt3=Limpar Temporários
set opt4=Teste de Rede
set opt5=Sair
set msg1=Executando CHKDSK...
set msg2=Executando SFC...
set msg3=Limpando arquivos temporários...
set msg4=Testando conectividade com google.com...
set msg5=Saindo. Obrigado por usar!
goto :eof

rem ======= ENGLISH =======
:load_en
set t1=REPAIR AND IT TOOLS MENU - v3.1
set t2=Choose an option (1-5): 
set opt1=Check Disk (CHKDSK)
set opt2=System Repair (SFC)
set opt3=Clean Temp Files
set opt4=Network Test
set opt5=Exit
set msg1=Running CHKDSK...
set msg2=Running SFC...
set msg3=Cleaning temporary files...
set msg4=Testing connectivity to google.com...
set msg5=Exiting. Thank you for using!
goto :eof

rem ======= ESPAÑOL =======
:load_es
set t1=MENU DE REPARACIÓN Y HERRAMIENTAS TI - v3.1
set t2=Elija una opción (1-5): 
set opt1=Verificar Disco (CHKDSK)
set opt2=Reparar Sistema (SFC)
set opt3=Limpiar Archivos Temporales
set opt4=Prueba de Red
set opt5=Salir
set msg1=Ejecutando CHKDSK...
set msg2=Ejecutando SFC...
set msg3=Limpiando archivos temporales...
set msg4=Probando conectividad a google.com...
set msg5=Saliendo. Gracias por usar!
goto :eof

rem ======= MENU PRINCIPAL =======
:menu
cls
echo ================================================
echo %t1%
echo ================================================
echo 1. %opt1%
echo 2. %opt2%
echo 3. %opt3%
echo 4. %opt4%
echo 5. %opt5%
echo ================================================
set /p opcao=%t2%

if %opcao%==1 goto chkdsk
if %opcao%==2 goto sfc
if %opcao%==3 goto temp
if %opcao%==4 goto net
if %opcao%==5 goto exit
goto menu

:chkdsk
cls
echo %msg1%
chkdsk C: /f /r
pause
goto menu

:sfc
cls
echo %msg2%
sfc /scannow
pause
goto menu

:temp
cls
echo %msg3%
cleanmgr /sagerun:1
pause
goto menu

:net
cls
echo %msg4%
ping google.com -n 4
pause
goto menu

:exit
cls
echo %msg5%
pause
exit

