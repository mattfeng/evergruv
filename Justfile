# cSpell: ignore npx vsce

set shell := ["bash", "-euo", "pipefail", "-c"]

extension_file := "evergruv.vsix"

default: build

generate:
  ./generate.sh light
  ./generate.sh dark

build: generate
  npx --yes @vscode/vsce package --no-dependencies --out {{extension_file}}
