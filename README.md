# PEA - Python Electron App (beta)
Python CLI backend, Electron HTML frontend  

`backend_cli.py -> main.js -> index.html -> pea.exe`  
The backend stage can include external Python & C libraries  
The html stage can include other Node.js packages  


## Building
use [PyInstaller](https://github.com/pyinstaller/pyinstaller) to compile `backend_cli.py` into `backend_cli.exe`  
retarget `main.js` at `backend_cli.exe`, rather than the main python script  
build `pea.exe` with [Electron Packager](https://github.com/electron/electron-packager)  
(for developers) retarget `main.js` back at the `backend_cli.py`  


## Completeness
Build scripts are not yet fully implemented / tested  
`backend_cli -> single .exe` is complete  
retargetting `main.js` at `backend_cli` has yet to be implemented  
how the electron app will use the backend_cli has not yet been determined  

### Errors
 * `npm start` (with venv active) targets Python 2.7

### TODOs
 * Github Actions `build` script triggered on commit & release  
 * Tests for source and compiled builds  
 * Test assets for packaging  
 * `Python` extensions (e.g. `pygltflib`)  
 * `Node.js` extensions (e.g. `THREE.js`)  
 * Compress release to make it as small as a pea  
 