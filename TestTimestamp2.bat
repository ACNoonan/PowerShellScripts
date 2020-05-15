@echo off
REM [Set source variable/file path]
set "source=C:\Users\adamnoonan\Documents\Documents\Tests\"
REM [Set outPut variable/file path]
set "sourceOut=C:\Users\adamnoonan\Documents\Documents\TestsOut\"
REM [For every file in source folder, do ...]
FOR %%F IN ("%source%\*") DO (
	REM [For each segment of file's last editted dateTime do ...] 
	FOR /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") DO (
		REM [If folder for each day doesn't exist, make a folder and move source files into sourceOut folder]
		IF NOT EXIST "%sourceOut%\%%C\%%A\%%B" MKDIR "%sourceOut%\%%C\%%A\%%B"
		MOVE "%%~fF" "%sourceOut%\%%C\%%A\%%B"
	)
)