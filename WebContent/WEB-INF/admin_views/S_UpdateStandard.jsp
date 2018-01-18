<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>standard</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="S_css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="S_css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="S_css/styles.css" type="text/css" rel="stylesheet"/>
    <link href="S_standard/styles.css" type="text/css" rel="stylesheet"/>
     <link href="S_standard/standard.css" type="text/css" rel="stylesheet"/>
    <script src="S_js/jquery-1.7.1.min.js"></script>
    <script src="S_js/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="S_js/prototypePre.js"></script>
    <script src="S_js/document.js"></script>
    <script src="S_js/prototypePost.js"></script>
    <script src="S_standard/data.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
    
<style type="text/css">

#Layer1 {
	position:absolute;
	width:97px;
	height:26px;
	z-index:1;
	top: 238px;
	left: 238px;
	font-size:16px;
	color:black;
}
.input_class_1{
height:20px;
width:30px;
}
.a_class_1{
text-decoration:none;
font-size:18px;
}

#Layer2 {
	position:absolute;
	width:133px;
	height:28px;
	z-index:2;
	left: 31px;
	top: 141px;
}

#kk{
	font-size:16px;
}
</style>
</head>
<body>
    <div id="base" class="">
<form action="updateStandard" method="post">
      <!-- Unnamed (矩形) -->
      <div id="u262" class="ax_default box_1">
        <div id="u262_div" class="">
          <div id="Layer1">
         <input name="submit" type="submit" value="提交" id="kk"/></div>
         <input type="hidden" name="id" value="${standards.get(0).getId()}"/>
         <div id="Layer2">
         <c:if test="${standards.get(0).getId()=='1'}">普通会员：</c:if>
         <c:if test="${standards.get(0).getId()=='2'}">高级会员：</c:if>
         <c:if test="${standards.get(0).getId()=='3'}">VIP：</c:if>
         <c:if test="${standards.get(0).getId()=='4'}">至尊会员：</c:if>
         </div>
        </div>
        <!-- Unnamed () -->
        <div id="u263" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

     

     
<div id="u272" class="ax_default label">
        <div id="u272_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u273" class="text">
          <p><span>借阅额度</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u274" class="ax_default label">
        <div id="u274_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u275" class="text">
          <p><span>借书期限</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u276" class="ax_default label">
        <div id="u276_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u277" class="text">
          <p><span>超期缴费</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <!-- Unnamed (矩形) -->
    <div id="u280" class="ax_default label">
        <div id="u280_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u281" class="text">
         <input name="lendNum" type="text" class="input_class_1"
          value="${standards.get(0).getLendNum()}"/> 本</div>
      </div>

     
      <!-- Unnamed (矩形) -->
       <div id="u288" class="ax_default label">
        <div id="u288_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u289" class="text">
          <input name="lendLimit" type="text" class="input_class_1"
          value="${standards.get(0).getLendLimit()}"/>个月
        </div>
      </div>
      <!-- Unnamed (矩形) -->
       <div id="u296" class="ax_default label">
        <div id="u296_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u297" class="text">
          <input name="fine" type="text" class="input_class_1"
          value="${standards.get(0).getFine()}"/> 元/本
        </div>
      </div>

    
      <!-- Unnamed (矩形) -->
<div id="u302" class="ax_default box_1">
        <div id="u302_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u303" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u304" class="ax_default image">
        <img id="u304_img" class="img " src="images/login_success/u74.png"/>
        <!-- Unnamed () -->
        <div id="u305" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u306" class="ax_default label">
        <div id="u306_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u307" class="text">
          <p><span><a href="showSystemAdmin" style="text-decoration:none">个人信息</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u308" class="ax_default image">
        <img id="u308_img" class="img " src="images/login_success/u46.png"/>
        <!-- Unnamed () -->
        <div id="u309" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u310" class="ax_default label">
        <div id="u310_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u311" class="text">
          <p><span><a href="borrowRank" style="text-decoration:none" class="aa">借阅排行</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u312" class="ax_default image">
        <img id="u312_img" class="img " src="images/login_success/u50.png"/>
        <!-- Unnamed () -->
        <div id="u313" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u314" class="ax_default label">
        <div id="u314_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u315" class="text">
          <p><span><a href="listStandard" style="text-decoration:none">额度标准</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u316" class="ax_default image">
        <img id="u316_img" class="img " src="images/login_success/u62.png"/>
        <!-- Unnamed () -->
        <div id="u317" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u318" class="ax_default label">
        <div id="u318_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u319" class="text">
          <p><span><a href="showAllAdmin" style="text-decoration:none">用户管理</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u320" class="ax_default image">
        <img id="u320_img" class="img " src="images/login_success/u54.png"/>
        <!-- Unnamed () -->
        <div id="u321" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u322" class="ax_default label">
        <div id="u322_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u323" class="text">
          <p><span><a href="toMessageList" style="text-decoration:none">三只公告</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u324" class="ax_default image">
        <img id="u324_img" class="img " src="images/login_success/u70.png"/>
        <!-- Unnamed () -->
        <div id="u325" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u326" class="ax_default label">
        <div id="u326_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u327" class="text">
          <p><span><a href="toHandleList" style="text-decoration:none" class="aa">缴费处理</a></span></p>
        </div>
      </div>

    </form>
    </div>
   
</body>
</html>
    