var loginUri = getRootUri() + "/GuysStore-1.0-SNAPSHOT/login";
var signupUri = getRootUri() + "/GuysStore-1.0-SNAPSHOT/signup";
var username = 0;

/** For NetBeans:
  var loginUri = getRootUri() + "/GuysStore/login";
  var signupUri = getRootUri() + "/GuysStore/signup";
 */


function getRootUri() {
    return "ws://" + (document.location.hostname == "" ? "localhost" : document.location.hostname) + ":" +
        (document.location.port == "" ? "8080" : document.location.port);
}


function login() {
    websocket = new WebSocket(loginUri);
    websocket.onopen = function (evt) {
        onOpen(evt,document.getElementById("u3_input").value + "\n" + document.getElementById("u4_input").value);
    };
    websocket.onmessage = function (evt) {
        localStorage.setItem("username",onMessage(evt));
        if (localStorage.getItem("username") == 0) console.log("wrong");
        else window.open('home.jsp','_self');
        websocket.close();
    };
    websocket.onerror = function (evt) {
        onError(evt);
    };
}

function signup(){
    websocket = new WebSocket(signupUri);
    websocket.onopen = function (evt) {
        onOpen(evt,document.getElementById("u3_input").value + "\n" + document.getElementById("u4_input").value);
    };
    websocket.onmessage = function (evt) {
        if (onMessage(evt)=="0") console.log("failed");
        else console.log("success");
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