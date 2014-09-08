if (Test-Path ~/.atom/packages)
{
    Write-Warning "~/.atom/packages already exists, skipping"
}
else
{
    New-Junction ~/.atom/packages ./atom/packages
}

foreach ($f in (gci atom/*.*))
{
    $newLink = $f.Name
    $path = "~/.atom/$newLink"

    if (Test-Path $path)
    {
        Write-Warning "$path already exists, skipping"
    }
    else
    {
        ln "~/.atom/$newLink" $f
    }
}
