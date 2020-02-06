@echo off
:: this turns off the revurb
:: that you get when you open CMD
:: I will rewrite this in bash
:: for fellow linux users :)
:pull
:: begin to function "pull"
git pull
echo Pulled succesfully,
echo You should see the changes!
:: call function "pull"
goto pull


:: end pullFromVer.bat