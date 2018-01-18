<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix="s" %> 
  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	
//
function check(){
	if(status=="未审核"){
		status="审核完成";
	}
	return true;
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

</body>
</html>