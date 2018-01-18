<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <title>createnotice</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="S_css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="S_css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="S_css/styles.css" type="text/css" rel="stylesheet"/>
    <link href="S_createnotice/styles.css" type="text/css" rel="stylesheet"/>
    <script src="S_js/jquery-1.7.1.min.js"></script>
    <script src="S_js/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="S_js/prototypePre.js"></script>
    <script src="S_js/document.js"></script>
    <script src="S_js/prototypePost.js"></script>
    <script src="S_createnotice/data.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
  </head>
  <body>
    <div id="base" class="">
<form action="saveMessage" method="post" id="updateInfo">
      <!-- Unnamed (矩形) -->
      <div id="u336" class="ax_default label">
        <div id="u336_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u337" class="text">
          <p><span>内容：</span></p>
        </div>
      </div>

      <!-- 内容 (文本框) -->
      <div id="u338" class="ax_default text_field" data-label="内容">
        <input id="u338_input" type="text" value="" name="content"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u339" class="ax_default label">
        <div id="u339_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u340" class="text">
          <p><span>主题：</span></p>
        </div>
      </div>

      <!-- 主题 (文本框) -->
      <div id="u341" class="ax_default text_field" data-label="主题">
        <input id="u341_input" type="text" value="" name="topic"/>
      </div>

      <!-- Unnamed (提交按钮) -->
      <div id="u342" class="ax_default html_button">
        <input id="u342_input" type="submit" value="创建"/>
      </div>
</form>
      <!-- Unnamed (矩形) -->
      <div id="u343" class="ax_default box_1">
        <div id="u343_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u344" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u345" class="ax_default image">
        <img id="u345_img" class="img " src="images/login_success/u74.png"/>
        <!-- Unnamed () -->
        <div id="u346" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u347" class="ax_default label">
        <div id="u347_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u348" class="text">
          <p><span><a href="showSystemAdmin" style="text-decoration:none">个人信息</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u349" class="ax_default image">
        <img id="u349_img" class="img " src="images/login_success/u46.png"/>
        <!-- Unnamed () -->
        <div id="u350" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u351" class="ax_default label">
        <div id="u351_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u352" class="text">
            <p><span><a href="borrowRank" style="text-decoration:none" class="aa">借阅排行</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u353" class="ax_default image">
        <img id="u353_img" class="img " src="images/login_success/u50.png"/>
        <!-- Unnamed () -->
        <div id="u354" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u355" class="ax_default label">
        <div id="u355_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u356" class="text">
          <p><span><a href="listStandard" style="text-decoration:none">额度标准</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u357" class="ax_default image">
        <img id="u357_img" class="img " src="images/login_success/u62.png"/>
        <!-- Unnamed () -->
        <div id="u358" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u359" class="ax_default label">
        <div id="u359_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u360" class="text">
                  <p><span><a href="showAllAdmin" style="text-decoration:none">用户管理</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u361" class="ax_default image">
        <img id="u361_img" class="img " src="images/login_success/u54.png"/>
        <!-- Unnamed () -->
        <div id="u362" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u363" class="ax_default label">
        <div id="u363_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u364" class="text">
          <p><span><a href="toMessageList" style="text-decoration:none">三只公告</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u365" class="ax_default image">
        <img id="u365_img" class="img " src="images/login_success/u70.png"/>
        <!-- Unnamed () -->
        <div id="u366" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u367" class="ax_default label">
        <div id="u367_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u368" class="text">
          <p><span><a href="toHandleList" style="text-decoration:none" class="aa">缴费处理</a></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u377" class="ax_default label">
        <div id="u377_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u378" class="text">
          <p><span><a href="toMessageList">查看公告列表</a></span></p>
        </div>
      </div>
    </div>
  </body>
</html>
