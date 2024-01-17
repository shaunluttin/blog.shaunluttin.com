---
title: ".NET Command Line Cheatsheet"
date: 2023-01-06
draft: true
---

This presents an opinionated cheatsheet about how to use .NET from the command line.

# .NET Core

```shell
dotnet build
dotnet test
dotnet test --logger "console;verbosity=normal" --no-build
dotnet test --filter PartialTestName
```

# .NET Framework (Legacy)

```shell
dotnet msbuild
dotnet vstest
```

# Extras

Format new files with cshariper.

```powershell
git diff develop --name-only --diff-filter=A -- *.cs `
| ForEach-Object { $files = @() } { $files += $_ } { dotnet csharpier $files }
```