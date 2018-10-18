# instala dependencias 
sudo apt-get -y update
sudo apt-get -y install python3 python3-pip nginx git nodejs npm

cp server_test.py
sudo cp dummy.service /etc/systemd/system/dummy.service

# crea un env para python
pip3 install virtualenv
mkdir server-env
mkdir server-data
virtualenv server-env
source server-env/bin/activate
pip install flask request
