---
title: "Helping a Friend Do Hello World with Rust and WASM"
date: 2024-02-08
draft: false
---

Incredibly, the following runs with WASM.

Directory and File Structure
```
apps/
  wasm-game-of-life/  # RUST
    www/              # JavaScript
      dist/
        # Copy the JavaScript and WASM files.
        0.bootstrap.js
        b5c3cfdbd4523a4f1959.module.wasm
        bootstrap.js
        # Copy the content only of the index.html file.
        index.html

my-hugo-blog/
  layout/
    shortcodes/
      # The content of this came from index.html above.  
      game-of-life-display.html
  content/
    posts/
      game-of-life/
        index.md
        # These were copied over from dist/
        0.bootstrap.js
        b5c3cfdbd4523a4f1959.module.wasm
        bootstrap.js

```

For details see https://rustwasm.github.io/docs/book/game-of-life/hello-world.html

{{< javascript-file src="./wasm-game-of-life.js" >}}

