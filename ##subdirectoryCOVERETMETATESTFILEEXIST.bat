@echo on
::for /R  %%I in (*.epub) do ebook-meta "%%I" --get-cover "%%~fI.jpg" 
for /R  %%I in (*.epub) do (
IF EXIST %%~pI%%~nI.jpg (
    echo "EXIST"
) ELSE (
   ebook-meta "%%I" --get-cover "%%~pI%%~nI.jpg" 
)
)

::for /R  %%I in (*.epub) do ebook-meta "%%I"  --to-opf "%%~pI%%~nI.txt" 




for /R  %%I in (*.epub) do (
IF EXIST %%~pI%%~nI.txt (
    echo "EXIST"
) ELSE (
   ebook-meta "%%I"  --to-opf "%%~pI%%~nI.txt" 
)
)
::for /R  %%I in (*.epub) do echo   %%~pI%%~nI.jpg
::pause
pause