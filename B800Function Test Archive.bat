set "source=\\192.168.37.109\b800\TM-N042\FunctionTest\Archive"
set "targetRoot=\\192.168.37.109\b800\TM-N042\FunctionTest\Archive"
for %%F in ("%source%\*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C\%%A\%%B" mkdir "%targetRoot%\%%C\%%A\%%B"
    move "%%~fF" "%targetRoot%\%%C\%%A\%%B"
  )
)
set "source=C\\192.168.37.109\b800\TM-N082\FunctionTest\Archive"
set "targetRoot=\\192.168.37.109\b800\TM-N082\FunctionTest\Archive"
for %%F in ("%source%\*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C\%%A\%%B" mkdir "%targetRoot%\%%C\%%A\%%B"
    move "%%~fF" "%targetRoot%\%%C\%%A\%%B"
  )
)
set "source=\\192.168.37.109\b800\TM-N083\FunctionTest\Archive"
set "targetRoot=\\192.168.37.109\b800\TM-N083\FunctionTest\Archive"
for %%F in ("%source%\*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C\%%A\%%B" mkdir "%targetRoot%\%%C\%%A\%%B"
    move "%%~fF" "%targetRoot%\%%C\%%A\%%B"
  )
)
set "source=\\192.168.37.109\b800\TM-N084\FunctionTest\Archive"
set "targetRoot=\\192.168.37.109\b800\TM-N084\FunctionTest\Archive"
for %%F in ("%source%\*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C\%%A\%%B" mkdir "%targetRoot%\%%C\%%A\%%B"
    move "%%~fF" "%targetRoot%\%%C\%%A\%%B"
  )
)
set "source=\\192.168.37.109\b800\TM-N085\FunctionTest\Archive"
set "targetRoot=\\192.168.37.109\b800\TM-N085\FunctionTest\Archive"
for %%F in ("%source%\*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C\%%A\%%B" mkdir "%targetRoot%\%%C\%%A\%%B"
    move "%%~fF" "%targetRoot%\%%C\%%A\%%B"
  )
)
set "source=\\192.168.37.109\b800\TM-N086\FunctionTest\Archive"
set "targetRoot=\\192.168.37.109\b800\TM-N086\FunctionTest\Archive"
for %%F in ("%source%\*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C\%%A\%%B" mkdir "%targetRoot%\%%C\%%A\%%B"
    move "%%~fF" "%targetRoot%\%%C\%%A\%%B"
  )
)
set "source=\\192.168.37.109\b800\TM-N087\FunctionTest\Archive"
set "targetRoot=\\192.168.37.109\b800\TM-N087\FunctionTest\Archive"
for %%F in ("%source%\*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C\%%A\%%B" mkdir "%targetRoot%\%%C\%%A\%%B"
    move "%%~fF" "%targetRoot%\%%C\%%A\%%B"
  )
)
set "source=\\192.168.37.109\b800\TM-N094\FunctionTest\Archive"
set "targetRoot=\\192.168.37.109\b800\TM-N094\FunctionTest\Archive"
for %%F in ("%source%\*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C\%%A\%%B" mkdir "%targetRoot%\%%C\%%A\%%B"
    move "%%~fF" "%targetRoot%\%%C\%%A\%%B"
  )
)
set "source=\\192.168.37.109\b800\TM-N095\FunctionTest\Archive"
set "targetRoot=\\192.168.37.109\b800\TM-N095\FunctionTest\Archive"
for %%F in ("%source%\*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C\%%A\%%B" mkdir "%targetRoot%\%%C\%%A\%%B"
    move "%%~fF" "%targetRoot%\%%C\%%A\%%B"
  )
)
pause