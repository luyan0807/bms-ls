<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix="s" %> 
  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
  <head>
    <title>handle</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="S_css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="S_css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="S_css/styles.css" type="text/css" rel="stylesheet"/>
    <link href="S_handle/styles.css" type="text/css" rel="stylesheet"/>
    <script src="S_js/jquery-1.7.1.min.js"></script>
    <script src="S_js/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="S_js/prototypePre.js"></script>
    <script src="S_js/document.js"></script>
    <script src="S_js/prototypePost.js"></script>
    <script src="S_handle/data.js"></script>
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
		submitForm("toHandleList?pageNo=1");
return true;
	}
}	

//下一页
	function nextPage(){
		if(currentPage==totalPage){
			alert("已经是最后一页数据");
			return flase;
		}else {
			submitForm("toHandleList?pageNo="+(currentPage+1));
		return true;
		}
}

	//上一页
	function previousPage(){
		if(currentPage==1){
			alert("已经是第一页数据");
			return flase;
		}else {
			submitForm("toHandleList?pageNo="+(currentPage-1));
		   return true;
		}
}
    //尾页
	function lastPage(){
		if(currentPage==totalPage){
			alert("已经是最后数据");
			return flase;
		}else {
			submitForm("toHandleList?pageNo="+"${pageModel.getTotalPages()}");
		    return true;
		}
}
</script>

  <body>
    <div id="base" class="">
      <!-- Unnamed (矩形) -->
      <div id="u804" class="ax_default box_1">
        <div id="u804_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u805" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u806" class="ax_default image">
        <img id="u806_img" class="img " src="images/login_success/u74.png"/>
        <!-- Unnamed () -->
        <div id="u807" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u808" class="ax_default label">
        <div id="u808_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u809" class="text">
          <p><span><a href="showSystemAdmin" style="text-decoration:none">个人信息</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u810" class="ax_default image">
        <img id="u810_img" class="img " src="images/login_success/u46.png"/>
        <!-- Unnamed () -->
        <div id="u811" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u812" class="ax_default label">
        <div id="u812_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u813" class="text">
            <p><span><a href="borrowRank" style="text-decoration:none" class="aa">借阅排行</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u814" class="ax_default image">
        <img id="u814_img" class="img " src="images/login_success/u50.png"/>
        <!-- Unnamed () -->
        <div id="u815" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u816" class="ax_default label">
        <div id="u816_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u817" class="text">
          <p><span><a href="listStandard" style="text-decoration:none">额度标准</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u818" class="ax_default image">
        <img id="u818_img" class="img " src="images/login_success/u62.png"/>
        <!-- Unnamed () -->
        <div id="u819" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u820" class="ax_default label">
        <div id="u820_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u821" class="text">
                    <p><span><a href="showAllAdmin" style="text-decoration:none">用户管理</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u822" class="ax_default image">
        <img id="u822_img" class="img " src="images/login_success/u54.png"/>
        <!-- Unnamed () -->
        <div id="u823" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u824" class="ax_default label">
        <div id="u824_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u825" class="text">
          <p><span><a href="toMessageList" style="text-decoration:none">三只公告</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u826" class="ax_default image">
        <img id="u826_img" class="img " src="images/login_success/u70.png"/>
        <!-- Unnamed () -->
        <div id="u827" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u828" class="ax_default label">
        <div id="u828_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u829" class="text">
          <p><span><a href="toHandleList" style="text-decoration:none" class="aa">缴费处理</a></span></p>
        </div>
      </div>

      <!-- 展示表格 -->
   <div id="dd">
  <form action="#" id="form1" name="form1" method="post"> 
     <table border="1" cellpadding="5" width="900">
	      	<tr style="font-size:12px;">
	      		<td>序号</td>
	      		<td>读者证件号</td>
	      		<td>会员等级</td>
	      		<td>ISBN</td>
	      		<td>书名</td>
	      		<td>图书条形码</td>
	      		<td>借书日期</td>
	      		<td>还书日期</td>
	      		<td>超期天数</td>
	      		<td>应缴费用</td>
	      		<td>已交费用</td>
	      		<td>处理人</td>
	      		<td>审核状态</td>
	      	</tr>
	      	<s:iterator var="it" value="#request.handle">
	      		<tr style="font-size:12px;">
	      			<td>${id }</td>
	      			<td>${idno }</td>
	      			<td>${level }</td>
	      			<td>${isbn }</td>
	      			<td>${bname }</td>
	      			<td>${barcode }</td>
	      			<td><s:date name="#it.borrowDate" format="yyyy-MM-dd"/></td>
	      			<td><s:date name="#it.returnDate" format="yyyy-MM-dd"/></td>
	      			<td>${day }</td>
	      			<td>${shmoney }</td>
	      			<td>${almoney }</td>
	      			<td>${hname }</td>
	      			<s:if test="#it.status==0 && #it.hname!=null">  
					   <td><a href="AgreeHandleList?idd=${it.id}">审核中</a></td> 
					</s:if>
					<s:if test="#it.status==0 && #it.hname==null">  
					   <td>----</td> 
					</s:if>
					<s:if test="#it.status==1">  
					   <td>已审核</td> 
					</s:if>
	      		</tr>
	      	</s:iterator>
	 </table>
	 <table style="text-align:center">
	 <th width="900" font-size="12px"><a href="#" class="a_class_1" onclick="previousPage();">上一页
          </a>第${pageModel.getPageNo()}/${pageModel.getTotalPages()}页
      <a href="#" class="a_class_1" onclick="nextPage();">下一页</a></th>
      </table>
</form>
   </div>
 
    </div>
  </body>
</html>
