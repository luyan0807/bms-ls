<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <title>publishforeno</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="S_css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="S_css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="S_css/styles.css" type="text/css" rel="stylesheet"/>
    <link href="S_publishforeno/styles.css" type="text/css" rel="stylesheet"/>
    <script src="S_js/jquery-1.7.1.min.js"></script>
    <script src="S_js/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="S_js/prototypePre.js"></script>
    <script src="S_js/document.js"></script>
    <script src="S_js/prototypePost.js"></script>
    <script src="S_publishforeno/data.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
  </head>
  <body>
    <div id="base" class="">
<form enctype="multipart/form-data"  action="saveNotice" method="post" id="updateInfo">
      <!-- Unnamed (矩形) -->
      <div id="u461" class="ax_default label">
        <div id="u461_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u462" class="text">
          <p><span>主题：</span></p>
        </div>
      </div>

      <!-- 主题 (文本框) -->
      <div id="u463" class="ax_default text_field" data-label="主题">
        <input id="u463_input" type="text" value="" name="topical"/>
      </div>

      <!-- Unnamed (提交按钮) -->
      <div id="u464" class="ax_default html_button">
        <input id="u464_input" type="submit" value="发布"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u465" class="ax_default label">
        <div id="u465_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u466" class="text">
          <p><span>正文：</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u467" class="ax_default text_field">
        <input id="u467_input" type="text" value="" name="con"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u468" class="ax_default label">
        <div id="u468_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u469" class="text">
          <p><span>报名有效时间：</span></p>
        </div>
      </div>

      <!-- 报名有效时间 (文本框) -->
      <div id="u470" class="ax_default text_field" data-label="报名有效时间">
        <input id="u470_input" type="text" value="" name="enrollTime"/>
        
  
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u471" class="ax_default label">
        <div id="u471_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u472" class="text">
          <p><span>活动地点：</span></p>
        </div>
      </div>

      <!-- 活动地点 (文本框) -->
      <div id="u473" class="ax_default text_field" data-label="活动地点">
        <input id="u473_input" type="text" value="" name="activityAddr"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u474" class="ax_default label">
        <div id="u474_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u475" class="text">
          <p><span>活动时间：</span></p>
        </div>
      </div>

      <!-- 活动时间 (文本框) -->
      <div id="u476" class="ax_default text_field" data-label="活动时间">
      
        <input id="u476_input" type="text" value=""name="activityDate"/>
   <script type="text/javascript" src="/../BMS_2/systemAdmin/S_publishforeno/laydate.dev.js"></script>

    <script type="text/javascript">
        laydate({
            elem:'#u476_input'
        });
        laydate({
            elem:'#u470_input'
        });
    </script>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u477" class="ax_default label">
        <div id="u477_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u478" class="text">
          <p><span>主讲人：</span></p>
        </div>
      </div>

      <!-- 主讲人 (文本框) -->
      <div id="u479" class="ax_default text_field" data-label="主讲人">
        <input id="u479_input" type="text" value=""name="speaker"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u480" class="ax_default label">
        <div id="u480_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u481" class="text">
          <p><span>参加对象：</span></p>
        </div>
      </div>

      <!-- 参加对象 (文本框) -->
      <div id="u482" class="ax_default text_field" data-label="参加对象">
        <input id="u482_input" type="text" value=""name="actor"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u483" class="ax_default label">
        <div id="u483_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u484" class="text">
          <p><span>活动人数：</span></p>
        </div>
      </div>

      <!-- 活动人数 (文本框) -->
      <div id="u485" class="ax_default text_field" data-label="活动人数">
        <input id="u485_input" type="text" value="" name="activityCum"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u486" class="ax_default label">
        <div id="u486_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u487" class="text">
          <p><span>活动内容：</span></p>
        </div>
      </div>

      <!-- 活动内容 (文本框) -->
      <div id="u488" class="ax_default text_field" data-label="活动内容">
        <input id="u488_input" type="text" value="" name="actContent"/>
      </div>

      <!-- 上传图片 (文本框) -->
      <div id="u489" class="ax_default text_field" data-label="上传图片">
        <input id="u489_input" type="file" value="" name="file"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u490" class="ax_default label">
        <div id="u490_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u491" class="text">
          <p><span>上传图片：</span></p>
        </div>
      </div>

      <!-- 温馨提示 (文本框) -->
      <div id="u492" class="ax_default text_field" data-label="温馨提示">
        <input id="u492_input" type="text" value=""name="promptWarmth"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u493" class="ax_default label">
        <div id="u493_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u494" class="text">
          <p><span>温馨提示：</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u495" class="ax_default box_1">
        <div id="u495_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u496" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u497" class="ax_default image">
        <img id="u497_img" class="img " src="S_images/u74.png"/>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u499" class="ax_default label">
        <div id="u499_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u500" class="text">
          <p><span><a href="showSystemAdmin" style="text-decoration:none" class="aa">个人信息</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u501" class="ax_default image">
        <img id="u501_img" class="img " src="S_images/u46.png"/>
        <!-- Unnamed () -->
        <div id="u502" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u503" class="ax_default label">
        <div id="u503_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u504" class="text">
          <p><span><a href="borrowRank" style="text-decoration:none" class="aa">借阅排行</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u505" class="ax_default image">
        <img id="u505_img" class="img " src="S_images/u50.png"/>
        <!-- Unnamed () -->
        <div id="u506" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u507" class="ax_default label">
        <div id="u507_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u508" class="text">
          <p><span><a href="listStandard" style="text-decoration:none">额度标准</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u509" class="ax_default image">
        <img id="u509_img" class="img " src="S_images/u62.png"/>
        <!-- Unnamed () -->
        <div id="u510" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u511" class="ax_default label">
        <div id="u511_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u512" class="text">
          <p><span><a href="showAllAdmin" style="text-decoration:none">用户管理</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u513" class="ax_default image">
        <img id="u513_img" class="img " src="S_images/u54.png"/>
        <!-- Unnamed () -->
        <div id="u514" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u515" class="ax_default label">
        <div id="u515_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u516" class="text">
          <p><span><a href="toMessageList" style="text-decoration:none">三只公告</a></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u517" class="ax_default image">
        <img id="u517_img" class="img " src="S_images/u70.png"/>
        <!-- Unnamed () -->
        <div id="u518" class="text" style="display:none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>
      <!-- Unnamed (矩形) -->
      <div id="u519" class="ax_default label">
        <div id="u519_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u520" class="text">
          <p><span><a href="toHandleList" style="text-decoration:none" class="aa">缴费处理</a></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u529" class="ax_default label">
        <div id="u529_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u530" class="text">
          <p><span><a href="toNoticeList">活动列表&gt;&gt;</a></span></p>
        </div>
      </div>
</form>
    </div>
  </body>
</html>
