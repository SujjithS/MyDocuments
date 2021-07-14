@echo off
cd C:\Program Files\PuTTY\
set loopcount=5
:loop
REM echo "Iteration: %loopcount%"
plink.exe -batch -ssh root@10.115.171.153 -pw Rat1onal (cd commerce-docker-compose/bvt; docker ps -a; docker images)
echo/
echo *************************************************************************
REM set /a loopcount=loopcount-1
if %loopcount%==0 goto exitloop
goto loop
:exitloop
pause

