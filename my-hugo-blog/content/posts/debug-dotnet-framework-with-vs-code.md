---
title: "Debug legacy .NET Framework with VS Code"
date: 2022-12-16
draft: false
---

Build your app with a portable Program Database (PDB) output.

```powershell
msbuild `
  /property:Configuration=Debug `
  /property:Platform=x64 `
  /property:DebugType=portable `
  /t:Clean,Build `
  /p:DeployOnBuild=true `
  /p:WebPublishMethod=Package `
  /p:PackageAsSingleFile=false `
  C:\dev\MyApp
```

In VSCode, Create ./.vscode/launch.config with this content.
```
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": ".NET Attach",
      "type": "clr",
      "request": "attach",
      "processId": "${command:pickProcess}"
    }
  ]
}
```

In VSCode, use <CTRL> + <SHIFT> + <P> to enter the command palette and choose Start Debugging. Then attach to iisexpress.exe for your particular app.