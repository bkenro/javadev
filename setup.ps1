$shell = New-Object -ComObject WScript.Shell
$curdir = Convert-Path .
$sysdir = [Environment]::GetFolderPath("System")

echo "@echo off" | Out-File -Encoding default .\scripts\java_cmd.bat
echo "set CLASSPATH=" | Out-File -Append -Encoding default .\scripts\java_cmd.bat
echo "set DEV_HOME=$curdir" | Out-File -Append -Encoding default .\scripts\java_cmd.bat
echo "set JAVA_HOME=%DEV_HOME%\jdk" | Out-File -Append -Encoding default .\scripts\java_cmd.bat
echo "set CATALINA_HOME=%DEV_HOME%\tomcat" | Out-File -Append -Encoding default .\scripts\java_cmd.bat
echo "set GIT_HOME=%DEV_HOME%\PortableGit" | Out-File -Append -Encoding default .\scripts\java_cmd.bat
echo "set MARIADB_HOME=%DEV_HOME%\mariadb" | Out-File -Append -Encoding default .\scripts\java_cmd.bat
echo "set MVN_HOME=%DEV_HOME%\maven" | Out-File -Append -Encoding default .\scripts\java_cmd.bat
echo "set LANG=ja_JP.utf-8" | Out-File -Append -Encoding default .\scripts\java_cmd.bat
echo "set LC_ALL=ja_JP.utf-8" | Out-File -Append -Encoding default .\scripts\java_cmd.bat
echo "set path=%DEV_HOME%\scripts;%MVN_HOME%\bin;%JAVA_HOME%\bin;%GIT_HOME%\bin;%CATALINA_HOME%\bin;%MARIADB_HOME%\bin;%path%" | Out-File -Append -Encoding default .\scripts\java_cmd.bat
echo "set HOME=%DEV_HOME%" | Out-File -Append -Encoding default .\scripts\java_cmd.bat
echo "cd %DEV_HOME%\pleiades\workspace" | Out-File -Append -Encoding default .\scripts\java_cmd.bat

$lnk = $shell.CreateShortcut("$curdir\java_cmd.lnk")
$lnk.TargetPath = "$sysdir\cmd.exe"
$lnk.Arguments = "/k $curdir\scripts\java_cmd.bat"
$lnk.Save()

$lnk = $shell.CreateShortcut("$curdir\eclipse.lnk")
$lnk.TargetPath = "$curdir\pleiades\eclipse\eclipse.exe"
$lnk.WorkingDirectory = "$curdir\pleiades\eclipse"
$lnk.Save()
