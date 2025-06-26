
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

winget install $wingetPkgs -s winget --accept-source-agreements --accept-package-agreements --interactive
