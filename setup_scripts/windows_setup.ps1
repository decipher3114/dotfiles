
$wingetPkgs = 
    "Google.Chrome",
    "Microsoft.VisualStudioCode",
    "Git.Git",
    "TechPowerUp.NVCleanstall",
    "Google.QuickShare",
    "M2Team.NanaZip.Preview",
    "Klocman.BulkCrapUninstaller",
    "Microsoft.PowerToys",
    "Starship.Starship",
    "Microsoft.Sysinternals.Autoruns",
    "Google.PlatformTools"


$storePkgs = 
    "9MZ1SNWT0N5D", # Powershell
    "9NTSNMSVCB5L", # Screenbox
    "9P8LTPGCBZXD", # Wintoys
    "9N1X3Z50BLM8"  # Visum Photo Viewer

winget install $wingetPkgs -s winget --accept-source-agreements --accept-package-agreements
winget install $storePkgs -s msstore --accept-source-agreements --accept-package-agreements
