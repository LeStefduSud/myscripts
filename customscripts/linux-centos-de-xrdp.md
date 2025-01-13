# Setting Up XRDP on CentOS

This guide will help you set up XRDP on a CentOS machine to enable remote desktop access.

## Prerequisites

- A CentOS machine with a graphical desktop environment installed.
- Root or sudo access to the machine.

## Step 0: Install CentOS from ISO and Install Desktop Environment

If you haven't installed CentOS yet, follow these steps to install it from an ISO file and set up a graphical desktop environment.

1. **Download CentOS ISO:**
    Download the CentOS ISO file from the [official CentOS website](https://www.centos.org/download/).

2. **Create Bootable Media:**
    Create a bootable USB drive or DVD using the downloaded ISO file. You can use tools like `Rufus` (for Windows) or `dd` (for Linux).

3. **Install CentOS:**
    Boot from the created media and follow the on-screen instructions to install CentOS on your machine.

4. **Install Desktop Environment:**
    After installing CentOS, you need to install a graphical desktop environment. You can install GNOME, KDE, or any other preferred desktop environment. For example, to install GNOME, use the following command:

    ```bash
    You can install different desktop environments (DE) on CentOS. Here are some options:

    - **GNOME Desktop:**
        ```bash
        sudo yum groupinstall "GNOME Desktop" -y
        ```

    - **KDE Plasma Workspaces:**
        ```bash
        sudo yum groupinstall "KDE Plasma Workspaces" -y
        ```

    - **Xfce:**
        ```bash
        sudo yum groupinstall "Xfce" -y
        ```

    - **MATE Desktop:**
        ```bash
        sudo yum groupinstall "MATE Desktop" -y
        ```

    - **Cinnamon Desktop:**
        ```bash
        sudo yum groupinstall "Cinnamon" -y
        ```

    Choose the desktop environment you prefer and install it using the corresponding command.
    ```

5. **Set Graphical Target:**
    Set the system to boot into the graphical target by default.

    ```bash
    sudo systemctl set-default graphical.target
    sudo systemctl isolate graphical.target
    ```

Now, you can proceed with the previous steps to set up XRDP on your CentOS machine.

## Step 1: Update the System

First, update your system to ensure all packages are up to date.

```bash
sudo yum update -y
```

## Step 2: Install EPEL Repository

Install the EPEL repository to access additional packages.

```bash
sudo yum install epel-release -y
```

## Step 3: Install XRDP

Install XRDP and the TigerVNC server.

```bash
sudo yum install xrdp tigervnc-server -y
```

## Step 4: Start and Enable XRDP

Start the XRDP service and enable it to start on boot.

```bash
sudo systemctl start xrdp
sudo systemctl enable xrdp
```

## Step 5: Configure Firewall

Allow XRDP through the firewall.

```bash
sudo firewall-cmd --permanent --add-port=3389/tcp
sudo firewall-cmd --reload
```

## Step 6: Connect to the Remote Desktop

You can now connect to your CentOS machine using an RDP client. Use the IP address of your CentOS machine and the default port 3389.

## Conclusion

You have successfully set up XRDP on your CentOS machine. You can now remotely access your desktop environment.
