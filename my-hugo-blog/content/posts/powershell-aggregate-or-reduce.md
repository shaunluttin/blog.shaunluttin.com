---
title: "Reduce and/or aggregate in PowerShell"
date: 2023-01-05
draft: false
---

PowerShell's built-in `ForEach-Object` provides a reduce/aggregate routine.

In short-form it looks like this to sum a range of numbers.

```powershell
@(1, 2, 3) | ForEach-Object { $sum = 0; } { $sum += $_; } { $sum; }
```

If we break it out with comments, we can see three blocks.

```powershell
@(1, 2, 3, 4, 5) | ForEach-Object {
    # Begin. Here we set up the accumulator.
    $sum = 0;
} {
    # Process. Here we _mutate_ the accumulator.
    $sum += $_;
} {
    # End. Here we leave the accumulator on the pipeline (aka return it).
    $sum;
}
```

We can use this in creative ways. In the following example, we get changed C# files 
from `git`, reduce them into an array, and format them with the `csharpier` tool.

```powershell
git diff develop --diff-filter=A --name-only -- *.cs
| ForEach-Object {
    $files = @();
} {
    $files += $_
} {
    dotnet csharpier $files
}
```