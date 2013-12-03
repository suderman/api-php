#!/bin/sh

# 2013 Jon Suderman
# https://github.com/suderman/api/

# Open a terminal and run this command:
# curl https://raw.github.com/suderman/api/master/install.sh | sh

# Ensure /usr/local/bin exists
if [ ! -d "/usr/local" ]; then
  sudo mkdir -p /usr/local/bin
  sudo chown `whoami`:admin /usr/{local,local/bin}
fi

# Download api into /usr/local/bin
curl https://raw.github.com/suderman/api/master/api -o /usr/local/bin/api

# Set permissions
chmod +x /usr/local/bin/api

echo "Installed api to /usr/local/bin"
