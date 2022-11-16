﻿<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
  </head>
  <body>
    <div id="base" class="">

      <!-- Unnamed (Repeater) -->
      <div id="u73" class="ax_default">
        <script id="u73_script" type="axure-repeater-template">

          <!-- Card (Group) -->
          <div id="u74" class="ax_default u74" data-label="Card" data-left="0" data-top="0" data-width="1112" data-height="240" layer-opacity="1">

            <!-- Card Background (Rectangle) -->
            <div id="u75" class="ax_default shape u75" data-label="Card Background">
              <div id="u75_div" class="u75_div"></div>
              <div id="u75_text" class="text u75_text" style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Paragraph (Rectangle) -->
            <div id="u76" class="ax_default paragraph u76" data-label="Paragraph">
              <div id="u76_div" class="u76_div"></div>
              <div id="u76_text" class="text u76_text">
                <p><span>description description description description description description description description description description description description description description.</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u77" class="ax_default heading_2 u77" data-label="Heading">
              <div id="u77_div" class="u77_div"></div>
              <div id="u77_text" class="text u77_text">
                <p><span>name</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u78" class="ax_default heading_2 u78" data-label="Heading">
              <div id="u78_div" class="u78_div"></div>
              <div id="u78_text" class="text u78_text">
                <p><span>price</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u79" class="ax_default heading_2 u79" data-label="Heading">
              <div id="u79_div" class="u79_div"></div>
              <div id="u79_text" class="text u79_text">
                <p><span>Count:</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u80" class="ax_default heading_2 u80" data-label="Heading">
              <div id="u80_div" class="u80_div"></div>
              <div id="u80_text" class="text u80_text">
                <p><span>Change:</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u81" class="ax_default heading_2 u81" data-label="Heading">
              <div id="u81_div" class="u81_div"></div>
              <div id="u81_text" class="text u81_text">
                <p><span>count</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u82" class="ax_default heading_2 u82" data-label="Heading">
              <div id="u82_div" class="u82_div"></div>
              <div id="u82_text" class="text u82_text">
                <p><span>￥</span></p>
              </div>
            </div>

            <!-- Image (Image) -->
            <div id="u83" class="ax_default image u83" data-label="Image">
              <img id="u83_img" class="img u83_img" src="images/home/image_u33.svg"/>
              <div id="u83_text" class="text u83_text" style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (Vertical Line) -->
            <div id="u84" class="ax_default line u84">
              <img id="u84_img" class="img u84_img" src="images/home/u34.svg"/>
              <div id="u84_text" class="text u84_text" style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (Rectangle) -->
            <div id="u85" class="ax_default primary_button u85">
              <div id="u85_div" class="u85_div"></div>
              <div id="u85_text" class="text u85_text">
                <p><span>Add</span></p>
              </div>
            </div>

            <!-- Unnamed (Rectangle) -->
            <div id="u86" class="ax_default primary_button u86">
              <div id="u86_div" class="u86_div"></div>
              <div id="u86_text" class="text u86_text">
                <p><span>Decrease</span></p>
              </div>
            </div>

            <!-- Unnamed (Text Field) -->
            <div id="u87" class="ax_default text_field u87">
              <div id="u87_div" class="u87_div"></div>
              <input id="u87_input" type="number" value="" class="u87_input"/>
            </div>
          </div>
        </script>
        <sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
                               url="jdbc:mysql://rm-8vbr8ca021o44ca4euo.mysql.zhangbei.rds.aliyuncs.com:3306/store?autoReconnect=true&useSSL=false"
                               user="group5" password="BJTUgroup5"/>

            <sql:query dataSource="${snapshot}" var="result1">
              SELECT * from carts;
            </sql:query>
            <sql:query dataSource="${snapshot}" var="result2">
              SELECT * from goods inner join carts where goods.id=user_id;
            </sql:query>
            <c:forEach var="row" items="${result.rows}">
            <div id="u73-1" class="preeval" style="width: 1112px; height: 240px;">

              <!-- Card (Group) -->
              <div id="u74-1" class="ax_default u74" data-label="Card" style="visibility: inherit" data-left="0" data-top="0" data-width="1112" data-height="240" layer-opacity="1">

                <!-- Card Background (Rectangle) -->
                <div id="u75-1" class="ax_default shape u75" data-label="Card Background" style="width: 1112px; height: 240px; left: 0px; top: 0px;visibility: inherit">
                  <div id="u75-1_div" class="u75_div" style="width: 1112px; height: 240px;visibility: inherit"></div>
                  <div id="u75-1_text" class="text u75_text" style="display:none; visibility: hidden">
                    <p></p>
                  </div>
                </div>

                <!-- Paragraph (Rectangle) -->
                <div id="u76-1" class="ax_default paragraph u76" data-label="Paragraph" style="width: 490px; height: 123px; left: 269px; top: 75px;visibility: inherit">
                  <div id="u76-1_div" class="u76_div" style="width: 490px; height: 123px;visibility: inherit"></div>
                  <div id="u76-1_text" class="text u76_text" style="visibility: inherit">
                    <p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </span></p>
                  </div>
                </div>

                <!-- Heading (Rectangle) -->
                <div id="u77-1" class="ax_default heading_2 u77" data-label="Heading" style="width: 350px; height: 37px; left: 269px; top: 27px;visibility: inherit">
                  <div id="u77-1_div" class="u77_div" style="width: 350px; height: 37px;visibility: inherit"></div>
                  <div id="u77-1_text" class="text u77_text" style="visibility: inherit">
                    <p><span>Heading 1</span></p>
                  </div>
                </div>

                <!-- Heading (Rectangle) -->
                <div id="u78-1" class="ax_default heading_2 u78" data-label="Heading" style="width: 61px; height: 23px; left: 845px; top: 65px;visibility: inherit">
                  <div id="u78-1_div" class="u78_div" style="width: 61px; height: 23px;visibility: inherit"></div>
                  <div id="u78-1_text" class="text u78_text" style="visibility: inherit">
                    <p><span>20.00</span></p>
                  </div>
                </div>

                <!-- Heading (Rectangle) -->
                <div id="u79-1" class="ax_default heading_2 u79" data-label="Heading" style="width: 88px; height: 23px; left: 944px; top: 65px;visibility: inherit">
                  <div id="u79-1_div" class="u79_div" style="width: 88px; height: 23px;visibility: inherit"></div>
                  <div id="u79-1_text" class="text u79_text" style="visibility: inherit">
                    <p><span>Count:</span></p>
                  </div>
                </div>

                <!-- Heading (Rectangle) -->
                <div id="u80-1" class="ax_default heading_2 u80" data-label="Heading" style="width: 88px; height: 23px; left: 822px; top: 115px;visibility: inherit">
                  <div id="u80-1_div" class="u80_div" style="width: 88px; height: 23px;visibility: inherit"></div>
                  <div id="u80-1_text" class="text u80_text" style="visibility: inherit">
                    <p><span>Change:</span></p>
                  </div>
                </div>

                <!-- Heading (Rectangle) -->
                <div id="u81-1" class="ax_default heading_2 u81" data-label="Heading" style="width: 72px; height: 23px; left: 1032px; top: 65px;visibility: inherit">
                  <div id="u81-1_div" class="u81_div" style="width: 72px; height: 23px;visibility: inherit"></div>
                  <div id="u81-1_text" class="text u81_text" style="visibility: inherit">
                    <p><span>5</span></p>
                  </div>
                </div>

                <!-- Heading (Rectangle) -->
                <div id="u82-1" class="ax_default heading_2 u82" data-label="Heading" style="width: 23px; height: 23px; left: 822px; top: 65px;visibility: inherit">
                  <div id="u82-1_div" class="u82_div" style="width: 23px; height: 23px;visibility: inherit"></div>
                  <div id="u82-1_text" class="text u82_text" style="visibility: inherit">
                    <p><span>￥</span></p>
                  </div>
                </div>

                <!-- Image (Image) -->
                <div id="u83-1" class="ax_default image u83" data-label="Image" style="width: 200px; height: 200px; left: 21px; top: 20px;visibility: inherit">
                  <img id="u83-1_img" class="img u83_img" src="images/home/image_u33-0.svg"/>
                  <div id="u83-1_text" class="text u83_text" style="display:none; visibility: hidden">
                    <p></p>
                  </div>
                </div>

                <!-- Unnamed (Vertical Line) -->
                <div id="u84-1" class="ax_default line u84" style="width: 1px; height: 143px; left: 788px; top: 65px;visibility: inherit">
                  <img id="u84-1_img" class="img u84_img" src="images/home/u34.svg"/>
                  <div id="u84-1_text" class="text u84_text" style="display:none; visibility: hidden">
                    <p></p>
                  </div>
                </div>

                <!-- Unnamed (Rectangle) -->
                <div id="u85-1" class="ax_default primary_button u85" style="width: 101px; height: 40px; left: 822px; top: 168px;visibility: inherit">
                  <div id="u85-1_div" class="u85_div" style="width: 101px; height: 40px;visibility: inherit"></div>
                  <div id="u85-1_text" class="text u85_text" style="visibility: inherit">
                    <p><span>Add</span></p>
                  </div>
                </div>

                <!-- Unnamed (Rectangle) -->
                <div id="u86-1" class="ax_default primary_button u86" style="width: 101px; height: 40px; left: 970px; top: 168px;visibility: inherit">
                  <div id="u86-1_div" class="u86_div" style="width: 101px; height: 40px;visibility: inherit"></div>
                  <div id="u86-1_text" class="text u86_text" style="visibility: inherit">
                    <p><span>Decrease</span></p>
                  </div>
                </div>

                <!-- Unnamed (Text Field) -->
                <div id="u87-1" class="ax_default text_field u87" style="width: 127px; height: 25px; left: 944px; top: 113px;visibility: inherit">
                  <div id="u87-1_div" class="u87_div" style="width: 127px; height: 25px;visibility: inherit"></div>
                  <input id="u87-1_input" type="number" value="" class="u87_input"/>
                </div>
              </div>
          </c:forEach>
        </div>
        <div id="u73-2" class="preeval" style="width: 1112px; height: 240px;">

          <!-- Card (Group) -->
          <div id="u74-2" class="ax_default u74" data-label="Card" style="visibility: inherit" data-left="0" data-top="0" data-width="1112" data-height="240" layer-opacity="1">

            <!-- Card Background (Rectangle) -->
            <div id="u75-2" class="ax_default shape u75" data-label="Card Background" style="width: 1112px; height: 240px; left: 0px; top: 0px;visibility: inherit">
              <div id="u75-2_div" class="u75_div" style="width: 1112px; height: 240px;visibility: inherit"></div>
              <div id="u75-2_text" class="text u75_text" style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Paragraph (Rectangle) -->
            <div id="u76-2" class="ax_default paragraph u76" data-label="Paragraph" style="width: 490px; height: 123px; left: 269px; top: 75px;visibility: inherit">
              <div id="u76-2_div" class="u76_div" style="width: 490px; height: 123px;visibility: inherit"></div>
              <div id="u76-2_text" class="text u76_text" style="visibility: inherit">
                <p><span>Proin gravida dolor sit amet lacus accumsan et viverra.</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u77-2" class="ax_default heading_2 u77" data-label="Heading" style="width: 350px; height: 37px; left: 269px; top: 27px;visibility: inherit">
              <div id="u77-2_div" class="u77_div" style="width: 350px; height: 37px;visibility: inherit"></div>
              <div id="u77-2_text" class="text u77_text" style="visibility: inherit">
                <p><span>Heading 2</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u78-2" class="ax_default heading_2 u78" data-label="Heading" style="width: 61px; height: 23px; left: 845px; top: 65px;visibility: inherit">
              <div id="u78-2_div" class="u78_div" style="width: 61px; height: 23px;visibility: inherit"></div>
              <div id="u78-2_text" class="text u78_text" style="visibility: inherit">
                <p><span>50.00</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u79-2" class="ax_default heading_2 u79" data-label="Heading" style="width: 88px; height: 23px; left: 944px; top: 65px;visibility: inherit">
              <div id="u79-2_div" class="u79_div" style="width: 88px; height: 23px;visibility: inherit"></div>
              <div id="u79-2_text" class="text u79_text" style="visibility: inherit">
                <p><span>Count:</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u80-2" class="ax_default heading_2 u80" data-label="Heading" style="width: 88px; height: 23px; left: 822px; top: 115px;visibility: inherit">
              <div id="u80-2_div" class="u80_div" style="width: 88px; height: 23px;visibility: inherit"></div>
              <div id="u80-2_text" class="text u80_text" style="visibility: inherit">
                <p><span>Change:</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u81-2" class="ax_default heading_2 u81" data-label="Heading" style="width: 72px; height: 23px; left: 1032px; top: 65px;visibility: inherit">
              <div id="u81-2_div" class="u81_div" style="width: 72px; height: 23px;visibility: inherit"></div>
              <div id="u81-2_text" class="text u81_text" style="visibility: inherit">
                <p><span>10</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u82-2" class="ax_default heading_2 u82" data-label="Heading" style="width: 23px; height: 23px; left: 822px; top: 65px;visibility: inherit">
              <div id="u82-2_div" class="u82_div" style="width: 23px; height: 23px;visibility: inherit"></div>
              <div id="u82-2_text" class="text u82_text" style="visibility: inherit">
                <p><span>￥</span></p>
              </div>
            </div>

            <!-- Image (Image) -->
            <div id="u83-2" class="ax_default image u83" data-label="Image" style="width: 200px; height: 200px; left: 21px; top: 20px;visibility: inherit">
              <img id="u83-2_img" class="img u83_img" src="images/home/image_u33-1.svg"/>
              <div id="u83-2_text" class="text u83_text" style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (Vertical Line) -->
            <div id="u84-2" class="ax_default line u84" style="width: 1px; height: 143px; left: 788px; top: 65px;visibility: inherit">
              <img id="u84-2_img" class="img u84_img" src="images/home/u34.svg"/>
              <div id="u84-2_text" class="text u84_text" style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (Rectangle) -->
            <div id="u85-2" class="ax_default primary_button u85" style="width: 101px; height: 40px; left: 822px; top: 168px;visibility: inherit">
              <div id="u85-2_div" class="u85_div" style="width: 101px; height: 40px;visibility: inherit"></div>
              <div id="u85-2_text" class="text u85_text" style="visibility: inherit">
                <p><span>Add</span></p>
              </div>
            </div>

            <!-- Unnamed (Rectangle) -->
            <div id="u86-2" class="ax_default primary_button u86" style="width: 101px; height: 40px; left: 970px; top: 168px;visibility: inherit">
              <div id="u86-2_div" class="u86_div" style="width: 101px; height: 40px;visibility: inherit"></div>
              <div id="u86-2_text" class="text u86_text" style="visibility: inherit">
                <p><span>Decrease</span></p>
              </div>
            </div>

            <!-- Unnamed (Text Field) -->
            <div id="u87-2" class="ax_default text_field u87" style="width: 127px; height: 25px; left: 944px; top: 113px;visibility: inherit">
              <div id="u87-2_div" class="u87_div" style="width: 127px; height: 25px;visibility: inherit"></div>
              <input id="u87-2_input" type="number" value="" class="u87_input"/>
            </div>
          </div>
        </div>
        <div id="u73-3" class="preeval" style="width: 1112px; height: 240px;">

          <!-- Card (Group) -->
          <div id="u74-3" class="ax_default u74" data-label="Card" style="visibility: inherit" data-left="0" data-top="0" data-width="1112" data-height="240" layer-opacity="1">

            <!-- Card Background (Rectangle) -->
            <div id="u75-3" class="ax_default shape u75" data-label="Card Background" style="width: 1112px; height: 240px; left: 0px; top: 0px;visibility: inherit">
              <div id="u75-3_div" class="u75_div" style="width: 1112px; height: 240px;visibility: inherit"></div>
              <div id="u75-3_text" class="text u75_text" style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Paragraph (Rectangle) -->
            <div id="u76-3" class="ax_default paragraph u76" data-label="Paragraph" style="width: 490px; height: 123px; left: 269px; top: 75px;visibility: inherit">
              <div id="u76-3_div" class="u76_div" style="width: 490px; height: 123px;visibility: inherit"></div>
              <div id="u76-3_text" class="text u76_text" style="visibility: inherit">
                <p><span>Aenean euismod bibendum laoreet.</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u77-3" class="ax_default heading_2 u77" data-label="Heading" style="width: 350px; height: 37px; left: 269px; top: 27px;visibility: inherit">
              <div id="u77-3_div" class="u77_div" style="width: 350px; height: 37px;visibility: inherit"></div>
              <div id="u77-3_text" class="text u77_text" style="visibility: inherit">
                <p><span>Heading 3</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u78-3" class="ax_default heading_2 u78" data-label="Heading" style="width: 61px; height: 23px; left: 845px; top: 65px;visibility: inherit">
              <div id="u78-3_div" class="u78_div" style="width: 61px; height: 23px;visibility: inherit"></div>
              <div id="u78-3_text" class="text u78_text" style="visibility: inherit">
                <p><span>69.99</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u79-3" class="ax_default heading_2 u79" data-label="Heading" style="width: 88px; height: 23px; left: 944px; top: 65px;visibility: inherit">
              <div id="u79-3_div" class="u79_div" style="width: 88px; height: 23px;visibility: inherit"></div>
              <div id="u79-3_text" class="text u79_text" style="visibility: inherit">
                <p><span>Count:</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u80-3" class="ax_default heading_2 u80" data-label="Heading" style="width: 88px; height: 23px; left: 822px; top: 115px;visibility: inherit">
              <div id="u80-3_div" class="u80_div" style="width: 88px; height: 23px;visibility: inherit"></div>
              <div id="u80-3_text" class="text u80_text" style="visibility: inherit">
                <p><span>Change:</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u81-3" class="ax_default heading_2 u81" data-label="Heading" style="width: 72px; height: 23px; left: 1032px; top: 65px;visibility: inherit">
              <div id="u81-3_div" class="u81_div" style="width: 72px; height: 23px;visibility: inherit"></div>
              <div id="u81-3_text" class="text u81_text" style="visibility: inherit">
                <p><span>15</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u82-3" class="ax_default heading_2 u82" data-label="Heading" style="width: 23px; height: 23px; left: 822px; top: 65px;visibility: inherit">
              <div id="u82-3_div" class="u82_div" style="width: 23px; height: 23px;visibility: inherit"></div>
              <div id="u82-3_text" class="text u82_text" style="visibility: inherit">
                <p><span>￥</span></p>
              </div>
            </div>

            <!-- Image (Image) -->
            <div id="u83-3" class="ax_default image u83" data-label="Image" style="width: 200px; height: 200px; left: 21px; top: 20px;visibility: inherit">
              <img id="u83-3_img" class="img u83_img" src="images/home/image_u33-2.svg"/>
              <div id="u83-3_text" class="text u83_text" style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (Vertical Line) -->
            <div id="u84-3" class="ax_default line u84" style="width: 1px; height: 143px; left: 788px; top: 65px;visibility: inherit">
              <img id="u84-3_img" class="img u84_img" src="images/home/u34.svg"/>
              <div id="u84-3_text" class="text u84_text" style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (Rectangle) -->
            <div id="u85-3" class="ax_default primary_button u85" style="width: 101px; height: 40px; left: 822px; top: 168px;visibility: inherit">
              <div id="u85-3_div" class="u85_div" style="width: 101px; height: 40px;visibility: inherit"></div>
              <div id="u85-3_text" class="text u85_text" style="visibility: inherit">
                <p><span>Add</span></p>
              </div>
            </div>

            <!-- Unnamed (Rectangle) -->
            <div id="u86-3" class="ax_default primary_button u86" style="width: 101px; height: 40px; left: 970px; top: 168px;visibility: inherit">
              <div id="u86-3_div" class="u86_div" style="width: 101px; height: 40px;visibility: inherit"></div>
              <div id="u86-3_text" class="text u86_text" style="visibility: inherit">
                <p><span>Decrease</span></p>
              </div>
            </div>

            <!-- Unnamed (Text Field) -->
            <div id="u87-3" class="ax_default text_field u87" style="width: 127px; height: 25px; left: 944px; top: 113px;visibility: inherit">
              <div id="u87-3_div" class="u87_div" style="width: 127px; height: 25px;visibility: inherit"></div>
              <input id="u87-3_input" type="number" value="" class="u87_input"/>
            </div>
          </div>
        </div>
        <div id="u73-4" class="preeval" style="width: 1112px; height: 240px;">

          <!-- Card (Group) -->
          <div id="u74-4" class="ax_default u74" data-label="Card" style="visibility: inherit" data-left="0" data-top="0" data-width="1112" data-height="240" layer-opacity="1">

            <!-- Card Background (Rectangle) -->
            <div id="u75-4" class="ax_default shape u75" data-label="Card Background" style="width: 1112px; height: 240px; left: 0px; top: 0px;visibility: inherit">
              <div id="u75-4_div" class="u75_div" style="width: 1112px; height: 240px;visibility: inherit"></div>
              <div id="u75-4_text" class="text u75_text" style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Paragraph (Rectangle) -->
            <div id="u76-4" class="ax_default paragraph u76" data-label="Paragraph" style="width: 490px; height: 123px; left: 269px; top: 75px;visibility: inherit">
              <div id="u76-4_div" class="u76_div" style="width: 490px; height: 123px;visibility: inherit"></div>
              <div id="u76-4_text" class="text u76_text" style="visibility: inherit">
                <p><span>Aenean euismod bibendum laoreet.</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u77-4" class="ax_default heading_2 u77" data-label="Heading" style="width: 350px; height: 37px; left: 269px; top: 27px;visibility: inherit">
              <div id="u77-4_div" class="u77_div" style="width: 350px; height: 37px;visibility: inherit"></div>
              <div id="u77-4_text" class="text u77_text" style="visibility: inherit">
                <p><span>Heading 3</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u78-4" class="ax_default heading_2 u78" data-label="Heading" style="width: 61px; height: 23px; left: 845px; top: 65px;visibility: inherit">
              <div id="u78-4_div" class="u78_div" style="width: 61px; height: 23px;visibility: inherit"></div>
              <div id="u78-4_text" class="text u78_text" style="visibility: inherit">
                <p><span>69.99</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u79-4" class="ax_default heading_2 u79" data-label="Heading" style="width: 88px; height: 23px; left: 944px; top: 65px;visibility: inherit">
              <div id="u79-4_div" class="u79_div" style="width: 88px; height: 23px;visibility: inherit"></div>
              <div id="u79-4_text" class="text u79_text" style="visibility: inherit">
                <p><span>Count:</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u80-4" class="ax_default heading_2 u80" data-label="Heading" style="width: 88px; height: 23px; left: 822px; top: 115px;visibility: inherit">
              <div id="u80-4_div" class="u80_div" style="width: 88px; height: 23px;visibility: inherit"></div>
              <div id="u80-4_text" class="text u80_text" style="visibility: inherit">
                <p><span>Change:</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u81-4" class="ax_default heading_2 u81" data-label="Heading" style="width: 72px; height: 23px; left: 1032px; top: 65px;visibility: inherit">
              <div id="u81-4_div" class="u81_div" style="width: 72px; height: 23px;visibility: inherit"></div>
              <div id="u81-4_text" class="text u81_text" style="visibility: inherit">
                <p><span>15</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u82-4" class="ax_default heading_2 u82" data-label="Heading" style="width: 23px; height: 23px; left: 822px; top: 65px;visibility: inherit">
              <div id="u82-4_div" class="u82_div" style="width: 23px; height: 23px;visibility: inherit"></div>
              <div id="u82-4_text" class="text u82_text" style="visibility: inherit">
                <p><span>￥</span></p>
              </div>
            </div>

            <!-- Image (Image) -->
            <div id="u83-4" class="ax_default image u83" data-label="Image" style="width: 200px; height: 200px; left: 21px; top: 20px;visibility: inherit">
              <img id="u83-4_img" class="img u83_img" src="images/home/image_u33-2.svg"/>
              <div id="u83-4_text" class="text u83_text" style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (Vertical Line) -->
            <div id="u84-4" class="ax_default line u84" style="width: 1px; height: 143px; left: 788px; top: 65px;visibility: inherit">
              <img id="u84-4_img" class="img u84_img" src="images/home/u34.svg"/>
              <div id="u84-4_text" class="text u84_text" style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (Rectangle) -->
            <div id="u85-4" class="ax_default primary_button u85" style="width: 101px; height: 40px; left: 822px; top: 168px;visibility: inherit">
              <div id="u85-4_div" class="u85_div" style="width: 101px; height: 40px;visibility: inherit"></div>
              <div id="u85-4_text" class="text u85_text" style="visibility: inherit">
                <p><span>Add</span></p>
              </div>
            </div>

            <!-- Unnamed (Rectangle) -->
            <div id="u86-4" class="ax_default primary_button u86" style="width: 101px; height: 40px; left: 970px; top: 168px;visibility: inherit">
              <div id="u86-4_div" class="u86_div" style="width: 101px; height: 40px;visibility: inherit"></div>
              <div id="u86-4_text" class="text u86_text" style="visibility: inherit">
                <p><span>Decrease</span></p>
              </div>
            </div>

            <!-- Unnamed (Text Field) -->
            <div id="u87-4" class="ax_default text_field u87" style="width: 127px; height: 25px; left: 944px; top: 113px;visibility: inherit">
              <div id="u87-4_div" class="u87_div" style="width: 127px; height: 25px;visibility: inherit"></div>
              <input id="u87-4_input" type="number" value="" class="u87_input"/>
            </div>
          </div>
        </div>
        <div id="u73-5" class="preeval" style="width: 1112px; height: 240px;">

          <!-- Card (Group) -->
          <div id="u74-5" class="ax_default u74" data-label="Card" style="visibility: inherit" data-left="0" data-top="0" data-width="1112" data-height="240" layer-opacity="1">

            <!-- Card Background (Rectangle) -->
            <div id="u75-5" class="ax_default shape u75" data-label="Card Background" style="width: 1112px; height: 240px; left: 0px; top: 0px;visibility: inherit">
              <div id="u75-5_div" class="u75_div" style="width: 1112px; height: 240px;visibility: inherit"></div>
              <div id="u75-5_text" class="text u75_text" style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Paragraph (Rectangle) -->
            <div id="u76-5" class="ax_default paragraph u76" data-label="Paragraph" style="width: 490px; height: 123px; left: 269px; top: 75px;visibility: inherit">
              <div id="u76-5_div" class="u76_div" style="width: 490px; height: 123px;visibility: inherit"></div>
              <div id="u76-5_text" class="text u76_text" style="visibility: inherit">
                <p><span>Aenean euismod bibendum laoreet.</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u77-5" class="ax_default heading_2 u77" data-label="Heading" style="width: 350px; height: 37px; left: 269px; top: 27px;visibility: inherit">
              <div id="u77-5_div" class="u77_div" style="width: 350px; height: 37px;visibility: inherit"></div>
              <div id="u77-5_text" class="text u77_text" style="visibility: inherit">
                <p><span>Heading 3</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u78-5" class="ax_default heading_2 u78" data-label="Heading" style="width: 61px; height: 23px; left: 845px; top: 65px;visibility: inherit">
              <div id="u78-5_div" class="u78_div" style="width: 61px; height: 23px;visibility: inherit"></div>
              <div id="u78-5_text" class="text u78_text" style="visibility: inherit">
                <p><span>69.99</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u79-5" class="ax_default heading_2 u79" data-label="Heading" style="width: 88px; height: 23px; left: 944px; top: 65px;visibility: inherit">
              <div id="u79-5_div" class="u79_div" style="width: 88px; height: 23px;visibility: inherit"></div>
              <div id="u79-5_text" class="text u79_text" style="visibility: inherit">
                <p><span>Count:</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u80-5" class="ax_default heading_2 u80" data-label="Heading" style="width: 88px; height: 23px; left: 822px; top: 115px;visibility: inherit">
              <div id="u80-5_div" class="u80_div" style="width: 88px; height: 23px;visibility: inherit"></div>
              <div id="u80-5_text" class="text u80_text" style="visibility: inherit">
                <p><span>Change:</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u81-5" class="ax_default heading_2 u81" data-label="Heading" style="width: 72px; height: 23px; left: 1032px; top: 65px;visibility: inherit">
              <div id="u81-5_div" class="u81_div" style="width: 72px; height: 23px;visibility: inherit"></div>
              <div id="u81-5_text" class="text u81_text" style="visibility: inherit">
                <p><span>15</span></p>
              </div>
            </div>

            <!-- Heading (Rectangle) -->
            <div id="u82-5" class="ax_default heading_2 u82" data-label="Heading" style="width: 23px; height: 23px; left: 822px; top: 65px;visibility: inherit">
              <div id="u82-5_div" class="u82_div" style="width: 23px; height: 23px;visibility: inherit"></div>
              <div id="u82-5_text" class="text u82_text" style="visibility: inherit">
                <p><span>￥</span></p>
              </div>
            </div>

            <!-- Image (Image) -->
            <div id="u83-5" class="ax_default image u83" data-label="Image" style="width: 200px; height: 200px; left: 21px; top: 20px;visibility: inherit">
              <img id="u83-5_img" class="img u83_img" src="images/home/image_u33-2.svg"/>
              <div id="u83-5_text" class="text u83_text" style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (Vertical Line) -->
            <div id="u84-5" class="ax_default line u84" style="width: 1px; height: 143px; left: 788px; top: 65px;visibility: inherit">
              <img id="u84-5_img" class="img u84_img" src="images/home/u34.svg"/>
              <div id="u84-5_text" class="text u84_text" style="display:none; visibility: hidden">
                <p></p>
              </div>
            </div>

            <!-- Unnamed (Rectangle) -->
            <div id="u85-5" class="ax_default primary_button u85" style="width: 101px; height: 40px; left: 822px; top: 168px;visibility: inherit">
              <div id="u85-5_div" class="u85_div" style="width: 101px; height: 40px;visibility: inherit"></div>
              <div id="u85-5_text" class="text u85_text" style="visibility: inherit">
                <p><span>Add</span></p>
              </div>
            </div>

            <!-- Unnamed (Rectangle) -->
            <div id="u86-5" class="ax_default primary_button u86" style="width: 101px; height: 40px; left: 970px; top: 168px;visibility: inherit">
              <div id="u86-5_div" class="u86_div" style="width: 101px; height: 40px;visibility: inherit"></div>
              <div id="u86-5_text" class="text u86_text" style="visibility: inherit">
                <p><span>Decrease</span></p>
              </div>
            </div>

            <!-- Unnamed (Text Field) -->
            <div id="u87-5" class="ax_default text_field u87" style="width: 127px; height: 25px; left: 944px; top: 113px;visibility: inherit">
              <div id="u87-5_div" class="u87_div" style="width: 127px; height: 25px;visibility: inherit"></div>
              <input id="u87-5_input" type="number" value="" class="u87_input"/>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script src="resources/scripts/axure/ios.js"></script>
  </body>
</html>
