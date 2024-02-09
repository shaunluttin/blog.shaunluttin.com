# -----------
# Rust Stuff
# -----------

# Build the Rust project.
# cargo watch -i .gitignore -i "pkg/*" -s "wasm-pack build"
wasm-pack build

# -----------
# Node Stuff
# -----------

# This prevents node from complaining about SSL crypto stuff.
$env:NODE_OPTIONS = "--openssl-legacy-provider"

# Open the browser automatically.
Start-Process "http://localhost:8080/";

# This starts the project in the www/ directory.
npm run start --prefix .\www\
