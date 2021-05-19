:: node.js setup
npm init -y
npm install electron --save-dev
npm install electron-packager --save-dev
:: python setup
py -3.9 -m venv venv
call venv/scripts/activate
python -m pip install --upgrade pip
python -m pip install -r requirements.txt