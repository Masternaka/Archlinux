#!/bin/bash

# Script d'installation i3wm pour Arch Linux
# Installe i3wm et récupère les fichiers de configuration depuis GitHub

set -e  # Arrête le script en cas d'erreur

# Couleurs pour l'affichage
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Fonction pour afficher les messages
print_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERREUR]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[ATTENTION]${NC} $1"
}

# Vérifier que le script n'est pas exécuté en root
if [ "$EUID" -eq 0 ]; then
    print_error "Ce script ne doit pas être exécuté en tant que root"
    exit 1
fi

# Configuration - MODIFIEZ CES VARIABLES
GITHUB_USER="Masternaka"
GITHUB_REPO="Dotfiles"
GITHUB_BRANCH="main"  # ou master selon votre dépôt

print_info "Début de l'installation de i3wm"

# Mise à jour du système
print_info "Mise à jour du système..."
sudo pacman -Syu --noconfirm

# Installation des paquets par catégorie
print_info "=========================================="
print_info "Installation des paquets - i3wm et Xorg"
print_info "=========================================="
sudo pacman -S --needed --noconfirm
        i3-wm
        i3status
        i3lock
        i3blocks
        dmenu
        xorg-server
        xorg-xinit

print_info "=========================================="
print_info "Installation des paquets - Utilitaires i3"
print_info "=========================================="
sudo pacman -S --needed --noconfirm
        autotiling
        rofi
        dunst
        picom
        nitrogen
        feh

print_info "=========================================="
print_info "Installation des paquets - Apparence"
print_info "=========================================="
sudo pacman -S --needed --noconfirm
        lxappearance
        polkit-gnome

print_info "=========================================="
print_info "Installation des paquets - Gestionnaire de fichiers"
print_info "=========================================="
sudo pacman -S --needed --noconfirm
        thunar
        thunar-archive-plugin
        thunar-volman
        gvfs
        gvfs-mtp

print_info "=========================================="
print_info "Installation des paquets - Audio et système"
print_info "=========================================="
sudo pacman -S --needed --noconfirm
        volumeicon
        pulseaudio
        pavucontrol

print_info "=========================================="
print_info "Installation des paquets - Terminal et outils"
print_info "=========================================="
sudo pacman -S --needed --noconfirm
        alacritty
        xterm
        git
        vim
        btop

# Créer les répertoires de configuration s'ils n'existent pas
print_info "Création des répertoires de configuration..."
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status
mkdir -p ~/.config/i3blocks
mkdir -p ~/.config/rofi
mkdir -p ~/.config/dunst
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/picom
mkdir -p ~/.config/gtk-3.0
mkdir -p ~/.config/autostart

# Sauvegarder les configurations existantes
print_info "Sauvegarde des configurations existantes..."
BACKUP_DIR=~/.config_backup_$(date +%Y%m%d_%H%M%S)
mkdir -p "$BACKUP_DIR"

for dir in i3 i3status i3blocks rofi dunst alacritty picom; do
    if [ -d ~/.config/$dir ] && [ "$(ls -A ~/.config/$dir)" ]; then
        print_warning "Sauvegarde de ~/.config/$dir vers $BACKUP_DIR"
        cp -r ~/.config/$dir "$BACKUP_DIR/"
    fi
done

if [ -f ~/.xinitrc ]; then
    cp ~/.xinitrc "$BACKUP_DIR/"
fi

# Cloner le dépôt GitHub dans un répertoire temporaire
print_info "Récupération des fichiers de configuration depuis GitHub..."
TEMP_DIR=$(mktemp -d)
cd "$TEMP_DIR"

if git clone -b "$GITHUB_BRANCH" "https://github.com/$GITHUB_USER/$GITHUB_REPO.git" config; then
    cd config

    # Copier les fichiers de configuration
    # ADAPTEZ CETTE SECTION SELON LA STRUCTURE DE VOTRE DÉPÔT

    print_info "Copie des fichiers de configuration..."

    # Exemple : si votre dépôt a une structure comme :
    # config/
    # ├── i3/
    # │   └── config
    # ├── i3status/
    # │   └── config
    # ├── rofi/
    # │   └── config.rasi
    # etc.

    if [ -d "i3" ]; then
        cp -r i3/* ~/.config/i3/
        print_info "Configuration i3 copiée"
    fi

    if [ -d "i3status" ]; then
        cp -r i3status/* ~/.config/i3status/
        print_info "Configuration i3status copiée"
    fi

    if [ -d "i3blocks" ]; then
        cp -r i3blocks/* ~/.config/i3blocks/
        print_info "Configuration i3blocks copiée"
    fi

    if [ -d "rofi" ]; then
        cp -r rofi/* ~/.config/rofi/
        print_info "Configuration rofi copiée"
    fi

    if [ -d "dunst" ]; then
        cp -r dunst/* ~/.config/dunst/
        print_info "Configuration dunst copiée"
    fi

    if [ -d "alacritty" ]; then
        cp -r alacritty/* ~/.config/alacritty/
        print_info "Configuration alacritty copiée"
    fi

    if [ -d "picom" ]; then
        cp -r picom/* ~/.config/picom/
        print_info "Configuration picom copiée"
    fi

    if [ -f "xinitrc" ]; then
        cp xinitrc ~/.xinitrc
        print_info "Fichier .xinitrc copié"
    fi

    # Vous pouvez ajouter d'autres répertoires selon vos besoins

else
    print_error "Impossible de cloner le dépôt GitHub"
    print_error "Vérifiez l'URL : https://github.com/$GITHUB_USER/$GITHUB_REPO"
    rm -rf "$TEMP_DIR"
    exit 1
fi

# Nettoyage
cd ~
rm -rf "$TEMP_DIR"

# Créer un .xinitrc par défaut si inexistant
if [ ! -f ~/.xinitrc ]; then
    print_info "Création d'un fichier .xinitrc par défaut..."
    cat > ~/.xinitrc << 'EOF'
#!/bin/sh

# Charger les ressources X
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

# Définir le fond d'écran (avec nitrogen ou feh)
# nitrogen --restore &
# feh --bg-scale ~/Images/wallpaper.jpg &

# Lancer le compositeur
picom &

# Gestionnaire de notifications
dunst &

# Polkit GNOME pour l'authentification graphique
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Icône de volume
volumeicon &

# Démarrer i3
exec i3
EOF
    chmod +x ~/.xinitrc
fi

# Configurer polkit-gnome pour démarrage automatique
print_info "Configuration de polkit-gnome..."
cat > ~/.config/autostart/polkit-gnome-authentication-agent-1.desktop << 'EOF'
[Desktop Entry]
Type=Application
Name=polkit-gnome-authentication-agent-1
Exec=/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
Terminal=false
Hidden=false
X-GNOME-Autostart-enabled=true
EOF

# Rendre les scripts exécutables si présents
find ~/.config/i3 -type f -name "*.sh" -exec chmod +x {} \; 2>/dev/null || true

print_info "Installation terminée avec succès!"
echo ""
print_info "Pour démarrer i3wm, utilisez la commande : startx"
echo ""
print_warning "Les anciennes configurations ont été sauvegardées dans : $BACKUP_DIR"
echo ""
print_info "Pensez à :"
echo "  1. Modifier les variables GITHUB_USER et GITHUB_REPO dans ce script"
echo "  2. Adapter la section de copie des fichiers selon la structure de votre dépôt"
echo "  3. Vérifier votre configuration i3 : ~/.config/i3/config"
echo "  4. Configurer votre fond d'écran dans ~/.xinitrc"
