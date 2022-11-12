<%-- 
    Document   : testJSP1
    Created on : 2022年11月11日, 下午11:36:01
    Author     : 10134
--%>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/home/styles.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://rm-8vbr8ca021o44ca4euo.mysql.zhangbei.rds.aliyuncs.com:3306/store?autoReconnect=true&useSSL=false"
                   user="group5" password="BJTUgroup5"/>

<sql:query dataSource="${snapshot}" var="result">
    SELECT * from goods;
</sql:query>
<h1>JSP SELECT</h1>

<div id="u23" class="ax_default">
    <div id="u23-1" class="preeval" style="width: 1112px; height: 240px;">
        <c:forEach var="row" items="${result.rows}">
            <!-- Card (Group) -->
            <div id="u24-${row.id}" class="ax_default u24" data-label="Card" style="visibility: inherit; top: ${row.id*260-260}px;" data-left="0"
                 data-top="0"
                 data-width="1112" data-height="240" layer-opacity="1">

                <!-- Card Background (Rectangle) -->
                <div id="u25-1" class="ax_default shape u25" data-label="Card Background"
                     style="width: 1112px; height: 240px; left: 0px; top: 0px;visibility: inherit">
                    <div id="u25-1_div" class="u25_div" style="width: 1112px; height: 240px;visibility: inherit"></div>
                    <div id="u25-1_text" class="text u25_text" style="display:none; visibility: hidden">
                        <p></p>
                    </div>
                </div>

                <!-- Paragraph (Rectangle) -->
                <div id="u26-1" class="ax_default paragraph u26" data-label="Paragraph"
                     style="width: 490px; height: 123px; left: 269px; top: 75px;visibility: inherit">
                    <div id="u26-1_div" class="u26_div" style="width: 490px; height: 123px;visibility: inherit"></div>
                    <div id="u26-1_text" class="text u26_text" style="visibility: inherit">
                        <p><span><c:out value="${row.description}"/></span></p>
                    </div>
                </div>

                <!-- Heading (Rectangle) -->
                <div id="u27-1" class="ax_default heading_2 u27" data-label="Heading"
                     style="width: 350px; height: 37px; left: 269px; top: 27px;visibility: inherit">
                    <div id="u27-1_div" class="u27_div" style="width: 350px; height: 37px;visibility: inherit"></div>
                    <div id="u27-1_text" class="text u27_text" style="visibility: inherit">
                        <p><span><c:out value="${row.name}"/></span></p>
                    </div>
                </div>

                <!-- Heading (Rectangle) -->
                <div id="u28-1" class="ax_default heading_2 u28" data-label="Heading"
                     style="width: 61px; height: 23px; left: 845px; top: 65px;visibility: inherit">
                    <div id="u28-1_div" class="u28_div" style="width: 61px; height: 23px;visibility: inherit"></div>
                    <div id="u28-1_text" class="text u28_text" style="visibility: inherit">
                        <p><span><c:out value="${row.price}"/></span></p>
                    </div>
                </div>

                <!-- Heading (Rectangle) -->
                <div id="u29-1" class="ax_default heading_2 u29" data-label="Heading"
                     style="width: 88px; height: 23px; left: 944px; top: 65px;visibility: inherit">
                    <div id="u29-1_div" class="u29_div" style="width: 88px; height: 23px;visibility: inherit"></div>
                    <div id="u29-1_text" class="text u29_text" style="visibility: inherit">
                        <p><span>Reserve:</span></p>
                    </div>
                </div>

                <!-- Heading (Rectangle) -->
                <div id="u30-1" class="ax_default heading_2 u30" data-label="Heading"
                     style="width: 88px; height: 23px; left: 822px; top: 115px;visibility: inherit">
                    <div id="u30-1_div" class="u30_div" style="width: 88px; height: 23px;visibility: inherit"></div>
                    <div id="u30-1_text" class="text u30_text" style="visibility: inherit">
                        <p><span>Count:</span></p>
                    </div>
                </div>

                <!-- Heading (Rectangle) -->
                <div id="u31-1" class="ax_default heading_2 u31" data-label="Heading"
                     style="width: 72px; height: 23px; left: 1032px; top: 65px;visibility: inherit">
                    <div id="u31-1_div" class="u31_div" style="width: 72px; height: 23px;visibility: inherit"></div>
                    <div id="u31-1_text" class="text u31_text" style="visibility: inherit">
                        <p><span><c:out value="${row.price}"/></span></p>
                    </div>
                </div>

                <!-- Heading (Rectangle) -->
                <div id="u32-1" class="ax_default heading_2 u32" data-label="Heading"
                     style="width: 23px; height: 23px; left: 822px; top: 65px;visibility: inherit">
                    <div id="u32-1_div" class="u32_div" style="width: 23px; height: 23px;visibility: inherit"></div>
                    <div id="u32-1_text" class="text u32_text" style="visibility: inherit">
                        <p><span>￥</span></p>
                    </div>
                </div>

                <!-- Image (Image) -->
                <div id="u33-1" class="ax_default image u33" data-label="Image"
                     style="width: 200px; height: 200px; left: 21px; top: 20px;visibility: inherit">
                    <img id="u33-1_img" class="img u33_img" src="${row.image}"/>
                    <div id="u33-1_text" class="text u33_text" style="display:none; visibility: hidden">
                        <p></p>
                    </div>
                </div>

                <!-- Unnamed (Vertical Line) -->
                <div id="u34-1" class="ax_default line u34"
                     style="width: 1px; height: 143px; left: 788px; top: 65px;visibility: inherit">
                    <img id="u34-1_img" class="img u34_img" src="images/home/u34.svg"/>
                    <div id="u34-1_text" class="text u34_text" style="display:none; visibility: hidden">
                        <p></p>
                    </div>
                </div>

                <!-- Unnamed (Rectangle) -->
                <div id="u35-1" class="ax_default primary_button u35"
                     style="width: 140px; height: 40px; left: 889px; top: 168px;visibility: inherit">
                    <div id="u35-1_div" class="u35_div" style="width: 140px; height: 40px;visibility: inherit"></div>
                    <div id="u35-1_text" class="text u35_text" style="visibility: inherit">
                        <p><span>Add to my cart</span></p>
                    </div>
                </div>

                <!-- Unnamed (Text Field) -->
                <div id="u36-1" class="ax_default text_field u36"
                     style="width: 127px; height: 25px; left: 944px; top: 113px;visibility: inherit">
                    <div id="u36-1_div" class="u36_div" style="width: 127px; height: 25px;visibility: inherit"></div>
                    <input id="u36-1_input" type="number" value="" class="u36_input"/>
                </div>
            </div>
        </c:forEach>
    </div>
</div>


</body>
</html>
