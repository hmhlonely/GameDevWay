$dir = Split-Path -Parent $MyInvocation.MyCommand.Definition;
Write-Output "��ǰ�ļ��У�$dir" ;
Set-Location $dir;
$dirs = Get-ChildItem -Directory -Name;
Write-Output "�ļ�������$($dirs.Count)";
foreach ($dirName in $dirs) {
    Write-Output "=============================================="
    Write-Output "����ִ��... $dirName";
    Set-Location $dirName;
    git pull;
    #git log --pretty=format:"%Cred%h %Creset%cn %Cblue%cr %Cgreen%s" --since=1.day  --no-merges
    Set-Location ..;
    if ($dirName -eq "ds-client") {
        $dy = $dirName + "/resource/dy";
        if (Test-Path -Path $dy) {
            Write-Output "==============================================";
            Write-Output "����ִ��... $dy";
            Set-Location $dy;
            git pull;
            #git log --pretty=format:"%Cred%h %Creset%cn %Cblue%cr %Cgreen%s" --since=1.day  --no-merges
            Set-Location $dir;
        }
    }
}
Write-Output "==============================================";
Write-Host "��������˳�..."
[void][System.Console]::ReadKey($true)
Exit-PSHostProcess
# write-host "�����������..."
# [void][System.Console]::ReadKey($true)