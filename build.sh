## This bash script prepares the python backend
# clean build dirs
rm -r build dist venv
# build backend_cli
py -3.9 -m venv venv
call venv/scripts/activate
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
pyinstaller --onefile backend_cli.py
cp -r dist/backend_cli* ./
# TODO: retarget main.js from backend_cli.py to backend_cli
# replace `"python", ["./backend_cli.py", ` in main.js with `"backend_cli.exe", [`
# package electron app
# TODO: compress assets
electron-packager . pea --platform=linux --arch=x64 --icon=./assets/pea.png