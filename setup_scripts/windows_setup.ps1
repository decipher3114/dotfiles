
$wingetPkgs = 
    "Google.Chrome",
    "Microsoft.VisualStudioCode",
    "Git.Git",
    "M2Team.NanaZip.Preview",
    "Klocman.BulkCrapUninstaller",
    "Starship.Starship",
    "glzr-io.glazewm",
    "RamenSoftware.Windhawk",
    "Flow-Launcher.Flow-Launcher",
    "Microsoft.Sysinternals.Autoruns",
    "Google.PlatformTools",
    "clsid2.mpc-hc"

$storePkgs = 
    "9MZ1SNWT0N5D", # Powershell
    "9P8LTPGCBZXD", # Wintoys
    "9N1X3Z50BLM8"  # Visum Photo Viewer

winget install $wingetPkgs -s winget --accept-source-agreements --accept-package-agreements --interactive
winget install $storePkgs -s msstore --accept-source-agreements --accept-package-agreements --interactive
