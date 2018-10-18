# instala dependencias 
sudo apt-get -y update
sudo apt-get -y install python3 python3-pip nginx git nodejs npm virtualenv

# crea un env para python
pip3 install virtualenv
mkdir server-env
mkdir server-data
virtualenv server-env
source server-env/bin/activate
pip install flask request

# prueba el servidor
cd server-data
python server_dummy.py

# prepara el servicio
sudo cp dummy.service /etc/systemd/system/dummy.service
sudo systemctl start dummy
sudo systemctl enable dummy