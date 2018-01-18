<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>regist</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="regist/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="regist/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="regist/css/styles.css" type="text/css" rel="stylesheet"/>
    <link href="regist/css/styles1.css" type="text/css" rel="stylesheet"/>
    <script src="jquery-1.7.1.min.js"></script>
    <script src="jquery-ui-1.8.10.custom.min.js"></script>
    <script src="regist/js/prototypePre.js"></script>
    <script src="regist/js/document.js"></script>
    <script src="regist/js/prototypePost.js"></script>
    <script src="regist/js/data.js"></script>
    <script type="text/javascript">
    function validate_required(form){
		if(form.ppassword.value!=form.password.value){
			alert("确认密码输入错误！");
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
      <div id="u15" class="ax_default box_1">
        <div id="u15_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u16" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u17" class="ax_default label">
        <div id="u17_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u18" class="text">
          <p><span>系统管理员</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u19" class="ax_default label">
        <div id="u19_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u20" class="text">
          <p><span>证件号</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u21" class="ax_default label">
        <div id="u21_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u22" class="text">
          <p><span>密码</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u23" class="ax_default label">
        <div id="u23_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u24" class="text">
          <p><span>确认密码</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u25" class="ax_default label">
        <div id="u25_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u26" class="text">
          <p><span>姓名</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u27" class="ax_default label">
        <div id="u27_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u28" class="text">
          <p><span>地址</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u29" class="ax_default label">
        <div id="u29_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u30" class="text">
          <p><span>性别</span></p>
        </div>
      </div>
<form action="adminRegister" method="post" >
      <!-- 证件号 (文本框) -->
      <div id="u31" class="ax_default text_field" data-label="证件号">
        <input id="u31_input" type="text" value="" name="idCard"/>
      </div>

      <!-- 密码 (文本框) -->
      <div id="u32" class="ax_default text_field" data-label="密码">
        <input id="u32_input" type="password" value="" name="password"/>
      </div>

      <!-- 确认密码 (文本框) -->
      <div id="u33" class="ax_default text_field" data-label="确认密码">
        <input id="u33_input" type="password" value="" name="repassword"/>
      </div>

      <!-- 姓名 (文本框) -->
      <div id="u34" class="ax_default text_field" data-label="姓名">
        <input id="u34_input" type="text" value="" name="name"/>
      </div>

      <!-- 男 (单选按钮) -->
      <div id="u35" class="ax_default radio_button" data-label="男">
          <!-- Unnamed () -->
          <div id="u36" class="text">
            <p><span>男</span></p>
          </div>
        <input id="u35_input" type="radio" value="男" name="sex"/>
      </div>

      <!-- 女 (单选按钮) -->
      <div id="u37" class="ax_default radio_button" data-label="女">
          <!-- Unnamed () -->
          <div id="u38" class="text">
            <p><span>女</span></p>
          </div>
        <input id="u37_input" type="radio" value="女" name="sex"/>
      </div>
      <!-- 地址 (文本框) -->
      <div id="u39" class="ax_default text_field" data-label="地址">
        <input id="u39_input" type="text" value="" name="addr"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u40" class="ax_default label">
        <div id="u40_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u41" class="text">
          <p><span>手机</span></p>
        </div>
      </div>

      <!-- 手机 (文本框) -->
      <div id="u42" class="ax_default text_field" data-label="手机">
        <input id="u42_input" type="text" value="" name="phone"/>
      </div>

      <!-- Unnamed (提交按钮) -->
      <div id="u43" class="ax_default html_button">
        <input id="u43_input" type="submit" value="注册"  onclick="return validate_required(this.form)"/>
      </div>
      </form>
    </div>

  </body>
</html>
