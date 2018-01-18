<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
  <head>
    <title>publishlist</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="S_css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="S_css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="S_css/styles.css" type="text/css" rel="stylesheet"/>
    <link href="S_publishlist/styles.css" type="text/css" rel="stylesheet"/>
    <link href="S_publishlist/publishlist.css" type="text/css" rel="stylesheet"/>
    <script src="S_js/jquery-1.7.1.min.js"></script>
    <script src="S_js/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="S_js/prototypePre.js"></script>
    <script src="S_js/document.js"></script>
    <script src="S_js/prototypePost.js"></script>
    <script src="S_publishlist/data.js"></script>
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
			submitForm("toNoticeList?pageNo=1");
	return true;
		}
	}	
	
	//下一页
		function nextPage(){
			if(currentPage==totalPage){
				alert("已经是最后一页数据");
				return flase;
			}else {
				submitForm("toNoticeList?pageNo="+(currentPage+1));
			return true;
			}
}
	
		//上一页
		function previousPage(){
			if(currentPage==1){
				alert("已经是第一页数据");
				return flase;
			}else {
				submitForm("toNoticeList?pageNo="+(currentPage-1));
			   return true;
			}
}
        //尾页
		function lastPage(){
			if(currentPage==totalPage){
				alert("已经是最后数据");
				return flase;
			}else {
				submitForm("toNoticeList?pageNo="+"${pageModel.getTotalPages()}");
			    return true;
			}
}


</script>
 <body>
    <div id="base" class="">

      <!-- Unnamed (矩形) -->
      <div id="u571" class="ax_default box_1">
        <div id="u571_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u572" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u573" class="ax_default image">
        <img id="u573_img" class="img " src="S_images/u74.png"/>
        <!-- Unnamed () -->
        <div id="u574" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u575" class="ax_default label">
        <div id="u575_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u576" class="text">
          <p><span><a href="showSystemAdmin" style="text-decoration:none">个人信息</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u577" class="ax_default image">
        <img id="u577_img" class="img " src="S_images/u46.png"/>
        <!-- Unnamed () -->
        <div id="u578" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u579" class="ax_default label">
        <div id="u579_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u580" class="text">
            <p><span><a href="borrowRank" style="text-decoration:none" class="aa">借阅排行</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u581" class="ax_default image">
        <img id="u581_img" class="img " src="S_images/u50.png"/>
        <!-- Unnamed () -->
        <div id="u582" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u583" class="ax_default label">
        <div id="u583_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u584" class="text">
          <p><span><a href="listStandard" style="text-decoration:none">额度标准</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u585" class="ax_default image">
        <img id="u585_img" class="img " src="S_images/u62.png"/>
        <!-- Unnamed () -->
        <div id="u586" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u587" class="ax_default label">
        <div id="u587_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u588" class="text">
          <p><span><a href="showAllAdmin" style="text-decoration:none">用户管理</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u589" class="ax_default image">
        <img id="u589_img" class="img " src="S_images/u54.png"/>
        <!-- Unnamed () -->
        <div id="u590" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u591" class="ax_default label">
        <div id="u591_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u592" class="text">
          <p><span><a href="toMessageList" style="text-decoration:none">三只公告</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u593" class="ax_default image">
        <img id="u593_img" class="img " src="S_images/u70.png"/>
        <!-- Unnamed () -->
        <div id="u594" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u595" class="ax_default label">
        <div id="u595_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u596" class="text">
          <p><span><a href="toHandleList" style="text-decoration:none" class="aa">缴费处理</a></span></p>
        </div>
      </div>

    <div id="u613" class="ax_default label">
        <div id="u613_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u614" class="text">
          <p><span>发布时间</span></p>
          
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u615" class="ax_default label">
        <div id="u615_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u616" class="text">
          <p><span>主题</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u617" class="ax_default label">
        <div id="u617_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u618" class="text">
          <p><span>活动时间</span></p>
           
        </div>
       
      </div>

	  
	  
    </div>
    <div id="Layer1">
   
    <form action="#" id="form1" name="form1" method="post">
      <table  > 
         <s:iterator var="it" value="pageModel.getList()" status="">
         <tr class="tr_class_1">
          <td width="150"><s:date name="#it.publishDate" format="yyyy-MM-dd"/></td>
          <td width="202">${it.topical}</td>
          <td width="221"><s:date name="#it.activityDate" format="yyyy-MM-dd"/></td>
		  <td width="44"><a href="deleActivity?id=${it.id}" class="a_class_1">删除</a></td>
        </tr>
         </s:iterator>
       
 
		 <tr>
          <td width="150">&nbsp;</td>
          <td width="202"><a href="#" class="a_class_1" onclick="previousPage();">上一页
          </a>第${pageModel.getPageNo()}/${pageModel.getTotalPages()}页
          <a href="#" class="a_class_1" onclick="nextPage();">下一页</a></td>
          <td width="221"><a href="toNotice" class="a_class_1" >发布预告</a></td>
		  <td width="44"></td>
        </tr>
		
      </table>
      </form>
    </div>
</body>
</html>
