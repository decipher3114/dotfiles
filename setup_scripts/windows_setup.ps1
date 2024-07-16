
$wingetPkgs = 
    "Google.Chrome",
    "Microsoft.VisualStudioCode",
    "Git.Git",
    "TechPowerUp.NVCleanstall",
    "Google.QuickShare",
    "M2Team.NanaZip.Preview",
    "Klocman.BulkCrapUninstaller"

$storePkgs = 
    "9MZ1SNWT0N5D", # Powershell
    "9NTSNMSVCB5L", # Screenbox
    "9P8LTPGCBZXD", # Wintoys
    "9N1X3Z50BLM8",  # Visum Photo Viewer
    "XP89DCGQ3K6VLD" # Powertoys

$buckets = 
    "extras",
    "sysinternals"

$scoopPkgs =
    "macchina",
    "adb",
    "autoruns",
    "starship"

winget install $wingetPkgs -s winget --accept-source-agreements --accept-package-agreements
winget install $storePkgs -s msstore --accept-source-agreements --accept-package-agreements

if (!(Get-Command scoop -errorAction SilentlyContinue)) {
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
    Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
}

$addedBuckets = (scoop bucket list).Name
foreach ($bucket in $buckets) {
    if (-Not($addedBuckets -Contains $bucket)) {
        scoop bucket add $bucket
    }
}

foreach ($package in $scoopPkgs) {
    if (-Not(Get-Command $package -errorAction SilentlyContinue)) {
        scoop install $package
    }
}
