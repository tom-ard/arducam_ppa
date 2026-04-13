# Arducam PPA

## Packages

1. arducam-config-parser-dev
2. arducam-usb-sdk-dev
3. arducam-tof-sdk-dev
4. libcamera-dev
5. libcamera-apps
6. libcamera0
7. arducam-uvc-stereo-sdk

## Usage

### Debian 13 (trixie) and above versions

```
sudo curl -s --compressed -o /usr/share/keyrings/arducam-keyring.pgp "https://tom-ard.github.io/arducam_ppa/KEY.gpg"
sudo curl -s --compressed -o /etc/apt/sources.list.d/arducam_list_files.sources "https://tom-ard.github.io/arducam_ppa/arducam_list_files.sources"
sudo apt update
sudo apt install arducam-config-parser-dev arducam-usb-sdk-dev
```

### Other

```
curl -s --compressed "https://tom-ard.github.io/arducam_ppa/KEY.gpg" | sudo gpg --dearmor -o /usr/share/keyrings/arducam-archive-keyring.gpg
sudo curl -s --compressed -o /etc/apt/sources.list.d/arducam_list_files.list "https://tom-ard.github.io/arducam_ppa/arducam_list_files.list"
sudo apt update
sudo apt install arducam-config-parser-dev arducam-usb-sdk-dev
```