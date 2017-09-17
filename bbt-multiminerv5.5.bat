@echo off
setlocal EnableDelayedExpansion 
rem **********************************************************************
rem *         BBT Multi-Miner Easy Batch File  v5.5 by BBT & alon7       *
rem *     Featuring Claymore, SGMiner, CCMiner, EBWF's Miner and more    *
rem *   Pre-Configured syntax, just update address/worker                *
rem *    Eth, Etc, Xmr, Lbry, Sia, Zcash, Pasc, Hush, DBIX, ubiq and more*
rem **********************************************************************
rem * BEST VIEWED IN FULL SCREEN 1920x1080
rem **********************************************************************
rem * Environment Setup  ||| BE SURE TO CHANGE THE ADDRESS BELOW TO YOUR WALLET!  
rem ** FOR NICEHASH EXCAVATOR MINER, MUST EDIT THE ASSOCATED JSON TO UPDATE WALLET!!
rem *** THIS IS LOCATED IN ROOT FOLDER UNDER excavator folder, edit with notepad++, change wallet                                     
rem echo on

SET BTC_WALLET_ADDRESS=197T6AQz9wRPohhHKXr26Ew6tUMwgN4HtH
	SET CHC_WALLET_ADDRESS=CX1HvLSzDANG2tLB6Fm3rSaGZuim8jqvPR
	SET DBIX_WALLET_ADDRESS=0x4c04f53f3bf154aa68f78f45b75f0c9dec120796
	SET DECRED_WALLET_ADDRESS=DsmvWoyCQQaEBAY2xpRS265cTE9vVh7LwHf
	SET DIGI_WALLET_ADDRESS=D7TguzPe8RqQG2yrLPRX4Ze7oonDbJ5MFh
SET ETC_WALLET_ADDRESS=0x70b8e9a011a45cda52e8a1339210b7047248189f
SET ETH_WALLET_ADDRESS=0x7f0d07c710c40e5bd9f6854e30196ac14fe61cd3
	SET EXP_WALLET_ADDRESS=0x32ce762bcbb758702b7e830925477976ff514c21
	SET FTC_WALLET_ADDRESS=6fcwKdfaTMaqfqEod3U7va8a47rWEavhkQ
	SET HUSH_WALLET_ADDRESS=t1MmWWevkAxB282JqtpY4bK7njF7XPfcH2n
	SET LBRY_WALLET_ADDRESS=bNHQxsH1RMBjBNYXXjmhNMuspU9z1k2B6c
SET LTC_WALLET_ADDRESS=LT7mHGEZPtehQNAwXRGgBq7fwUJ6WT85eD
	SET MUS_WALLET_ADDRESS=0x9507e04bd57caeee18a6cae2d70ca044cffcf27d
	SET PASCAL_WALLET_ADDRESS=86646-59e76e7d7a498fbc
	SET SIA_WALLET_ADDRESS=6ce3c1dc8444ce3dc362425124853e0f32e930eaae1dedc6e919a08d8b6664bf71bd744dda24
	SET UBIQ_WALLET_ADDRESS=0x21b75D1b449bd7dAE9B2C8730C7bEC8854409Cfb
	SET XMR_WALLET_ADDRESS=452eu5HWBcTEwQfwkRFHp9MgC39DhtAio5um8mEs6ZRgcyq9V3Gy3GbJfyASSxepSRQRe6SHcQ27xgorYzyZrn6DSVmWvuw.4d8ddccc40568d93
SET ZCASH_WALLET_ADDRESS=t1dS1vczvvp1YWRt7SXfR49qdhceLfDwari
	SET ZCL_WALLET_ADDRESS=t1dBTKJb9Yo5VFFyHg69nqnJ2koqYURHNpK
	SET ZEN_WALLET_ADDRESS=znWdcxyUXx425j38c3JmDyBMgk3HEjM3KgC

rem *** Miner login for pools like suprnova.cc
rem *** dont get excited, our primary mining weblogin is not bitsbetrippin, used as example
SET MINER_WEBLOGIN=bitsbetrippin
SET WORKER_PASSWORD=x
SET MINER_NAME=%COMPUTERNAME%



SET EMAIL_ADDRESS=bitsbetrippin1@gmail.com

setx GPU_FORCE_64BIT_PTR 0 >nul 2>&1
setx GPU_MAX_HEAP_SIZE 100 >nul 2>&1
setx GPU_USE_SYNC_OBJECTS 1 >nul 2>&1
setx GPU_MAX_ALLOC_PERCENT 100 >nul 2>&1
setx GPU_SINGLE_ALLOC_PERCENT 100 >nul 2>&1


SET miner=%1

IF NOT "%miner%"=="" (
    SET /A M=%miner%
    goto MinerSwitch
)
ECHO ====================================================
ECHO *                     ETHEREUM                     *
ECHO ====================================================
ECHO 1.  NVIDIA ONLY - Optimized Ethminer - Eth Ethermine.org Only
ECHO 2.  NVIDIA ONLY - Optimized Ethminer - Eth Nanopool Only
ECHO 3.  AMD and NVIDIA Claymore - Eth Only Ethermine.org
ECHO 4.  AMD and NVIDIA Claymore - Eth Ethermine.org and Siacoin to Nanopool
ECHO 5.  AMD and NVIDIA Claymore - Eth Ethermine.org and Decred to Suprnova.cc Pool
ECHO 6.  AMD and NVIDIA Claymore - Eth Ethermine.org and Lbry Credits to Coinmine.pl
ECHO 7.  AMD and NVIDIA Claymore - Eth Ethermine.org and PascalCoin to Nanopool
ECHO 8.  AMD and NVIDIA Claymore - Eth Nanopool Only
ECHO 9.  AMD and NVIDIA Claymore - Eth Nanopool and Siacoin to Nanopool
ECHO 10. AMD and NVIDIA Claymore - Eth Nanopool and Pascal to Nanopool
ECHO ====================================================
ECHO *                  ETHEREUM Classic                *
ECHO ====================================================
ECHO 11. NVIDIA ONLY - Optimized Ethminer - Etc nanopool
ECHO 12. AMD and NVIDIA Claymore - Etc (ethereum classic) to Nanopool
ECHO 13. AMD and NVIDIA Claymore - Etc (ethereum classic) and Siacoin both to Nanopool
ECHO 14. AMD and NVIDIA Claymore - Etc (ethereum classic) Nanopool and Decred to Suprnova.cc Pool
ECHO 15. AMD and NVIDIA Claymore - Etc (ethereum classic) and Pascal both to Nanopool
ECHO ====================================================
ECHO *                    Monero (XMR)                  *
ECHO ====================================================
ECHO 16.  AMD ONLY - Claymore - XMR to Nanopool
ECHO 17.  NVIDIA ONLY - TSIV CCMiner XMR to Nanopool
ECHO ====================================================
ECHO *                       ZCASH                      *
ECHO ====================================================
ECHO 18.  AMD ZCash Claymore - Zcash to Nanopool AMD Only
ECHO 19.  Nicehash Excavator - Zcash to Nanopool Both AMD and Nvidia
ECHO 20.  NVIDIA EWBF's CUDA Zcash Miner - Zcash to Nanopool NVIDIA Only
ECHO ====================================================
ECHO *                      SIACOIN                     *
ECHO ====================================================
ECHO 21.   AMD and NVIDIA Gominer - Siacoin to Nanopool Only
ECHO ====================================================
ECHO *                    PASCALCOIN                    *
ECHO ====================================================
ECHO 22.  AMD SGMiner PascalCoin (exchange address) - PascalCoin to Nanopool
ECHO 23.  NiceHash Excavator 1.2.11a - PascalCoin to Nanopool
ECHO ====================================================
ECHO *                       HUSH                       *
ECHO ====================================================
ECHO 24.  AMD HUSH Claymore - Hush to zdash.miningpseed.com AMD Only
ECHO 25.  NVIDIA EWBF's CUDA HUSH Miner - HUSH to zdash.miningspeed.com NVIDIA Only
ECHO ====================================================
ECHO *                       LBRY                       *
ECHO ====================================================
ECHO 26.  NVIDIA CCMiner Lbry Credits Miner - Lbry to coinmine.pl NVIDIA ONLY
ECHO 27.  AMD SGMiner Lbry Credits Miner - Lbry to coinmine.pl AMD ONLY
ECHO ====================================================
ECHO *                       DBIX                       *
ECHO ====================================================
ECHO 28.  AMD and NVIDIA Claymore - DBIX to Sexy.Pool Only
ECHO 29.  AMD and NVIDIA Claymore - DBIX to Sexy.Pool and Siacoin to Nanopool
ECHO 30.  AMD and NVIDIA Claymore - DBIX to Hodl.Pool Only
ECHO 31.  AMD and NVIDIA Claymore - DBIX to Hodl Pool and Siacoin to Nanopool
ECHO ====================================================
ECHO *                       UBIQ                       *
ECHO ====================================================
ECHO 32.  AMD and NVIDIA Claymore - Ubiq to UbiqPool Only
ECHO 33.  AMD and NVIDIA Claymore - Ubiq to Hodl Pool
ECHO 34.  AMD and NVIDIA Claymore - Ubiq to Hodl Pool and Decred to Suprnova.cc Pool
ECHO 35.  AMD and NVIDIA Claymore - Ubiq to Hodl Pool and LBRY to Coinmine.pl
ECHO 36.  AMD and NVIDIA Claymore - Ubiq to Hodl Pool and PASC to Nanopool
ECHO 37.  AMD and NVIDIA Claymore - Ubiq to Hodl Pool and Siacoin to Nanopool
ECHO ====================================================
ECHO *                       Expanse                    *
ECHO ====================================================
ECHO 38.  AMD and NVIDIA Claymore - Expanse to Hodl Pool
ECHO ====================================================
ECHO *                       Chaincoin                  *
ECHO ====================================================
ECHO 39.  AMD - CHC to Suprnova.cc
ECHO 40.  Nvidia - CHC to Suprnova.cc
ECHO ====================================================
ECHO *                       Digibyte                   *
ECHO ====================================================
ECHO 41.  SGMiner AMD - DGB GROESTL to Suprnova.cc
ECHO 42.  CCMiner NVIDIA - DGB GROESTL to Suprnova.cc
ECHO ====================================================
ECHO *                       Feathercoin                *
ECHO ====================================================
ECHO 43.  NVIDIA only - FTC to F2Pool FTC
ECHO 44.  AMD Only - FTC to F2Pool FTC 
ECHO ====================================================
ECHO *                       Musicoin                   *
ECHO ====================================================
ECHO 45.  AMD and NVIDIA Claymore - Musicoin to miningpoolhub Only
ECHO 46.  AMD and NVIDIA Claymore - Musicoin to miningpoolhub Siacoin to Nanopool
ECHO 47.  AMD and NVIDIA Claymore - Musicoin to miningpoolhub Decred to Suprnova.cc Pool
ECHO 48.  AMD and NVIDIA Claymore - Musicoin to miningpoolhub Lbry Credits to Coinmine.pl
ECHO 49.  AMD and NVIDIA Claymore - Musicoin to miningpoolhub PascalCoin to Nanopool
ECHO ====================================================
ECHO *                       Signatum                   *
ECHO ====================================================
ECHO 50.  CCMiner 2.2 Skunk NVIDIA Only - Signatum to Supernova.cc Pool
ECHO 51.  SGMiner Skunk Edition - AMD Only - Signatum to Supernova.cc Pool
ECHO ****************************************************
ECHO ====================================================
ECHO *                       Zclassic                   *
ECHO ====================================================
ECHO 52.  Claymore Zclassic AMD Only - Zclassic to Miningpoolhub
ECHO 53.  Silentarmy Zclassic nVidia CPU Only - Zclassic to Miningpoolhub
ECHO ****************************************************
ECHO ====================================================
ECHO *                       Dash                       *
ECHO ====================================================
ECHO 54.  Dash SGMiner x11 - Dash to miningpoolhub - AMD Only
ECHO 55.  Dash CCMiner x11 - Dash to miningpoolhub - nVidia Only
ECHO ****************************************************
ECHO ====================================================
ECHO *                  Litecoin                        *
ECHO ====================================================
ECHO 56.  CGMiner 3.7.2 Legacy AMD Only - Litecoin to F2Pool
ECHO ****************************************************
ECHO ====================================================
ECHO *                       ZENCoin                    *
ECHO ====================================================
ECHO 57.  Claymore ZENCoin AMD Only - Zencoin to Suprnova.cc
ECHO 58.  Silentarmy ZENCoin nVidia CPU Only - Zencoin to Suprnova.cc
ECHO ****************************************************

ECHO 99 - EXIT
ECHO.

:: Get input from user
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

:MinerSwitch
IF %M%==1 GOTO ethereum1
IF %M%==2 GOTO ethereum2
IF %M%==3 GOTO ethereum3
IF %M%==4 GOTO ethereum4
IF %M%==5 GOTO ethereum5
IF %M%==6 GOTO ethereum6
IF %M%==7 GOTO ethereum7
IF %M%==8 GOTO ethereum8
IF %M%==9 GOTO ethereum9
IF %M%==10 GOTO ethereum10
IF %M%==11 GOTO ethereumc1
IF %M%==12 GOTO ethereumc2
IF %M%==13 GOTO ethereumc3
IF %M%==14 GOTO ethereumc4
IF %M%==15 GOTO ethereumc5
IF %M%==16 GOTO monero1
IF %M%==17 GOTO monero2
IF %M%==18 GOTO zcash1
IF %M%==19 GOTO zcash2
IF %M%==20 GOTO zcash3
IF %M%==21 GOTO siacoin1
IF %M%==22 GOTO pascal1
IF %M%==23 GOTO pascal2
IF %M%==24 GOTO hush1
IF %M%==25 GOTO hush2
IF %M%==26 GOTO lbry1
IF %M%==27 GOTO lbry2
IF %M%==28 GOTO dbix1
IF %M%==29 GOTO dbix2
IF %M%==30 GOTO dbix3
IF %M%==31 GOTO dbix4
IF %M%==32 GOTO ubiq1
IF %M%==33 GOTO ubiq2
IF %M%==34 GOTO ubiq3
IF %M%==35 GOTO ubiq4
IF %M%==36 GOTO ubiq5
IF %M%==37 GOTO ubiq6
IF %M%==38 GOTO exp1
IF %M%==39 GOTO chc1
IF %M%==40 GOTO chc2
IF %M%==41 GOTO dgb1
IF %M%==42 GOTO dgb2
IF %M%==43 GOTO ftc1
IF %M%==44 GOTO ftc2
IF %M%==45 GOTO mus1
IF %M%==46 GOTO mus2
IF %M%==47 GOTO mus3
IF %M%==48 GOTO mus4
IF %M%==49 GOTO mus5
IF %M%==50 GOTO sig1
IF %M%==51 GOTO sig2
IF %M%==52 GOTO zcl1
IF %M%==53 GOTO zcl2
IF %M%==54 GOTO dsh1
IF %M%==55 GOTO dsh2
IF %M%==56 GOTO ltc1
IF %M%==57 GOTO zen1
IF %M%==58 GOTO zen2
IF %M% GTR 58 GOTO EOF
IF %M% LSS 0 GOTO EOF


::
:: Ethereum miners
::
:ethereum1
ECHO NVIDIA ONLY - Optimized Ethminer - Eth Ethermine.org Only
ethminer-0.12.0rc1\bin\ethminer.exe --farm-recheck 200 -G -S eu1.ethermine.org:4444 -FS us1.ethermine.org:4444 -O %ETH_WALLET_ADDRESS%.%MINER_NAME%
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum2
ECHO NVIDIA ONLY - Optimized Ethminer - Eth Nanopool Only
ethminer-0.12.0rc1\bin\ethminer.exe --farm-recheck 200 -G -S eth-us-east1.nanopool.org:9999 -FS eth-eu1.nanopool.org:9999 -O %ETH_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS%
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum3
ECHO AMD and NVIDIA Claymore - Eth Only Ethermine.org
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool us1.ethermine.org:4444 -ewal %ETH_WALLET_ADDRESS%.%MINER_NAME% -epsw x
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum4
ECHO AMD and NVIDIA Claymore - Eth Ethermine.org and Siacoin to Nanopool
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool us1.ethermine.org:4444 -ewal %ETH_WALLET_ADDRESS%.%MINER_NAME% -epsw x -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum5
ECHO AMD and NVIDIA Claymore - Eth Suprnova.cc and Decred to Suprnova.cc Pool
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool eth.suprnova.cc:5000 -ewal %MINER_WEBLOGIN%.%MINER_NAME% -epsw x -esm 3 -dpool dcr.suprnova.cc:3252 -dwal %MINER_WEBLOGIN%.%MINER_NAME% -dpsw x -allpools 1

if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum6
ECHO AMD and NVIDIA Claymore - Eth Ethermine.org and Lbry Credits to Coinmine.pl
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool us1.ethermine.org:4444 -ewal %ETH_WALLET_ADDRESS%.%MINER_NAME% -epsw x -dpool lbc-us.coinmine.pl:8787 -dwal %LBRY_WALLET_ADDRESS%.%MINER_NAME% -dpsw x -dcoin lbc
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum7
ECHO AMD and NVIDIA Claymore - Eth Ethermine.org and PascalCoin to Nanopool
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool us1.ethermine.org:4444 -ewal %ETH_WALLET_ADDRESS%.%MINER_NAME% -epsw x -dpool stratum+tcp://pasc-us-east1.nanopool.org:15555 -dwal %PASCAL_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -dpsw x -dcoin pasc -ftime 10 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum8
ECHO AMD and NVIDIA Claymore - Eth Nanopool Only
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool eth-us-east1.nanopool.org:9999 -ewal %ETH_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -mode 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum9
ECHO AMD and NVIDIA Claymore - Nanopool and Siacoin to Nanopool
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool eth-us-east1.nanopool.org:9999 -ewal %ETH_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -epsw x -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum10
ECHO AMD and NVIDIA Claymore - Eth Nanopool and Pascal to Nanopool
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool eth-us-east1.nanopool.org:9999 -ewal %ETH_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -epsw x -dpool stratum+tcp://pasc-us-east1.nanopool.org:15555 -dwal %PASCAL_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -dcoin pasc -ftime 10 
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Ethereum Classic miners
::
:ethereumc1
ECHO NVIDIA ONLY - Optimized Ethminer - Etc nanopool Only 
ethminer-0.12.0rc1\bin\ethminer.exe --farm-recheck 200 -G -S etc-us-east1.nanopool.org:19999 -O %ETC_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS%
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereumc2
ECHO AMD and NVIDIA Claymore - Etc (ethereum classic) to Nanopool
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool etc-us-east1.nanopool.org:19999 -ewal %ETC_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -mode 1 -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereumc3
ECHO AMD and NVIDIA Claymore - Etc (ethereum classic) and Siacoin both to Nanopool
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool etc-us-east1.nanopool.org:19999 -ewal %ETC_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -epsw x -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereumc4
ECHO AMD and NVIDIA Claymore - Etc (ethereum classic) Nanopool and Decred to Suprnova.cc Pool
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool etc-us-east1.nanopool.org:19999 -ewal %ETC_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -epsw x -dpool dcr.suprnova.cc:3252 -dwal %MINER_WEBLOGIN%.%MINER_NAME% -dpsw x -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereumc5
ECHO AMD and NVIDIA Claymore - Etc (ethereum classic) and Pascal both to Nanopool
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool etc-us-east1.nanopool.org:19999 -ewal %ETC_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -epsw x -dpool stratum+tcp://pasc-us-east1.nanopool.org:15555 -dwal %PASCAL_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -dcoin pasc -ftime 10 -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Monero Miners
::
:monero1
ECHO AMD ONLY - Claymore - XMR to Nanopool
Claymore_CryptoNote_GPU_Miner_v9.7\NsGpuCNMiner.exe -o ssl://xmr-eu1.nanopool.org:14433 -u %XMR_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -p z -ftime 1 -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:monero2
ECHO NVIDIA ONLY - TSIV CCMiner XMR to Nanopool
tsiv-xmr-nvidia\ccminer -q -o stratum+tcp://xmr-us-east1.nanopool.org:14444 -u %XMR_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -p x -l 4x84
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: ZCash Miners
::
:zcash1
ECHO ZCash Claymore - Zcash to Nanopool AMD Only
Claymore_ZCash_AMD_GPU_Miner_v12.6\ZecMiner64.exe -zpool ssl://zec-us-east1.nanopool.org:6633 -zwal %ZCASH_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -zpsw z -ftime 1 -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:zcash2
ECHO Nicehash Excavator - Zcash to Nanopool
excavator_v1.2.11a\excavator+web+restart_script.bat
if %ERRORLEVEL% NEQ 0 goto exit
pause

:zcash3
ECHO NVIDIA EWBF's CUDA Zcash Miner - Zcash to Nanopool NVIDIA Only
ZEC_M0.3.4b\miner --server zec-us-east1.nanopool.org --user %ZCASH_WALLET_ADDRESS%.%MINER_NAME%.%EMAIL_ADDRESS% --pass z --port 6666 --pec
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: SiaCoin Miners
::
:siacoin1
ECHO AMD and NVIDIA Gominer - Siacoin to Nanopool Only
gominer-windows-1.0.0\gominer.exe -I 28 -H sia-us-east1.nanopool.org:9980 -Q "address=%SIA_WALLET_ADDRESS%&worker=%MINER_NAME%&email=%EMAIL_ADDRESS%"
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: PascalCoin Miners
::
:pascal1
ECHO AMD SGMiner PascalCoin (exchange address) - PascalCoin to Nanopool
sg-miner-5.5.0\sgminer.exe -k pascal -o stratum+tcp://pasc-us-east1.nanopool.org:15555 -u %PASCAL_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -p x -I 21 -w 64 -g2 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:pascal2
ECHO Nicehash Excavator - PascalCoin to Nanopool
excavator_v1.2.11a\pasc_excavator+web+restart_script.bat
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Hush Miners
::
:hush1
ECHO AMD HUSH Claymore - Hush to zdash.miningpseed.com AMD Only
Claymore_ZCash_AMD_GPU_Miner_v12.6\ZecMiner64.exe
-zpool mining.miningspeed.com:3062
-zwal %HUSH_WALLET_ADDRESS%.%MINER_NAME%
-zpsw z
-allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:hush2
ECHO NVIDIA EWBF's CUDA HUSH Miner - HUSH to zdash.miningspeed.com NVIDIA Only
ZEC_M0.3.4b\miner --server mining.miningspeed.com --user %HUSH_WALLET_ADDRESS%.%MINER_NAME% --pass z --port 3092 --pec
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Lbry Miners
::
:lbry1
ECHO NVIDIA CCMiner Lbry Credits Miner - Lbry to coinmine.pl NVIDIA ONLY
ccminer-x64-2.2.1\ccminer-x64.exe -o stratum+tcp://lbc-us.coinmine.pl:8787 -u %LBRY_WALLET_ADDRESS%.%MINER_NAME% -a lbry
if %ERRORLEVEL% NEQ 0 goto exit
pause

:lbry2
:: AMD Only
ECHO AMD SGMiner Lbry Credits Miner - Lbry to coinmine.pl AMD ONLY
sgminer_5_4_0-lbry\sgminer.exe --kernel lbry -o stratum+tcp://lbc-us.coinmine.pl:8787 -u %LBRY_WALLET_ADDRESS%.%MINER_NAME% -p x -I 19 -w 64 -g 4
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Dbix Miners
::
:dbix1
ECHO AMD and NVIDIA Claymore - Dbix to Sexy.pool only
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool stratum+tcp://dbix.pool.sexy:7007 -ewal %DBIX_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -allpools 1 -allcoins 1 -mode 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:dbix2
ECHO AMD and NVIDIA Claymore - Dbix to Sexy.Pool and Siacoin to Nanopool
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool stratum+tcp://dbix.pool.sexy:7007 -ewal %DBIX_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:dbix3
ECHO AMD and NVIDIA Claymore - Dbix to Sexy.Pool and Decred to Suprnova.cc Pool
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool stratum+tcp://dbix.pool.sexy:7007 -ewal %DBIX_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -dpool dcr.suprnova.cc:3252 -dwal %MINER_WEBLOGIN%.%MINER_NAME% -dpsw x -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:dbix4
ECHO AMD and NVIDIA Claymore - Dbix to Sexy.Pool and LBRY to Coinmine.pl
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool stratum+tcp://dbix.pool.sexy:7007 -ewal %DBIX_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -dpool stratum+tcp://lbc-us.coinmine.pl:8787 -dwal %LBRY_WALLET_ADDRESS%.%MINER_NAME% -dpsw x -dcoin lbc
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Ubiq Miners
::

:ubiq1
ECHO AMD and NVIDIA Claymore - Ubiq to UbiqPool Only
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool stratum+tcp://eu.ubiqpool.io:8008 -ewal %UBIQ_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -allpools 1 -allcoins 1 -mode 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ubiq2
ECHO AMD and NVIDIA Claymore - Ubiq to Hodl Pool Only
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool stratum+tcp://ubiq.hodlpool.com:8009 -ewal %UBIQ_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -allpools 1 -allcoins 1 -mode 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ubiq3
ECHO AMD and NVIDIA Claymore - Ubiq to Hodl Pool and Decred to Suprnova.cc Pool
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool stratum+tcp://ubiq.hodlpool.com:8009 -ewal %UBIQ_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -dpool dcr.suprnova.cc:3252 -dwal %MINER_WEBLOGIN%.%MINER_NAME% -dpsw x -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ubiq4
ECHO AMD and NVIDIA Claymore - Ubiq to Hodl Pool and LBRY to Coinmine.pl
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool stratum+tcp://ubiq.hodlpool.com:8009 -ewal %UBIQ_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -dpool stratum+tcp://lbc-us.coinmine.pl:8787 -dwal %LBRY_WALLET_ADDRESS%.%MINER_NAME% -dpsw x -dcoin lbc
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ubiq5
ECHO AMD and NVIDIA Claymore - Ubiq to Hodl Pool and PASC to Nanopool
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool stratum+tcp://ubiq.hodlpool.com:8009 -ewal %UBIQ_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -dpool stratum+tcp://pasc-us-east1.nanopool.org:15555 -dwal %PASCAL_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -dcoin pasc -ftime 10 -allpools 1 

if %ERRORLEVEL% NEQ 0 goto exit
pause

:ubiq6
ECHO AMD and NVIDIA Claymore - Ubiq to Hodl Pool and Siacoin to Nanopool
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool stratum+tcp://ubiq.hodlpool.com:8009 -ewal %UBIQ_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Expanse Miners
::

:exp1
ECHO AMD and NVIDIA Claymore - Expanse to Hodl Pool
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool stratum+tcp://exp.hodlpool.com:8003 -ewal %EXP_WALLET_ADDRESS% -epsw x -esm 0 -allcoins exp -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Chaincoin Miners
::

:chc1
ECHO AMD SGMiner Chaincoin - Chaincoin to Suprnova.cc AMD ONLY
Chaincoin_SGMINER\sgminer.exe -k chaincoin -o stratum+tcp://chc.suprnova.cc:5888 -u %MINER_WEBLOGIN%.%MINER_NAME% -p %WORKER_PASSWORD% -I 18 -g 4 -w 128 --lookup-gap 4 -s 1 --queue 1 -E 15
if %ERRORLEVEL% NEQ 0 goto exit
pause

:chc2
ECHO NVIDIA CCMiner Chaincoin Miner - Chaincoin to Suprnova.cc NVIDIA ONLY
ccminer-x64-2.2.1\ccminer-x64.exe -o stratum+tcp://chc.suprnova.cc:5888 -u %MINER_WEBLOGIN%.%MINER_NAME% -p %WORKER_PASSWORD% -a c11
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Digibyte Miners
::

:dgb1
ECHO AMD SGMiner DGB Miner GROESTL - Digibyte to Suprnova.cc AMD Only
sgminer-5.6.1-nicehash-51-windows-amd64\sgminer.exe -o stratum+tcp://dgbg.suprnova.cc:7978 -u %MINER_WEBLOGIN%.%MINER_NAME% -p %WORKER_PASSWORD% -I 20 -g 4 -w 128 -k myriadcoin-groestl --no-submit-stale
if %ERRORLEVEL% NEQ 0 goto exit
pause

:dgb2
ECHO NVIDIA CCMiner DGB Miner - Digibyte to Suprnova.cc NVIDIA ONLY
ccminer-x64-2.2.1\ccminer-x64.exe -o stratum+tcp://dgbg.suprnova.cc:7978 -u %MINER_WEBLOGIN%.%MINER_NAME% -p %WORKER_PASSWORD% -a myr-gr
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: FTC Miners
::

:ftc1
ECHO NVIDIA CCMiner Feathercoin Miner - FTC to P2Pool FTC
ccminer-x64-2.2.1\ccminer-x64.exe -o stratum+tcp://46.4.0.101:19327 -u %FTC_WALLET_ADDRESS% -p %WORKER_PASSWORD% -a neoscrypt -N60 -i 19.5
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ftc2
ECHO AMD NSGMiner Feathercoin Miner - FTC to P2Pool FTC
nsgminer-win64-0.9.2\nsgminer.exe --neoscrypt -g 1 -w 128 -I 16 -o stratum+tcp://46.4.0.101:19327 -O %FTC_WALLET_ADDRESS%:%WORKER_PASSWORD%
if %ERRORLEVEL% NEQ 0 goto exit
pause
::
:: Musicoin Miners
::

:mus1
ECHO AMD and NVIDIA Claymore - Musiccoin to miningpoolhub Pool Only
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool stratum+tcp://us-east.ethash-hub.miningpoolhub.com:20585 -ewal %MINER_WEBLOGIN%.%MINER_NAME% -epsw x -esm 2 -allcoins 1 -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:mus2
ECHO AMD and NVIDIA Claymore - Musiccoin to miningpoolhub Pool and Siacoin to Nanopool
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool stratum+tcp://us-east.ethash-hub.miningpoolhub.com:20585 -ewal %MINER_WEBLOGIN%.%MINER_NAME% -epsw x -esm 2 -allcoins 1 -allpools 1 -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:mus3
ECHO AMD and NVIDIA Claymore - Musiccoin to miningpoolhub Pool and Decred to Suprnova.cc Pool
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool stratum+tcp://us-east.ethash-hub.miningpoolhub.com:20585 -ewal %MINER_WEBLOGIN%.%MINER_NAME% -epsw x -esm 2 -allcoins 1 -allpools 1 -dpool stratum+tcp://dcr.suprnova.cc:3252 -dwal %MINER_WEBLOGIN%.%MINER_NAME% -dpsw x -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:mus4
ECHO AMD and NVIDIA Claymore - Musiccoin to miningpoolhub Pool and LBRY to Coinmine.pl
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool stratum+tcp://us-east.ethash-hub.miningpoolhub.com:20585 -ewal %MINER_WEBLOGIN%.%MINER_NAME% -epsw x -esm 2 -allcoins 1 -allpools 1 -dpool stratum+tcp://lbc-us.coinmine.pl:8787 -dwal %LBRY_WALLET_ADDRESS%.%MINER_NAME% -dpsw x -dcoin lbc
if %ERRORLEVEL% NEQ 0 goto exit
pause

:mus5
ECHO AMD and NVIDIA Claymore - Musiccoin to miningpoolhub Pool and PASC to Nanopool
Claymore_Dual_Ethereum_v10\EthDcrMiner64.exe -epool stratum+tcp://us-east.ethash-hub.miningpoolhub.com:20585 -ewal %MINER_WEBLOGIN%.%MINER_NAME% -epsw x -esm 2 -allcoins 1 -allpools 1 -dpool stratum+tcp://pasc-us-east1.nanopool.org:15555 -dwal %PASCAL_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -dcoin pasc -ftime 10 -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Signatum Miners
::

:sig1
ECHO CCMiner 2.2 Skunk NVIDIA Only - Signatum to Supernova.cc Pool
ccminer-2.2-skunk\ccminer-x64 -a skunk -o stratum+tcp://sigt.suprnova.cc:7106 -u %MINER_WEBLOGIN%.%MINER_NAME% -p x --cpu-priority=3
if %ERRORLEVEL% NEQ 0 goto exit
pause

:sig2
ECHO SGMiner Skunk Edition - AMD Only - Signatum to Supernova.cc Pool
sig-miner\sgminer.exe -k skunkhash -o stratum+tcp://sigt.suprnova.cc:7106 -u %MINER_WEBLOGIN%.%MINER_NAME% -p x -I 21
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Zclassic Miners
::
:zcl1
ECHO ZClassic Claymore - Zclassic to miningpoolhub - AMD Only
Claymore_ZCash_AMD_GPU_Miner_v12.6\ZecMiner64.exe -zpool ssl://us-east.equihash-hub.miningpoolhub.com:20575 -zwal %MINER_WEBLOGIN%.%MINER_NAME% -zpsw x -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:zcl2
ECHO ZClassic Silentarmy CUDA CPU - Zclassic to miningpoolhub - nVidia CPU Only
Windows_x64_nheqminer-5c\nheqminer.exe -cd 0 -t 4 -l us-east1.zclassic.miningpoolhub.com:20575 -u %MINER_WEBLOGIN%.%MINER_NAME% -p x
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: DASH Miners
::
:dsh1
ECHO Dash SGMiner x11 - Dash to miningpoolhub - AMD Only
sgminer-all-5.3.1\sgminer.exe --no-retry -k darkcoin-mod -o stratum+tcp://hub.miningpoolhub.com:12007 -u %MINER_WEBLOGIN%.%MINER_NAME% -p x
if %ERRORLEVEL% NEQ 0 goto exit
pause

:dsh2
ECHO Dash CCMiner x11 - Dash to miningpoolhub - nVidia Only
ccminer-x64-2.2.1\ccminer-x64.exe -r 0 -a x11 -o stratum+tcp://hub.miningpoolhub.com:12007 -u %MINER_WEBLOGIN%.%MINER_NAME% -p x
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Litecoin Miner
::

:ltc1
ECHO Litecoin CGMiner Scrypt 3.7.2 Legacy to F2Pool - AMD Only
cgminer-3.7.2\cgminer.exe --scrypt -o stratum+tcp://stratum.f2pool.com:8888 -u %MINER_WEBLOGIN%.%MINER_NAME% -p x --worksize 256 --thread-concurrency 8192 --intensity 13

::
:: ZENCoin Miners
::
:zen1
ECHO ZENCoin Claymore - ZENCoin to Suprnova.cc - AMD Only
Claymore_ZCash_AMD_GPU_Miner_v12.6\ZecMiner64.exe -zpool stratum+tcp://zen.suprnova.cc:3618 -zwal %MINER_WEBLOGIN%.%MINER_NAME% -zpsw x -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:zen2
ECHO ZENCoin Silentarmy CUDA CPU - ZENCOIN to Suprnova.cc - nVidia CPU Only
Windows_x64_nheqminer-5c\nheqminer.exe -l zen.suprnova.cc:3618 -u %MINER_WEBLOGIN%.%MINER_NAME% -p x -t 4 
if %ERRORLEVEL% NEQ 0 goto exit
pause


:exit
ECHO Error while running miner
pause

:EOF
