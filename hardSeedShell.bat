@echo off
color A
rem 设置Class选项
set class1=caoliu_west_reposted
set class2=caoliu_cartoon_reposted
set class3=caoliu_asia_mosaicked_reposted
set class4=caoliu_asia_non_mosaicked_reposted
set class5=caoliu_west_original
set class6=caoliu_cartoon_original
set class7=caoliu_asia_mosaicked_original
set class8=caoliu_asia_non_mosaicked_original
set class9=caoliu_selfie
set class10=aicheng_west
set class11=aicheng_cartoon
set class12=aicheng_asia_mosaicked 
set class13=aicheng_asia_non_mosaicked 
echo -------可执行的类(具体含义看类名)------------
echo 1.  %class1% 
echo 2.  %class2%
echo 3.  %class3%
echo 4.  %class4%
echo 5.  %class5%
echo 6.  %class6%
echo 7.  %class7%
echo 8.  %class8%
echo 9.  %class9%
echo 10. %class10%
echo 11. %class11%
echo 12. %class12%
echo 13. %class13%
echo ------------------------------------------------
echo choose ac_class number:
set /p num=
set classname=class%num%
call set avclass=%%%classname%%%
set avclassParam=--av-class %avclass%
echo.
echo.
echo.


rem  并发线程
echo --------------------并发数----------------------
echo set concurrent tasks num(并发数):
set /p concurrent=
set threadParam=--concurrent-tasks %concurrent%
echo ------------------------------------------------
echo.
echo.
echo.

rem  download-picture-timeout
echo -------------------图片下载时限-----------------
echo -------------------默认16s----------------------
echo set timeout:
set /p pictimeout=
set timeoutParam=--timeout-download-picture %pictimeout%
echo ------------------------------------------------


rem  主题设置
echo -------------------主题下载---------------------
echo --------------default topics range 1 to 64------
set /p topicrange=
set topicParam=--topics-range %topicrange%
echo ------------------------------------------------

rem  下载地址
echo -------------------下载设置---------------------
echo ----------------defalut  c:\--------------------
set /p savepath=
set savepathParam=--saveas-path %savepath%
echo ------------------------------------------------

rem  hate 
echo -------------------讨厌的主题-------------------
set /p hatetopic=
set hatetopicParam=--hate %hatetopic%
echo ------------------------------------------------

rem  like 
echo -------------------喜欢的主题-------------------
set /p liketopic=
set liketopicParam=--like %liketopic%
echo ------------------------------------------------

rem  设置代理
echo -------------------设置代理---------------------
set /p proxy=
set proxyParam=--proxy http://%proxy%
echo ------------------------------------------------

cls
%cd%\bin\hardseed.exe  %savepathParam% %threadParam% %topicParam% %avclassParam% %timeoutParam% %hateParam% %likeParam% %proxyParam%
pause
