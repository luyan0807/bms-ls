<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>login</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="login/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="login/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="login/css/styles.css" type="text/css" rel="stylesheet"/>
    <link href="login/css/styles1.css" type="text/css" rel="stylesheet"/>
    <script src="jquery-1.7.1.min.js"></script>
    <script src="jquery-ui-1.8.10.custom.min.js"></script>
    <script src="login/js/prototypePre.js"></script>
    <script src="login/js/document.js"></script>
    <script src="login/js/prototypePost.js"></script>
    <script src="login/js/data.js"></script>
    <script type="text/javascript">
    function validate_required(form){
		if(form.idno.value==null||form.idno.value==""){
			alert("证件号不能为空");
			return false;
		}
		else if(form.password.value==null||form.password.value==""){
			alert("密码不能为空");
			return false;
		}
		else{return true;}
    }
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
  </head>
  <body>
    <div id="base" class="">

      <!-- Unnamed (矩形) -->
      <div id="u0" class="ax_default box_1">
        <div id="u0_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u1" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u2" class="ax_default label">
        <div id="u2_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u3" class="text">
          <p><span>系统管理员</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u4" class="ax_default label">
        <div id="u4_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u5" class="text">
          <p><span>证件号</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u6" class="ax_default label">
        <div id="u6_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u7" class="text">
          <p><span>密码</span></p>
        </div>
      </div>

      <!-- 还没注册？ (矩形) -->
      <div id="u8" class="ax_default label" data-label="还没注册？">
        <div id="u8_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u9" class="text">
          <p><span><a href="resgit.jsp" style="text-decoration: none" class="aa">还没注册？</a></span></p>
        </div>
      </div>

      <!-- 找回密码 (矩形) -->
      <!-- <div id="u10" class="ax_default label" data-label="找回密码">
        <div id="u10_div" class=""></div>
        Unnamed ()
        <div id="u11" class="text">
          <p><span>找回密码</span></p>
        </div>
      </div> -->
<form action="checkSystemAdmin" method="post">
      <!-- Unnamed (提交按钮) -->
      <div id="u12" class="ax_default html_button">
        <input id="u12_input" type="submit" value="登录" onclick="return validate_required(this.form)"/>
      </div>

      <!-- 证件号 (文本框) -->
      <div id="u13" class="ax_default text_field" data-label="证件号">
        <input id="u13_input" type="text" name="idno"/>
      </div>

      <!-- 密码 (文本框) -->
      <div id="u14" class="ax_default text_field" data-label="密码">
        <input id="u14_input" type="password" name="password"/>
      </div>
</form>
    </div>

  </body>
</html>