/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */



/** For NetBeans:
  var loginUri = getRootUri() + "/GuysStore/login";
  var signupUri = getRootUri() + "/GuysStore/signup";
 */
var loginUri = getRootUri() + "/GuysStore/login";
var signupUri = getRootUri() + "/GuysStore/signup";
var cartUri = getRootUri() + "/GuysStore/cart";
var deleteCartUri = getRootUri() + "/GuysStore/deleteCart";
var sendEmailUri = getRootUri() + "/GuysStore/sendEmail";




function sendEmail() {
    websocket = new WebSocket(sendEmailUri);
    websocket.onopen = function (evt) {
        console.log(document.cookie);
        console.log(document.getElementById("u47_input").value + "\n" + document.getElementById("u55_input").value + "\n" + document.getElementById("u44_input").value  + "\n" +document.cookie.substring(document.cookie.indexOf("username=") + 9));
        onOpen(evt,document.getElementById("u47_input").value + "\n" + document.getElementById("u55_input").value + "\n" + document.getElementById("u44_input").value + "\n" +document.cookie.substring(document.cookie.indexOf("username=") + 9) );
        
    };
    websocket.onmessage = function (evt) {
        console.log("yes");
        console.log(onMessage(evt));
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



