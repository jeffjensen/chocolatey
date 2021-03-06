﻿$ErrorActionPreference = 'Stop'

$packageName = 'plantuml'
$url         = 'http://sourceforge.net/projects/plantuml/files/plantuml.8045.jar/download'
$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$cmdPath     = join-path $env:ChocolateyInstall bin\plantuml.cmd

$params = @{
    PackageName = $packageName
    FileFullPath ="$toolspath\plantuml.jar"
    Url         = $url
    Url64Bit    = $url
}
Get-ChocolateyWebFile @params
"start java -jar ""$toolsPath\plantuml.jar"" %*" | out-file $cmdPath -Encoding ascii

Write-Host "Plantuml installed in: $toolsPath\plantuml"
