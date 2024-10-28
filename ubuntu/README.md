## Init ubuntu server


### Setup

```bash
sudo apt install htop git openssh-server zsh
```

- Enable ssh

```bash
sudo service ssh start
```

- Install zsh & oh-my-zsh
 
```shell
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- Install `zsh-autosuggestions` and `zsh-syntax-highlighting` plugins

```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

- Update .zshrc with plugins

```shell
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)
```

- Disable ssh with password, using ssh key access only
Change the config in sshd config

```shell
sudo vi /etc/sshd_config

# change the option to no
PubkeyAuthentication yes
PasswordAuthentication no
```

- Mount new drive
  
```shell
df -h # view list disk and free storage

sudo mount /dev/sda1 /home/ha/external
```
