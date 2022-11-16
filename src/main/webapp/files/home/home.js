/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
var PUBLISH_MODE = "i";
var loginUri = getRootUri() + (PUBLISH_MODE == "N" ? "/GuysStore/login" : "/GuysStore-1.0-SNAPSHOT/login");
var signupUri = getRootUri() + (PUBLISH_MODE == "N" ? "/GuysStore/signup" : "/GuysStore-1.0-SNAPSHOT/signup");
var cartUri = getRootUri() + (PUBLISH_MODE == "N" ? "/GuysStore/login" : "/GuysStore-1.0-SNAPSHOT/cart");
var username = 0;

/** For NetBeans:
  var loginUri = getRootUri() + "/GuysStore/login";
  var signupUri = getRootUri() + "/GuysStore/signup";
 */


function getRootUri() {
    return "ws://" + (document.location.hostname == "" ? "localhost" : document.location.hostname) + ":" +
        (document.location.port == "" ? "8080" : document.location.port);
}


function addToCart(row_id) {
    websocket = new WebSocket(cartUri);
    websocket.onopen = function (evt) {
        console.log(document.getElementById("u27-"+row_id.toString()+"_text").innerText);
        onOpen(evt,document.getElementById("u36-"+row_id.toString()+"_input").value + "\n" + document.getElementById("u27-"+row_id.toString()+"_text").innerText);
    };
    websocket.onmessage = function (evt) {
        console.log(onMessage(evt));
        localStorage.setItem("result",onMessage(evt));
        console.log("result:"+localStorage.getItem("result"));
        if (localStorage.getItem("result") == 0) console.log("no enough goods");
        else if (localStorage.getItem("result") == 1) console.log("negative number");
        else if (localStorage.getItem("result") == 2) console.log("Succeed");
        else if (localStorage.getItem("result") == 3) console.log("Goods no found");
        websocket.close();
    };
    websocket.onerror = function (evt) {
        onError(evt);
    };
}



function onOpen(evt,msg) {
    websocket.send(msg);
}

function onMessage(evt) {
    return evt.data;
}

function onError(evt) {
    console.log("ERROR:"+evt.data);
}


