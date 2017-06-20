<!doctype html>
<html lang="en-us">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Super Mario 38</title>
    <link rel="shortcut icon" href="../img/super38.ico" />
    <style type="text/css">
      .dosbox-container { width: 640px; height: 400px; }
      .dosbox-container > .dosbox-overlay { background: url(../img/super38.jpg); }
      .dosbox-start { font-size: 35px !important; }
    </style>
  </head>
  <body>
    <div id="dosbox"></div>
    <br/>
    <button onclick="dosbox.requestFullScreen();">Make Full Screen</button>
    
    <script type="text/javascript" src="https://js-dos.com/cdn/js-dos-api.js"></script>
    <script type="text/javascript">
      var dosbox = new Dosbox({
        id: "dosbox",
        onload: function (dosbox) {
          dosbox.run("../game/SUPER38.zip", "./SUPER38.EXE");
        },
        onrun: function (dosbox, app) {
          console.log("App '" + app + "' is runned");
        }
      });
    </script>
  </body>
</html>