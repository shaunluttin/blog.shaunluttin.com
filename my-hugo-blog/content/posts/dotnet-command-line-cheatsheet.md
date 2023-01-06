---
title: ".NET Command Line Cheatsheet"
date: 2023-01-06
draft: false
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