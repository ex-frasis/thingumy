gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install ruby-2.2.3
rvm use ruby-2.2.3
rvm rvmrc warning ignore allGemfiles
cd /vagrant
gem install bundler
bundle install --full-index -j4

bundle exec rake db:create
bundle exec rake db:setup
bundle exec rake db:migrate

echo "alias serve='bin/rails s -b 0.0.0.0'" >> ~/.bashrc

echo 'cd /vagrant' >> ~/.profile
source ~/.profile
