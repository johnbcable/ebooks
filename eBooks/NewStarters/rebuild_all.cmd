@echo off
echo.
echo Rebuilding EPUB, MOBI and PDF from book.html
echo.
echo EPUB ...

.\build_epub.cmd > lastrebuild.txt
echo Done
echo MOBI ...
.\build_mobi.cmd  >> lastrebuild.txt
echo Done
echo PDF ...
.\build_pdf.cmd >> lastrebuild.txt

echo Done
echo.
echo Check lastrebuild.txt for detailed log
echo.



