setlocal ENABLEDELAYEDEXPANSION

set logout="C:\Users\rsar\AppData\Roaming\Adobe\Lightroom\Modules\Desqueezer.lrdevplugin\scripts\output.txt"

set squeezeFactor=%1
set axis="%2"
SHIFT
SHIFT
echo ----------NEW RUN--------- > %logout%
echo allargs=%* >> %logout%

if %axis% == "Horizontal" set scale="%squeezeFactor% 1" 
if %axis% == "Vertical" set scale="1 %squeezeFactor%"
echo squeezeFactor=%squeezeFactor% >> %logout%
echo axis=%axis% >> %logout%
echo scale=%scale% >> %logout%

set "_args=%*" 
for %%f in (%_args%) do (
	IF EXIST %%f (
		echo '----| file=%%f' >> %logout%
		exiftool -DefaultScale=%scale% -overwrite_original %%f >> %logout%
	)
	set "_args=!_args:*%1 =!"
)