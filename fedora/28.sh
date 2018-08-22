sudo su

read -p "Insert a Ruby Version of your preference: " ruby_version 
read -p "Insert a Node Version of your preference: " node_version
read -p "What's your name(for git settings)?: " git_user_name
read -p "What's your email(for git settings)?: " git_user_email

# echo "========================================================================"
# echo "# ATUALIZANDO O SISTEMA OPERACIONAL"
# echo "========================================================================"
dnf -y update

# echo "========================================================================"
# echo "# INSTALANDO RPM REFUSION(THIRD PARTY'S SOFTWARES)"
# echo "========================================================================"
dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# echo "========================================================================"
# echo "# INSTALANDO CODECS"
# echo "========================================================================"
dnf -y install gstreamer-plugins-base gstreamer1-plugins-base gstreamer-plugins-bad gstreamer-plugins-ugly gstreamer1-plugins-ugly gstreamer-plugins-good-extras gstreamer1-plugins-good-extras gstreamer1-plugins-bad-freeworld ffmpeg gstreamer-ffmpeg

# echo "========================================================================"
# echo "# INSTALANDO DROPBOX"
# echo "========================================================================"
dnf -y install https://www.dropbox.com/download?dl=packages/fedora/nautilus-dropbox-2015.10.28-1.fedora.x86_64.rpm

# echo "========================================================================"
# echo "# INSTALANDO TEAMVIEWER"
# echo "========================================================================"
dnf -y install https://download.teamviewer.com/download/linux/teamviewer.`uname -i`.rpm

# echo
# echo "========================================================================"
# echo "# INSTALANDO STACER"
# echo "========================================================================"
wget https://github.com/oguzhaninan/Stacer/releases/download/v1.0.8/stacer-1.0.8_x64.rpm -O stacer.rpm
dnf -y install stacer.rpm

# echo
# echo "========================================================================"
# echo "# INSTALANDO QBITTORRENT"
# echo "========================================================================"
dnf -y install qbittorrent

# echo
# echo "========================================================================"
# echo "# INSTALANDO SNAP"
# echo "========================================================================"
dnf -y install snapd
ln -s /var/lib/snapd/snap /snap

# echo
# echo "========================================================================"
# echo "# INSTALANDO O CHROME"
# echo "========================================================================"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm -O chrome.rpm
dnf -y install chrome.rpm

# echo
# echo "======================================================================="
# echo "# INSTALANDO QT(Capybara Webkit)"
# echo "========================================================================"
dnf -y qt5-qtwebkit-devel
export QMAKE=/usr/bin/qmake-qt5

# echo
# echo "========================================================================"
# echo "# INSTALANDO RVM E SUAS DEPENDENCIAS"
# echo "========================================================================"
gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s
source ~/.rvm/scripts/rvm
rvm requirements

# echo
# echo "========================================================================"
# echo "# INSTALANDO RUBY (AND RAILS)"
# echo "========================================================================"
rvm install $ruby_version
rvm use $ruby_version --default
touch ~/.gemrc
echo 'gem: --no-rdoc --no-ri' >> ~/.gemrc
gem install bundle
gem install rails

# echo
# echo "========================================================================"
# echo "# INSTALANDO ELIXIR"
# echo "========================================================================"
dnf -y install elixir

# echo
# echo "========================================================================"
# echo "# INSTALANDO POSTGRES"
# echo "========================================================================"
dnf install postgresql postgresql-server 
postgresql-setup initdb                  
systemctl start postgresql  

# echo
# echo "========================================================================"
# echo "# INSTALANDO PGADMIN"
# echo "========================================================================"
dnf update && sudo dnf -y install pgadmin3

# echo
# echo "========================================================================"
# echo "# INSTALANDO SPOTIFY"
# echo "========================================================================"
dnf update && snap install spotify --classic

# echo
# echo "========================================================================"
# echo "# INSTALANDO VLC"
# echo "========================================================================"
dnf update && dnf -y install vlc  
