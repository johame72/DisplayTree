# DisplayTree.ps1
`DisplayTree.ps1` is a PowerShell script that generates a tree-like view of a directory's structure, displaying it in the terminal and saving it to a text file. The output text file is uniquely named with an ISO Date-Time prefix for easy identification.
Example: `20231015T091656_DisplayTree.ps1`

---

# DisplayTree.ps1
`DisplayTree.ps1` is a PowerShell script that generates a tree-like view of a directory's structure, displaying it in the terminal and saving it to a text file. The output text file is uniquely named with an ISO Date-Time prefix for easy identification.  
Example: `20231015T091656_Display_Tree.ps1`

## 📑 Index / Contents

- [📖 Overview](#-overview)
- [🛠 Prerequisites](#-prerequisites)
- [✨ Features](#-features)
- [🚀 How to Use](#-how-to-use)
  - [🏁 Initial Setup](#-initial-setup)
  - [🏃‍♂️ Running the Script](#-running-the-script)
- [👩‍💻 Options for Accessibility](#-options-for-accessibility)
  - [🛠 Option 1: Add Script Directory to the PATH](#-option-1-add-script-directory-to-the-path)
  - [🛠 Option 2: Create a PowerShell Alias](#-option-2-create-a-powershell-alias)
  - [🛠 Option 3: Use a Fully Qualified Path](#-option-3-use-a-fully-qualified-path)

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

👩‍💻 To be able to call `DisplayTree.ps1` from any directory, you have several options:

### 🛠 Option 1: Add Script Directory to the PATH

1. **📁 Move Script**: Move `DisplayTree.ps1` to a directory that is easy to remember and access. For example, you could create a `Scripts` folder in your user directory or on your `C:\` drive.

2. **🌐 Add to PATH**: Add that directory to your system's `PATH` environment variable.

3. **🔄 Open a New PowerShell Session**: After this, you can call `DisplayTree.ps1` from any directory.

   - ❗ Note: Incorrectly modifying the `PATH` variable can lead to issues. Make sure you know what you're doing before modifying it.

### 🛠 Option 2: Create a PowerShell Alias

1. **📝 Open Your PowerShell Profile**: Enter `notepad $PROFILE` in a PowerShell window. This will open your PowerShell profile in Notepad. If the profile doesn't exist, you'll be prompted to create one.

2. **👍 Add Alias**: Add the following line to your PowerShell profile, replacing `C:\path\to\DisplayTree.ps1` with the full path to your script:

   ```powershell
   Set-Alias displaytree "C:\path\to\DisplayTree.ps1"
   ```
3. **💾 Save and Close Notepad**: Save the changes and close Notepad.

4. **🔄 Reload Profile or Restart PowerShell**: For the changes to take effect, either reload your profile with `. $PROFILE` or close and reopen PowerShell.

After doing this, you should be able to use the command `displaytree` in PowerShell, no matter your current directory, to run your `DisplayTree.ps1` script.

### 🛠 Option 3: Use a Fully Qualified Path

- 📍 This doesn't allow you to run it from "anywhere," but you can always run the script using its fully qualified path:
  
  ```powershell
  & "C:\path\to\DisplayTree.ps1"
  ```
  
Any of these methods will allow you to execute the script from any directory. Choose the one that best suits your needs 🌟.

---

[ChatGPT Link](https://chat.openai.com/share/b9f6a7b7-ccad-4b69-8430-60370836b561)

---

