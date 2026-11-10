#!/usr/bin/env bash
#
# 01-packages.sh: Install required packages via pacman
#
set -euo pipefail

[ "$(id -u)" -eq 0 ] || {
    echo "error: must run as root" >&2
    exit 1
}

PACKAGES=(
    # base / boot / firmware
    base
    base-devel
    linux
    linux-headers
    linux-lts
    linux-lts-headers
    linux-firmware
    intel-ucode
    amd-ucode
    btrfs-progs
    dosfstools
    mtools
    cryptsetup
    efibootmgr
    fwupd
    sudo
    iptables

    # system / network / security
    apparmor
    ufw
    networkmanager
    network-manager-applet
    bluez
    bluez-utils
    blueman
    cups
    upower
    hdparm
    dmidecode
    arch-audit
    arch-audit-gtk
    nmap

    # desktop
    sway
    noctalia
    wayland
    xorg-xwayland
    wl-clipboard
    kanshi
    grim
    foot
    thunar
    brightnessctl
    pamixer
    pavucontrol
    pipewire-pulse
    wireplumber
    galculator

    # apps
    chromium
    firefox
    libreoffice-fresh
    signal-desktop
    telegram-desktop
    mpv
    vlc-plugins-all
    transmission-gtk
    enchant
    isync
    pass
    pwgen

    # cli / dev
    7zip
    unzip
    wget
    bc
    less
    man-db
    man-pages
    tree-sitter-cli
    fish
    fzf
    git
    github-cli
    lazygit
    b4
    neovim
    vim
    nano
    htop
    gdu
    jq
    ranger
    ripgrep-all
    socat
    python-pefile
    meson
    gdb
    lldb
    valgrind
    rustup
    nodejs
    npm
    luarocks
    tcl
    uv
    vhs
    fuse2

    # virtualization / containers
    docker
    qemu-desktop
    virtme-ng

    # fonts
    noto-fonts-emoji
    ttf-dejavu
    ttf-liberation
    ttf-jetbrains-mono-nerd
    ttf-meslo-nerd
    ttf-nerd-fonts-symbols
)

echo "==> Synchronizing repositories and installing packages..."
pacman -Sy --needed --noconfirm "${PACKAGES[@]}"
echo "==> Packages installed successfully."
