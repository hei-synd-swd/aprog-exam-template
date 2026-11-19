set windows-shell := ["powershell.exe", "-NoLogo", "-NoProfile", "-Command"]

# list all commands
@default:
  just --list

# run exercise N (only builds exN.rs), e.g. `just run 3`
[private]
run n:
  cargo run --bin ex{{n}}
