# Windows-11-Style-Ubuntu-Jammy-Wine-Gnome-Desktop-For-Termux-x11

This is a preinstalled Ubuntu Jammy Windows 11 Style Gnome Desktop and Box64Droid Wine Desktop.So with this distro,You can run exe files on your android phone.Before you install this distro on android 12 and 13,disable phantom process killer. 

[Here](https://github.com/atamshkai/Phantom-Process-Killer/tree/main)

## Preview

![](https://raw.githubusercontent.com/atamshkai/Windows-11-Style-Ubuntu-Jammy-Wine-Gnome-Desktop-For-Termux-x11/main/wine11.png)

![](https://raw.githubusercontent.com/atamshkai/Windows-11-Style-Ubuntu-Jammy-Wine-Gnome-Desktop-For-Termux-x11/main/wine11dark.png)

![](https://raw.githubusercontent.com/atamshkai/Windows-11-Style-Ubuntu-Jammy-Wine-Gnome-Desktop-For-Termux-x11/main/wine11dark2.png)

![](https://raw.githubusercontent.com/atamshkai/Windows-11-Style-Ubuntu-Jammy-Wine-Gnome-Desktop-For-Termux-x11/main/wine.png)

# To Do 

#### First,Download Winx11 Distro From Here. (1.5 GB)
[Download](https://archive.org/download/atamshkai-ubuntu-jammy-windows11style-gnome-desktop-for-termux-x11/winex11.tar.xz
)

## Installation

Download winex11.tar.xz to Device's Download folder first. 

### Give Storage Permission

```
termux-setup-storage
```

## Notic 

This distro's name is ubuntu.So if you installed another ubuntu,remove it first.

```
proot-distro remove ubuntu
```

### Then,paste this command.It will take about 15 mins.

```
wget https://raw.githubusercontent.com/atamshkai/Windows-11-Style-Ubuntu-Jammy-Wine-Gnome-Desktop-For-Termux-x11/main/winex11.sh && bash winex11.sh
```

### Login again to termux

```
exit
```

### Start Winex11 Distro 

```
wine --start
```

### Start Winex11 Desktop

```
gnome &>/dev/null
```

### Warning 
If you upgrade the system,the desktop will fail to launch. 

##### Fix it if you get black screen error
``` 
for file in $(find /usr -type f -iname "*login1*"); do 
mv -v $file "$file.back"
done
``` 
``` 
echo "chmod u+s /usr/lib/dbus-1.0/dbus-daemon-launch-helper" >>~/.bashrc 
``` 
``` 
mv -v /usr/share/applications/gnome-sound-panel.desktop /usr/share/applications/gnome-sound-panel.desktop.back 
``` 
``` 
echo "export XDG_CURRENT_DESKTOP=GNOME" >>~/.bashrc 
``` 
Login again 
``` 
exit 
``` 

## Termux 
[Download](https://github.com/termux/termux-app/releases/download/v0.118.0/termux-app_v0.118.0+github-debug_universal.apk) 

## Termux-x11 
[Download](https://archive.org/download/termux-x11/app-universal-debug.apk) 

## Termux-x11 Custom Resolution
1920:1080
