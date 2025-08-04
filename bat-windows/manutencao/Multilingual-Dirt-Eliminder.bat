@ECHO OFF
:: ============================================
:: Eliminador de Sujeira - Multilíngue v3.1
:: Autor: Fábio Wlademir | f2suporte.blogspot.com
:: ============================================

CHCP 1252 >NUL
SET "lang=pt"

:: ====================
:: Menu de idioma
:: ====================
CLS
ECHO =============================================
ECHO   Selecione seu idioma / Choose language / Seleccione idioma
ECHO =============================================
ECHO [1] Portugues (Brasil)
ECHO [2] English (United States)
ECHO [3] Espanol (Latinoamerica)
ECHO.
SET /P langopt=Escolha uma opcao: 
IF "%langopt%"=="2" SET "lang=en"
IF "%langopt%"=="3" SET "lang=es"

:: ====================
:: Menu principal
:: ====================
:mainmenu
CLS
ECHO =============================================
IF "%lang%"=="pt" (
    ECHO   [1] Limpeza Rapida
    ECHO   [2] Limpeza Media
    ECHO   [3] Limpeza Completa
    ECHO   [0] Sair
)
IF "%lang%"=="en" (
    ECHO   [1] Quick Clean
    ECHO   [2] Medium Clean
    ECHO   [3] Full Clean
    ECHO   [0] Exit
)
IF "%lang%"=="es" (
    ECHO   [1] Limpieza Rapida
    ECHO   [2] Limpieza Media
    ECHO   [3] Limpieza Completa
    ECHO   [0] Salir
)
ECHO =============================================
ECHO.
SET /P opt=Digite a opcao: 
IF "%opt%"=="1" GOTO limpeza_rapida
IF "%opt%"=="2" GOTO limpeza_media
IF "%opt%"=="3" GOTO limpeza_completa
IF "%opt%"=="0" EXIT
GOTO mainmenu

:: ====================
:: Barra de Progresso
:: ====================
:progresso
FOR %%P IN (10 30 50 70 90 100) DO (
    TITLE PROCESSO EM %%P%%...
    ECHO %%P%% CONCLUIDO...
    TIMEOUT /T 1 >NUL
)
GOTO :EOF

:: ====================
:: Limpeza Rapida
:: ====================
:limpeza_rapida
ECHO msgbox "Iniciando limpeza rapida!",64,"Eliminador de Sujeira" > %temp%\startmsg.vbs
START /MIN %temp%\startmsg.vbs
CALL :progresso
DEL /F /S /Q "%TEMP%\*.*" >NUL 2>&1
DEL /F /S /Q "%USERPROFILE%\Recent\*.*" >NUL 2>&1
DEL /F /S /Q "%LOCALAPPDATA%\Temp\*.*" >NUL 2>&1
DEL /F /S /Q "C:\Windows\Prefetch\*.*" >NUL 2>&1
GOTO finalizacao

:: ====================
:: Limpeza Media
:: ====================
:limpeza_media
ECHO msgbox "Iniciando limpeza media!",64,"Eliminador de Sujeira" > %temp%\startmsg.vbs
START /MIN %temp%\startmsg.vbs
CALL :progresso
CALL :limpeza_rapida
DEL /F /S /Q "C:\Windows\Temp\*.*" >NUL 2>&1
DEL /F /S /Q "C:\Windows\Logs\CBS\*.log" >NUL 2>&1
cleanmgr /sagerun:1 >NUL 2>&1
GOTO finalizacao

:: ====================
:: Limpeza Completa
:: ====================
:limpeza_completa
ECHO msgbox "Iniciando limpeza completa!",64,"Eliminador de Sujeira" > %temp%\startmsg.vbs
START /MIN %temp%\startmsg.vbs
CALL :progresso
CALL :limpeza_media
DEL /F /S /Q "C:\Windows\SoftwareDistribution\Download\*.*" >NUL 2>&1
ipconfig /flushdns >NUL
netsh winsock reset >NUL
netsh int ip reset >NUL
GOTO finalizacao

:: ====================
:: Finalizacao com popup
:: ====================
:finalizacao
ECHO resposta = MsgBox("Deseja visitar o perfil do autor no LinkedIn?", vbYesNo+vbQuestion, "Limpeza concluida!") > %temp%\endmsg.vbs
ECHO If resposta = vbYes Then >> %temp%\endmsg.vbs
ECHO     Set objShell = CreateObject("WScript.Shell") >> %temp%\endmsg.vbs
ECHO     objShell.Run "https://www.linkedin.com/in/fabiowlademir" >> %temp%\endmsg.vbs
ECHO End If >> %temp%\endmsg.vbs
START /WAIT %temp%\endmsg.vbs

DEL /F /Q %temp%\startmsg.vbs >NUL 2>&1
DEL /F /Q %temp%\endmsg.vbs >NUL 2>&1
TITLE LIMPEZA FINALIZADA
ECHO.
IF "%lang%"=="pt" ECHO Obrigado por usar o Eliminador de Sujeira!
IF "%lang%"=="en" ECHO Thank you for using the Junk Cleaner!
IF "%lang%"=="es" ECHO Gracias por usar el Eliminador de Suciedad!
TIMEOUT /T 3 >NUL
GOTO mainmenu
