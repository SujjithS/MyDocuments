@echo off
cd C:\Program Files\PuTTY\
start plink.exe -batch -ssh root@10.115.171.153 -pw Rat1onal (git clone git@github01.hclpnp.com:commerce-dev/commerce-docker-compose.git)
timeout /t 30
pause