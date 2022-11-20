<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="SOAPs.SimpleSoapClient" %>

<!DOCTYPE html>
<html>
  <head>
    <title>home</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/home/styles.css" type="text/css" rel="stylesheet"/>
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
      <script src="files/home/home.js"></script>
    <script src="files/home/data.js"></script>
    <script src="files/sendEmail/sendEmail.js"></script>
    <script type="text/javascript">
      window.onload=function(){
        var username = document.cookie.indexOf(";",document.cookie.indexOf("username")) == -1 ? document.cookie.substring(document.cookie.indexOf("username=") + 9): document.cookie.substring(document.cookie.indexOf("username=") + 9,document.cookie.indexOf(";",document.cookie.indexOf("username")));
        if (username == "") window.open('login.jsp?status','_self');
        document.getElementById("u16_text").innerHTML = "<p><span>" + username + "</span></p>";
        document.getElementById("u58_text").innerHTML = "<p><span>" + username + "</span></p>";
      };
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
  </head>
  <body>
    <div id="base" class="">

      <!-- Unnamed (Rectangle) -->
      <div id="u10" class="ax_default box_2">
        <div id="u10_div" class=""></div>
        <div id="u10_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u11" class="ax_default box_2">
        <div id="u11_div" class=""></div>
        <div id="u11_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (SVG) -->
      <div id="u12" class="ax_default image">
        <img id="u12_img" class="img " src="images/home/u12.svg"/>
        <div id="u12_text" class="text " style="display:none; visibility: hidden">
          <p></p>
        </div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u13" class="ax_default heading_2">
        <div id="u13_div" class=""></div>
        <div id="u13_text" class="text ">
          <p><span>Goods</span></p>
        </div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u14" class="ax_default heading_2">
        <div id="u14_div" class=""></div>
        <div id="u14_text" class="text ">
          <p><span>Cart</span></p>
        </div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u15" class="ax_default heading_2">
        <div id="u15_div" class=""></div>
        <div id="u15_text" class="text ">
          <p><span>Support</span></p>
        </div>
      </div>

      <!-- Unnamed (Rectangle) -->
      <div id="u16" class="ax_default label">
        <div id="u16_div" class=""></div>
        <div id="u16_text" class="text ">
          <p><span>Username</span></p>
        </div>
      </div>

      <!-- Unnamed (Dynamic Panel) -->
      <div id="u17" class="ax_default">
        <div id="u17_state0" class="panel_state" data-label="home" style="">
          <div id="u17_state0_content" class="panel_state_content">

            <!-- Unnamed (Image) -->


            <div id="u18" class="ax_default image">
              <%
                String [] ops = new String[1];
                ops[0] = "param";

                String [] vs = new String[1];
                vs[0] = "null";

                String images = SimpleSoapClient.SendSoapRequest("RandomPic",ops,vs,"http://localhost:8080/GuysStore/RandomPic");
                String []strs = images.split("<return>");
                String []imgs = new String[strs.length - 1];
                for (int i = 1; i < strs.length; i++)imgs[i - 1] = strs[i].substring(0,strs[i].indexOf("</return>") - 1);

                for (String img : imgs) out.print("<image id=\"u18_img\" class=\"img \" src=\""+ img +"\"\\>\n");
              %>
              <div id="u18_text" class="text " style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (Rectangle) -->
            <div id="u19" class="ax_default primary_button">
              <div id="u19_div" class=""></div>
              <div id="u19_text" class="text ">
                <p><span>&lt;</span></p>
              </div>
            </div>

            <!-- Unnamed (Rectangle) -->
            <div id="u20" class="ax_default primary_button">
              <div id="u20_div" class=""></div>
              <div id="u20_text" class="text ">
                <p><span>&gt;</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u17_state1" class="panel_state" data-label="goods" style="visibility: hidden;">
          <div id="u17_state1_content" class="panel_state_content">

            <!-- Unnamed (Text Field) -->
            <div id="u21" class="ax_default text_field">
              <div id="u21_div" class=""></div>
              <input id="u21_input" type="text" value="" class="u21_input"/>
            </div>

            <!-- Unnamed (Rectangle) -->
            <div id="u22" class="ax_default primary_button">
              <div id="u22_div" class=""></div>
              <div id="u22_text" class="text ">
                <p><span>Search</span></p>
              </div>
            </div>

            <!-- Unnamed (Repeater) -->
            <sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
                               url="jdbc:mysql://rm-8vbr8ca021o44ca4euo.mysql.zhangbei.rds.aliyuncs.com:3306/store?autoReconnect=true&useSSL=false"
                               user="group5" password="BJTUgroup5"/>
                        <c:set var="userID" value="${cookie.username.value}"/>
            <sql:query dataSource="${snapshot}" var="result4">
                SELECT ifnull(SUM(COUNT*PRICE),0) as S, ifnull(SUM(COUNT),0) as C, ifnull((100-SUM(COUNT*PRICE)),0) as B from goods INNER JOIN carts on goods.id= good_id Where user_id = "${userID}";
            </sql:query>
            <sql:query dataSource="${snapshot}" var="result5">
                SELECT ifnull(name,"Not yet") as N from goods INNER JOIN carts on goods.id= good_id Where user_id = "${userID}" ORDER BY count DESC limit 1;
            </sql:query>
            <sql:query dataSource="${snapshot}" var="result">
              SELECT * from goods;
            </sql:query>
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
                    <div id="u26-${row.id}" class="ax_default paragraph u26" data-label="Paragraph"
                         style="width: 490px; height: 123px; left: 269px; top: 75px;visibility: inherit">
                      <div id="u26-1_div" class="u26_div" style="width: 490px; height: 123px;visibility: inherit"></div>
                      <div id="u26-1_text" class="text u26_text" style="visibility: inherit">
                        <p><span><c:out value="${row.description}"/></span></p>
                      </div>
                    </div>

                    <!-- Heading (Rectangle) -->
                    <div id="u27-${row.id}" class="ax_default heading_2 u27" data-label="Heading"
                         style="width: 350px; height: 37px; left: 269px; top: 27px;visibility: inherit">
                      <div id="u27-${row.id}_div" class="u27_div" style="width: 350px; height: 37px;visibility: inherit"></div>
                      <div id="u27-${row.id}_text" class="text u27_text" style="visibility: inherit">
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
                    <div id="u33-${row.id}" class="ax_default image u33" data-label="Image"
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
                    <div id="u35-${row.id}" class="ax_default primary_button u35"
                         style="width: 140px; height: 40px; left: 889px; top: 168px;visibility: inherit"  onclick="addToCart(${row.id})">
                      <div id="u35-${row.id}_div" class="u35_div" style="width: 140px; height: 40px;visibility: inherit"></div>
                      <div id="u35-${row.id}_text" class="text u35_text" style="visibility: inherit">
                        <p><span>Add to my cart</span></p>
                      </div>
                    </div>

                    <!-- Unnamed (Text Field) -->
                    <div id="u36-${row.id}" class="ax_default text_field u36"
                         style="width: 127px; height: 25px; left: 944px; top: 113px;visibility: inherit">
                      <div id="u36-${row.id}_div" class="u36_div" style="width: 127px; height: 25px;visibility: inherit"></div>
                      <input id="u36-${row.id}_input" type="number" value="" class="u36_input"/>
                    </div>
                  </div>
                </c:forEach>
              </div>
            </div>

          </div>
        </div>
        <div id="u17_state2" class="panel_state" data-label="cart" style="visibility: hidden;">
          <div id="u17_state2_content" class="panel_state_content">

            <!-- Unnamed (Inline Frame) -->
            <div id="u37" class="ax_default">
              <iframe src="cart.jsp" id="u37_input" scrolling="auto" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
            </div>

            <!-- Unnamed (Rectangle) -->
            <div id="u38" class="ax_default heading_1">
              <div id="u38_div" class=""></div>
              <div id="u38_text" class="text ">
                <p><span>Total price(￥):</span></p>
              </div>
            </div>
            <!-- Unnamed (Rectangle) -->
            <div id="u39" class="ax_default heading_1">
              <div id="u39_div" class=""></div>
              <div id="u39_text" class="text ">
                <p><span>100</span></p>
              </div>
            </div>

            <!-- Unnamed (Rectangle) -->
            <div id="u40" class="ax_default primary_button" onclick="window.open('buy.jsp','_self')">
              <div id="u40_div" class=""></div>
              <div id="u40_text" class="text ">
                <p><span>BUY</span></p>
              </div>
            </div>

          </div>
        </div>
        <div id="u17_state3" class="panel_state" data-label="support" style="visibility: hidden;">
          <div id="u17_state3_content" class="panel_state_content">

            <!-- Unnamed (Rectangle) -->
            <div id="u41" class="ax_default box_2">
              <div id="u41_div" class=""></div>
              <div id="u41_text" class="text " style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (Group) -->
            <div id="u42" class="ax_default" data-left="593" data-top="133" data-width="789" data-height="664" layer-opacity="1">

              <!-- Unnamed (Group) -->
              <div id="u43" class="ax_default" data-left="593" data-top="133" data-width="300" data-height="69" layer-opacity="1">

                <!-- Unnamed (Text Field) -->
                <div id="u44" class="ax_default text_field">
                  <img id="u44_img" class="img " src="images/home/u44.svg"/>
                  <input id="u44_input" type="email" value="" class="u44_input"/>
                </div>

                <!-- Unnamed (Rectangle) -->
                <div id="u45" class="ax_default heading_2">
                  <img id="u45_img" class="img " src="images/home/u45.svg"/>
                  <div id="u45_text" class="text ">
                    <p><span>Your email:</span></p>
                  </div>
                </div>
              </div>

              <!-- Unnamed (Group) -->
              <div id="u46" class="ax_default" data-left="593" data-top="257" data-width="300" data-height="69" layer-opacity="1">

                <!-- Unnamed (Text Field) -->
                <div id="u47" class="ax_default text_field">
                  <img id="u47_img" class="img " src="images/home/u44.svg"/>
                  <input id="u47_input" type="text" value="" class="u47_input"/>
                </div>

                <!-- Unnamed (Rectangle) -->
                <div id="u48" class="ax_default heading_2">
                  <img id="u48_img" class="img " src="images/home/u48.svg"/>
                  <div id="u48_text" class="text ">
                    <p><span>Request title:</span></p>
                  </div>
                </div>
              </div>

              <!-- Unnamed (Rectangle) -->
              <div id="u49" class="ax_default heading_2">
                <img id="u49_img" class="img " src="images/home/u49.svg"/>
                <div id="u49_text" class="text ">
                  <p><span>Details:</span></p>
                </div>
              </div>

              <!-- Unnamed (Group) -->
              <div id="u50" class="ax_default" data-left="593" data-top="381" data-width="166" data-height="152" layer-opacity="1">

                <!-- Unnamed (Radio Button) -->
                <div id="u51" class="ax_default radio_button selected">
                  <label id="u51_input_label" for="u51_input" style="position: absolute; left: 0px;">
                    <img id="u51_img" class="img " src="images/home/u51_selected.svg"/>
                    <div id="u51_text" class="text ">
                      <p><span>Suggestion to the website</span></p>
                    </div>
                  </label>
                  <input id="u51_input" type="radio" value="radio" name="u51" checked/>
                </div>

                <!-- Unnamed (Radio Button) -->
                <div id="u52" class="ax_default radio_button">
                  <label id="u52_input_label" for="u52_input" style="position: absolute; left: 0px;">
                    <img id="u52_img" class="img " src="images/home/u52.svg"/>
                    <div id="u52_text" class="text ">
                      <p><span>Trouble with the website</span></p>
                    </div>
                  </label>
                  <input id="u52_input" type="radio" value="radio" name="u52"/>
                </div>

                <!-- Unnamed (Radio Button) -->
                <div id="u53" class="ax_default radio_button">
                  <label id="u53_input_label" for="u53_input" style="position: absolute; left: 0px;">
                    <img id="u53_img" class="img " src="images/home/u53.svg"/>
                    <div id="u53_text" class="text ">
                      <p><span>Others</span></p>
                    </div>
                  </label>
                  <input id="u53_input" type="radio" value="radio" name="u53"/>
                </div>

                <!-- Unnamed (Rectangle) -->
                <div id="u54" class="ax_default heading_2">
                  <img id="u54_img" class="img " src="images/home/u54.svg"/>
                  <div id="u54_text" class="text ">
                    <p><span>Request type:</span></p>
                  </div>
                </div>
              </div>

              <!-- Unnamed (Text Area) -->
              <div id="u55" class="ax_default text_area">
                <div id="u55_div" class=""></div>
                <textarea id="u55_input" class="u55_input"></textarea>
              </div>

              <!-- Unnamed (Rectangle) -->
              <div id="u56" class="ax_default primary_button" onclick="sendEmail()">
                <div id="u56_div" class=""></div>
                <div id="u56_text" class="text ">
                  <p><span>Send</span></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id="u17_state4" class="panel_state" data-label="user" style="visibility: hidden;">
          <div id="u17_state4_content" class="panel_state_content">

            <!-- Unnamed (Rectangle) -->
            <div id="u57" class="ax_default box_2">
              <div id="u57_div" class=""></div>
              <div id="u57_text" class="text " style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (Rectangle) -->
            <div id="u58" class="ax_default heading_2">
              <img id="u58_img" class="img " src="images/home/u58.svg"/>
              <div id="u58_text" class="text ">
                <p><span>Username</span></p>
              </div>
            </div>

            <!-- Unnamed (Rectangle) -->
            <div id="u59" class="ax_default box_2">
              <div id="u59_div" class=""></div>
              <div id="u59_text" class="text " style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>
            
            <!-- Unnamed (Rectangle) -->
            <div id="u60" class="ax_default heading_2">
              <div id="u60_div" class=""></div>
              <div id="u60_text" class="text ">
                <p><span>In Total:</span></p>
              </div>
            </div>
            

            <!-- Unnamed (Rectangle) -->
            <div id="u61" class="ax_default primary_button">
              <div id="u61_div" class=""></div>
              <div id="u61_text" class="text ">
                <p><span>Log out</span></p>
              </div>
            </div>
            <c:forEach var="row" items="${result4.rows}">
            <!-- Unnamed (Rectangle) -->
            <div id="u62" class="ax_default label">
              <div id="u62_div" class=""></div>
              <div id="u62_text" class="text ">
                <p><span><c:out value="${row.S}"/> $</span></p>
              </div>
            </div>
            </c:forEach>
            
            <!-- Unnamed (Rectangle) -->
            <div id="u63" class="ax_default heading_2">
              <div id="u63_div" class=""></div>
              <div id="u63_text" class="text ">
                <p><span>Purchased:</span></p>
              </div>
            </div>
            <c:forEach var="row" items="${result4.rows}">
            <!-- Unnamed (Rectangle) -->
            <div id="u64" class="ax_default label">
              <div id="u64_div" class=""></div>
              <div id="u64_text" class="text ">
                <p><span><c:out value="${row.C}"/> Items</span></p>
              </div>
            </div>
            </c:forEach>

            <!-- Unnamed (Rectangle) -->
            <div id="u65" class="ax_default heading_2">
              <div id="u65_div" class=""></div>
              <div id="u65_text" class="text ">
                <p><span>Favorite:</span></p>
              </div>
            </div>

            <c:forEach var="row" items="${result5.rows}">
            <!-- Unnamed (Rectangle) -->
            <div id="u66" class="ax_default label">
              <div id="u66_div" class=""></div>
              <div id="u66_text" class="text ">
                <p><span><c:out value="${row.N}"/></span></p>
              </div>
            </div>
            </c:forEach>

            <!-- Unnamed (Rectangle) -->
            <div id="u67" class="ax_default heading_2">
              <div id="u67_div" class=""></div>
              <div id="u67_text" class="text ">
                <p><span>Balance:</span></p>
              </div>
            </div>
            <c:forEach var="row" items="${result4.rows}">
            <!-- Unnamed (Rectangle) -->
            <div id="u68" class="ax_default label">
              <div id="u68_div" class=""></div>
              <div id="u68_text" class="text ">
                <p><span><c:out value="${row.B}"/> $</span></p>
              </div>
            </div>
            </c:forEach>

<!--             Unnamed (Rectangle) 
            <div id="u69" class="ax_default heading_2">
              <div id="u69_div" class=""></div>
              <div id="u69_text" class="text ">
                <p><span>Purchased:</span></p>
              </div>
            </div>

             Unnamed (Rectangle) 
            <div id="u70" class="ax_default label">
              <div id="u70_div" class=""></div>
              <div id="u70_text" class="text ">
                <p><span>100.00 $</span></p>
              </div>
            </div>

             Unnamed (Rectangle) 
            <div id="u71" class="ax_default heading_2">
              <div id="u71_div" class=""></div>
              <div id="u71_text" class="text ">
                <p><span>Purchased:</span></p>
              </div>
            </div>

             Unnamed (Rectangle) 
            <div id="u72" class="ax_default label">
              <div id="u72_div" class=""></div>
              <div id="u72_text" class="text ">
                <p><span>100.00 $</span></p>
              </div>
            </div>-->
          </div>
        </div>
      </div>
    </div>
    <script src="resources/scripts/axure/ios.js"></script>
  </body>
</html>
