# Homebrew Tap for CLX

Intelligent command validation and context persistence for [Claude Code](https://github.com/blackaxgit/clx).

## Installation

```bash
brew tap blackaxgit/clx
brew install clx
```

This installs three binaries:
- `clx` — CLI and dashboard
- `clx-hook` — Claude Code hook handler
- `clx-mcp` — MCP server for context tools

## Updating

```bash
brew update
brew upgrade clx
```

## Troubleshooting

```bash
# Reinstall from scratch
brew uninstall clx
brew install clx

# Check formula info
brew info clx
```

## License

MPL-2.0
