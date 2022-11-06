var wsUri = getRootUri() + "/GuysStore-1.0-SNAPSHOT/login";

function getRootUri() {
    return "ws://" + (document.location.hostname == "" ? "localhost" : document.location.hostname) + ":" +
        (document.location.port == "" ? "8080" : document.location.port);
}


function login() {
    websocket = new WebSocket(wsUri);
    websocket.onopen = function (evt) {
        onOpen(evt)
    };
    websocket.onmessage = function (evt) {
        onMessage(evt)
    };
    websocket.onerror = function (evt) {
        onError(evt)
    };
}
function onOpen(evt) {
    console.log("CONNECTED")
    websocket.send(document.getElementById("u3_input").value + "\n" + document.getElementById("u4_input").value);
}

function onMessage(evt) {
    if (evt.data == "0") console.log("wrong");
    else window.open('home.html','_self');
}

function onError(evt) {
    console.log("ERROR:"+evt.data);
}