const {app, BrowserWindow} = require("electron");


function createWindow() {
    window = new BrowserWindow({width: 1280, height: 576});
    window.loadFile("index.html");

    /* make a call to backend_cli.py */
    /* NOTE: npm doesn't target the correct python version, defaults to 2.7 */
	// `python3.9` on linux; `py -3.9` on windows
    /* if (debug) */
    var backend = require("child_process").spawn("python", ["./backend_cli.py", "--login"]);
    /* if (release) */
    // var backend = require("child_process").spawn("backend_cli.exe", ["--login"])
    /* batch replace `"python", ["./backend_cli.py", ` with `"backend_cli.exe", [` */
    backend.stdout.on("data", function(data) {
        console.log("Python backend CLI:\n", data.toString("utf8"));
    });
    backend.stderr.on("data", function(data) {
        console.log("PYTHON ERROR:\n", data.toString("utf8"));
    });
    /* TODO: feed backend_cli */

}


app.on("ready", createWindow);
