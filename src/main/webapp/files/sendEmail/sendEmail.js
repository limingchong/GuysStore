/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */



/** For NetBeans:
  var loginUri = getRootUri() + "/GuysStore/login";
  var signupUri = getRootUri() + "/GuysStore/signup";
 */





function sendEmail() {
        console.log(document.getElementById("u47_input").value + "\n" + document.getElementById("u55_input").value);
        var title = document.getElementById("u47_input").value;
        var body = document.getElementById("u55_input").value;
        var email = "mailto:19726006@bjtu.edu.cn?subject="+ title +"&body=" + body;
        window.location = email;
}





