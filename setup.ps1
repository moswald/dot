foreach ($s in (gci dot.*.ps1))
{
    $name = $s.Name.Split('.')[1]
    Write-Host $name --> -Fore Cyan
    . $s
    Write-Host "<-- $name" -Fore Cyan
    Write-Host ""
}
