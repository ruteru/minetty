# Contributing to Minetty

Thank you for your interest in contributing to Minetty! We appreciate your help and are excited to have you as part of our community. Please follow the guidelines below to make the contribution process smooth and effective.

## How to Contribute

### Reporting Issues
If you encounter a bug or have a feature request, please follow these steps:
1. **Check for existing issues**: Before creating a new issue, check  [github issues](https://github.com/ruteru/minetty/issues) to see if it has already been reported.
2. **Open a new issue**: Provide a detailed description including:
   - Steps to reproduce the issue
   - Expected behavior
   - Actual behavior
   - Screenshots or logs, if applicable

### Submitting Pull Requests
To contribute code, follow these steps:
1. **Fork the repository**: Create a personal copy of the repository on GitHub.
2. **Clone your fork**: Clone the repository to your local machine.
   ```bash
   git clone https://github.com/ruteru/minetty.git
   ```
3. **Create a branch**: Create a new branch for your changes.
   ```bash
   git checkout -b feature/your-feature-name
   ```
4. **Make your changes**: Implement your changes. Ensure that you test your changes locally.

5. **Commit your changes**: Follow our [commit message guidelines](#commit-message-guidelines) for writing clear and concise commit messages.
   ```bash
   git add .
   git commit -m "feat: add new feature or fix bug"
   ```
6. **Push your branch**: Push your changes to your forked repository.
   ```bash
   git push origin feature/your-feature-name
   ```
7. **Create a pull request**: Open a pull request from your branch to `main` on our repository. Provide a description of your changes and any additional context.

### Code of Conduct
Please adhere to our [Code of Conduct](link-to-code-of-conduct) when interacting with the community and contributing.

## Review Process
- **Review**: Your pull request will be reviewed by a maintainer. We will check for code quality, adherence to guidelines, and relevance to the project.
- **Testing**: Ensure all changes pass existing tests and add new tests if applicable.

## Code Style and Guidelines

### Shell Scripts (Bash)
- Follow best practices for shell scripting, including proper error handling and clear comments.
- Use consistent indentation and formatting.

### YAML and JSON Manifests
- Ensure YAML and JSON files are properly formatted and adhere to schema requirements.
- Use a linter to validate YAML and JSON files.

### Commit Message Guidelines
Use the following format for commit messages:
```
<type>: <short description>

<body>
```
- **Type**: Use one of the following types:
  - `feat`: A new feature
  - `fix`: A bug fix
  - `docs`: Documentation changes
  - `style`: Code style changes (formatting, missing semicolons, etc.)
  - `refactor`: Refactoring code (changes that neither fix a bug nor add a feature)
  - `test`: Adding or correcting tests
  - `chore`: Other changes (e.g., build process, auxiliary tools)
- **Short description**: Brief summary of the changes (50 characters or less).
- **Body**: Detailed explanation of the changes (optional but recommended).

Example:
```
feat: add support for new configuration options

- Added new options to the config file to support additional features.
- Updated documentation to reflect these changes.
```

## Setting Up Your Development Environment
1. **Install Dependencies**: Use the provided setup scripts to install necessary dependencies.
   ```bash
   ./scripts/setup.sh
   ```
2. **Configure Your Environment**: Follow the instructions in [SETUP.md](link-to-setup-guide).

## Additional Resources
- [Documentation](link-to-documentation)
- [Community Forum](link-to-forum)
- [Chat Channel](link-to-chat)

Thank you for your contributions!
