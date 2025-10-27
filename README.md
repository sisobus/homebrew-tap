# sisobus Homebrew Tap

Custom Homebrew formulas for tools developed by @sisobus.

## Installation

```bash
brew tap sisobus/tap
```

## Available Formulas

### cchistory

Interactive CLI tool to browse Claude Code conversation history.

```bash
# Install
brew install cchistory

# Or install with tap prefix
brew install sisobus/tap/cchistory
```

After installation, run:
```bash
cchistory  # Launch the interactive viewer
```

Features:
- Browse all Claude Code projects
- View conversations with timestamps (newest first)
- Pagination support for large lists
- No external dependencies

For more information, see [claude-code-conversation-history repository](https://github.com/sisobus/claude-code-conversation-history).

### gh-switch

Switch between multiple GitHub accounts instantly.

```bash
# Install
brew install gh-switch

# Or install with tap prefix
brew install sisobus/tap/gh-switch
```

After installation, run:
```bash
ghs setup  # Set up your GitHub accounts
```

For more information, see [gh-switch repository](https://github.com/sisobus/gh-switch).

## License

MIT