# Minetty Installation Guide

This guide will walk you through the installation process for using Minetty, both for standard use and for contributing to the project.

## 1. First Time Setup

To set up Minetty on your machine for standard use, you can follow these simple steps.

### Step 1: Clone the Repository

Start by cloning the repository to your local machine:

```bash
git clone https://github.com/ruteru/minetty.git
cd minetty && pwd
```

### Step 2: Add the CLI to your PATH

To run the `minetty` command from any location, you need to add the CLI to your **PATH**.

1. Open your shell configuration file (e.g., `.bashrc`, `.zshrc`, or the configuration file of your shell).
2. Add the following line at the end of the file:

   ```bash
   export PATH="$PATH:/path/to/minetty/cli"
   ```

   Replace `/path/to/minetty` with the absolute path where the `minetty` repository is located.

3. Save the changes and reload the shell configuration with the command:

   ```bash
   source ~/.bashrc  # For Bash users
   source ~/.zshrc   # For Zsh users
   ```

### Step 3: Initialize Minetty

Once you've set up the PATH, you can initialize the CLI by running:

```bash
minetty init
```

This command will:

- Grant execute permissions (`chmod +x`) to all files in the `./scripts/` directory.
- Check for and install the required dependencies, including Podman, Ansible, Kubernetes, Helm, and k0s.
- Display a success message indicating you're ready to start using Minetty.

## 2. Contributing to Minetty

If you're contributing to the project, the setup process includes a few additional steps to install developer dependencies.

### Step 1: Clone the Repository

As with the standard setup, you'll need to clone the repository:

```bash
git clone https://github.com/ruteru/minetty.git
cd minetty && pwd
```

### Step 2: Add the CLI to your PATH

Follow the same instructions as outlined in the First Time Setup to add Minetty to your **PATH**.

### Step 3: Initialize the Development Environment

To set up Minetty for development, run the following command:

```bash
minetty init --dev
```

This will perform all the steps included in the standard setup, plus execute the `./scripts/setup.sh` script to ensure all developer dependencies are installed.

## 3. Common Commands

- `minetty init`: Standard initialization for users.
- `minetty init --dev`: Initialization for developers, including additional dependencies and the setup script.

## 4. Need Help?

If you encounter any issues during installation, feel free to open an issue in the repository or reach out via the discussion forums.

---

Thank you for using and contributing to Minetty!
