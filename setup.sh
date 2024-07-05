#!/bin/bash

# Update System
sudo apt-get update -y

# Install dnsutils
sudo apt-get install dnsutils -y

# Install dorks_hunter
git clone https://github.com/six2dez/dorks_hunter.git

# Function to install a tool if it's not already installed
install_tool() {
  tool_name=$1
  install_command=$2
  success_message=$3

  if ! command -v "$tool_name" -h &> /dev/null; then
    echo "Installing $tool_name now..."
    eval "$install_command" &> /dev/null
    echo "$success_message"
  else
    echo "$tool_name is already installed"
  fi
}

# Install dnsrecon
install_tool "dnsrecon" "pip3 install dnsrecon" "dnsrecon has been installed"

# Install emailharvester
install_tool "emailharvester" "pip3 install emailharvester" "emailharvester has been installed"

# Install whois
install_tool "whois" "sudo apt install whois -y" "whois has been installed"

# Install asnmap
install_tool "asnmap" "go install github.com/projectdiscovery/asnmap/cmd/asnmap@latest" "asnmap has been installed"

# Install WhatWeb
install_tool "whatweb" "pip3 install whatweb" "whatweb has been installed"

# Install subfinder
install_tool "subfinder" "go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest" "subfinder has been installed"

# Install assetfinder
install_tool "assetfinder" "go install -v github.com/tomnomnom/assetfinder@latest" "assetfinder has been installed"

# Install amass
install_tool "amass" "go install -v github.com/owasp-amass/amass/v4/...@master" "amass has been installed"

# Install naabu
install_tool "naabu" "go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest" "naabu has been installed"

# Install gitdorks-go
install_tool "gitdorks-go" "go install github.com/damit5/gitdorks_go@latest" "gitdorks-go has been installed"

# Install waybackurls
install_tool "waybackurls" "go install github.com/tomnomnom/waybackurls@latest" "waybackurls has been installed"

# Install httpx
install_tool "httpx" "pip3 install httpx" "httpx has been installed"

# Install arjun
install_tool "arjun" "pip3 install arjun" "arjun has been installed"

# Install paramspider
install_tool "paramspider" "pip3 install paramspider" "paramspider has been installed"

# Install nuclei
install_tool "nuclei" "go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest" "nuclei has been installed"

# Install subzy
install_tool "subzy" "go install -v github.com/LukaSikic/subzy@latest" "subzy has been installed"

# Install corscanner
install_tool "corscanner" "pip3 install corscanner" "corscanner has been installed"

# Install crlfuzz
install_tool "crlfuzz" "go install github.com/dwisiswant0/crlfuzz/cmd/crlfuzz@latest" "crlfuzz has been installed"

# Install dirsearch
install_tool "dirsearch" "pip3 install dirsearch" "dirsearch has been installed"

# Install subjs
install_tool "subjs" "go install github.com/lc/subjs@latest" "subjs has been installed"
