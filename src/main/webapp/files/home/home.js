/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
var loginUri = getRootUri() + "/GuysStore/login";
var signupUri = getRootUri() + "/GuysStore/signup";
var cartUri = getRootUri() + "/GuysStore/cart";
var username = 0;

/** For NetBeans:
  var loginUri = getRootUri() + "/GuysStore/login";
  var signupUri = getRootUri() + "/GuysStore/signup";
 */


function getRootUri() {
    return "ws://" + (document.location.hostname == "" ? "localhost" : document.location.hostname) + ":" +
        (document.location.port == "" ? "8080" : document.location.port);
}


function addToCart() {
    websocket = new WebSocket(cartUri);
    websocket.onopen = function (evt) {
        console.log(document.getElementById("u27-1_text").innerText);
        onOpen(evt,document.getElementById("u36-1_input").value + "\n" + document.getElementById("u27-1_text").innerText);
    };
    websocket.onmessage = function (evt) {
        console.log(onMessage(evt));
        localStorage.setItem("result",onMessage(evt));
        console.log("result:"+localStorage.getItem("result"));
        if (localStorage.getItem("result") == 0) console.log("no enough goods");
        else if (localStorage.getItem("result") == 1) console.log("negative number");
        else console.log("Succeed");
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


