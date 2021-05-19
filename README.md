# PEA - Python Electron App
Python CLI backend, Electron HTML frontend  

`backend_cli.py -> main.js -> index.html -> pea.exe`  
The backend stage can include Python & C libraries  
The html stage can include other Node.js packages  


## Building
use [PyInstaller](https://github.com/pyinstaller/pyinstaller) to compile Python scripts into `backend.exe`  
retarget `main.js` at `backend.exe`, rather than the main python script  
build `pea.exe` with [Electron Packager](https://github.com/electron/electron-packager)  
retarget `main.js` back at the main python script  


## Completeness
Build scripts are not yet fully implemented  

### Errors
 * npm start with venv active targets Python 2.7

### TODOs
 - [ ] Github Actions `build` script triggered on commit & release  
 - [ ] Tests for source and compiled builds  
 - [ ] Test assets for packaging  
 - [ ] `Python` extensions (e.g. `pygltflib`)  
 - [ ] `Node.js` extensions (e.g. `THREE.js`)  
 - [ ] Compress release `.exe` to make it as small as a pea  
 