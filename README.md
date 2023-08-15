# TCET Linux

![TCET LINUX](https://user-images.githubusercontent.com/55846983/227738673-5d215644-d234-4066-b97a-79aebf3b3301.jpeg)

***
## What is TCET Linux?
TCET Linux is an open-source operating system providing basic services, and various software packages that make up the user-space applications, utilities and it is highly customized. Our goal in creating this operating system is to provide a platform that combines robust functionality with a user-friendly experience. Built from the ground up, TCET Linux boasts efficient performance, customization options, and a range of features tailored to meet the needs of both casual users and enthusiasts.

---

## Minimum requirements for Installation of TCET Linux
* 64 bit x86_64 processor (Intel/AMD), with at least 2 CPU cores. (32-bit not supported)
* Any GPU/iGPU with OpenGl 3.3+ support.
* Atleast 2GB DDR3/DDR4 RAM.
* Atleast 10GB HDD/SSD storage.
* Basic WPA/WPA2 compatible wifi card or ethernet supported motherboard.

The complete process for the installation is given in details on the website of [TCET Linux](https://linux.tcetmumbai.in/).

---

## Welcome App
The welcome app provides the user with the important links and shortcuts to some features and the installer.

![Welcomeapp](https://cdn.discordapp.com/attachments/1077235507702013983/1140694346711179378/welcomeapp.png)

It includes the following options:
* **Install TCET Linux**: This starts the TCET Linux Installer

* **Fix Screen Resolution(VM)**: Adjusting the screen resolution to match the native resolution of the monitor, which can help improve image quality and prevent scaling issues. 

* **Arch User Repository** (Main Page)

* **Link to our Discord Server**

* **Updating the PC**

* **Updating the Mirrors**: It provides the user with the lastest mirrors.

* **Arch Wiki** (Main Page)

* **How you can contribute to TCET Linux**

* **Toggle autostart for the Welcome App**: It is a toggle for the welcome app itself, which decides the launching of the "Welcome app" on user login.

* **About us**
---

### To Install and Remove packages
Packages in TCET Linux is managed by package manager.
Before installing any package it is always recommened to synchronize your package database. For that use command:
```
sync 
```
To install a package and its necessary depedencies use command:
```
install package_name
```
To remove a package from your package database use command:
```
remove package_name
```
Packages also come with dependencies on which package relies on in order to function properly. To remove package with its dependencies use command:
```
autoremove package_name
```
---
## Terminal Features
 `Autosuggestion` is for the people who are using terminal frequently, sometimes users forget about previously entered command and their parameters. It is also helpful for beginners who often make mistakes.

 You can add autosuggestions to your terminal in Linux by installing the `zsh-autosuggestions package`. You can run following command on terminal:
```
 install zsh-autosuggestions
```
<br>

`Autocompletion` allows user to automatically complete the command by typing partial commands. It is one of the most useful tools in any operating system. Linux distribution with *bash* as their default shell has inbuilt auto-completion feature. Type your command partially and then hit `tab` key to autocomplete rest of your command.TCET Linux comes with autocompletion and autosuggestion as a `default in-built` feature.
You can add Autocompletion to your terminal by running command:
```
install zsh-auto-completion
```
---
### Xfce
`Xfce` is and `open-source desktop environment` for Unix and Unix like operating systems like Linux. We made this choice to ensure a smooth and intuitive user experience, recognizing Xfce's reputation for being lightweight, yet feature-rich, making it an ideal match for our operating system's philosophy.In addition to this features,it runs `low on system resources` which makes it a perfect desktop environment for TCET Linux.  

---

# Important Links:

- [TCET Linux Website](https://linux.tcetmumbai.in/)
- [TCET Linux Documentation](https://opensource.tcetmumbai.in/docs/projects/tcet-linux/about-tcet-linux)
