# Preparar instalación

loadkeys es
ping archlinux.org # Comprobar conexión a internet
timedatectl set-ntp true

# Crear y formatear particiones

cfdisk  # Para particionar desde terminal
mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda3
mkswap /dev/sda2
swapon /dev/sda2
mount /dev/sda1 /mnt
mkdir /mnt/home
mount /dev/sda3 /mnt/home

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
echo "KEYMAP=es" > /etc/vconsole.conf  # O usar nano
echo "Arch" > /etc/hostname  # O usar nano
nano /etc/hosts  # Escribir lo que pone en la guía
passwd  # Assignar contraseña al root
pacman -S networkmanager
systemctl enable NetworkManager
pacman -S grub
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
useradd -m usuario
passwd usuario  # Assignar contraseña al usuario
pacman -S sudo
usermod -aG wheel,audio,video,storage usuario
nano /etc/sudoers  # Descomentar wheel
exit
umount -R /mnt
reboot
