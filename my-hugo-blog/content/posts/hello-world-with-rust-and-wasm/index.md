---
title: "Helping a Friend Do Hello World with Rust and WASM"
date: 2024-02-08
draft: false
---

A friend of mine and I spent about five hours building this into Hugo. Here is [Jamin's version][1]. You can find the source code on [GitHub here][0].

Incredibly, we embedded WASM running from Rust into this Hugo blog post. The most difficult part involved shoe-horning the WASM into Hugo.

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

[0]: https://github.com/shaunluttin/blog.shaunluttin.com/tree/trunk/my-hugo-blog/content/posts/hello-world-with-rust-and-wasm
[1]: https://jhuntley.github.io/posts/game_of_life/
