@echo off

cd C:\Users\rosemx\Documents\homework\homework

echo Last commit :  
git log | head -n 5

choice /C YN /M "New commit ?"

IF errorlevel 2 goto exit
IF errorlevel 1 goto commit


:commit
SET commitMessage=
SET /p commitMessage=\tType a message for the new commit : 
::echo message : %commitMessage%
git commit -a -m "%commitMessage%"
SLEEP 1

choice /C YN /M "Push commit ?"

IF errorlevel 2 goto exit
IF errorlevel 1 goto push

:push
git push origin master
goto exit

:exit
SLEEP 5
exit