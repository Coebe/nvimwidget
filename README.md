# neovim config

## config

need to put this repo into
  1. windows
     `~/AppData/Local/`
  2. linux
     `~/.config/`

### requirement

- lazygit
  [lazyvim github](https://github.com/jesseduffield/lazygit#ubuntu)
  ```shell
  LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
  ```
- ripgrep
  `$ sudo apt-get install ripgrep`
