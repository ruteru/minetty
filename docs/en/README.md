# Minetty

Minetty is a platform designed to facilitate hands-on learning of essential tools and concepts in SRE and DevOps. Through a combination of exercises, real-world examples, and interactive guides, Minetty helps you develop key skills in system administration, automation, containers, orchestration, and debugging modern infrastructures.

## Installing the CLI

Follow the steps below to install and use the Minetty CLI.

### 1. Clone the Repository

First, clone the repository to your local machine:

```bash
git clone https://github.com/ruteru/minetty.git
cd minetty && pwd
```

### 2. Add the CLI to the PATH

To run `minetty` from anywhere in your terminal, you need to add it to your **PATH**.

1. Open your shell configuration file (e.g., `.bashrc`, `.zshrc`, or your shell configuration file).
2. Add the following line to the end of the file:

```bash
export PATH="$PATH:/path/to/minetty"
```

Replace `/path/to/minetty` with the absolute path of the directory where the `minetty` file is located.
3. Save your changes and reload the shell configuration:

```bash
source ~/.bashrc # If you're using Bash
source ~/.zshrc # If you're using Zsh
```

You can now run the `minetty` command from any directory.

### 3. Initializing the CLI

To start the CLI and set up your environment, run the following command:

```bash
minetty init
```

This command will perform the following actions:

- It will grant execute permissions (`chmod +x`) to all files in the `./scripts/` directory.
- It will check and install the necessary dependencies (Podman, Ansible, Kubernetes, Helm, k0s).
- It will display a success message indicating that you can start using the CLI.

### Available Commands

- `minetty init`: Initializes the environment, grants permissions to scripts, and checks/installs dependencies.
- `minetty learn <course>`: (To be implemented) Used to start a specific course.

### 4. Customization

You can customize the CLI to suit your needs. All scripts used by the CLI are located in the `./scripts/` directory. Make sure to check out those files and adapt them as needed.

## Contributions

If you want to contribute to the project, you can do so via **pull requests** or by opening **issues** to report problems.

1. Fork the project.
2. Create a branch for your contribution: `git checkout -b feature/new-feature`.
3. Commit your changes: `git commit -m 'Add new feature'`.
4. Push the changes to your fork: `git push origin feature/new-feature`.
5. Create a pull request from your fork.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---

Thanks for using Minetty!