:: Get Node.js from: https://nodejs.org/en/download/
:: Node.js setup (dependencies listed in package.json)
npm install
:: Get Python 3.9 from: https://www.python.org/downloads/windows/
:: Python 3.9 setup (dependencies listed in requirements.txt)
py -3.9 -m venv venv
call venv/scripts/activate
python -m pip install --upgrade pip
python -m pip install -r requirements.txt