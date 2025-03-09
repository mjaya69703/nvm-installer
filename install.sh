#!/bin/bash

echo "=== NVM & Node.js Installer ==="
echo "1. Install latest LTS version"
echo "2. Install specific version"
echo "3. Exit"
read -p "Choose an option (1-3): " choice

install_nvm() {
    echo "Installing NVM..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
    
    # Load NVM
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
}

case $choice in
    1)
        install_nvm
        echo "Installing latest LTS version of Node.js..."
        nvm install --lts
        nvm use --lts
        ;;
    2)
        install_nvm
        echo "Available Node.js versions:"
        echo "LTS Versions:"
        nvm ls-remote --lts | grep "Latest LTS" | tail -n 5
        echo -e "\nStable Versions:"
        nvm ls-remote | grep "Latest" | tail -n 5
        echo -e "\nNote: You can install any specific version number"
        read -p "Enter Node.js version (e.g., 16, 18, 20, 22): " version
        
        # Check if the version exists
        if ! nvm ls-remote | grep -q "v$version"; then
            echo "Error: Node.js version $version not found!"
            echo "Please choose an available version."
            exit 1
        fi
        
        echo "Installing Node.js version $version..."
        nvm install $version
        nvm use $version
        ;;
    3)
        echo "Exiting installer..."
        exit 0
        ;;
    *)
        echo "Invalid option. Please choose 1-3."
        exit 1
        ;;
esac

echo "Installation completed!"
echo "Current Node.js version:"
node -v

echo -e "\nTo start using NVM and Node.js in current session, please run:"
echo "source ~/.bashrc"



