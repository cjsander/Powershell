$source = "C:\Program Files (x86)\Jenkins\workspace\testbitbucket\HelloConfluence\bin\Debug"
$projectname = "sample_msbuild_mstest"
$destination = "C:\Source\Artifacts"
$backupdir = $destination +"\Backup-"+$projectname+ (Get-Date -format yyyy-MM-dd)+"-"+(Get-Random -Maximum 100000) + ".zip"
Add-Type -assembly "system.io.compression.filesystem"
[io.compression.zipfile]::CreateFromDirectory($source, $backupdir)