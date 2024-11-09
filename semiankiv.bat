echo off
echo Maksym Semiankiv
pause

cd ..
mkdir Practice0
pause

cd Practice0
mkdir Test
cd TEST

echo Creating the file about.me
set MyName=Maksym Semiankiv
echo %MyName%
set Education=Lugansk National University
echo %Education%
echo [Your Name and Surname] %MyName% >> about.me
echo [University name] %Education% >> about.me
pause

echo Transfering file about.me to the directory Practice0
move about.me ../about.me
pause

echo Setting Read.only 
cd ..
attrib +R about.me
echo OK
pause

echo Pulling the information from the about.me file
type about.me
pause

echo Copy the file about.me to the TEST directory
copy about.me TEST/about.me
cd TEST
ren about.me about_.me
cd ..
echo Adding the third line Year
set Year=2013
echo %Year%
cd ..
echo [Graduation year] %Year% >> about.me
pause

echo File comparisons
fc about.me TEST/about_.me
pause
