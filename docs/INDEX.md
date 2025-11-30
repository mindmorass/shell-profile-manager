# Workspace Profile Switcher - Documentation Index

Quick navigation guide to all documentation and resources.

## 🚀 Start Here

**New to the system?** Start with these in order:

1. **[GETTING-STARTED.md](docs/GETTING-STARTED.md)** ⭐

   - 5-minute quick start guide
   - Step-by-step setup instructions
   - Your first profile creation
   - Essential commands
   - **Read this first!**

2. **[INSTALL.md](docs/INSTALL.md)**

   - direnv installation instructions
   - Shell hook setup
   - Verification steps
   - Troubleshooting

3. **[QUICKSTART.md](docs/QUICKSTART.md)**
   - Quick reference guide
   - Common workflows
   - Usage examples
   - Tips and tricks

## 📚 Reference Documentation

### Complete System Documentation

**[README.md](README.md)**

- Full system overview
- Complete feature list
- Architecture details
- All configuration options
- Advanced usage patterns
- Security considerations

### Technical Overview

**[PROJECT-SUMMARY.md](docs/PROJECT-SUMMARY.md)**

- Architecture overview
- Component breakdown
- Use cases and workflows
- Technology stack
- Performance characteristics
- Future enhancements

## 📖 How-To Guides

### Profile Management

| Task                 | Command                   | Documentation                                                                |
| -------------------- | ------------------------- | ---------------------------------------------------------------------------- |
| Create profile       | `./profile create <name>` | [GETTING-STARTED.md](docs/GETTING-STARTED.md#step-4-create-your-own-profile) |
| List profiles        | `./profile list`          | [QUICKSTART.md](docs/QUICKSTART.md#listing-profiles)                         |
| Delete profile       | `./profile delete <name>` | [README.md](README.md#deleting-profiles)                                     |
| Show current profile | `./profile info`          | [GETTING-STARTED.md](docs/GETTING-STARTED.md#essential-commands)             |

### Configuration

| What to Configure     | File                  | Documentation                                                        |
| --------------------- | --------------------- | -------------------------------------------------------------------- |
| Environment variables | `.envrc`              | [README.md](README.md#envrc-file-structure)                          |
| Git settings          | `dotfiles/.gitconfig` | [QUICKSTART.md](docs/QUICKSTART.md#customizing-git-configuration)    |
| Secrets               | `.env`                | [GETTING-STARTED.md](docs/GETTING-STARTED.md#add-secrets-not-in-git) |
| Custom scripts        | `bin/`                | [README.md](README.md#custom-scripts)                                |

### Common Workflows

| Workflow          | Documentation                                                                     |
| ----------------- | --------------------------------------------------------------------------------- |
| Multiple clients  | [GETTING-STARTED.md](docs/GETTING-STARTED.md#working-on-multiple-client-projects) |
| Work vs Personal  | [GETTING-STARTED.md](docs/GETTING-STARTED.md#personal-vs-work-separation)         |
| Multi-cloud setup | [README.md](README.md#cloud-provider-configurations)                              |
| Language-specific | [README.md](README.md#language-specific-configurations)                           |

## 📁 Templates and Examples

### Configuration Templates

**[examples/.envrc.example](examples/.envrc.example)**

- Complete `.envrc` template
- All supported environment variables
- Language-specific configurations
- Cloud provider setups
- Helper functions

**[examples/.gitconfig.example](examples/.gitconfig.example)**

- Complete `.gitconfig` template
- All git settings and aliases
- GPG signing configuration
- LFS setup
- Conditional includes

### Example Profiles

Three pre-configured profiles demonstrate different use cases:

| Profile                | Purpose           | Git Identity         |
| ---------------------- | ----------------- | -------------------- |
| `profiles/personal`    | Personal projects | personal@example.com |
| `profiles/work`        | Work projects     | work@company.com     |
| `profiles/client-acme` | Client projects   | dev@acmecorp.com     |

Each contains:

- Configured `.envrc`
- Custom `.gitconfig`
- Example `.env.example`
- Profile-specific README

## 🛠️ Scripts and Tools

### Main Command

**[profile](profile)** - Main CLI entry point

```bash
./profile create <name>     # Create profile
./profile list              # List profiles
./profile delete <name>     # Delete profile
./profile info              # Show current profile
./profile status            # Show direnv status
./profile help              # Show help
```

### Command Reference

All profile management is done through the `profile` command:

| Command                    | Purpose             | Documentation                        |
| -------------------------- | ------------------- | ------------------------------------ |
| `profile create <name>`    | Create new profiles | `profile create --help`              |
| `profile list`             | List all profiles   | `profile list --help`                |
| `profile delete <name>`    | Delete profiles     | `profile delete --help`              |

## 🎯 Quick Links by Task

### I want to...

#### Get Started

- **Install the system** → [INSTALL.md](docs/INSTALL.md)
- **Create my first profile** → [GETTING-STARTED.md](docs/GETTING-STARTED.md#step-4-create-your-own-profile)
- **Try an example** → [GETTING-STARTED.md](docs/GETTING-STARTED.md#step-3-try-it-out)
- **See it in action** → [QUICKSTART.md](docs/QUICKSTART.md#quick-start)

#### Configure

- **Set up git identity** → [GETTING-STARTED.md](docs/GETTING-STARTED.md#customize-git-config)
- **Add environment variables** → [GETTING-STARTED.md](docs/GETTING-STARTED.md#add-environment-variables)
- **Add secrets** → [GETTING-STARTED.md](docs/GETTING-STARTED.md#add-secrets-not-in-git)
- **Add custom scripts** → [GETTING-STARTED.md](docs/GETTING-STARTED.md#add-custom-scripts)
- **Configure AWS** → [README.md](README.md#aws)
- **Configure Docker** → [README.md](README.md#docker)
- **Configure Kubernetes** → [README.md](README.md#kubernetes)

#### Use

- **Switch profiles** → [GETTING-STARTED.md](docs/GETTING-STARTED.md#switch-to-work-profile)
- **Check current profile** → Run `./profile info`
- **List all profiles** → Run `./profile list`
- **Share with team** → [GETTING-STARTED.md](docs/GETTING-STARTED.md#share-with-team)

#### Troubleshoot

- **direnv not working** → [GETTING-STARTED.md](docs/GETTING-STARTED.md#troubleshooting)
- **Git config issues** → [INSTALL.md](docs/INSTALL.md#troubleshooting)
- **Environment not loading** → [README.md](README.md#troubleshooting)
- **General issues** → [INSTALL.md](INSTALL.md#troubleshooting)

#### Learn More

- **How it works** → [PROJECT-SUMMARY.md](docs/PROJECT-SUMMARY.md#how-it-works)
- **Architecture** → [PROJECT-SUMMARY.md](docs/PROJECT-SUMMARY.md#architecture)
- **Use cases** → [PROJECT-SUMMARY.md](docs/PROJECT-SUMMARY.md#use-cases)
- **Advanced features** → [README.md](README.md#advanced-configuration)

## 📊 Documentation Stats

| Type            | Count  | Purpose                            |
| --------------- | ------ | ---------------------------------- |
| Main docs       | 5      | Getting started, reference, guides |
| Profile READMEs | 3      | Per-profile documentation          |
| Template files  | 2      | Configuration examples             |
| Commands        | 1      | Go-based CLI tool                  |
| **Total**       | **14** | **Complete documentation set**     |

## 🔍 Search Guide

### Find by Topic

**Git Configuration**

- Main guide: [GETTING-STARTED.md](docs/GETTING-STARTED.md#customize-git-config)
- Template: [examples/.gitconfig.example](examples/.gitconfig.example)
- Reference: [README.md](README.md#git-configuration)

**Environment Variables**

- Main guide: [GETTING-STARTED.md](docs/GETTING-STARTED.md#add-environment-variables)
- Template: [examples/.envrc.example](examples/.envrc.example)
- Reference: [README.md](README.md#environment-variables)

**Secrets Management**

- Guide: [GETTING-STARTED.md](docs/GETTING-STARTED.md#add-secrets-not-in-git)
- Best practices: [README.md](README.md#security-considerations)

**direnv**

- Installation: [INSTALL.md](docs/INSTALL.md#prerequisites)
- Configuration: [README.md](README.md#direnv-integration)
- Troubleshooting: [INSTALL.md](docs/INSTALL.md#troubleshooting)

## 🎓 Learning Path

### Beginner (First Hour)

1. Read [GETTING-STARTED.md](docs/GETTING-STARTED.md)
2. Install direnv ([INSTALL.md](docs/INSTALL.md))
3. Try example profile
4. Create your first profile
5. Customize git config

### Intermediate (After First Day)

1. Review [README.md](README.md)
2. Explore [examples/](examples/)
3. Set up multiple profiles
4. Add environment-specific configs
5. Configure cloud providers

### Advanced (After First Week)

1. Study [PROJECT-SUMMARY.md](docs/PROJECT-SUMMARY.md)
2. Customize templates
3. Create direnv functions
4. Set up complex workflows
5. Share with team

## 📞 Getting Help

### Quick Help

```bash
profile help              # Main help
profile create --help    # Create profile help
profile list --help      # List profiles help
profile delete --help    # Delete profile help
```

### Documentation

- **General questions** → [README.md](README.md)
- **Installation issues** → [INSTALL.md](docs/INSTALL.md#troubleshooting)
- **Usage questions** → [QUICKSTART.md](docs/QUICKSTART.md)
- **How-to guides** → [GETTING-STARTED.md](docs/GETTING-STARTED.md)

### External Resources

- **direnv documentation** → https://direnv.net/
- **Git environment variables** → https://git-scm.com/docs/git-config#ENVIRONMENT
- **direnv stdlib** → https://direnv.net/man/direnv-stdlib.1.html

## 📝 Cheat Sheet

```bash
# Quick Reference
./profile create my-proj              # Create profile
cd profiles/my-proj && direnv allow   # Activate profile
./profile info                        # Check current profile
./profile list                        # List all profiles
git config user.email                 # Verify git config
echo $WORKSPACE_PROFILE               # Check environment
```

## 🗂️ File Structure Reference

```
workspace-profiles/
├── profile                    # Main CLI
├── profiles/                  # Your workspaces
│   ├── personal/
│   ├── work/
│   └── client-acme/
├── docs/
│   └── examples/              # Templates
│   ├── .envrc.example
│   └── .gitconfig.example
├── docs/
│   ├── GETTING-STARTED.md    # ← Start here
│   ├── INSTALL.md
│   ├── QUICKSTART.md
│   ├── PROJECT-SUMMARY.md
│   ├── CHANGELOG.md
│   └── INDEX.md               # ← You are here
├── README.md
```

---

**Need help?** Start with [GETTING-STARTED.md](docs/GETTING-STARTED.md) or run `./profile help`
