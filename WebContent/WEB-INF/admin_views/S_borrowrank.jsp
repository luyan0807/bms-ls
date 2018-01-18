<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib uri="/struts-tags" prefix="s" %> 
  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <title>borrowrank</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="S_css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="S_css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="S_css/styles.css" type="text/css" rel="stylesheet"/>
    <link href="S_borrowrank/styles.css" type="text/css" rel="stylesheet"/>
    <script src="S_js/jquery-1.7.1.min.js"></script>
    <script src="S_js/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="S_js/prototypePre.js"></script>
    <script src="S_js/document.js"></script>
    <script src="S_js/prototypePost.js"></script>
    <script src="S_borrowrank/data.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
  </head>
  <div id="base" class="">
<form action="borrowType" method="post" >
      <!-- Unnamed (下拉列表框) -->
      <div id="u209" class="ax_default droplist">
        <select id="u209_input" name="option">
          <option value="文学">文学</option>
          <option value="计算机">计算机</option>
          <option value="艺术">艺术</option>
          <option value="法律">法律</option>
          <option value="经济">经济</option>
        </select>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u210" class="ax_default label">
        <div id="u210_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u211" class="text">
          <p><span>请选择类别：</span></p>
        </div>
      </div>
      
      <!-- Unnamed (提交按钮) -->
      <div id="dd1" class="ax_default html_button">
        <input id="dd2" type="submit" value="搜索"/>
      </div>
</form>
      <!-- Unnamed (矩形) -->
      <div id="u228" class="ax_default box_1">
        <div id="u228_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u229" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>
      
   <!-- 展示表格 -->
   <div>
   <table width="65" border="1" cellpadding="10" id="kkk">
   <tr>
   <td width="37">序号</td>
   </tr>
   
    <s:bean name="org.apache.struts2.util.Counter" var="counter">
               <s:param name="first" value="1" />
               <s:param name="last" value="#request.borrowrank.size" />
	      		<s:iterator>
	      			<tr>
	      	       <td> <s:property/></td>
	      			</tr>
	      		</s:iterator>
	      		   </s:bean>
   </table>
   </div>
   <div id="dd">
     <table width="510" border="1" cellpadding="10">
	      	<tr style="font-size:14px;">
	      		
	      		<td>类别</td>
	      		<td>书名</td>
	      		<td>作者</td>
	      		<td>借阅次数</td>
	      	</tr>
	      	
	      	<s:iterator value="#request.borrowrank">
	      			<td>${type }</td>
	      			<td>${bname }</td>
	      			<td>${author }</td>
	      			<td>${num }</td>
	      		</tr>
	      	</s:iterator>
	 </table>
   </div>

      <!-- Unnamed (图片) -->
      <div id="u230" class="ax_default image">
        <img id="u230_img" class="img " src="images/login_success/u74.png"/>
        <!-- Unnamed () -->
        <div id="u231" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
    </div>

      <!-- Unnamed (矩形) -->
      <div id="u232" class="ax_default label">
        <div id="u232_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u233" class="text">
          <p><span><a href="adminListInfo" style="text-decoration:none">个人信息</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u234" class="ax_default image">
        <img id="u234_img" class="img " src="images/login_success/u46.png"/>
        <!-- Unnamed () -->
        <div id="u235" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u236" class="ax_default label">
        <div id="u236_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u237" class="text">
            <p><span><a href="borrowRank" style="text-decoration:none" class="aa">借阅排行</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u238" class="ax_default image">
        <img id="u238_img" class="img " src="images/login_success/u50.png"/>
        <!-- Unnamed () -->
        <div id="u239" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u240" class="ax_default label">
        <div id="u240_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u241" class="text">
          <p><span><a href="listStandard" style="text-decoration:none">额度标准</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u242" class="ax_default image">
        <img id="u242_img" class="img " src="images/login_success/u62.png"/>
        <!-- Unnamed () -->
        <div id="u243" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u244" class="ax_default label">
        <div id="u244_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u245" class="text">
              <p><span><a href="showAllAdmin" style="text-decoration:none">用户管理</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u246" class="ax_default image">
        <img id="u246_img" class="img " src="images/login_success/u54.png"/>
        <!-- Unnamed () -->
        <div id="u247" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u248" class="ax_default label">
        <div id="u248_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u249" class="text">
          <p><span><a href="toMessageList" style="text-decoration:none">三只公告</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u250" class="ax_default image">
        <img id="u250_img" class="img " src="images/login_success/u70.png"/>
        <!-- Unnamed () -->
        <div id="u251" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u252" class="ax_default label">
        <div id="u252_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u253" class="text">
          <p><span><a href="toHandleList" style="text-decoration:none" class="aa">缴费处理</a></span></p>
        </div>
      </div>

  </div>
  </body>
</html>
