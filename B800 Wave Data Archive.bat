set "source=\\192.168.37.109\b800\TM-N042\WaveData\Archive"
set "targetRoot=\\192.168.37.109\b800\TM-N042\WaveData\Archive"
for %%F in ("%source%\*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C\%%A\%%B" mkdir "%targetRoot%\%%C\%%A\%%B"
    move "%%~fF" "%targetRoot%\%%C\%%A\%%B"
  )
)
set "source=C\\192.168.37.109\b800\TM-N082\WaveData\Archive"
set "targetRoot=\\192.168.37.109\b800\TM-N082\WaveData\Archive"
for %%F in ("%source%\*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C\%%A\%%B" mkdir "%targetRoot%\%%C\%%A\%%B"
    move "%%~fF" "%targetRoot%\%%C\%%A\%%B"
  )
)
set "source=\\192.168.37.109\b800\TM-N083\WaveData\Archive"
set "targetRoot=\\192.168.37.109\b800\TM-N083\WaveData\Archive"
for %%F in ("%source%\*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C\%%A\%%B" mkdir "%targetRoot%\%%C\%%A\%%B"
    move "%%~fF" "%targetRoot%\%%C\%%A\%%B"
  )
)
set "source=\\192.168.37.109\b800\TM-N084\WaveData\Archive"
set "targetRoot=\\192.168.37.109\b800\TM-N084\WaveData\Archive"
for %%F in ("%source%\*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C\%%A\%%B" mkdir "%targetRoot%\%%C\%%A\%%B"
    move "%%~fF" "%targetRoot%\%%C\%%A\%%B"
  )
)
set "source=\\192.168.37.109\b800\TM-N085\WaveData\Archive"
set "targetRoot=\\192.168.37.109\b800\TM-N085\WaveData\Archive"
for %%F in ("%source%\*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C\%%A\%%B" mkdir "%targetRoot%\%%C\%%A\%%B"
    move "%%~fF" "%targetRoot%\%%C\%%A\%%B"
  )
)
set "source=\\192.168.37.109\b800\TM-N086\WaveData\Archive"
set "targetRoot=\\192.168.37.109\b800\TM-N086\WaveData\Archive"
for %%F in ("%source%\*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C\%%A\%%B" mkdir "%targetRoot%\%%C\%%A\%%B"
    move "%%~fF" "%targetRoot%\%%C\%%A\%%B"
  )
)
set "source=\\192.168.37.109\b800\TM-N087\WaveData\Archive"
set "targetRoot=\\192.168.37.109\b800\TM-N087\WaveData\Archive"
for %%F in ("%source%\*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C\%%A\%%B" mkdir "%targetRoot%\%%C\%%A\%%B"
    move "%%~fF" "%targetRoot%\%%C\%%A\%%B"
  )
)
set "source=\\192.168.37.109\b800\TM-N094\WaveData\Archive"
set "targetRoot=\\192.168.37.109\b800\TM-N094\WaveData\Archive"
for %%F in ("%source%\*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C\%%A\%%B" mkdir "%targetRoot%\%%C\%%A\%%B"
    move "%%~fF" "%targetRoot%\%%C\%%A\%%B"
  )
)
set "source=\\192.168.37.109\b800\TM-N095\WaveData\Archive"
set "targetRoot=\\192.168.37.109\b800\TM-N095\WaveData\Archive"
for %%F in ("%source%\*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C\%%A\%%B" mkdir "%targetRoot%\%%C\%%A\%%B"
    move "%%~fF" "%targetRoot%\%%C\%%A\%%B"
  )
)
pause