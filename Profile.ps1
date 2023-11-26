function runExit { exit }

function upOne { cd .. }
function upTwo { cd ..\.. }
function upThree { cd ..\..\.. }
function upFour { cd ..\..\..\... }

function lsShort { ls }
function lsLong { ls }

$env:PATH += ";C:\go\bin\"
$env:PATH += ";C:\.dotnet\tools\"

Set-Alias q runExit
Set-Alias g git
Set-Alias vsc code

Set-Alias l lsShort

Set-Alias e lsShort
Set-Alias ee lsLong
Set-Alias u cd
Set-Alias uu upOne
Set-Alias uuu upTwo
Set-Alias uuuu upThree
Set-Alias uuuuu upFour

git lfs install
