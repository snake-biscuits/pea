apt-get install nodejs
# node.js setup
npm init -y
npm install electron --save-dev
npm install electron-packager --save-dev
# python setup
python3.9 -m venv venv
source venv/bin/activate
python -m pip install --upgrade pip
python -m pip install -r requirements.txt