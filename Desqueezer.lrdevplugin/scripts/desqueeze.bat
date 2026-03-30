setlocal ENABLEDELAYEDEXPANSION

:: Set logs directory
set logout="%appdata%\Adobe\Lightroom\Modules\Desqueezer.lrdevplugin\scripts\output.txt"

:: Set variables
set squeezeFactor=%1
set axis="%2"
:: I dunno, but shift /2 somehow doesn't work
SHIFT
SHIFT

echo ----------NEW RUN--------- > %logout%
echo allargs=%* >> %logout%

if %axis% == "Horizontal" set scale="%squeezeFactor% 1" 
if %axis% == "Vertical" set scale="1 %squeezeFactor%"
echo squeezeFactor=%squeezeFactor% >> %logout%
echo axis=%axis% >> %logout%
echo scale=%scale% >> %logout%

:: command under (line 23) do what shift in linux do. But windows is DUMB, so had to workaround it
set "_args=%*" 
for %%f in (%_args%) do (
	IF EXIST %%f (
		echo '----| file=%%f' >> %logout%
		exiftool -DefaultScale=%scale% -overwrite_original %%f >> %logout%
	)
	set "_args=!_args:*%1 =!"
)
