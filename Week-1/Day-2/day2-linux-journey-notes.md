# Linux Journey - Getting Started Notes

## What is Linux?
Linux is a powerful and widely used operating system just like Windows or macOS. But it's different that serves as the foundation for many computing environments.

- Open source operating system:  Anyone can see and modify the code
- Created by Linus Torvalds in 1991
- Free: Free to use and modify
- Powerful: Runs most of the internet's servers
- Secure: Less vulnerable to viruses
- Flexible: Can be customized completely

## The Linux Kernel
Think of Linux like a car:

Kernel = The engine (core system)
Shell = The steering wheel and dashboard (how you control it)
Applications = The features (radio, AC, etc.)

## Important Terms:

- Kernel: The core of the operating system that manages hardware and resources
- Shell: The command-line interface you type commands into
- Distribution (Distro): A version of Linux (Ubuntu, Fedora, Debian, etc.)


## Why Linux for DevOps?

- Most servers run Linux
- Cloud platforms (AWS, Azure, GCP) primarily use Linux
- Automation tools work best on Linux
- It's the industry standard


## The Shell (Terminal/Command Line)

### What is the Shell?
The shell is a program that takes your commands and tells the operating system what to do.
Common Shells:
- Bash (Bourne Again Shell) % - Most common, what you'll use
- Zsh (Z Shell) $ - Modern alternative, default on new Macs
- Fish - Beginner-friendly shell

### How to Open Terminal:
- Mac: Press Cmd + Space, type "Terminal", press Enter
- Linux (Ubuntu): Press Ctrl + Alt + T
- Windows (WSL): Search for "Ubuntu" or "WSL" in Start menu


- Standard Bash Prompt (Linux/older Mac):
    username@hostname:~$
-   Zsh Prompt (Modern Mac):
ahmed.mehmood@A006-01807 ~ %
- Root/Admin Prompt (if you use sudo su -):
    root@A006-01807 ~ #


### Command Structure
command [options] [arguments]


### Commands I Learned:
1. See your current directory (should show /Users/ahmed.mehmood)
pwd 

2. Go to Desktop
cd desktop
### Notice your prompt now shows: ahmed.mehmood@A006-01807 Desktop %

3. See full path
pwd

4. Go back to home
cd ~
### Notice prompt shows ~ again: ahmed.mehmood@A006-01807 ~ %

5. Go to root directory
cd /
### Prompt shows:  ahmed.mehmood@A006-01807 / %

6. Return home
cd ~

7. Echo Command - Print text to screen
echo "Hello World"

8. Date Command - Show current date and time
date

9. Whoami Command - Show current username
whoami