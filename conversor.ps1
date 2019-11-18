Function converter{
$oldfiles = Get-ChildItem | sort LastWriteTime
$i = 1

foreach ($newfile in $oldfiles)
{
if ($i -lt 10){
Rename-Item $newfile.FullName -NewName ('0000'+$i+'.tif')
$i++
}
elseif ($i -ge 10 -and $i -lt 100) {
Rename-Item $newfile.FullName -NewName ('000'+$i+'.tif')
$i++
}
else{
Rename-Item $newfile.FullName -NewName ('00'+$i+'.tif')
$i++}
}
}