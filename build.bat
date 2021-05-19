:::: This batch script prepares the python backend
:: clean build dirs
rmdir build /s
rmdir dist /s
rmdir venv /s
:: build backend_cli.exe
py -3.9 -m venv venv
call venv/scripts/activate
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
pyinstaller --onefile backend_cli.py
xcopy /s dist/backend_cli.exe ./backend_cli.exe
:: replace `"python", ["./backend_cli.py", ` in main.js with `"backend_cli.exe", [`
:: package electron app
:: TODO: compress assets
electron-packager . pea --platform=win32 --arch=x64 --icon=./assets/pea.png