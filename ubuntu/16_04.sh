read -p "Insert a Ruby Version of your preference: " ruby_version 
read -p "Insert a Rails Version of your preference: " rails_version
read -p "Insert a Node Version of your preference: " node_version
read -p "What's your name(for git settings)?: " git_user_name
read -p "What's your email(for git settings)?: " git_user_email

# echo "========================================================================"
# echo "# ATUALIZANDO O SISTEMA OPERACIONAL"
# echo "========================================================================"
# sudo apt update && sudo apt upgrade -y

# echo
# echo "========================================================================"
# echo "# INSTALANDO UBUNTU RESTRICTED EXTRAS"
# echo "========================================================================"
# sudo apt update && sudo apt install ubuntu-restricted-extras -y

# echo
# echo "========================================================================"
# echo "# INSTALANDO SNAP"
# echo "========================================================================"
# sudo apt install snapd snapd-xdg-open -y


# echo
# echo "========================================================================"
# echo "# INSTALANDO O CHROME"
# echo "========================================================================"
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
# \sudo dpkg -i chrome.deb
# sudo apt install -f -y


# echo
# echo "========================================================================"
# echo "# INSTALANDO GIT"
# echo "========================================================================"
# sudo add-apt-repository ppa:git-core/ppa -y
# sudo apt update
# sudo apt install git -y
# git config --global user.name "${GIT_USER_NAME}"
# git config --global user.email "${GIT_USER_EMAIL}"


# echo
# echo "========================================================================"
# echo "# INSTALANDO DEPENDENCIAS DO RVM"
# echo "========================================================================"
# sudo apt install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev \
#                         libsqlite3-dev sqlite3 libxml2-dev libcurl4-openssl-dev python-software-properties \
#                         libffi-dev nodejs libgdbm-dev libncurses5-dev automake libtool bison libxslt1-dev


# echo
# echo "======================================================================="
# echo "# INSTALANDO RVM"
# echo "========================================================================"
# gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
# \curl -sSL https://get.rvm.io | bash -s
# source ~/.rvm/scripts/rvm
# rvm requirements


# echo
# echo "========================================================================"
# echo "# INSTALANDO RUBY"
# echo "========================================================================"
# rvm install $ruby_version
# rvm use $ruby_version --default
# touch ~/.gemrc
# echo 'gem: --no-rdoc --no-ri' >> ~/.gemrc


# echo
# echo "======================================================================="
# echo "# INSTALANDO YARN"
# echo "========================================================================"
# curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
# echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
# sudo apt update && sudo apt install yarn -y


# echo
# echo "========================================================================"
# echo "# INSTALANDO NODE"
# echo "========================================================================"
# curl -sL https://deb.nodesource.com/setup_${NODE_VERSION} | sudo -E bash -
# \sudo apt update && sudo apt install nodejs -y


# echo
# echo "========================================================================"
# echo "# INSTALANDO RAILS"
# echo "========================================================================"
# gem install rails -v ${RAILS_VERSION}


# echo
# echo "========================================================================"
# echo "# INSTALANDO POSTGRES"
# echo "========================================================================"
# sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
# wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
# \sudo apt update && sudo apt install postgresql-common postgresql-9.6 libpq-dev


# echo
# echo "========================================================================"
# echo "# INSTALANDO PGADMIN"
# echo "========================================================================"
# sudo apt update && sudo apt install pgadmin3 -y


# echo
# echo "========================================================================"
# echo "# INSTALANDO OH-MY-ZSH"
# echo "========================================================================"
# sudo apt update && sudo apt install zsh -y
# git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
# cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc


# echo
# echo "========================================================================"
# echo "# INSTALANDO SPOTIFY"
# echo "========================================================================"
# sudo apt update && sudo snap install spotify -y

# echo
# echo "========================================================================"
# echo "# INSTALANDO VLC"
# echo "========================================================================"
# sudo apt update && sudo apt install vlc -y 

# echo
# echo "========================================================================"
# echo "# REMOVENDO PACOTES NÃO UTILIZADOS"
# echo "========================================================================"
# sudo apt autoremove
