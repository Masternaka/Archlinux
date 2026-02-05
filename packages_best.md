# Paquets présents dans EndeavourOS mais absents d'Arch Linux

## BASE

### Base system
- **archlinux-keyring** - Clés PGP pour les dépôts officiels Arch Linux
- **base-devel** - Méta-paquet contenant les outils de développement de base (gcc, make, etc.)
- **bash-completion** - Autocomplétion programmable pour bash
- **device-mapper** - Outils du noyau pour mapper des devices en espace utilisateur
- **dialog** - Outil pour créer des boîtes de dialogue dans les scripts shell
- **downgrade** - Script pour downgrader facilement des paquets Arch
- **dracut** - Générateur d'initramfs modulaire basé sur les événements
- **duf** - Alternative moderne à df pour visualiser l'utilisation des disques
- **endeavouros-keyring** - Clés PGP pour les dépôts EndeavourOS
- **endeavouros-mirrorlist** - Liste des miroirs EndeavourOS
- **fakeroot** - Simule les privilèges root pour la création de paquets
- **freetype2** - Moteur de rendu de polices TrueType
- **git** - Système de contrôle de version distribué
- **glances** - Outil de monitoring système en temps réel
- **haveged** - Générateur d'entropie pour améliorer la génération aléatoire
- **hwdetect** - Script de détection matérielle pour Arch Linux
- **hwinfo** - Outil de détection matérielle détaillé
- **inetutils** - Collection d'utilitaires réseau (telnet, ftp, etc.)
- **inxi** - Script d'information système complet
- **iptables-nft** - Outils iptables utilisant le backend nftables
- **iso-create-ml** - Outil pour créer des ISOs EndeavourOS personnalisées
- **libgsf** - Bibliothèque pour lire/écrire des fichiers structurés
- **libopenraw** - Bibliothèque pour décoder les fichiers RAW d'appareils photo
- **linux-headers** - En-têtes du noyau Linux pour compiler des modules
- **logrotate** - Rotation automatique des fichiers journaux
- **lsb-release** - Utilitaire d'information sur la distribution LSB
- **nano-syntax-highlighting** - Coloration syntaxique améliorée pour nano
- **ntp** - Démon de synchronisation de l'heure réseau
- **pacman-contrib** - Scripts et outils contribués pour pacman
- **perl** - Langage de programmation Perl
- **pkgfile** - Outil pour rechercher des fichiers dans les paquets
- **plocate** - Version rapide de locate pour rechercher des fichiers
- **poppler-glib** - Bibliothèque de rendu PDF basée sur Poppler
- **power-profiles-daemon** - Gestion des profils d'alimentation du système
- **pv** - Moniteur de progression pour les pipes
- **python-jinja** - Moteur de templates pour Python
- **python-packaging** - Bibliothèque Python pour la gestion des versions
- **rebuild-detector** - Détecte les paquets nécessitant une recompilation
- **s-nail** - Client mail en ligne de commande
- **sysfsutils** - Utilitaires pour interagir avec sysfs
- **systemd-sysvcompat** - Liens de compatibilité sysvinit pour systemd
- **texinfo** - Système de documentation GNU
- **tldr** - Pages d'aide simplifiées et pratiques
- **unrar** - Utilitaire pour extraire les archives RAR
- **unzip** - Utilitaire pour extraire les archives ZIP
- **vi** - Éditeur de texte vi original
- **wget** - Outil de téléchargement de fichiers en ligne de commande
- **which** - Affiche le chemin complet des commandes shell
- **xterm** - Émulateur de terminal X standard
- **xz** - Utilitaires de compression LZMA

### Boot
- **efitools** - Outils pour manipuler les variables UEFI

## HARDWARE

### X system
- **xf86-input-libinput** - Driver d'entrée générique basé sur libinput pour X.Org
- **xf86-input-vmmouse** - Driver de souris pour machines virtuelles VMware
- **xorg-server** - Serveur d'affichage X.Org
- **xorg-xdpyinfo** - Affiche les informations sur le serveur X
- **xorg-xinit** - Scripts de démarrage du serveur X
- **xorg-xinput** - Utilitaire de configuration des périphériques d'entrée
- **xorg-xkill** - Tue un client X en cliquant sur sa fenêtre
- **xorg-xrandr** - Utilitaire de configuration de l'affichage et de la résolution

### GPU/VM
- **gst-plugin-va** - Plugin GStreamer pour l'accélération matérielle VA-API
- **gtkmm3** - Interface C++ pour GTK+ 3
- **intel-media-driver** - Driver Intel VAAPI pour l'accélération vidéo matérielle
- **libva-intel-driver** - Ancien driver VA-API Intel (pour matériel plus ancien)
- **mesa** - Implémentation open-source d'OpenGL
- **mesa-utils** - Utilitaires Mesa (glxinfo, glxgears, etc.)
- **nvidia-utils** - Utilitaires et bibliothèques pour les GPU NVIDIA
- **virtualbox-guest-utils** - Utilitaires invité VirtualBox avec support X11
- **vpl-gpu-rt** - Runtime Intel Video Processing Library
- **vulkan-intel** - Driver Vulkan Intel open-source
- **vulkan-radeon** - Driver Vulkan AMD Radeon (RADV)
- **vulkan-swrast** - Implémentation logicielle de Vulkan
- **vulkan-virtio** - Driver Vulkan pour la virtualisation virtio-gpu
- **eos-hwtool** - Outil matériel EndeavourOS pour la détection GPU
- **spice-vdagent** - Agent pour améliorer l'expérience dans les VMs SPICE

### Audio hardware
- **alsa-firmware** - Firmware pour certaines cartes son ALSA
- **alsa-plugins** - Plugins supplémentaires pour ALSA
- **gst-libav** - Plugin GStreamer basé sur FFmpeg
- **gst-plugin-pipewire** - Plugin GStreamer pour PipeWire
- **gst-plugins-bad** - Plugins GStreamer de qualité variable
- **gst-plugins-ugly** - Plugins GStreamer avec problèmes de licence
- **libdvdcss** - Bibliothèque pour accéder aux DVDs cryptés
- **pavucontrol** - Contrôleur de volume PulseAudio/PipeWire graphique
- **pipewire-alsa** - Remplacement ALSA pour PipeWire
- **pipewire-jack** - Remplacement JACK pour PipeWire
- **pipewire-pulse** - Remplacement PulseAudio pour PipeWire
- **rtkit** - Service temps-réel pour les applications audio
- **wireplumber** - Gestionnaire de sessions pour PipeWire

## SOFTWARE

### Network
- **net-tools** - Outils réseau classiques (ifconfig, netstat, route)
- **netctl** - Gestionnaire de profils réseau basé sur systemd
- **networkmanager** - Daemon de gestion réseau automatique
- **networkmanager-openconnect** - Plugin NetworkManager pour VPN OpenConnect
- **networkmanager-openvpn** - Plugin NetworkManager pour OpenVPN
- **nss-mdns** - Résolution de noms via mDNS (Avahi/Bonjour)
- **whois** - Client whois intelligent

### Bluetooth
- **bluez** - Stack Bluetooth Linux
- **bluez-utils** - Utilitaires Bluetooth en ligne de commande

### Firewall
- **firewalld** - Démon de pare-feu avec interface D-Bus
- **python-capng** - Bibliothèque Python pour les capacités POSIX
- **python-pyqt6** - Liaisons Python pour Qt6

## ISO

### Live iso tools
- **efitools** - Outils pour manipuler les variables UEFI
- **gparted** - Éditeur de partitions graphique basé sur GTK
- **grsync** - Interface graphique GTK pour rsync
- **partitionmanager** - Gestionnaire de partitions KDE

## DESKTOP

### Desktop environment (KDE Plasma)
- **ark** - Gestionnaire d'archives KDE
- **bluedevil** - Intégration Bluetooth pour KDE Plasma
- **breeze-gtk** - Thème Breeze pour les applications GTK
- **dolphin** - Gestionnaire de fichiers KDE
- **dolphin-plugins** - Plugins additionnels pour Dolphin
- **endeavouros-konsole-colors** - Schémas de couleurs EndeavourOS pour Konsole
- **eos-breeze-sddm** - Thème SDDM EndeavourOS basé sur Breeze
- **ffmpegthumbs** - Générateur de miniatures vidéo pour KDE
- **fwupd** - Démon de mise à jour de firmware
- **gwenview** - Visionneuse d'images KDE
- **haruna** - Lecteur vidéo basé sur MPV pour KDE
- **kate** - Éditeur de texte avancé KDE
- **kcalc** - Calculatrice scientifique KDE
- **kde-cli-tools** - Outils en ligne de commande pour KDE
- **kde-gtk-config** - Configuration GTK dans les paramètres système KDE
- **kdeconnect** - Intégration smartphone/ordinateur pour KDE
- **kdegraphics-thumbnailers** - Générateurs de miniatures pour formats graphiques
- **kdenetwork-filesharing** - Propriétés de partage Samba dans Dolphin
- **kdeplasma-addons** - Widgets Plasma supplémentaires
- **kgamma** - Outil de calibration gamma pour KDE
- **kimageformats** - Support de formats d'image supplémentaires pour Qt
- **kinfocenter** - Centre d'informations système KDE
- **kio-admin** - Gestion des fichiers administrateur dans KDE
- **kio-extras** - Protocoles KIO supplémentaires (man, info, etc.)
- **kio-fuse** - Montage FUSE pour les KIO slaves
- **konsole** - Émulateur de terminal KDE
- **kscreen** - Gestion de l'affichage et des moniteurs pour KDE
- **kwallet-pam** - Intégration KWallet avec PAM pour déverrouillage auto
- **kwayland-integration** - Intégration Wayland pour les applications Qt
- **kwin-x11** - Gestionnaire de fenêtres KDE pour X11
- **libappindicator** - Support des indicateurs d'applications dans la barre système
- **okular** - Visionneuse de documents universelle KDE
- **plasma-browser-integration** - Intégration navigateur pour KDE Plasma
- **plasma-desktop** - Environnement de bureau KDE Plasma
- **plasma-disks** - Moniteur de santé et SMART des disques
- **plasma-firewall** - Interface de gestion du pare-feu pour Plasma
- **plasma-keyboard** - Outil de configuration du clavier Plasma
- **plasma-nm** - Applet NetworkManager pour Plasma
- **plasma-pa** - Applet PulseAudio/PipeWire pour Plasma
- **plasma-systemmonitor** - Moniteur système pour Plasma
- **plasma-workspace** - Espace de travail KDE Plasma
- **plasma-x11-session** - Session Plasma pour X11
- **powerdevil** - Gestion de l'alimentation pour KDE Plasma
- **print-manager** - Gestionnaire d'imprimantes pour KDE
- **sddm-kcm** - Module de configuration SDDM pour KDE
- **spectacle** - Outil de capture d'écran KDE
- **xdg-desktop-portal-kde** - Backend KDE pour xdg-desktop-portal
- **xsettingsd** - Démon pour les paramètres X11

### Browser
- **firefox** - Navigateur web Mozilla Firefox

### System
- **meld** - Outil de comparaison et fusion de fichiers graphique

### Fonts
- **cantarell-fonts** - Police Cantarell (police par défaut de GNOME)
- **noto-fonts** - Famille de polices Google Noto (Latin, Grec, Cyrillique)
- **noto-fonts-cjk** - Polices Google Noto pour CJK (Chinois, Japonais, Coréen)
- **noto-fonts-emoji** - Polices emoji Google Noto
- **noto-fonts-extra** - Polices Google Noto supplémentaires
- **ttf-bitstream-vera** - Police Bitstream Vera
- **ttf-dejavu** - Police DejaVu (extension de Bitstream Vera)
- **ttf-liberation** - Polices Liberation (métriques compatibles avec Arial, Times, Courier)
- **ttf-opensans** - Police Open Sans humaniste sans-serif

## ENDEAVOUROS REPO

### General
- **endeavouros-branding** - Branding et logos EndeavourOS
- **eos-apps-info** - Informations sur les applications EndeavourOS
- **eos-hooks** - Hooks pacman pour EndeavourOS
- **eos-log-tool** - Outil de collecte de logs pour le support
- **eos-packagelist** - Gestionnaire de listes de paquets EndeavourOS
- **eos-quickstart** - Guide de démarrage rapide EndeavourOS
- **eos-rankmirrors** - Outil de classement des miroirs EndeavourOS
- **rate-mirrors** - Outil rapide de sélection des meilleurs miroirs
- **reflector-simple** - Interface simplifiée pour Reflector
- **welcome** - Application de bienvenue EndeavourOS
- **yay** - Helper AUR (Arch User Repository) écrit en Go

### Calamares EndeavourOS
- **calamares** - Installateur de distribution indépendant
- **ckbcomp** - Compilateur de disposition de clavier pour console

---

**Total:** 179 paquets uniques à EndeavourOS