# Install for nvim

# Installs all the necessary applications and links configs to their correct locations

clr_rst="\e[00m"
clr_red="\e[31m"
clr_green="\e[32m"
clr_orange="\e[33m"
clr_blue="\e[34m"
clr_purple="\e[35m"

os_type=$(head -n3 /etc/os-release | awk -F= '/ID=/ {print $NF}')
if [ "$os_type" == "arch" ]
then
    package_manager="pacman"
    update="$package_manager -Syu --noconfirm"
    install="$package_manager -S --noconfirm"
elif [ "$os_type" == "fedora" ]
then
    package_manager="yum"
    update="$package_manager update -y"
    install="$package_manager install -y"
elif [ "$os_type" == "ubuntu" ] || [ "$os_type" == "debian" ]
then
    package_manager="apt-get"
    update="$package_manager update -y"
    install="$package_manager install -y"
else
    echo -e "${clr_red}OS not supported"
    exit 1
fi

log_file=/dev/null

if [ "$1" == "verbose" ]
then
    log_file=/dev/stdout
fi

echo -e "${clr_green}Installing Neovim${clr_rst}"
sudo $update &> $log_file
sudo $install neovim &> $log_file

echo -e "${clr_blue}Setting Up Neovim Config from $PWD${clr_rst}"
mkdir -p $HOME/.config
ln -sf $PWD $HOME/.config/nvim

echo -e "${clr_blue}Installing Neovim Plugins${clr_rst}"
nvim --headless -c PackerInstall &> $log_file &
sleep 10
sudo pkill nvim
