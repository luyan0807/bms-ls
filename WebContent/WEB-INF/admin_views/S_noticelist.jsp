<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <title>noticelist</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="S_css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="S_css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="S_css/styles.css" type="text/css" rel="stylesheet"/>
    <link href="S_noticelist/styles.css" type="text/css" rel="stylesheet"/>
    <script src="S_js/jquery-1.7.1.min.js"></script>
    <script src="S_js/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="S_js/prototypePre.js"></script>
    <script src="S_js/document.js"></script>
    <script src="S_js/prototypePost.js"></script>
    <script src="S_noticelist/data.js"></script>
     <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
  </head>
  
  <% String context=request.getContextPath(); %>
<script type="text/javascript">
 var currentPage=${pageModel.getPageNo()};
var totalPage=${pageModel.getTotalPages()};
function submitForm(actionUrl){
	
	var formElement=document.getElementById("form1");
	formElement.action=actionUrl;
	formElement.submit();
}
//首页
	function firstPage(){
		if(currentPage==1){
			alert("已经是第一页数据");
			return false;
		}else {
			submitForm("toMessageList?pageNo=1");
	return true;
		}
	}	
	
	//下一页
		function nextPage(){
			if(currentPage==totalPage){
				alert("已经是最后一页数据");
				return flase;
			}else {
				submitForm("toMessageList?pageNo="+(currentPage+1));
			return true;
			}
}
	
		//上一页
		function previousPage(){
			if(currentPage==1){
				alert("已经是第一页数据");
				return flase;
			}else {
				submitForm("toMessageList?pageNo="+(currentPage-1));
			   return true;
			}
}
        //尾页
		function lastPage(){
			if(currentPage==totalPage){
				alert("已经是最后数据");
				return flase;
			}else {
				submitForm("toMessageList?pageNo="+"${pageModel.getTotalPages()}");
			    return true;
			}
}


</script>
  
  <body>
    <div id="base" class="">

      <!-- Unnamed (矩形) -->
      <div id="u419" class="ax_default box_1">
        <div id="u419_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u420" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u421" class="ax_default image">
        <img id="u421_img" class="img " src="images/login_success/u74.png"/>
        <!-- Unnamed () -->
        <div id="u422" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u423" class="ax_default label">
        <div id="u423_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u424" class="text">
          <p><span><a href="showSystemAdmin" style="text-decoration:none">个人信息</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u425" class="ax_default image">
        <img id="u425_img" class="img " src="images/login_success/u46.png"/>
        <!-- Unnamed () -->
        <div id="u426" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u427" class="ax_default label">
        <div id="u427_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u428" class="text">
           <p><span><a href="borrowRank" style="text-decoration:none" class="aa">借阅排行</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u429" class="ax_default image">
        <img id="u429_img" class="img " src="images/login_success/u50.png"/>
        <!-- Unnamed () -->
        <div id="u430" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u431" class="ax_default label">
        <div id="u431_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u432" class="text">
          <p><span><a href="listStandard" style="text-decoration:none">额度标准</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u433" class="ax_default image">
        <img id="u433_img" class="img " src="images/login_success/u62.png"/>
        <!-- Unnamed () -->
        <div id="u434" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u435" class="ax_default label">
        <div id="u435_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u436" class="text">
          <p><span><a href="showAllAdmin" style="text-decoration:none">用户管理</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u437" class="ax_default image">
        <img id="u437_img" class="img " src="images/login_success/u54.png"/>
        <!-- Unnamed () -->
        <div id="u438" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u439" class="ax_default label">
        <div id="u439_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u440" class="text">
          <p><span><a href="toMessageList" style="text-decoration:none">三只公告</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u441" class="ax_default image">
        <img id="u441_img" class="img " src="images/login_success/u70.png"/>
        <!-- Unnamed () -->
        <div id="u442" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u443" class="ax_default label">
        <div id="u443_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u444" class="text">
          <p><span><a href="toHandleList" style="text-decoration:none" class="aa">缴费处理</a></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u453" class="ax_default label">
        <div id="u453_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u454" class="text">
          <p><span>发布时间</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u455" class="ax_default label">
        <div id="u455_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u456" class="text">
          <p><span>内容</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u457" class="ax_default label">
        <div id="u457_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u458" class="text">
          <p><span>主题</span></p>
        </div>
      </div>

      
    </div>
    
    <div id="Layer1">
   
    <form action="#" id="form1" name="form1" method="post">
      <table  > 
         <s:iterator var="it" value="pageModel.getList()" status="">
         <tr class="tr_class_1">
          <td width="150"><s:date name="#it.Date" format="yyyy-MM-dd"/></td>
          <td width="202">${it.topic}</td>
          <td width="221">${it.content}</td>
		  <td width="44"><a href="deleMessage?id=${it.id}" class="a_class_1">删除</a></td>
        </tr>
         </s:iterator>
       
 
		 <tr>
          <td width="150">&nbsp;</td>
          <td width="202"><a href="#" class="a_class_1" onclick="previousPage();">上一页
          </a>第${pageModel.getPageNo()}/${pageModel.getTotalPages()}页
          <a href="#" class="a_class_1" onclick="nextPage();">下一页</a></td>
          <td width="221"><a href="toMessage" class="a_class_1" >添加公告</a></td>
		  <td width="44"></td>
        </tr>
		
      </table>
      </form>
    </div>
  </body>
</html>
