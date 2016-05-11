#Include CWebView.ahk ;https://raw.githubusercontent.com/T-vK/AutoHotkey-CWebView/master/CWebView.ahk (modified for html5, thanks to Coco)
;CWebView.ahk was written by Coco
 
htmlCode =
(
<!DOCTYPE html>
<html lang="en">
  <head>
    <link href="http://hakim.se/experiments/html5/origami/css/reset.css" rel="stylesheet" media="screen" />
    <link href="http://hakim.se/experiments/html5/origami/css/main.css" rel="stylesheet" media="screen" />
    <style>
      html, body {
        background-color: #123456;
        overflow-y:hidden;
      } 
      .box3d {
          width: 200px;
          height: 200px;
          margin: 100px auto;
          position: absolute;
          -webkit-transform-style: preserve-3d;
          left: 50`%;
          top: 50`%;
          margin: -100px 0 0 -100px;
      }
      .box3d div {
          position: absolute;
          left: 0;
          top: 0;
          width: 200px;
          height: 200px;
          -webkit-backface-visibility: hidden;
          -webkit-transform-origin: 50`% 50`% -100px;
          backface-visibility: hidden;
          transform-origin: 50`% 50`% -100px;
      }
      .box3d .p1 {
          background: red;
          -webkit-animation: spin1 10s infinite linear;
          animation: spin1 10s infinite linear;
      }
      .box3d .p2 {
          background: orange;
          -webkit-animation: spin2 10s infinite linear;
          animation: spin2 10s infinite linear;
      }
      .box3d .p3 {
          background: yellow;
          -webkit-animation: spin3 10s infinite linear;
          animation: spin3 10s infinite linear;
      }
      .box3d .p4 {
          background: indigo;
          -webkit-animation: spin4 10s infinite linear;
          animation: spin4 10s infinite linear;
      }
      .box3d .p5 {
          background: blue;
          -webkit-animation: spin5 10s infinite linear;
          animation: spin5 10s infinite linear;
      }
      .box3d .p6 {
          background: green;
          animation: spin6 10s infinite linear;
          -webkit-animation: spin6 10s infinite linear;
      }
      /* for Safari and Chrome */
 
      @-webkit-keyframes spin1 {
          0`% {
              -webkit-transform: perspective(600px) rotateX(0deg) rotateY(90deg) rotateZ(0deg);
          }
          100`% {
              -webkit-transform: perspective(600px) rotateX(360deg) rotateY(450deg) rotateZ(0deg);
          }
      }
      @-webkit-keyframes spin2 {
          0`% {
              -webkit-transform: perspective(600px) rotateX(0deg) rotateY(270deg) rotateZ(0deg);
          }
          100`% {
              -webkit-transform: perspective(600px) rotateX(360deg) rotateY(630deg) rotateZ(0deg);
          }
      }
      @-webkit-keyframes spin3 {
          0`% {
              -webkit-transform: perspective(600px) rotateX(90deg) rotateY(0deg) rotateZ(0deg);
          }
          100`% {
              -webkit-transform: perspective(600px) rotateX(450deg) rotateY(0deg) rotateZ(-360deg);
          }
      }
      @-webkit-keyframes spin4 {
          0`% {
              -webkit-transform: perspective(600px) rotateX(-90deg) rotateY(0deg) rotateZ(0deg);
          }
          100`% {
              -webkit-transform: perspective(600px) rotateX(270deg) rotateY(0deg) rotateZ(360deg);
          }
      }
      @-webkit-keyframes spin5 {
          0`% {
              -webkit-transform: perspective(600px) rotateX(0deg) rotateY(0deg) rotateZ(0deg);
          }
          100`% {
              -webkit-transform: perspective(600px) rotateX(360deg) rotateY(360deg) rotateZ(0deg);
          }
      }
      @-webkit-keyframes spin6 {
          0`% {
              -webkit-transform: perspective(600px) rotateX(0deg) rotateY(180deg) rotateZ(0deg);
          }
          100`% {
              -webkit-transform: perspective(600px) rotateX(360deg) rotateY(540deg) rotateZ(0deg);
          }
      }
      /* for IE10 and Firefox */
 
      @keyframes spin1 {
          0`% {
              transform: perspective(600px) rotateX(0deg) rotateY(90deg) rotateZ(0deg);
          }
          100`% {
              transform: perspective(600px) rotateX(360deg) rotateY(450deg) rotateZ(0deg);
          }
      }
      @keyframes spin2 {
          0`% {
              transform: perspective(600px) rotateX(0deg) rotateY(270deg) rotateZ(0deg);
          }
          100`% {
              transform: perspective(600px) rotateX(360deg) rotateY(630deg) rotateZ(0deg);
          }
      }
      @keyframes spin3 {
          0`% {
              transform: perspective(600px) rotateX(90deg) rotateY(0deg) rotateZ(0deg);
          }
          100`% {
              transform: perspective(600px) rotateX(450deg) rotateY(0deg) rotateZ(-360deg);
          }
      }
      @keyframes spin4 {
          0`% {
              transform: perspective(600px) rotateX(-90deg) rotateY(0deg) rotateZ(0deg);
          }
          100`% {
              transform: perspective(600px) rotateX(270deg) rotateY(0deg) rotateZ(360deg);
          }
      }
      @keyframes spin5 {
          0`% {
              transform: perspective(600px) rotateX(0deg) rotateY(0deg) rotateZ(0deg);
          }
          100`% {
              transform: perspective(600px) rotateX(360deg) rotateY(360deg) rotateZ(0deg);
          }
      }
      @keyframes spin6 {
          0`% {
              transform: perspective(600px) rotateX(0deg) rotateY(180deg) rotateZ(0deg);
          }
          100`% {
              transform: perspective(600px) rotateX(360deg) rotateY(540deg) rotateZ(0deg);
          }
      }
    </style>
  </head>
  <body>
    <script src="http://hakim.se/experiments/html5/origami/js/origami.js"></script>
    <div class="box3d">
      <div class="p1"><img width="100`%" height="100`%" src="https://lh3.googleusercontent.com/-LBr1CfXw5DI/VGl15ZNY2kI/AAAAAAAAG4c/0eSoF55ty7E/w1280-h1024/Awesome.png"/></div>
      <div class="p2"><img width="100`%" height="100`%" src="http://www.pbh2.com/wordpress/wp-content/uploads/2013/06/animated-gifs-snake.gif"/></div>
      <div class="p3"><img width="100`%" height="100`%" src="http://media3.giphy.com/media/KW3nydTAyPaU0/giphy.gif"/></div>
      <div class="p4"><iframe width="100`%" height="100`%" src="https://www.youtube.com/embed/LRHIJmKoJ9Q" frameborder="0" allowfullscreen></iframe></div>
      <div class="p5"><img width="100`%" height="100`%" src="http://ahkscript.org/logos/ahk_logo-original.png"/></div>
      <div class="p6"></div>
    </div>
  </body>
</html>
)
 
Gui 1: -Caption +LastFound +AlwaysOnTop +OwnDialogs
WinSet, TransColor, 123456
Gui 1:Show, x0 y0 w%A_ScreenWidth% h%A_ScreenHeight%
htmlGUI := new CWebView(1,"x0 y0 w" A_ScreenWidth " h" A_ScreenHeight)
;htmlGUI.BrowserEmulation := "edge"
htmlGUI.SetHTML(htmlCode)