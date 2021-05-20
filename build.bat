:: clean build dirs
rmdir build /s
rmdir dist /s
:: build backend_cli.exe
pyinstaller --onefile backend_cli.py
xcopy /s dist/backend_cli.exe ./backend_cli.exe
:: TODO: replace `"python", ["./backend_cli.py", ` in main.js with `"backend_cli.exe", [`
:: package electron app
electron-packager . pea --platform=win32 --arch=x64 --icon=./resources/icons/pea_512x512.png