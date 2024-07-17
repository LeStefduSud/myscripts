## This is my snippet to install OpnSense, an OpenSource firwall
#### See https://opnsense.org/ or https://opnsense.org/download/
#### See https://opnsense.org/users/get-started/ to get more information how to ins

---

- Download the ISO or the VGA file
- Burnit to a USB stick (or other) using Rufus or othe
- Configure your system to boot from USB.
- Login using default creadentials
- Default behaviour is to start the Live environment, to install log in with user installer and password opnsense


### Depending on the target Hardware you should have UART error while booting
### It is because bad mangement of UART devices on the FreeBSD distribution
### You will have to disable them at installation following this step

- To handle the UART error during the boot process of installing OPNsense on a Beelink, you can follow these steps:
During the boot process, press the space bar to pause the boot menu.
Press 3 to enter the loader.

Override the UART settings by entering the following commands:
set hint.uart.0.disabled="1"
set hint.uart.1.disabled="1"
boot
		
### After the installation is complete, edit the /boot/device.hints file and add the following lines:
hint.uart.0.disabled="1"
hint.uart.1.disabled="1"
		
Alternatively, you can create a /boot/loader.conf.local file and add the same lines there.
This is recommended for pfSense installations, as /boot/device.hints can be replaced during firmware updates.


