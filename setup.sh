apt-get install nodejs python3.9
# Node.js setup (dependencies listed in package.json)
npm install
# Python 3.9 setup (dependencies listed in requirements.txt)
python3.9 -m venv venv
source venv/bin/activate
python -m pip install --upgrade pip
python -m pip install -r requirements.txt