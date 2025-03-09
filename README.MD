# NVM & Node.js Installer Script

A simple bash script to help you install NVM (Node Version Manager) and Node.js on your system.

## Features

- Easy-to-use interactive menu
- Option to install latest LTS version of Node.js
- Option to install specific Node.js version with version checking
- Displays available LTS and Stable versions before installation
- Error handling for invalid version numbers

## Prerequisites

- Unix-like operating system (Linux, macOS)
- `curl` installed on your system
- Bash shell

## Installation & Usage

1. Clone or download this repository
2. Make the script executable:
   ```bash
   chmod +x install.sh
   ```
3. Run the script:
   ```bash
   ./install.sh
   ```

## Menu Options

1. **Install latest LTS version**
   - Automatically installs the latest Long Term Support version of Node.js

2. **Install specific version**
   - Shows available LTS and Stable versions
   - Allows you to choose a specific Node.js version
   - Validates version before installation

3. **Exit**
   - Exits the installer

## Error Handling

The script includes error handling for:
- Invalid menu selections
- Non-existent Node.js versions
- NVM installation issues

## After Installation

After successful installation, you can verify your Node.js installation by running:
```bash
node -v

# To list installed Node.js versions:
nvm ls

# To install a specific version:
nvm install <version>

# To use a specific version:
nvm use <version>

# To uninstall a specific version:
nvm uninstall <version>

# To list all versions:
nvm ls-remote
```

## License

This script is released under the MIT License. Feel free to modify and distribute it.

