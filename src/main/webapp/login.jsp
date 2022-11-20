<%--
  Created by IntelliJ IDEA.
  User: 10134
  Date: 2022/11/19
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>login</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/login/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-3.2.1.min.js"></script>
    <script src="resources/scripts/axure/axQuery.js"></script>
    <script src="resources/scripts/axure/globals.js"></script>
    <script src="resources/scripts/axutils.js"></script>
    <script src="resources/scripts/axure/annotation.js"></script>
    <script src="resources/scripts/axure/axQuery.std.js"></script>
    <script src="resources/scripts/axure/doc.js"></script>
    <script src="resources/scripts/messagecenter.js"></script>
    <script src="resources/scripts/axure/events.js"></script>
    <script src="resources/scripts/axure/recording.js"></script>
    <script src="resources/scripts/axure/action.js"></script>
    <script src="resources/scripts/axure/expr.js"></script>
    <script src="resources/scripts/axure/geometry.js"></script>
    <script src="resources/scripts/axure/flyout.js"></script>
    <script src="resources/scripts/axure/model.js"></script>
    <script src="resources/scripts/axure/repeater.js"></script>
    <script src="resources/scripts/axure/sto.js"></script>
    <script src="resources/scripts/axure/utils.temp.js"></script>
    <script src="resources/scripts/axure/variables.js"></script>
    <script src="resources/scripts/axure/drag.js"></script>
    <script src="resources/scripts/axure/move.js"></script>
    <script src="resources/scripts/axure/visibility.js"></script>
    <script src="resources/scripts/axure/style.js"></script>
    <script src="resources/scripts/axure/adaptive.js"></script>
    <script src="resources/scripts/axure/tree.js"></script>
    <script src="resources/scripts/axure/init.temp.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script src="resources/scripts/axure/math.js"></script>
    <script src="resources/scripts/axure/jquery.nicescroll.min.js"></script>
    <script src="data/document.js"></script>
    <script type="text/javascript">
        $axure.utils.getTransparentGifPath = function () {
            return 'resources/images/transparent.gif';
        };
        $axure.utils.getOtherPath = function () {
            return 'resources/Other.html';
        };
        $axure.utils.getReloadPath = function () {
            return 'resources/reload.html';
        };



        function signin(){
            document.getElementById("user").action = "login";
            document.forms['user'].submit();
        }

        function signup(){
            document.getElementById("user").action = "signup";
            document.forms['user'].submit();
        }

    </script>
</head>
<body>
<div id="base" class="">

    <!-- Unnamed (Rectangle) -->
    <div id="u0" class="ax_default box_2">
        <div id="u0_div" class=""></div>
        <div id="u0_text" class="text " style="display:none; visibility: hidden">
            <p></p>
        </div>
    </div>

    <!-- Unnamed (Image) -->
    <div id="u1" class="ax_default image">
        <img id="u1_img" class="img " src="images/login/u1.png"/>
        <div id="u1_text" class="text " style="display:none; visibility: hidden">
            <p></p>
        </div>
    </div>

    <!-- Unnamed (Rectangle) -->
    <div id="u2" class="ax_default box_1">
        <img id="u2_img" class="img " src="images/login/u2.svg"/>
        <div id="u2_text" class="text " style="display:none; visibility: hidden">
            <p></p>
        </div>
    </div>


    <form id="user" action="" method="POST">
        <!-- Unnamed (Text Field) -->
        <div id="u3" class="ax_default text_field">
            <div id="u3_div" class=""></div>
            <input id="u3_input" type="text" class="u3_input" name="username"/>
        </div>

        <!-- Unnamed (Text Field) -->
        <div id="u4" class="ax_default text_field">
            <div id="u4_div" class=""></div>
            <input id="u4_input" type="password" class="u4_input" name="password"/>
        </div>
    </form>



    <!-- Unnamed (Rectangle) -->
    <div id="u5" class="ax_default button" onclick="signup()">
        <div id="u5_div" class=""></div>
        <div id="u5_text" class="text ">
            <p><span>Sign up</span></p>
        </div>
    </div>

    <!-- Unnamed (Rectangle) -->
    <div id="u6" class="ax_default primary_button" onclick="signin()">
        <div id="u6_div" class=""></div>
        <div id="u6_text" class="text ">
            <p><span>Sign in</span></p>
        </div>
    </div>

    <!-- Unnamed (Rectangle) -->
    <div id="u7" class="ax_default heading_1">
        <img id="u7_img" class="img " src="images/login/u7.svg"/>
        <div id="u7_text" class="text ">
            <p><span>Sign in Guy's Store</span></p>
            <p><span>
                <%
                    if(request.getParameter("status").equals("success_signup")) out.print("Registration success");
                    if(request.getParameter("status").equals("wrong_signup")) out.print("Registration failure");
                    if(request.getParameter("status").equals("wrong")) out.print("User name or password error");
                %>
            </span></p>
        </div>
    </div>

    <!-- Unnamed (Rectangle) -->
    <div id="u8" class="ax_default heading_2">
        <img id="u8_img" class="img " src="images/login/u8.svg"/>
        <div id="u8_text" class="text ">
            <p><span>Username</span></p>
        </div>
    </div>

    <!-- Unnamed (Rectangle) -->
    <div id="u9" class="ax_default heading_2">
        <img id="u9_img" class="img " src="images/login/u9.svg"/>
        <div id="u9_text" class="text ">
            <p><span>Password</span></p>
        </div>
    </div>
</div>
<script src="resources/scripts/axure/ios.js"></script>
</body>
</html>
