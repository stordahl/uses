#!/usr/local/bin/bash

echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "We're brewin! ๐งช โ homebrew installed! โจ"

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Oh my! zsh is installed! โจ"

brew install git node gh ohmyzsh pure
echo "git installed! โจ"
echo "Node.js & npm installed! โจ"
echo "Github CLI installed! โจ"

npm i -g pnpm
echo "pnpm installed! ๐"

brew install --cask visual-studio-code
echo "VSCode installed! ๐ป"

brew install --cask raycast
echo "Raycast installed! ๐"

brew install --cask obsidian
echo "Obsidian installed! ๐"

brew install --cask discord
echo "Discord installed! ๐ค"

brew install --cask clickup
echo "ClickUp installed! โ"

brew install --cask slack
echo "Slack installed! ๐"

read -p "Would you like to install Javascript Tooling? (y/n)" JSBOOL

case "$JSBOOL" in
  [yY] | [yY][eE][sS])  
    # JS Tooling Global installs Here!!! Add more if you'd like!
    echo "Installing TypeScript"
    npm install -g typescript
    echo "TypeScript installed! โจ"
    
    echo "Installing Netlify"
    npm install -g netlify-cli
    echo "Netlify installed! โจ"

    echo "Installing Sanity"
    npm install -g @sanity/cli
    echo "Sanity installed! โจ"
    # END OF JS Tooling
    break;;

  [nN] | [nN][oO])
    echo "Skipping JS Tooling"
    exit;;
  * )     
    echo "Please enter Y/y/YES/yes or N/n/NO/no";;
esac
  
echo "All done! ๐ฅณ" 
