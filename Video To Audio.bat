@echo off
cd /d "%~dp0"
mkdir "Audio"

echo Starting audio extraction...

for %%F in ("*.mp4" "*.mkv" "*.avi" "*.mov" "*.wmv") do (
    echo Processing "%%F"...
    ffmpeg -i "%%F" -vn -acodec copy "Audio\%%~nF.aac" || echo Failed to process "%%F"
)

echo Audio extraction completed.
pause
