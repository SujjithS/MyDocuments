@echo off
cd C:\Program Files\PuTTY\
set /p id="Do you want to copy trace log or just view it[save/view]: "
if %id%==save (goto saveloop) else (goto viewloop) 
:saveloop
plink.exe -batch -ssh root@10.115.171.153 -pw Rat1onal (docker cp bvt_txn_1:/opt/WebSphere/AppServer/profiles/default/logs/container/ts_auth_txn/trace.log ./)
exit

:viewloop
start /max plink.exe -batch -ssh root@10.115.171.153 -pw Rat1onal (cd commerce-docker-compose/bvt; docker exec -i bvt_txn_1 tail -500f /opt/WebSphere/AppServer/profiles/default/logs/container/ts_auth_txn/trace.log)
pause
