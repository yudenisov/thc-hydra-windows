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
DefaultDirName="C:\Program Files\Hydra"
MinVersion=0,6.0.6001sp1
SetupLogging=yes
UsePreviousAppDir=yes
DisableStartupPrompt=yes
Output=yes
OutputDir=d:\Download
OutputBaseFilename=Hydra-Installer
AlwaysShowGroupOnReadyPage=True
AlwaysShowDirOnReadyPage=True
ChangesEnvironment=True
SolidCompression=True

[Files]
Source: "*.dll"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.exe"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.md"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.html"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "LICENSE"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace

[Registry]

Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; Flags: deletevalue noerror uninsdeletevalue; ValueType: string; ValueName: "HYDRA"; ValueData: "{app}"

