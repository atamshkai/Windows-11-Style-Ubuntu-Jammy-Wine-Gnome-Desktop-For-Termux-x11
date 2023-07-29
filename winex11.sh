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
proot-distro restore /sdcard/download/winex11.tar.xz
