# Arducam PPA

## Packages

1. arducam-config-parser-dev

## Usage

```
curl -s --compressed "https://tom-ard.github.io/arducam_ppa/KEY.gpg" | sudo apt-key add -
sudo curl -s --compressed -o /etc/apt/sources.list.d/arducam_list_files.list "https://tom-ard.github.io/arducam_ppa/arducam_list_files.list"
sudo apt update
sudo apt install arducam-config-parser-dev
```