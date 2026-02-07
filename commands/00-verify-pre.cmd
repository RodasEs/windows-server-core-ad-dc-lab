@echo off

echo === PRE-PROMOTION VERIFICATION ===

echo [1] Identity context:
whoami

echo.

echo [2] System role + domain fields: 

systeminfo | findstr /B /C: "OS Configuration" /C:"Domain"

echo.

echo [3] Attempt DC search for lab.local (this command is expected to fail pre-promotion): 

nltest /dsgetdc:lab.local

echo.

echo === END ===