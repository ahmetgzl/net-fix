@ECHO off

:: Bu dosya yasanan internet sorunlarini gidermek icin olusturulmustur. 
:: Kablo, modem kaynakli sorunlara etkisi olmayacaktir. 
:: Daha iyi bir internet deneyimi icin ETHERNET kullanin
rem Discord: bigfiggings

TITLE Internet Sorunlarini Giderme - AG
::mode con cols=166 lines=50
SET "anaRenk=0b"
SET "araRenk=0a"
SET "ucuncuRenk=0e"
COLOR %anaRenk%

:giris
COLOR %anaRenk%
ECHO.
ECHO  Merhaba %username%,
ECHO.
ECHO     -----------------------------------------------------------------------------------                 
ECHO     -   INTERNET SORUNLARINA UFAK COZUM URETME ARACI  -  (AG tarafindan olusturuldu)  - 
ECHO     -----------------------------------------------------------------------------------
ECHO     -                                                                                 -
ECHO     -                                                                                 -
ECHO     -     [1] DNS Sifirla                     (genel sunucu sorunlari icin onerilir)  -
ECHO     -     [2] DNS Kaydet                    (komutu kullanmadan once uzmana danisin)  -
ECHO     -     [3] Ag Baglantisini Sifirla               (ag baglantisi gidip gelecektir)  -
ECHO     -     [4] AG Hizmetlerini Sifirla      (Bilgisayari yeniden baslatma gerektirir)  - 
ECHO     -     [5] Windows Guvenlik Duvarini Sifirla                                       -
ECHO     -     [6] Ping degerlerime goz at          (Oyuna girmeden pingine bakabilirsin)  -
ECHO     -     [7] Tracert verisi topla *                                                  -
ECHO     -     [8] Programi kapat                                                          -
ECHO     -                                                                                 -
ECHO     -                                                                                 - 
ECHO     -----------------------------------------------------------------------------------
ECHO.
ECHO.
ECHO     Sorunun devam etmesi halinde modeminizi sifirlayin, (varsa) modem guncellemesi yapin.
ECHO     Son care Internet Servis Saglayiciniz (ISS) ile iletisime gecin.
ECHO    *Internet servis saglayicilari detayli inceleme icin tracert bilgilerine ihtiyac duyabilir.
ECHO.
ECHO.
set secim=
ECHO ---------------------------------
set /p secim=Yapmak istediginiz islemi girin: 
if not '%secim%'=='' set secim=%secim:~0,1%
if '%secim%'=='1' goto dnsres
if '%secim%'=='2' goto dnsreg
if '%secim%'=='3' goto ipres
if '%secim%'=='4' goto agres
if '%secim%'=='5' goto winguvres
if '%secim%'=='6' goto ping_menu
if '%secim%'=='7' goto tracert_menu
if '%secim%'=='8' goto cikis
cls
ECHO.
ECHO "%secim%" gecerli degil, lutfen asagida belirtilen rakamlari girin
ECHO.
goto giris


:dnsres
ECHO.
ECHO    DNS Sifirlaniyor
ECHO.
ECHO.
ipconfig /flushdns
cls
ECHO.
ECHO                               DNS basariyla sifirlandi
ECHO                ________________________________________________________
ECHO.
ECHO                                  AAA                  GGGGGGGGGGGGG
ECHO                                 A:::A              GGG::::::::::::G
ECHO                                A:::::A           GG:::::::::::::::G
ECHO                               A:::::::A         G:::::GGGGGGGG::::G
ECHO                              A:::::::::A       G:::::G       GGGGGG
ECHO                             A:::::A:::::A     G:::::G              
ECHO                            A:::::A A:::::A    G:::::G              
ECHO                           A:::::A   A:::::A   G:::::G    GGGGGGGGGG
ECHO                          A:::::A     A:::::A  G:::::G    G::::::::G
ECHO                         A:::::AAAAAAAAA:::::A G:::::G    GGGGG::::G
ECHO                        A:::::::::::::::::::::AG:::::G        G::::G
ECHO                       A:::::AAAAAAAAAAAAA:::::AG:::::G       G::::G
ECHO                      A:::::A             A:::::AG:::::GGGGGGGG::::G
ECHO                     A:::::A               A:::::AGG:::::::::::::::G
ECHO                    A:::::A                 A:::::A GGG::::::GGG:::G
ECHO                   AAAAAAA                   AAAAAAA   GGGGGG   GGGG
ECHO.
ECHO.               ________________________________________________________
ECHO.
ECHO.
goto giris

:dnsreg
ECHO.
ECHO.
ECHO    Yeni DNS kayit ediliyor
ECHO.
ECHO.
ipconfig /registerdns
cls
ECHO.
ECHO                               DNS basariyla kaydedildi
ECHO                ________________________________________________________
ECHO.
ECHO                                  AAA                  GGGGGGGGGGGGG
ECHO                                 A:::A              GGG::::::::::::G
ECHO                                A:::::A           GG:::::::::::::::G
ECHO                               A:::::::A         G:::::GGGGGGGG::::G
ECHO                              A:::::::::A       G:::::G       GGGGGG
ECHO                             A:::::A:::::A     G:::::G              
ECHO                            A:::::A A:::::A    G:::::G              
ECHO                           A:::::A   A:::::A   G:::::G    GGGGGGGGGG
ECHO                          A:::::A     A:::::A  G:::::G    G::::::::G
ECHO                         A:::::AAAAAAAAA:::::A G:::::G    GGGGG::::G
ECHO                        A:::::::::::::::::::::AG:::::G        G::::G
ECHO                       A:::::AAAAAAAAAAAAA:::::AG:::::G       G::::G
ECHO                      A:::::A             A:::::AG:::::GGGGGGGG::::G
ECHO                     A:::::A               A:::::AGG:::::::::::::::G
ECHO                    A:::::A                 A:::::A GGG::::::GGG:::G
ECHO                   AAAAAAA                   AAAAAAA   GGGGGG   GGGG
ECHO.
ECHO.               ________________________________________________________
ECHO.
goto giris



:ipres
ipconfig /release
netsh interface set interface "Ethernet" admin=disable
cls
ECHO.
ECHO.
ECHO     Internet baglantisi kesiliyor
ECHO.
timeout /t 3 /nobreak
netsh interface set interface "Ethernet" admin=enable
ipconfig /renew
cls
ECHO.
ECHO                       Internet yenilendi ve IP adresi sifirlandi
ECHO                ________________________________________________________
ECHO.
ECHO                                  AAA                  GGGGGGGGGGGGG
ECHO                                 A:::A              GGG::::::::::::G
ECHO                                A:::::A           GG:::::::::::::::G
ECHO                               A:::::::A         G:::::GGGGGGGG::::G
ECHO                              A:::::::::A       G:::::G       GGGGGG
ECHO                             A:::::A:::::A     G:::::G              
ECHO                            A:::::A A:::::A    G:::::G              
ECHO                           A:::::A   A:::::A   G:::::G    GGGGGGGGGG
ECHO                          A:::::A     A:::::A  G:::::G    G::::::::G
ECHO                         A:::::AAAAAAAAA:::::A G:::::G    GGGGG::::G
ECHO                        A:::::::::::::::::::::AG:::::G        G::::G
ECHO                       A:::::AAAAAAAAAAAAA:::::AG:::::G       G::::G
ECHO                      A:::::A             A:::::AG:::::GGGGGGGG::::G
ECHO                     A:::::A               A:::::AGG:::::::::::::::G
ECHO                    A:::::A                 A:::::A GGG::::::GGG:::G
ECHO                   AAAAAAA                   AAAAAAA   GGGGGG   GGGG
ECHO.
ECHO.               ________________________________________________________
ECHO.
goto giris

:agres
cls
ECHO.
ECHO     Ag hizmetleri sifirlaniyor
ECHO.
timeout /t 4
netsh int ip reset
netsh winsock reset
netsh winhttp reset proxy
cls
ECHO.
ECHO                               Ag hizmetleri sifirlandi
ECHO                        Bilgisayari yeniden baslatmayi unutmayin
ECHO                ________________________________________________________
ECHO.
ECHO                                  AAA                  GGGGGGGGGGGGG
ECHO                                 A:::A              GGG::::::::::::G
ECHO                                A:::::A           GG:::::::::::::::G
ECHO                               A:::::::A         G:::::GGGGGGGG::::G
ECHO                              A:::::::::A       G:::::G       GGGGGG
ECHO                             A:::::A:::::A     G:::::G              
ECHO                            A:::::A A:::::A    G:::::G              
ECHO                           A:::::A   A:::::A   G:::::G    GGGGGGGGGG
ECHO                          A:::::A     A:::::A  G:::::G    G::::::::G
ECHO                         A:::::AAAAAAAAA:::::A G:::::G    GGGGG::::G
ECHO                        A:::::::::::::::::::::AG:::::G        G::::G
ECHO                       A:::::AAAAAAAAAAAAA:::::AG:::::G       G::::G
ECHO                      A:::::A             A:::::AG:::::GGGGGGGG::::G
ECHO                     A:::::A               A:::::AGG:::::::::::::::G
ECHO                    A:::::A                 A:::::A GGG::::::GGG:::G
ECHO                   AAAAAAA                   AAAAAAA   GGGGGG   GGGG
ECHO.
ECHO.               ________________________________________________________
ECHO.
goto giris

:winguvres
cls
ECHO.
ECHO     Windows guvenlik duvari sifirlaniyor
ECHO.
timeout /t 2
netsh advfirewall reset
cls
ECHO.
ECHO                          Windows guvenlik duvari sifirlandi
ECHO                   Tum uygulamalarin internet erisim izni sifirlandi
ECHO                ________________________________________________________
ECHO.
ECHO                                  AAA                  GGGGGGGGGGGGG
ECHO                                 A:::A              GGG::::::::::::G
ECHO                                A:::::A           GG:::::::::::::::G
ECHO                               A:::::::A         G:::::GGGGGGGG::::G
ECHO                              A:::::::::A       G:::::G       GGGGGG
ECHO                             A:::::A:::::A     G:::::G              
ECHO                            A:::::A A:::::A    G:::::G              
ECHO                           A:::::A   A:::::A   G:::::G    GGGGGGGGGG
ECHO                          A:::::A     A:::::A  G:::::G    G::::::::G
ECHO                         A:::::AAAAAAAAA:::::A G:::::G    GGGGG::::G
ECHO                        A:::::::::::::::::::::AG:::::G        G::::G
ECHO                       A:::::AAAAAAAAAAAAA:::::AG:::::G       G::::G
ECHO                      A:::::A             A:::::AG:::::GGGGGGGG::::G
ECHO                     A:::::A               A:::::AGG:::::::::::::::G
ECHO                    A:::::A                 A:::::A GGG::::::GGG:::G
ECHO                   AAAAAAA                   AAAAAAA   GGGGGG   GGGG
ECHO.
ECHO.               ________________________________________________________
ECHO.
goto giris

:ping_menu
::kaynak github.com/1ApRa/Ping-Test-Tool
cls
setlocal
call :setESC
COLOR %araRenk%
ECHO    ===========================================
ECHO.
ECHO    [1] Modeme Ping At
ECHO    [2] DNS Snucularina Ping At
ECHO    [3] En Cok Kullanilan Sayfalara Ping At
ECHO    [4] Oyunlardaki Pingime Goz At
ECHO    [5] Istedigin IP Adresine Ping At
ECHO    [6] Ana Menuye Don
ECHO.
ECHO    ===========================================
ECHO.
set /p secim=Yapmak istediginiz islemi girin: 
if not '%secim%'=='' set secim=%secim:~0,1%
if '%secim%'=='1' goto modeme_ping
if '%secim%'=='2' goto dns_server_ping
if '%secim%'=='3' goto bilindik_ping
if '%secim%'=='4' goto oyun_ping
if '%secim%'=='5' goto ozel_ip_ping
if '%secim%'=='6' (
    cls
    goto giris
)
cls

:modeme_ping
cls
ECHO.
ECHO    =========================================== && ECHO.   %ESC%[32mModem%ESC%[0m
FOR /F "tokens=2 delims=:" %%G IN ('ipconfig ^| findstr /i "Default Gateway"') DO SET "GATEWAY=%%G"
SET "GATEWAY=%GATEWAY:~1%"
CALL:Modem %GATEWAY%
ECHO      %ESC%[96m Modem%ESC%[0m                           	%ESC%[32m%ms%%ESC%[0m 
ECHO.
ECHO    ===========================================
ECHO.
ECHO    %ESC%[32m         - Modeme Ping Atildi -%ESC%[0m
ECHO    %ESC%[32m  Devam etmek icin herhangi bir tusa bas%ESC%[0m
ECHO.		
ECHO    ===========================================
ECHO.
pause > nul
cls
goto ping_menu

:dns_server_ping
cls
ECHO    =========================================== && ECHO.   %ESC%[32mTurkNet DNS%ESC%[0m
CALL:TurkNetDNS 195.175.39.40
ECHO      %ESC%[96m TurkNet DNS%ESC%[0m                	%ESC%[32m%ms%%ESC%[0m
CALL:TurkNetDNS 195.175.39.39
ECHO      %ESC%[96m TurkNet DNS%ESC%[0m                	%ESC%[32m%ms%%ESC%[0m
ECHO    =========================================== && ECHO.   %ESC%[32mGoogle DNS%ESC%[0m
CALL:GoogleDNS 8.8.8.8
ECHO      %ESC%[96m Google DNS%ESC%[0m                	%ESC%[32m%ms%%ESC%[0m
CALL:GoogleDNS 8.8.4.4
ECHO      %ESC%[96m Google DNS%ESC%[0m                	%ESC%[32m%ms%%ESC%[0m
ECHO    =========================================== && ECHO.   %ESC%[32mCloudflare DNS%ESC%[0m
CALL:CloudflareDNS 1.1.1.1
ECHO      %ESC%[96m Cloudflare DNS%ESC%[0m                	%ESC%[32m%ms%%ESC%[0m 
CALL:CloudflareDNS 1.0.0.1
ECHO      %ESC%[96m Cloudflare DNS%ESC%[0m                	%ESC%[32m%ms%%ESC%[0m
ECHO.
ECHO    ===========================================
ECHO.
ECHO    %ESC%[32m     - DNS Sunucularina Ping Atildi -%ESC%[0m
ECHO    %ESC%[32m  Devam etmek icin herhangi bir tusa bas%ESC%[0m
ECHO.		
ECHO    ===========================================
ECHO.
pause > nul
cls
goto ping_menu

:bilindik_ping
cls
ECHO    =========================================== && ECHO.   %ESC%[32mGoogle%ESC%[0m
CALL:Google google.com.tr
ECHO      %ESC%[96m Google%ESC%[0m                           %ESC%[32m%ms%%ESC%[0m
ECHO    =========================================== && ECHO.   %ESC%[32mAmazon%ESC%[0m
CALL:Amazon amazon.com.tr
ECHO      %ESC%[96m Amazon%ESC%[0m                           %ESC%[32m%ms%%ESC%[0m 
ECHO    =========================================== && ECHO.   %ESC%[32mYouTube%ESC%[0m
CALL:YouTube youtube.com
ECHO      %ESC%[96m YouTube%ESC%[0m                          %ESC%[32m%ms%%ESC%[0m 
ECHO    =========================================== && ECHO.   %ESC%[32mInstagram%ESC%[0m
CALL:Instagram instagram.com
ECHO      %ESC%[96m Instagram%ESC%[0m                        %ESC%[32m%ms%%ESC%[0m 
ECHO    =========================================== && ECHO.   %ESC%[32mTwitter%ESC%[0m
CALL:Twitter twitter.com
ECHO      %ESC%[96m Twitter%ESC%[0m                          %ESC%[32m%ms%%ESC%[0m 
ECHO.
ECHO    ===========================================
ECHO.
ECHO    %ESC%[32m - En Cok Kullanilan Sayfalara Ping Atildi -%ESC%[0m
ECHO    %ESC%[32m   Devam etmek icin herhangi bir tusa bas%ESC%[0m
ECHO.		
ECHO    ===========================================
ECHO.
pause > nul
cls
goto ping_menu

:oyun_ping
cls
ECHO    =========================================== && ECHO.   %ESC%[32mRiot Games%ESC%[0m
CALL:Riot 104.160.143.212
ECHO      %ESC%[96m Turkiye%ESC%[0m                          %ESC%[32m%ms%%ESC%[0m 
CALL:Riot   104.160.143.124
ECHO      %ESC%[96m Frankfurt%ESC%[0m                        %ESC%[32m%ms%%ESC%[0m 
CALL:Riot   184.30.18.241
ECHO      %ESC%[96m Paris%ESC%[0m                            %ESC%[32m%ms%%ESC%[0m 
ECHO    =========================================== && ECHO.   %ESC%[32mCS:GO%ESC%[0m 
CALL:CSGO counter-strike.net
ECHO      %ESC%[96m CounterStrike.net%ESC%[0m                %ESC%[32m%ms%%ESC%[0m 
ECHO    =========================================== && ECHO.   %ESC%[32mPUBG%ESC%[0m
Call:PUBG 35.156.63.252
ECHO      %ESC%[96m Frankfurt%ESC%[0m                        %ESC%[32m%ms%%ESC%[0m 
Call:PUBG 52.28.63.252
ECHO      %ESC%[96m Frankfurt%ESC%[0m                        %ESC%[32m%ms%%ESC%[0m 
Call:PUBG 52.29.63.252
ECHO      %ESC%[96m Frankfurt%ESC%[0m                        %ESC%[32m%ms%%ESC%[0m 
Call:PUBG 52.57.255.254
ECHO      %ESC%[96m Frankfurt%ESC%[0m                        %ESC%[32m%ms%%ESC%[0m 
Call:PUBG 52.58.63.252
ECHO      %ESC%[96m Frankfurt%ESC%[0m                        %ESC%[32m%ms%%ESC%[0m 
Call:PUBG 54.93.32.2
ECHO      %ESC%[96m Frankfurt%ESC%[0m                        %ESC%[32m%ms%%ESC%[0m 
Call:PUBG 54.93.162.162
ECHO      %ESC%[96m Frankfurt%ESC%[0m                        %ESC%[32m%ms%%ESC%[0m 
ECHO    =========================================== && ECHO.   %ESC%[32mRainbow Six Siege%ESC%[0m 
CALL:Rainbow6 35.152.128.254
ECHO      %ESC%[96m Ispanya%ESC%[0m        	                %ESC%[32m%ms%%ESC%[0m 
CALL:Rainbow6 13.53.128.254
ECHO      %ESC%[96m Stockholm%ESC%[0m                        %ESC%[32m%ms%%ESC%[0m
ECHO    =========================================== && ECHO.   %ESC%[32mApex Legends%ESC%[0m 
CALL:Apex_Legends 52.58.81.34
ECHO      %ESC%[96m Frankfurt%ESC%[0m                        %ESC%[32m%ms%%ESC%[0m
ECHO    =========================================== && ECHO.   %ESC%[32mOverwatch%ESC%[0m 
CALL:Overwatch 185.60.114.159
ECHO      %ESC%[96m Avrupa%ESC%[0m        	                %ESC%[32m%ms%%ESC%[0m 
ECHO    =========================================== && ECHO.   %ESC%[32mETS II%ESC%[0m 
CALL:ETSII 145.239.131.35
ECHO      %ESC%[96m TruckersMP%ESC%[0m        	        %ESC%[32m%ms%%ESC%[0m 
ECHO.
ECHO    ===========================================
ECHO.
ECHO    %ESC%[32m        - Oyunlara Ping Atildi -%ESC%[0m
ECHO    %ESC%[32m  Devam etmek icin herhangi bir tusa bas%ESC%[0m
ECHO.		
ECHO    ===========================================
ECHO.
pause > nul
cls
goto ping_menu

:ozel_ip_ping
cls
ECHO.
SET /P "IP=Ping atmak istediginiz sitenin / IP adresini girin: "
CALL:PingOzel %IP%
ECHO    ===========================================
ECHO.
ECHO      %ESC%[96m Belirttiginiz Adres%ESC%[0m        	  %ESC%[32m%ms%%ESC%[0m 
ECHO.
ECHO    ===========================================
ECHO.
ECHO    %ESC%[32m  - Belirtilen IP Adresine Ping Atildi -%ESC%[0m
ECHO    %ESC%[32m  Devam etmek icin herhangi bir tusa bas%ESC%[0m
ECHO.		
ECHO    ===========================================
ECHO.
pause > nul
cls
goto ping_menu


:Modem
:TurkNetDNS
:GoogleDNS
:CloudflareDNS
:Google
:YouTube
:Instagram
:Twitter
:PingOzel
:EpicGames
:Riot
:PUBG
:Amazon
:CSGO
:Overwatch
:ETSII
:Rainbow6
:Apex_Legends

SET ms= Hata
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "ms"') DO SET ms=%%i
GOTO:EOF

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0

:tracert_menu
::kaynak github.com/1ApRa/Ping-Test-Tool
cls
COLOR %ucuncuRenk%
ECHO    ===========================================
ECHO.
ECHO. Hangi oyun veya hizmetin tracert verisini almak istiyorsun ?
ECHO.
ECHO    [1] Modem
ECHO    [2] DNS Sunuculari (Google,Cloudflare vs.)
ECHO    [3] En cok ziyaret edilen web siteler
ECHO    [4] Riot Games
ECHO    [5] PUBG
ECHO    [6] CS:GO
ECHO    [7] Diger Oyunlar (ETS, R6S, Apex)
ECHO    [8] Istedigin sunucu veya hizmetin tracert verilerini al
ECHO    [9] Ana Menuye Don
ECHO.
ECHO    ===========================================
set /p secim=Yapmak istediginiz islemi girin: 
if not '%secim%'=='' set secim=%secim:~0,1%
if '%secim%'=='1' goto modem_tracert
if '%secim%'=='2' goto dns_server_tracert
if '%secim%'=='3' goto bilindik_tracert
if '%secim%'=='4' goto riot_tracert
if '%secim%'=='5' goto pubg_tracert
if '%secim%'=='6' goto csgo_tracert
if '%secim%'=='7' goto diger_oyunlar_tracert
if '%secim%'=='8' goto ozel_ip_tracert
if '%secim%'=='9' (
    cls
    goto giris
)

:modem_tracert
cls
cd Desktop
ECHO.
ECHO.Modem tracert bilgileri toplaniyor!
ECHO.
echo Islem bitene kadar bu pencereyi kapatmayin
echo. 
echo.Islem sunucu sayisina gore uzamaktadir. Lutfen sabirla bekleyiniz.
echo %DATE% > Modem_Tracert_Bilgileri.txt 2>&1
echo %TIME% >> Modem_Tracert_Bilgileri.txt 2>&1
echo. 

ECHO===========================================&& ECHO.
FOR /F "tokens=2 delims=:" %%G IN ('ipconfig ^| findstr /i "Default Gateway"') DO SET "GATEWAY=%%G"
SET "GATEWAY=%GATEWAY:~1%"
ECHO %GATEWAY%
echo Modem
echo      Modeminizin tracert bilgisi aliniyor lutfen bekleyin.
echo Modem >> Modem_Tracert_Bilgileri.txt 2>&1
tracert -4 %GATEWAY% 2>&1 >> Modem_Tracert_Bilgileri.txt 2>&1
echo. >> Modem_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> Modem_Tracert_Bilgileri.txt 2>&1
timeout /t 2 >nul
cls
ECHO======================================================================================
echo. 
echo          Tracert bilgieri toplandi, belgeye masaustunden ulasabilirsin.
echo    Masaustunde dosya gozukmuyor ise programi calistirdiginiz dizine goz atin.
echo                 Devam etmek icin herhangi bir tusa bas
echo. 
ECHO======================================================================================
pause > nul
cls
goto tracert_menu

:dns_server_tracert
cls
cd Desktop
ECHO.
ECHO.DNS Sunucularinin tracert bilgileri toplaniyor!
ECHO.
echo Islem bitene kadar bu pencereyi kapatmayin
echo. 
echo.Islem sunucu sayisina gore uzamaktadir. Lutfen sabirla bekleyiniz.
echo %DATE% > DNS-Server_Tracert_Bilgileri.txt 2>&1
echo %TIME% >> DNS-Server_Tracert_Bilgileri.txt 2>&1
echo. 

ECHO===========================================&& ECHO.
echo TurkNetDNS
echo      TurkNetDNS - lutfen bekleyin.
echo TurkNetDNS >> DNS-Server_Tracert_Bilgileri.txt 2>&1
tracert -4 195.175.39.40 2>&1 >> DNS-Server_Tracert_Bilgileri.txt 2>&1
echo. >> DNS-Server_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> DNS-Server_Tracert_Bilgileri.txt 2>&1
echo TurkNetDNS
echo      TurkNetDNS - lutfen bekleyin.
echo TurkNetDNS >> DNS-Server_Tracert_Bilgileri.txt 2>&1
tracert -4 195.175.39.39 2>&1 >> DNS-Server_Tracert_Bilgileri.txt 2>&1
echo. >> DNS-Server_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> DNS-Server_Tracert_Bilgileri.txt 2>&1
echo GoogleDNS
echo      GoogleDNS - lutfen bekleyin.
echo GoogleDNS >> DNS-Server_Tracert_Bilgileri.txt 2>&1
tracert -4 8.8.8.8 2>&1 >> DNS-Server_Tracert_Bilgileri.txt 2>&1
echo. >> DNS-Server_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> DNS-Server_Tracert_Bilgileri.txt 2>&1
echo GoogleDNS
echo      GoogleDNS - lutfen bekleyin.
echo GoogleDNS >> DNS-Server_Tracert_Bilgileri.txt 2>&1
tracert -4 8.8.4.4 2>&1 >> DNS-Server_Tracert_Bilgileri.txt 2>&1
echo. >> DNS-Server_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> DNS-Server_Tracert_Bilgileri.txt 2>&1
echo CloudflareDNS
echo      CloudflareDNS - lutfen bekleyin.
echo CloudflareDNS >> DNS-Server_Tracert_Bilgileri.txt 2>&1
tracert -4 1.1.1.1 2>&1 >> DNS-Server_Tracert_Bilgileri.txt 2>&1
echo. >> DNS-Server_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> DNS-Server_Tracert_Bilgileri.txt 2>&1
echo CloudflareDNS
echo      CloudflareDNS - lutfen bekleyin.
echo CloudflareDNS >> DNS-Server_Tracert_Bilgileri.txt 2>&1
tracert -4 1.0.0.1 2>&1 >> DNS-Server_Tracert_Bilgileri.txt 2>&1
echo. >> DNS-Server_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> DNS-Server_Tracert_Bilgileri.txt 2>&1

cls
ECHO======================================================================================
echo. 
echo          Tracert bilgieri toplandi, belgeye masaustunden ulasabilirsin.
echo    Masaustunde dosya gozukmuyor ise programi calistirdiginiz dizine goz atin.
echo                 Devam etmek icin herhangi bir tusa bas
echo. 
ECHO======================================================================================
pause > nul
cls
goto tracert_menu

:bilindik_tracert
cls
cd Desktop
ECHO.
ECHO.En cok ziyaret edien web sitelerin tracert bilgileri toplaniyor!
ECHO.
echo Islem bitene kadar bu pencereyi kapatmayin
echo. 
echo.Islem sunucu sayisina gore uzamaktadir. Lutfen sabirla bekleyiniz.
echo %DATE% > Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
echo %TIME% >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
echo. 

ECHO===========================================&& ECHO.
echo Google
echo      Google TR - lutfen bekleyin.
echo Google >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
tracert -4 google.com.tr 2>&1 >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
echo. >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
echo Amazon
echo      Amazon TR - lutfen bekleyin.
echo Amazon >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
tracert -4 amazon.com.tr 2>&1 >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
echo. >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
echo YouTube
echo      YouTube - lutfen bekleyin.
echo YouTube >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
tracert -4 youtube.com 2>&1 >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
echo. >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
echo Instagram
echo      Instagram - lutfen bekleyin.
echo Instagram >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
tracert -4 instagram.com 2>&1 >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
echo. >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
echo Twitter
echo      Twitter - lutfen bekleyin.
echo Twitter >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
tracert -4 twitter.com 2>&1 >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
echo. >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> Bilinen-Web-Adresleri_Tracert_Bilgileri.txt 2>&1

cls
ECHO.
ECHO======================================================================================
echo. 
echo          Tracert bilgieri toplandi, belgeye masaustunden ulasabilirsin.
echo    Masaustunde dosya gozukmuyor ise programi calistirdiginiz dizine goz atin.
echo                 Devam etmek icin herhangi bir tusa bas
echo. 
ECHO======================================================================================
pause > nul
cls
goto tracert_menu

:riot_tracert
cls
cd Desktop
ECHO.
ECHO.Riot Games tracert bilgileri toplaniyor!
ECHO.
echo Islem bitene kadar bu pencereyi kapatmayin
echo. 
echo.Islem sunucu sayisina gore uzamaktadir. Lutfen sabirla bekleyiniz.
echo %DATE% > Riot_Tracert_Bilgileri.txt 2>&1
echo %TIME% >> Riot_Tracert_Bilgileri.txt 2>&1
echo. 

ECHO===========================================&& ECHO.
echo Riot Games
echo      Turkiye - lutfen bekleyin.
echo Riot Games - Turkiye >> Riot_Tracert_Bilgileri.txt 2>&1
tracert -4 104.160.143.212 2>&1 >> Riot_Tracert_Bilgileri.txt 2>&1
echo. >> Riot_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> Riot_Tracert_Bilgileri.txt 2>&1
echo Riot Games
echo      Frankfurt - lutfen bekleyin.
echo Riot Games - Frankfurt >> Riot_Tracert_Bilgileri.txt 2>&1
tracert -4 104.160.143.124 2>&1 >> Riot_Tracert_Bilgileri.txt 2>&1
echo. >> Riot_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> Riot_Tracert_Bilgileri.txt 2>&1
echo Riot Games
echo      Paris - lutfen bekleyin.
echo Riot Games - Paris >> Riot_Tracert_Bilgileri.txt 2>&1
tracert -4 184.30.18.241 2>&1 >> Riot_Tracert_Bilgileri.txt 2>&1
echo. >> Riot_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> Riot_Tracert_Bilgileri.txt 2>&1

cls
ECHO======================================================================================
echo. 
echo          Tracert bilgieri toplandi, belgeye masaustunden ulasabilirsin.
echo    Masaustunde dosya gozukmuyor ise programi calistirdiginiz dizine goz atin.
echo                 Devam etmek icin herhangi bir tusa bas
echo. 
ECHO======================================================================================
pause > nul
cls
goto tracert_menu

:csgo_tracert
cls
cd Desktop
ECHO.
ECHO.CS:GO tracert bilgileri toplaniyor!
ECHO.
echo Islem bitene kadar bu pencereyi kapatmayin
echo. 
echo.Islem sunucu sayisina gore uzamaktadir. Lutfen sabirla bekleyiniz.
echo %DATE% > CSGO_Tracert_Bilgileri.txt 2>&1
echo %TIME% >> CSGO_Tracert_Bilgileri.txt 2>&1
echo. 

ECHO===========================================&& ECHO.
echo CS:GO
echo      CounterStrike.net - lutfen bekleyin.
echo CS:GO - CounterStrike.net >> CSGO_Tracert_Bilgileri.txt 2>&1
tracert -4 counter-strike.net 2>&1 >> CSGO_Tracert_Bilgileri.txt 2>&1
echo. >> CSGO_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> CSGO_Tracert_Bilgileri.txt 2>&1

cls
ECHO.
ECHO======================================================================================
echo. 
echo          Tracert bilgieri toplandi, belgeye masaustunden ulasabilirsin.
echo    Masaustunde dosya gozukmuyor ise programi calistirdiginiz dizine goz atin.
echo                 Devam etmek icin herhangi bir tusa bas
echo. 
ECHO======================================================================================
pause > nul
cls
goto tracert_menu

:pubg_tracert
cls
cd Desktop
ECHO.
ECHO.PUBG tracert bilgileri toplaniyor!
ECHO.
echo Islem bitene kadar bu pencereyi kapatmayin
echo. 
echo.Islem sunucu sayisina gore uzamaktadir. Lutfen sabirla bekleyiniz.
echo %DATE% > PUBG_Tracert_Bilgileri.txt 2>&1
echo %TIME% >> PUBG_Tracert_Bilgileri.txt 2>&1
echo. 

ECHO===========================================&& ECHO.
echo PUBG
echo      Frankfurt - lutfen bekleyin.
echo PUBG - Frankfurt >> PUBG_Tracert_Bilgileri.txt 2>&1
tracert -4 35.156.63.252 2>&1 >> PUBG_Tracert_Bilgileri.txt 2>&1
echo. >> PUBG_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> PUBG_Tracert_Bilgileri.txt 2>&1
echo PUBG
echo      Frankfurt - lutfen bekleyin.
echo PUBG - Frankfurt >> PUBG_Tracert_Bilgileri.txt 2>&1
tracert -4 52.28.63.252 2>&1 >> PUBG_Tracert_Bilgileri.txt 2>&1
echo. >> PUBG_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> PUBG_Tracert_Bilgileri.txt 2>&1
echo PUBG
echo      Frankfurt - lutfen bekleyin.
echo PUBG - Frankfurt >> PUBG_Tracert_Bilgileri.txt 2>&1
tracert -4 52.29.63.252 2>&1 >> PUBG_Tracert_Bilgileri.txt 2>&1
echo. >> PUBG_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> PUBG_Tracert_Bilgileri.txt 2>&1
echo PUBG
echo      Frankfurt - lutfen bekleyin.
echo PUBG - Frankfurt >> PUBG_Tracert_Bilgileri.txt 2>&1
tracert -4 52.57.255.254 2>&1 >> PUBG_Tracert_Bilgileri.txt 2>&1
echo. >> PUBG_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> PUBG_Tracert_Bilgileri.txt 2>&1
echo PUBG
echo      Frankfurt - lutfen bekleyin.
echo PUBG - Frankfurt >> PUBG_Tracert_Bilgileri.txt 2>&1
tracert -4 52.58.63.252 2>&1 >> PUBG_Tracert_Bilgileri.txt 2>&1
echo. >> PUBG_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> PUBG_Tracert_Bilgileri.txt 2>&1
echo PUBG
echo      Frankfurt - lutfen bekleyin.
echo PUBG - Frankfurt >> PUBG_Tracert_Bilgileri.txt 2>&1
tracert -4 54.93.32.22 2>&1 >> PUBG_Tracert_Bilgileri.txt 2>&1
echo. >> PUBG_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> PUBG_Tracert_Bilgileri.txt 2>&1
echo PUBG
echo      Frankfurt - lutfen bekleyin.
echo PUBG - Frankfurt >> PUBG_Tracert_Bilgileri.txt 2>&1
tracert -4 54.93.162.162 2>&1 >> PUBG_Tracert_Bilgileri.txt 2>&1
echo. >> PUBG_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> PUBG_Tracert_Bilgileri.txt 2>&1

cls
ECHO.
ECHO======================================================================================
echo. 
echo          Tracert bilgieri toplandi, belgeye masaustunden ulasabilirsin.
echo    Masaustunde dosya gozukmuyor ise programi calistirdiginiz dizine goz atin.
echo                 Devam etmek icin herhangi bir tusa bas
echo. 
ECHO======================================================================================
pause > nul
cls
goto tracert_menu

:diger_oyunlar_tracert
cls
cd Desktop
ECHO.
ECHO.Diğer oyunlarin tracert bilgileri toplaniyor!
ECHO.
echo Islem bitene kadar bu pencereyi kapatmayin
echo. 
echo.Islem sunucu sayisina gore uzamaktadir. Lutfen sabirla bekleyiniz.
echo %DATE% > Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1
echo %TIME% >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1
echo. 

ECHO===========================================&& ECHO.
echo Rainbow Six Siege
echo      Ispanya - lutfen bekleyin.
echo R6S - Ispanya >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1
tracert -4 35.152.128.254 2>&1 >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1
echo. >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1
echo Rainbow Six Siege
echo      Stockholm - lutfen bekleyin.
echo R6S - Stockholm >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1
tracert -4 13.53.128.254 2>&1 >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1
echo. >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1

ECHO===========================================&& ECHO.
echo Apex Legends
echo      Frankfurt - lutfen bekleyin.
echo Apex Legends - Frankfurt >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1
tracert -4 52.58.81.34 2>&1 >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1
echo. >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1

ECHO===========================================&& ECHO.
echo Overwatch
echo      Avrupa - lutfen bekleyin.
echo Overwatch - Avrupa >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1
tracert -4 185.60.114.159 2>&1 >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1
echo. >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1


ECHO===========================================&& ECHO.
echo ETS II
echo      TruckersMP - lutfen bekleyin.
echo ETS II - TruckersMP >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1
tracert -4 145.239.131.35 2>&1 >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1
echo. >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> Diger-Oyunlar_Tracert_Bilgileri.txt 2>&1
cls
ECHO.
ECHO======================================================================================
echo. 
echo          Tracert bilgieri toplandi, belgeye masaustunden ulasabilirsin.
echo    Masaustunde dosya gozukmuyor ise programi calistirdiginiz dizine goz atin.
echo                 Devam etmek icin herhangi bir tusa bas
echo. 
ECHO======================================================================================
pause > nul
cls
goto tracert_menu

:ozel_ip_tracert
cls
cd Desktop
ECHO.
SET /P "IP=Ping atmak istediginiz sitenin / IP adresini girin: "
CALL:PingOzel %IP%
cls
ECHO.
ECHO.%IP% adresinin tracert bilgileri toplaniyor!
ECHO.
echo Islem bitene kadar bu pencereyi kapatmayin
echo. 
echo %DATE% > Tracert_Bilgileri.txt 2>&1
echo %TIME% >> Tracert_Bilgileri.txt 2>&1
echo. 

ECHO===========================================&& ECHO.

echo Belirttiginiz Adres
echo      %IP% - lutfen bekleyin.
echo %IP% - Tracert >> Tracert_Bilgileri.txt 2>&1
tracert -4 %IP% 2>&1 >> Tracert_Bilgileri.txt 2>&1
echo. >> Tracert_Bilgileri.txt 2>&1
echo. =========================================== >> Tracert_Bilgileri.txt 2>&1

cls
ECHO.
ECHO======================================================================================
echo. 
echo          Tracert bilgieri toplandi, belgeye masaustunden ulasabilirsin.
echo    Masaustunde dosya gozukmuyor ise programi calistirdiginiz dizine goz atin.
echo                 Devam etmek icin herhangi bir tusa bas
echo. 
ECHO======================================================================================
pause > nul
cls
goto tracert_menu

:cikis
cls
ECHO.
ECHO                         Programi kullandigin icin tesekkurler
ECHO.
ECHO                _______________________created by_______________________
ECHO.
ECHO                                  AAA                  GGGGGGGGGGGGG
ECHO                                 A:::A              GGG::::::::::::G
ECHO                                A:::::A           GG:::::::::::::::G
ECHO                               A:::::::A         G:::::GGGGGGGG::::G
ECHO                              A:::::::::A       G:::::G       GGGGGG
ECHO                             A:::::A:::::A     G:::::G              
ECHO                            A:::::A A:::::A    G:::::G              
ECHO                           A:::::A   A:::::A   G:::::G    GGGGGGGGGG
ECHO                          A:::::A     A:::::A  G:::::G    G::::::::G
ECHO                         A:::::AAAAAAAAA:::::A G:::::G    GGGGG::::G
ECHO                        A:::::::::::::::::::::AG:::::G        G::::G
ECHO                       A:::::AAAAAAAAAAAAA:::::AG:::::G       G::::G
ECHO                      A:::::A             A:::::AG:::::GGGGGGGG::::G
ECHO                     A:::::A               A:::::AGG:::::::::::::::G
ECHO                    A:::::A                 A:::::A GGG::::::GGG:::G
ECHO                   AAAAAAA                   AAAAAAA   GGGGGG   GGGG
ECHO.
ECHO.               ________________________________________________________
ECHO.
timeout /t 2 >nul

EXIT