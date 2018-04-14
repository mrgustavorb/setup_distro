read -p "Insert a Ruby Version of your preference: " ruby_version 
read -p "Insert a Rails Version of your preference: " rails_version
read -p "Insert a Node Version of your preference: " node_version
read -p "What's your name(for git settings)?: " git_user_name
read -p "What's your email(for git settings)?: " git_user_email

# echo "========================================================================"
# echo "# ATUALIZANDO O SISTEMA OPERACIONAL"
# echo "========================================================================"
sudo dnf update

# echo "========================================================================"
# echo "# INSTALANDO RPM REFUSION(THIRD PARTY'S SOFTWARES)"
# echo "========================================================================"
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# echo "========================================================================"
# echo "# INSTALANDO CODECS"
# echo "========================================================================"
sudo dnf -y install gstreamer-plugins-base gstreamer1-plugins-base gstreamer-plugins-bad gstreamer-plugins-ugly gstreamer1-plugins-ugly gstreamer-plugins-good-extras gstreamer1-plugins-good-extras gstreamer1-plugins-bad-freeworld ffmpeg gstreamer-ffmpeg

# echo "========================================================================"
# echo "# INSTALANDO DROPBOX"
# echo "========================================================================"
sudo dnf install https://www.dropbox.com/download?dl=packages/fedora/nautilus-dropbox-2015.10.28-1.fedora.x86_64.rpm

# echo "========================================================================"
# echo "# INSTALANDO TEAMVIEWER"
# echo "========================================================================"
sudo rpm --import https://dl.tvcdn.de/download/linux/signature/TeamViewer2017.asc
wget https://download.teamviewer.com/download/teamviewer.i686.rpm
sudo dnf install -y teamviewer.i686.rpm

# echo
# echo "========================================================================"
# echo "# INSTALANDO STACER"
# echo "========================================================================"
wget https://github.com/oguzhaninan/Stacer/releases/download/v1.0.8/stacer-1.0.8_x64.rpm
sudo dnf install -y stacer-1.0.8_x64.rpm

# echo
# echo "========================================================================"
# echo "# INSTALANDO QBITTORRENT"
# echo "========================================================================"
sudo dnf install -y qbittorrent

# echo
# echo "========================================================================"
# echo "# INSTALANDO SNAP"
# echo "========================================================================"
sudo dnf install -y snapd
sudo ln -s /var/lib/snapd/snap /snap

# echo
# echo "========================================================================"
# echo "# INSTALANDO O CHROME"
# echo "========================================================================"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm -O chrome.rpm
sudo dnf install -y chrome.rpm

# echo
# echo "======================================================================="
# echo "# INSTALANDO RVM E SUAS DEPENDENCIAS"
# echo "========================================================================"
gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s
source ~/.rvm/scripts/rvm
rvm requirements

# echo
# echo "========================================================================"
# echo "# INSTALANDO RUBY"
# echo "========================================================================"
rvm install $ruby_version
rvm use $ruby_version --default
touch ~/.gemrc
echo 'gem: --no-rdoc --no-ri' >> ~/.gemrc

# echo
# echo "========================================================================"
# echo "# INSTALANDO RAILS"
# echo "========================================================================"
gem install rails -v $rails_version

# echo
# echo "========================================================================"
# echo "# INSTALANDO ELIXIR"
# echo "========================================================================"
sudo dnf install -y elixir6

# echo
# echo "========================================================================"
# echo "# INSTALANDO POSTGRES"
# echo "========================================================================"
sudo dnf install postgresql postgresql-server 
sudo postgresql-setup initdb                  
sudo systemctl start postgresql  

# echo
# echo "========================================================================"
# echo "# INSTALANDO PGADMIN"
# echo "========================================================================"
sudo dnf update && sudo dnf install -y pgadmin3

# echo
# echo "========================================================================"
# echo "# INSTALANDO SPOTIFY"
# echo "========================================================================"
sudo dnf update && sudo snap install spotify --classic

# echo
# echo "========================================================================"
# echo "# INSTALANDO VLC"
# echo "========================================================================"
sudo dnf update && sudo dnf install -y vlc  