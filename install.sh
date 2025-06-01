#!/bin/bash

clear
echo -e "\e[1;31m
███████╗ █████╗ ████████╗██╗  ██╗ █████╗ ███╗  ██╗██╗ ██████╗
╚════██║██╔══██╗╚══██╔══╝██║  ██║██╔══██╗████╗ ██║██║██╔════╝
 █████╔╝██║  ██║   ██║   ███████║███████║██╔██╗██║██║██║     
██╔═══╝ ██║  ██║   ██║   ██╔══██║██╔══██║██║╚████║██║██║     
███████╗╚█████╔╝   ██║   ██║  ██║██║  ██║██║ ╚███║██║╚██████╗
╚══════╝ ╚════╝    ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚══╝╚═╝ ╚═════╝
         📦 𝐒𝐀𝐓𝐇𝐀𝐍𝐈𝐂 𝐁𝐀𝐒𝐈𝐂 𝐏𝐀𝐂𝐊𝐀𝐆𝐄 📦
\e[0m"

echo -e "\e[1;36m
---------------------------------------
🔒 Developed By   : Lucifer-X (SATHANIC HACKERS)
📦 Tool Name      : SATHANIC BASIC PACKAGE 📦
⚠️  Use ethically & responsibly!
---------------------------------------
\e[0m"
echo -e "\e[1;33m
[1] Install Basic Termux Packages
[2] Clone Top Hacking Tools
[3] Exit
\e[0m"
read -p "[✔] Enter your choice (1/2/3): " choice

if [ $choice -eq 1 ]; then
    echo -e "\n\e[1;32m[✔] Installing basic Termux packages...\e[0m"
    pkg update -y && pkg upgrade -y
    pkg install -y python git curl wget nano toilet figlet
elif [ $choice -eq 2 ]; then
    echo -e "\n\e[1;34m[✔] Cloning useful tools from GitHub...\e[0m"

    TOOLS=(
      "https://github.com/sqlmapproject/sqlmap"
      "https://github.com/htr-tech/zphisher"
      "https://github.com/Manisso/fsociety"
      "https://github.com/thewhiteh4t/seeker"
      "https://github.com/laramies/metagoofil"
      "https://github.com/DarkSecDevelopers/HiddenEye"
      "https://github.com/Rajkumrdusad/IP-Tracer"
      "https://github.com/adi1090x/termux-style"
      "https://github.com/noob-hackers/infect"
      "https://github.com/sundowndev/hacker-roadmap"
    )

    mkdir -p tools

    COUNT=1
    for url in "${TOOLS[@]}"; do
      echo -e "\n[${COUNT}/10] Cloning: $url"
      cd tools
      git clone $url
      cd ..
      ((COUNT++))
    done

    echo -e "\n\e[1;32m[✔] All tools installed in 'tools' folder.\e[0m"
    echo -e "\e[1;33m[⚠] Use these tools responsibly for ethical purposes only.\e[0m"
elif [ $choice -eq 3 ]; then
    echo -e "\n\e[1;31m[✘] Exiting...\e[0m"
    exit
else
    echo -e "\n\e[1;31m[✘] Invalid choice!\e[0m"
fi
