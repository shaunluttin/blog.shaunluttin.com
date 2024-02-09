---
title: "Helping a Friend Do Hello World with Rust and WASM"
date: 2024-02-08
draft: false
---

Incredibly, the following runs with WASM.

It uses three files:

```
0.wasm-game-of-life.js
b5c3cfdbd4523a4f1959.module.wasm
wasm-game-of-life.js <--- Previously known as bootstrap.js
```

We build those in a separate apps/ directory and copy them over.

We then load `wasm-game-of-life.js` through a Hugo shortcode:

```
<script type="text/javascript" src="{{.Get "src"}}"></script>
<pre id="game-of-life-canvas"></pre>
```

For details see https://rustwasm.github.io/docs/book/game-of-life/hello-world.html

{{< game-of-life-display src="./wasm-game-of-life.js" >}}

The above renders Conways Game of Life.
