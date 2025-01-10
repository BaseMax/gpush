# gpush

A cross-platform Git helper script to streamline adding, committing, and pushing changes. Works on Linux, macOS, and Windows (via WSL or Git Bash).

> gpush is a simple, cross-platform Git helper script designed to streamline the process of staging, committing, and pushing changes to a Git repository. It supports Linux, macOS, and Windows (via Bash or Command Prompt), allowing developers to save time with a single command.

## Features

- Simplifies the `git add`, `git commit`, and `git push` process.
- Allows specifying a custom commit message.
- Defaults to "Update" if no message is provided.

## Requirements

- Git must be installed on your system.
- For Windows users:
  - Use Git Bash or WSL for best compatibility if you want to use `gpush.sh`.
  - Use `gpush.bat` script for Windows

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/BaseMax/gpush.git
   cd gpush
   ```

2. Make the script executable:
  
    ```bash
    chmod +x gpush.sh
    ```

3. Add the script to your PATH for global usage:

Linux/MacOS: Add the following line to your `.bashrc` or `.zshrc`:

```bash
alias gpush='/path/to/gpush.sh'
```

**Windows (Git Bash): Add an alias to your `.bash_profile`:**

```bash
alias gpush='/path/to/gpush.sh'
```

**Reload your terminal or run:**

```bash
source ~/.bashrc  # Or ~/.zshrc for Zsh users
```

## Usage

**Run the script with a custom commit message:**

```bash
gpush "Your custom commit message"
```

**Run the script without a message to use the default:**

```bash
gpush
```

**View help information:**

```bash
gpush -h
```

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

© 2052 Max Base
