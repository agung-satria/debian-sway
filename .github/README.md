<h1 align="center">My Desktop Setup</h1>

<img src="/.github/screenshots/desktop.png" width="100%" />

## Run installer

```
git clone https://github.com/agung-satria/debian-sway.git ~/.dotfiles
cd ~/.dotfiles/
./install-sway.sh
```

## Settings

### Disable power button

- **edit:** `sudo nvim /etc/systemd/logind.conf`
- **set:** `HandlePowerKey=ignore`
