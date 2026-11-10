# Archy

Arch Linux post-installation configuration scripts for a running system.

## Operations

The setup is organized into modular scripts under `scripts/`:

- **`01-packages.sh`**: Synchronizes repositories and installs packages
  via `pacman`.
- **`02-etc.sh`**: Copies configuration files from `extra/etc/` to `/etc/`
  (Fish shell environment, theme, prompt, and systemd presets) and applies
  system presets via `systemctl preset-all`.

## Usage

### Run All Operations

Run `install.sh` as root to execute all scripts in `scripts/` sequentially:

```sh
./install.sh
```

### Run Individual Operations

Each script can also be executed independently as root:

```sh
./scripts/01-packages.sh
./scripts/02-etc.sh
```
