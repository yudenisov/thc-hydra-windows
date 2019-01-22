; -- Hydra-Installer.iss --
;
; This script Create Installator and deinstallator of the
; Exponenta Styler plugin -- Hydra

[Setup]
AppName=Hydra Exponenta Plugin
AppVersion=8.7_dev
AllowRootDirectory=yes
AllowCancelDuringInstall=yes
ArchitecturesAllowed=x86 x64
Compression=lzma2/max
DefaultDirName={%HYDRA|"C:\Program Files\Hydra"}
MinVersion=6.0.6001
SetupLogging=yes
UsePreviousAppDir=yes
DisableStartupPrompt=yes
Output=yes
OutputDir=d:\Download
OutputBaseFilename=Hydra-Installer

[Files]
Source: "*.dll"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.exe"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace

[Registry]

Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; Flags: deletevalue noerror uninsdeletevalue; ValueType: string; ValueName: "HYDRA"; ValueData: "{app}"

