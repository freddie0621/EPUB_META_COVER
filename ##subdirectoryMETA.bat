@echo on
for /R  %%I in (*.epub) do ebook-meta "%%I"  --to-opf "%%~pI%%~nI.txt" 

pause