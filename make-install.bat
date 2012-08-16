@echo off
call mvn package
if NOT "%TOMCAT_HOME%" == "" (
 xcopy target\devloader-ex-3.3.jar %TOMCAT_HOME%\lib\ /Y /F
) else (
 echo Can't copy because TOMCAT_HOME not defined.
)
