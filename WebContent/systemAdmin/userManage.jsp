<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <%@taglib uri="/struts-tags" prefix="s" %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="css/bootstrap.min.css">  
     <link rel="stylesheet" href="css/addbook.css">  
   <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <link href="searchbook/css/styles1.css" type="text/css" rel="stylesheet"/>   
   <script src="js/bootstrap.min.js"></script>
   <script src="js/addbook.js"></script>
   <script src="js/matching.js"></script>
       <script type="text/javascript">
       function setPage() {//设置跳到第几页
    	   var pageNum = $('#jump').val().trim();//获取跳页输入框的值
    	   var a=Number(pageNum);
    	   var pageTotal = $('#total').val();
    	   alert(pageNum);
    	   alert(pageTotal);
    	   if(a>0 && a<=pageTotal){//获取的值pageNum 不是数字或者小于0的时候跳到第一页
    	   	location.href = 'showAllAdmin?pageNow='+pageNum;
    	   }
    	   else{
    	   	alert("输入有误，请重新输入");
    	   }
    	   }
       </script>
     
<title>User Manage</title>
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default navbar-static-top" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">sanzhi.lib</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							 <a href="#">用户信息管理</a>
						</li>
						<li>
							 <a href="#">首页</a>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">更多<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="#">资源</a>
								</li>
								<li>
									 <a href="#">服务</a>
								</li>
								<li>
									 <a href="#">活动</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#">专题</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#">关于我们</a>
								</li>
							</ul>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input class="form-control" type="text" />
						</div> <button type="submit" class="btn btn-default">检索</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li>
							 <a href="#">我的图书馆</a>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">关于读者<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="#">读者留言</a>
								</li>
								<li>
									 <a href="#">借阅排行</a>
								</li>
								<li>
									 <a href="#">读者咨询</a>
								</li>
								<li class="divider">
								</li>
								 <li>
									 <a href="#">读者意见</a>
								</li> 
							</ul>
						</li>
					</ul>
				</div>
				
			</nav>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="row clearfix">
				<div class="col-md-6 column">
					<img alt="140x140" height="300px" width="580px" src="images/userManage/logo1.jpg" />
				</div>
				<div class="col-md-6 column">
					<div class="carousel slide" id="carousel-705543">
						<ol class="carousel-indicators">
							<li class="active" data-slide-to="0" data-target="#carousel-705543">
							</li>
							<li data-slide-to="1" data-target="#carousel-705543">
							</li>
							<li data-slide-to="2" data-target="#carousel-705543">
							</li>
						</ol>
						<div class="carousel-inner">
							<div class="item active" style=" height: 300px; width: 580px ">
								<img alt="" width="580px" src="images/addbook/book1.jpg" />
								<div class="carousel-caption">
									<h4>
										SANZHI LIBRARY
									</h4>
									<p>
										welcome to you
									</p>
								</div>
							</div>
							<div class="item" style=" height: 300px; width: 580px ">
								<img alt="" width="580px" src="images/addbook/book2.jpg" />
								<div class="carousel-caption">
									<h4>
										BOOK WORLD
									</h4>
									<p>
										always read book
									</p>
								</div>
							</div>
							<div class="item" style=" height: 300px; width: 580px ">
								<img alt="" width="580px"src="images/addbook/book3.jpg" />
								<div class="carousel-caption">
									<h4>
										BOOK LIFE
									</h4>
									<p>
										read what you want
									</p>
								</div>
							</div>
						</div> <a class="left carousel-control" href="#carousel-705543" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-705543" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
					</div>
				</div>
			</div>
			<div class="page-header" style="opacity:0.5;">
				<h1 style="color:blue;">
					用户信息管理 <small>sanzhi.lib.cn</small>
				</h1>
			</div>
	
			<form action="searchAdmin" method="post" class="navbar-form navbar-left" role="search">
			<label style="color:gray;">Search</label>
						<div class="form-group">
							<input name="idno" class="form-control" type="text" placeholder="身份证号码"/>
						</div> 
						<button type="submit" class="btn btn-default">查找</button>
			</form> 
			
			
			<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<table class="table">
				<thead>
					<tr>
						<th>
							姓名
						</th>
						<th>
							身份证号
						</th>
						<th>
							学历
						</th>
						<th>
							工作日期
						</th>
						<th>
							出身年月
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<s:iterator value="#request.admins" var="ad">
				<form action="updateAdmin" method="post">
				<input type="hidden" value="<s:property value="#ad.id"/>" name="id"/>
				<tbody>
					<tr>
						<td>
							<s:property value="#ad.name"/>
						</td>
						<td>
							<s:property value="#ad.idno"/>
						</td>
                         <td>
						<input  name="edurank" type="text" value="<s:property value="#ad.edurank"/>">	
						</td>

						<td>
						<input name="onworkDate" type="text" value="<s:date name="#ad.onworkDate" format="yyyy-MM-dd"/>">
						</td>
						<td>
						<input name="birthday" type="text" value="<s:date name="#ad.birthday" format="yyyy-MM-dd"/>">
						</td>
						<td>
						<a href="deleteAdmin?id=<s:property value="#ad.id"/>">删除</a>
						<input type="submit" value="修改"/>
						</td>
					</tr>
				</tbody>
				</form>
				</s:iterator>
			</table>
		</div>
	</div>
</div>
			
			
			<div id="button-div" >
			 <s:set name="page" value="#request.page"></s:set>  
			 当前是第<s:property value="#page.pageNow"/>页，共<s:property value="#page.totalPage"/>页  
        <s:if test="#page.hasFirst">  
            <a href="showAllAdmin?pageNow=1"  target="main">首页</a>  
        </s:if>  
        <s:if test="#page.hasPre">  
            <a href="showAllAdmin?pageNow=<s:property value="#page.pageNow-1"/> "  target="main">&lt;上一页</a>  
        </s:if> 
<s:if test="#page.totalPage>0">
  <s:if test="#page.totalPage>10" >
        <s:if test="#page.pageNow>=1 && #page.pageNow<=6" >
            <s:bean name="org.apache.struts2.util.Counter" id="counter">
               <s:param name="first" value="1" />
               <s:param name="last" value="10" />
               <s:iterator>
                  <a href="showAddAdmin?pageNow=<s:property/>"> <s:property/></a>
               </s:iterator>
            </s:bean>
        </s:if>
        <s:if test="#page.pageNow>6 && #page.pageNow<=#page.totalPage-4">
            <s:bean name="org.apache.struts2.util.Counter" id="counter">
               <s:param name="first" value="#page.pageNow-5" />
               <s:param name="last" value="#page.pageNow+4" />
               <s:iterator>
                  <a href="showAddAdmin?pageNow=<s:property/>"> <s:property/></a>
               </s:iterator>
            </s:bean>
        </s:if>
        <s:if test="#page.pageNow>#page.totalPage-4 && #page.pageNow<=#page.totalPage">
               <s:bean name="org.apache.struts2.util.Counter" id="counter">
               <s:param name="first" value="#page.totalPage-9" />
               <s:param name="last" value="#page.totalPage" />
               <s:iterator>
                  <a href="showAddAdmin?pageNow=<s:property/>"> <s:property/></a>
               </s:iterator>
               </s:bean>
        </s:if>
  </s:if> 
  <s:else> 
  <s:bean name="org.apache.struts2.util.Counter" id="counter">
               <s:param name="first" value="1" />
               <s:param name="last" value="#page.totalPage" />
               <s:iterator>
                  <a href="showAddAdmin?pageNow=<s:property/>"> <s:property/></a>
               </s:iterator>
            </s:bean>
  </s:else>
  </s:if>
<s:if test="#page.hasNext">  
             <a  href="showAddAdmin?pageNow=<s:property value="#page.pageNow+1" />" target="main">下一页&gt;</a>  
        </s:if>  
         <s:if test="#page.hasLast">  
            <a href="showAddAdmin?pageNow=<s:property value="#page.totalPage"/>"  target="main">尾页&gt;&gt;</a>  
        </s:if>
        &nbsp;&nbsp;&nbsp;&nbsp;跳到第<input type="text" id="jump" size="3"/><input type="hidden" id="total" value="${page.totalPage}">页<input name="jumpButton" type="button" value="跳转 "  class="btn btn-default" size="20" onclick="setPage()"/>
			 
			</div>
			
			
			
		</div>
	</div>
	<div class="row clearfix" id="u5">
		<div class="col-md-12 column">
		<img alt="140x140" src="images/addbook/always.png" /> 
		</div><!-- height="300px" width="1160px" -->
		</div>
</div>
</body>
</html>