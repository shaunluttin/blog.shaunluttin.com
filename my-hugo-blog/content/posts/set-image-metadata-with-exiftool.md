---
title: "Set image metadata with exiftool"
date: 2023-01-05
draft: false
---

Install it from here https://exiftool.org/

Find available tag names here https://exiftool.org/TagNames/index.html

The following example sets the `IPTC:Keywords` attribute.

```shell
exiftool(-k).exe .\turtles-climbing-hills.png -IPTC:Keywords="Absurd"
```