@echo on
::for /R  %%I in (*.epub) do ebook-meta "%%I" --get-cover "%%~fI.jpg" 
for /R  %%I in (*.epub) do ebook-meta "%%I" --get-cover "%%~pI%%~nI.jpg" 
::for /R  %%I in (*.epub) do echo   %%~pI%%~nI.jpg
::pause
