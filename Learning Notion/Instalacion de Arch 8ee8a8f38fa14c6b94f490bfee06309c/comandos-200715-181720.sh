# Conexión Inalámbrica

loadkeys es
iwctl
device list
station NOMBRE_DISPOSITIVO scan  # El nombre sale del comando anterior
station NOMBRE_DISPOSITIVO get-networks
station NOMBRE_DISPOSITIVO connect NOMBRE_ROUTER
exit
ping archlinux.org
timedatectl set-ntp true

# Crear y formatear particiones (comandos usados en mi caso)

cfdisk
mkfs.ext4 /dev/sda5
mkfs.ext4 /dev/sda6
mkswap /dev/sda7
swapon /dev/sda7
mount /dev/sda5 /mnt
mkdir /mnt/home
mount /dev/sda6 /mnt/home
mkdir /mnt/boot
mount /dev/sda2 /mnt/boot

# Instalar sistema

pacstrap /mnt base linux linux-firmware
genfstab -U /mnt >> /mnt/etc/fstab

# Configurar sistema

arch-chroot /mnt
ln -sf /usr/share/zoneinfo/Europe/Madrid /etc/localtime
hwclock --systohc
pacman -S nano
nano /etc/locale.gen  # Buscar en_US.UTF-8 UTF-8 y es_ES.UTF-8 UTF-8
locale-gen
echo "LANG=es_ES.UTF-8" > /etc/locale.conf
echo "KEYMAP=es" > /etc/vconsole.conf
echo "asus" > /etc/hostname
nano /etc/hosts
passwd
pacman -S networkmanager
systemctl enable NetworkManager
pacman -S grub efibootmgr
grub-install --target=x86_64-efi --efi-directory=/boot
grub-mkconfig -o /boot/grub/grub.cfg
useradd -m usuario
passwd usuario
usermod -aG wheel,audio,video,storage usuario
pacman -S sudo
nano /etc/sudoers
exit
umount -R /mnt
shutdown now
# Sacar USB y arrancar PC

# Instalar Entorno de Escritorio KDE-Plasma

nmcli device wifi list
nmcli device wifi connect NOMBRE password CONTRASEÑA
ping archlinux.org
sudo pacman -S xorg
sudo pacman -S plasma-meta kde-applications-meta
sudo systemctl enable sddm
reboot
