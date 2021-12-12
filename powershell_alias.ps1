
$project_dir = 'C:\Projects'

# Create Projets dir
if (!(Test-Path $project_dir))
{
    mkdir $project_dir
} else {
    Write-Host "Projects dirctory exists"
}

# Create alias
$add_alias_cmd =  @"

function gotop { set-location $project_dir }
new-alias cdp gotop

Set-Location $project_dir
"@


if (!(Test-Path $profile))
{
   New-Item -path $profile -type "file" -value $add_alias_cmd 
   Write-Host "Created new file and text content added"
}
else
{
  Add-Content -path $profile -value $add_alias_cmd
  Write-Host "File already exists and new text content added"
}

notepad $profile