# uma lista de instalações de pacotes para ubuntu

# atualização de pacotes do sistema
sudo apt update
sudo apt upgrade -y

# instalação do chrome




# instalação do rvm/ruby

echo "Instalando dependencias"
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs ibgdbm-dev libncurses5-dev automake libtool bison libffi-dev -y

echo "Instalando rvm"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 -y
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.4.1
rvm use 2.4.1 --default
gem install bundler
echo "'gem: no-document' > /home/gustavo/.gemrc"

# instalando NodeJS
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs


# instalação git
echo "Instalando GIT"
git config --global color.ui true
git config --global user.name "Gustavo Santiago"
git config --global user.email "gustavosantig1@gmail.com"

# instalando MySQL
sudo apt-get install mysql-server mysql-client libmysqlclient-dev

