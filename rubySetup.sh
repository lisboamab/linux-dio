#!/bin/bash
#clona o arquivo do asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2

#adiciona o asdf ao PATH
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
source ~/.bashrc
asdf --version

#instala as dependencias do plugin de ruby
apt-get install autoconf bison patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev

#instala o plugin de ruby
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git

#instala a versão de ruby mais recente
asdf install ruby latest
asdf global ruby latest
ruby -v

#instala as dependencias do nodejs
apt-get install dirmngr gpg curl gawk

#instala o plugin do nodejs
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

#instala o nodejs
asdf install nodejs latest
asdf global nodejs latest
node -v

#instala o rails
gem install rails
rails -v
