# Workspace Profile Switcher

[![CI](https://github.com/mindmorass/shell-profile-manager/actions/workflows/ci.yml/badge.svg)](https://github.com/mindmorass/shell-profile-manager/actions/workflows/ci.yml)
[![Release](https://github.com/mindmorass/shell-profile-manager/actions/workflows/release.yml/badge.svg)](https://github.com/mindmorass/shell-profile-manager/actions/workflows/release.yml)
[![Go Report Card](https://goreportcard.com/badge/github.com/mindmorass/shell-profile-manager)](https://goreportcard.com/report/github.com/mindmorass/shell-profile-manager)

A terminal shell switcher using direnv to manage workspace-specific environment variables and tool configurations.

## Overview

This system allows you to maintain separate profiles for different workspaces, each with their own:

- Environment variables
- Git configuration
- Tool configurations
- Shell settings

When you navigate into a workspace directory, direnv automatically loads the profile's environment variables, including custom paths to dotfiles like `.gitconfig`.

## Directory Structure

```
workspace-profiles/
├── README.md
├── profiles/
│   ├── personal/
│   │   ├── .envrc
│   │   └── dotfiles/
│   │       └── .gitconfig
│   ├── work/
│   │   ├── .envrc
│   │   └── dotfiles/
│   │       └── .gitconfig
│   └── client-acme/
│       ├── .envrc
│       └── dotfiles/
│           └── .gitconfig
└── docs/
    └── examples/
        ├── .envrc.example
        └── .gitconfig.example
```

## Prerequisites

1. **Install direnv**:

   ```bash
   # macOS
   brew install direnv

   # Linux (Ubuntu/Debian)
   sudo apt install direnv
   ```

2. **Hook direnv into your shell**:

   Add to `~/.bashrc` or `~/.bash_profile`:

   ```bash
   eval "$(direnv hook bash)"
   ```

   Or for `~/.zshrc`:

   ```bash
   eval "$(direnv hook zsh)"
   ```

3. **Reload your shell**:
   ```bash
   source ~/.bashrc  # or ~/.zshrc
   ```

## Quick Start

1. **Create a new workspace profile**:

   ```bash
   profile create my-project
   ```

2. **Navigate to your workspace**:

   ```bash
   cd profiles/my-project
   ```

3. **Allow direnv** (first time only):

   ```bash
   direnv allow
   ```

4. **Verify the profile is loaded**:
   ```bash
   echo $WORKSPACE_PROFILE
   echo $WORKSPACE_HOME
   ```

## How It Works

### Environment Variables

When you enter a workspace directory, direnv loads the `.envrc` file, which sets:

- **`WORKSPACE_PROFILE`**: Name of the current profile (e.g., "personal", "work")
- **`WORKSPACE_HOME`**: Absolute path to the workspace directory
- **`GIT_CONFIG_GLOBAL`**: Path to profile-specific `.gitconfig`
- Additional custom variables as needed

### Git Configuration

Each profile has its own `.gitconfig` file. When the profile is active, git uses this custom configuration via the `GIT_CONFIG_GLOBAL` environment variable.

This allows you to have different:

- User names and emails
- GPG signing keys
- Aliases and core settings
- Remote URLs and credentials

### Tool Integration

The same pattern can be extended to other tools:

- **SSH**: `GIT_SSH_COMMAND` for custom SSH keys
- **AWS**: `AWS_PROFILE` for different AWS credentials
- **Node**: `NPM_CONFIG_USERCONFIG` for npm settings
- **Python**: `PYTHONPATH` for custom module paths

## Creating a New Profile

### Manual Method

1. Create profile directory:

   ```bash
   mkdir -p profiles/my-profile/dotfiles
   ```

2. Create `.envrc`:

   ```bash
   cat > profiles/my-profile/.envrc << 'EOF'
   # Set workspace identification
   export WORKSPACE_PROFILE="my-profile"
   export WORKSPACE_HOME="$(pwd)"

   # Git configuration
   export GIT_CONFIG_GLOBAL="$WORKSPACE_HOME/dotfiles/.gitconfig"

   # Add custom bin directory to PATH
   PATH_add bin

   # Custom environment variables
   export MY_CUSTOM_VAR="value"
   EOF
   ```

3. Create `.gitconfig`:

   ```bash
   cat > profiles/my-profile/dotfiles/.gitconfig << 'EOF'
   [user]
       name = Your Name
       email = your.email@example.com

   [core]
       editor = vim

   [init]
       defaultBranch = main
   EOF
   ```

4. Allow direnv:
   ```bash
   cd profiles/my-profile
   direnv allow
   ```

### Using the Helper Script

```bash
profile create my-profile
cd profiles/my-profile
# Edit dotfiles/.gitconfig as needed
direnv allow
```

## Usage Examples

### Switching Between Work and Personal Projects

```bash
# Work on personal project
cd ~/workspaces/build/profiles/personal
# Git now uses personal email: personal@example.com

# Switch to work project
cd ~/workspaces/build/profiles/work
# Git now uses work email: work@company.com
```

### Verifying Active Profile

```bash
# Check which profile is active
echo "Profile: $WORKSPACE_PROFILE"
echo "Home: $WORKSPACE_HOME"

# Verify git configuration
git config user.email
git config user.name
```

### Multiple Client Workspaces

Create separate profiles for different clients, each with their own git configuration, SSH keys, and credentials:

```bash
profile create client-acme
profile create client-globex
profile create client-initech
```

## Advanced Configuration

### Custom direnv Functions

Create `~/.config/direnv/direnvrc` to add reusable functions:

```bash
# Load a profile by name
use_workspace_profile() {
    local profile_name=$1
    export WORKSPACE_PROFILE="$profile_name"
    export WORKSPACE_HOME="$(pwd)"
    export GIT_CONFIG_GLOBAL="$WORKSPACE_HOME/dotfiles/.gitconfig"
}

# Load AWS profile
use_aws_profile() {
    export AWS_PROFILE=$1
}

# Load SSH key
use_ssh_key() {
    export GIT_SSH_COMMAND="ssh -i $WORKSPACE_HOME/dotfiles/id_rsa"
}
```

Then in your `.envrc`:

```bash
use_workspace_profile "client-acme"
use_aws_profile "acme-dev"
use_ssh_key
```

### Nested Workspaces

You can nest `.envrc` files. Child directories inherit parent environment variables and can override them:

```
profiles/work/
├── .envrc                    # Work profile base
└── projects/
    ├── project-a/
    │   └── .envrc           # Inherits work, adds project-specific vars
    └── project-b/
        └── .envrc           # Inherits work, adds project-specific vars
```

### Security Considerations

1. **Never commit `.envrc` files with secrets** - use `.env` files that are gitignored
2. **Review `.envrc` files before allowing** - direnv shows you what will be executed
3. **Use `.envrc.example`** - commit templates, not actual configurations
4. **Revoke access when needed**: `direnv deny`

## Troubleshooting

### direnv not loading

- Check if hook is added to shell config: `type direnv`
- Verify `.envrc` is allowed: `direnv status`
- Re-allow: `direnv allow .`

### Git still using global config

- Check environment variable: `echo $GIT_CONFIG_GLOBAL`
- Verify file exists: `ls -la $GIT_CONFIG_GLOBAL`
- Test git config: `git config --show-origin user.email`

### Environment variables not persisting

- direnv only affects the current shell session
- Child processes inherit the environment
- Opening a new terminal requires re-entering the directory

## References

- [direnv Documentation](https://direnv.net/)
- [Git Environment Variables](https://git-scm.com/docs/git-config#ENVIRONMENT)
- [direnv Stdlib](https://direnv.net/man/direnv-stdlib.1.html)
