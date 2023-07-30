echo "Installing needed packages"
sleep 2
pkg up -y && pkg i -y x11-repo && pkg i -y zsh proot-distro pulseaudio termux-x11-nightly
cd $HOME
wget https://github.com/atamshkai/Termux-Zsh/raw/main/zsh.tar.xz 
tar -xvJf zsh.tar.xz && mv ~/zsh/.* ~/
rm -rf ~/zsh
chsh -s zsh 
echo "killall pulseaudio &>/dev/null" >>~/.zshrc 
echo "pulseaudio --start --exit-idle-time=-1; pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" >>~/.zshrc 
wget https://raw.githubusercontent.com/atamshkai/Windows-11-Style-Ubuntu-Jammy-Wine-Gnome-Desktop-For-Termux-x11/main/wine
mv wine ~/../usr/bin
chmod +x ~/../usr/bin/wine
echo "proot-distro login ubuntu --shared-tmp --bind /dev/null:/proc/sys/kernal/cap_last_cap" >>~/../usr/bin/start-wine
chmod +x ~/../usr/bin/start-wine
wget https://github.com/atamshkai/Windows-11-Style-Ubuntu-Jammy-Wine-Gnome-Desktop-For-Termux-x11/raw/main/wine_C0h5NWUF0n.bmp && mkdir /sdcard/download/ImageConverter && mv wine_C0h5NWUF0n.bmp /sdcard/download/ImageConverter
proot-distro restore /sdcard/download/winex11.tar.xz
rm -rf ~/../usr/var/lib/proot-distro/installed-rootfs/ubuntu/root/Desktop
mkdir ~/../usr/var/lib/proot-distro/installed-rootfs/ubuntu/root/.desktop
ln -s ~/../usr/var/lib/proot-distro/installed-rootfs/ubuntu/root/.desktop ~/../usr/var/lib/proot-distro/installed-rootfs/ubuntu/root/Desktop
echo "Done"
sleep 2
echo "Now you can start winex11 desktop"
sleep 2
echo "To login,write 'wine --start'"
