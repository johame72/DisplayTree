# DisplayTree.ps1
`DisplayTree.ps1` is a PowerShell script that generates a tree-like view of a directory's structure, both displaying it in the terminal and saving it to a text file. The output text file is uniquely named with an ISO Date-Time prefix for easy identification.

---

# 🌳 DisplayTree PowerShell Script

## 📖 Overview

The `DisplayTree.ps1` is a PowerShell script designed to display a tree-like 🌳 directory structure of a given directory. It is especially tailored for projects and can be run from any location 📍. The script displays both directories 📂 and files 📄, and also writes this structure to a text file 📝 with a unique ISO Date-Time 🕒 prefix. It includes an exception to show the `node_modules` directory 📦 without diving into its internal structure.

## 🛠 Prerequisites

- 🪟 Windows 11 or compatible Windows version
- 🖥 PowerShell 5.1 or higher

## ✨ Features

- 🌳 Displays a tree-like structure of directories and files
- 📝 Outputs the structure to a uniquely named text file with an ISO Date-Time 🕒 prefix
- 🌐 Can be run from any directory
- 📦 Special handling for `node_modules` directory to prevent excessive nesting

## 🚀 How to Use

### 🏁 Initial Setup

1. 💾 Save `DisplayTree.ps1` in a directory of your choice.
2. (Optional) 🛠 Add the directory to your system's PATH or create a PowerShell alias for easy access.

### 🏃‍♂️ Running the Script

1. 💻 Open PowerShell terminal.
2. 📂 Navigate to the directory you wish to scan.
3. 🎬 Run `.\DisplayTree.ps1` or use the alias if you set one up.

The script will display the directory structure in the terminal and save it to a text file 📝 in the current directory.

---
