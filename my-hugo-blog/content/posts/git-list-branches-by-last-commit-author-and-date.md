---
title: "List git branches with the date and author of the last commit"
date: 2023-07-24
draft: false
---

```powershell
git branch --all --sort=creatordate --sort=committername `
  --format "%(align:20) %(creatordate:short) %(end) %(align:25) %(committername) %(end) %(refname:lstrip=-1)"
```

See also: https://www.bigfont.ca/list-git-branches-with-the-name-of-the-last-committer