# Day 2: Environment Setup for Linux Compatibility

## Overview
macOS is based on BSD, which differs from the GNU/Linux utilities used on most servers. To ensure compatibility for this DevOps training, I installed GNU versions of standard command-line tools.

## Installation Steps
1. **Homebrew**: Installed as the primary package manager for macOS.
2. **Bash**: Updated to the latest version to replace the older default macOS version.
3. **GNU Coreutils**: Installed to provide the standard Linux versions of core commands (ls, cp, mv, etc.).

### Commands Used:
```bash
# Install tools
brew install bash coreutils

# Verify versions
bash --version
gls --version # GNU ls is prefixed with 'g' by default