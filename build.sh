# clean build dirs
rm -r build dist
# build backend_cli
pyinstaller --onefile backend_cli.py
cp -r dist/backend_cli* ./
# TODO: retarget main.js from backend_cli.py to backend_cli
# TODO: replace `"python", ["./backend_cli.py", ` in main.js with `"backend_cli", [`
# package electron app
electron-packager . pea --platform=linux --arch=x64 --icon=./resources/icons/pea_512x512.png