<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
﻿<!DOCTYPE html>
<html>
<head>
    <title>cart</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/cart/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/cart/data.js"></script>

    <script src="files/cart/cart.js"></script>
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
    </script>
</head>
<body>
<div id="base" class="">

    <!-- Unnamed (Repeater) -->


    <sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
                       url="jdbc:mysql://rm-8vbr8ca021o44ca4euo.mysql.zhangbei.rds.aliyuncs.com:3306/store?autoReconnect=true&useSSL=false"
                       user="group5" password="BJTUgroup5"/>
    <script>
        var username = document.cookie.substring(document.cookie.indexOf("username=") + 9);
    </script>
    <c:set var="userID" value="${cookie.username.value}"/>
    <sql:query dataSource="${snapshot}" var="result1">
    SELECT * from carts where user_id = ?
        <sql:param value="${userID}"/>
    </sql:query>
    <sql:query dataSource="${snapshot}" var="result2">
    SELECT * from goods left join (SELECT * from carts where user_id = "${userID}")a on goods.id=a.good_id;
    </sql:query>
    <!-- Card (Group) -->
    <div id="u73" class="ax_default">
        <c:forEach var="row" items="${result2.rows}">
            <div id="u74-1" class="ax_default u74" data-label="Card"
                 style="visibility: inherit; top: ${row.id*260-260}px;
                         " data-left="0" data-top="0" data-width="1112" data-height="240" layer-opacity="1">
                <!-- Card Background (Rectangle) -->
                <div id="u75-1" class="ax_default shape u75" data-label="Card Background"
                     style="width: 1112px; height: 240px; left: 0px; top: 0px;visibility: inherit">
                    <div id="u75-1_div" class="u75_div" style="width: 1112px; height: 240px;visibility: inherit"></div>
                    <div id="u75-1_text" class="text u75_text" style="display:none; visibility: hidden">
                        <p></p>
                    </div>
                </div>
                <!-- Paragraph (Rectangle) -->
                <div id="u76-${row.id}" class="ax_default paragraph u76" data-label="Paragraph"
                     style="width: 490px; height: 123px; left: 269px; top: 75px;visibility: inherit">
                    <div id="u76-${row.id}_div" class="u76_div"
                         style="width: 490px; height: 123px;visibility: inherit"></div>
                    <div id="u76-${row.id}_text" class="text u76_text" style="visibility: inherit">
                        <p><span><c:out value="${row.description}"/></span></p>
                    </div>
                </div>

                <!-- Heading (Rectangle) -->
                <div id="u77-${row.id}" class="ax_default heading_2 u77" data-label="Heading"
                     style="width: 350px; height: 37px; left: 269px; top: 27px;visibility: inherit">
                    <div id="u77-${row.id}_div" class="u77_div"
                         style="width: 350px; height: 37px;visibility: inherit"></div>
                    <div id="u77-${row.id}_text" class="text u77_text" style="visibility: inherit">
                        <p><span><c:out value="${row.name}"/></span></p>
                    </div>
                </div>

                <!-- Heading (Rectangle) -->
                <div id="u78-${row.id}" class="ax_default heading_2 u78" data-label="Heading"
                     style="width: 61px; height: 23px; left: 845px; top: 65px;visibility: inherit">
                    <div id="u78-${row.id}_div" class="u78_div"
                         style="width: 61px; height: 23px;visibility: inherit"></div>
                    <div id="u78-${row.id}_text" class="text u78_text" style="visibility: inherit">
                        <p><span><c:out value="${row.price}"/></span></p>
                    </div>
                </div>


                <!-- Heading (Rectangle) -->
                <div id="u79-1" class="ax_default heading_2 u79" data-label="Heading"
                     style="width: 88px; height: 23px; left: 944px; top: 65px;visibility: inherit">
                    <div id="u79-1_div" class="u79_div" style="width: 88px; height: 23px;visibility: inherit"></div>
                    <div id="u79-1_text" class="text u79_text" style="visibility: inherit">
                        <p><span>Count:</span></p>
                    </div>
                </div>

                <!-- Heading (Rectangle) -->
                <div id="u80-1" class="ax_default heading_2 u80" data-label="Heading"
                     style="width: 88px; height: 23px; left: 822px; top: 115px;visibility: inherit">
                    <div id="u80-1_div" class="u80_div" style="width: 88px; height: 23px;visibility: inherit"></div>
                    <div id="u80-1_text" class="text u80_text" style="visibility: inherit">
                        <p><span>Change:</span></p>
                    </div>
                </div>

                <!-- Heading (Rectangle) -->
                <div id="u81-${row.id}" class="ax_default heading_2 u81" data-label="Heading"
                     style="width: 72px; height: 23px; left: 1032px; top: 65px;visibility: inherit">
                    <div id="u81-${row.id}_div" class="u81_div"
                         style="width: 72px; height: 23px;visibility: inherit"></div>
                    <div id="u81-${row.id}_text" class="text u81_text" style="visibility: inherit">
                        <p><span><c:out value="${0+row.count}"/></span></p>
                    </div>
                </div>

                <!-- Heading (Rectangle) -->
                <div id="u82-1" class="ax_default heading_2 u82" data-label="Heading"
                     style="width: 23px; height: 23px; left: 822px; top: 65px;visibility: inherit">
                    <div id="u82-1_div" class="u82_div" style="width: 23px; height: 23px;visibility: inherit"></div>
                    <div id="u82-1_text" class="text u82_text" style="visibility: inherit">
                        <p><span>￥</span></p>
                    </div>
                </div>

                <div id="u83-${row.id}" class="ax_default image u83" data-label="Image"
                     style="width: 200px; height: 200px; left: 21px; top: 20px;visibility: inherit">
                    <img id="u83-1_img" class="img u83_img" src="${row.image}"/>
                    <div id="u83-1_text" class="text u83_text" style="display:none; visibility: hidden">
                        <p></p>
                    </div>
                </div>

                <!-- Unnamed (Vertical Line) -->
                <div id="u84-1" class="ax_default line u84"
                     style="width: 1px; height: 143px; left: 788px; top: 65px;visibility: inherit">
                    <img id="u84-1_img" class="img u84_img" src="images/e/u34.svg"/>
                    <div id="u84-1_text" class="text u84_text" style="display:none; visibility: hidden">
                        <p></p>
                    </div>
                </div>

                <!-- Unnamed (Rectangle) -->
                <div id="u85-${row.id}" class="ax_default primary_button u85"
                     style="width: 101px; height: 40px; left: 822px; top: 168px;visibility: inherit"
                     onclick="addToCart(${row.id})">
                    <div id="u85-${row.id}_div" class="u85_div"
                         style="width: 101px; height: 40px;visibility: inherit"></div>
                    <div id="u85-${row.id}_text" class="text u85_text" style="visibility: inherit">
                        <p><span>Add</span></p>
                    </div>
                </div>

                <!-- Unnamed (Rectangle) -->
                <div id="u86-${row.id}" class="ax_default primary_button u86"
                     style="width: 101px; height: 40px; left: 970px; top: 168px;visibility: inherit"
                     onclick="decreaseCart(${row.id})">
                    <div id="u86-${row.id}_div" class="u86_div"
                         style="width: 101px; height: 40px;visibility: inherit"></div>
                    <div id="u86-${row.id}_text" class="text u86_text" style="visibility: inherit">
                        <p><span>Decrease</span></p>
                    </div>
                </div>

                <!-- Unnamed (Text Field) -->
                <div id="u87-${row.id}" class="ax_default text_field u87"
                     style="width: 127px; height: 25px; left: 944px; top: 113px;visibility: inherit">
                    <div id="u87-${row.id}_div" class="u87_div"
                         style="width: 127px; height: 25px;visibility: inherit"></div>
                    <input id="u87-${row.id}_input" type="number" value="" class="u87_input"/>
                </div>
            </div>
        </c:forEach>
    </div>

    <script src="resources/scripts/axure/ios.js"></script>
</body>
</html>
