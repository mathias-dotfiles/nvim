# Requirements
- Terminal must support Hack Nerd Font
- Install ripgrep

# Install NVIM from sources

```
apt-get install build-essential cmake
make CMAKE_BUILD_TYPE=Release
sudo make install
``` 

# Set NVIM as main alternative to vim and vi

```
sudo update-alternatives --install /usr/bin/vim vim /usr/local/bin/nvim 60
sudo update-alternatives --config vim
```

```
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/nvim 60
sudo update-alternatives --config vi
```
