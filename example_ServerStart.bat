@echo off

call settings.bat

:start_server
echo Starting Discord Bot...
SET server_dir=%CD%
cd "{Is-The-Server-Online project file location}"
START /B "" pipenv run main.py
echo Starting SevTech Ages Server...
cd %server_dir%
java -server -Xms%MIN_RAM% -Xmx%MAX_RAM% %JAVA_PARAMETERS% -jar %SERVER_JAR% nogui
pause
exit
#The command prompt has to be closed manually after closing the server

goto start_server