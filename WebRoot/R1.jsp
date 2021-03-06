<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--========== The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags ==========-->
    <title>博客正文</title>
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="http://localhost:8080/sfblog/styles/index.css">
	
	<script language="javascript" src="http://localhost:8080/sfblog/editor/jquery-1.4.4.min.js"></script>
	<script language="javascript" src="http://localhost:8080/sfblog/editor/xheditor-1.1.14-zh-cn.min.js"></script>
	<script language="javascript" src="http://localhost:8080/sfblog/js/jquery.form.js"></script>
	<script language="javascript" src="http://localhost:8080/sfblog/js/top.js"></script>
	<script>
		$(document).ready(function(){
			$("#comment_sub").click(function(){
				var content=$(".xheditor-mini").val();
				var aid=$(".comment_aid").val();
				if(content==""||content==null){
					alert("评论内容不能为空！");
					return false;
				}else{
					$(".form_comment").ajaxSubmit(function(){
						alert("添加评论成功！");
						$(".form_comment").resetForm();					
					});
				}
				return false;
			});		
		});
	</script>
<!--==========Dependency============-->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="vendors/owl-carousel/assets/owl.carousel.css">
<link rel="stylesheet" href="vendors/magnific-popup/magnific-popup.css">
<link rel="stylesheet" href="vendors/flexslider/flexslider.css">

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kanit:500">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Josefin+Sans:600,700italic">
<link href='https://fonts.googleapis.com/css?family=Dosis:400,200,300,500,600,800,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:400,300,300italic,400italic">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500italic,500,700italic,700,900,900italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Fredoka+One' rel='stylesheet' type='text/css'>

<!--==========Theme Styles==========-->
<link href="css/style.css" rel="stylesheet">
<link href="css/theme/green.css" rel="stylesheet">

<!--========== HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries ==========-->
<!--========== WARNING: Respond.js doesn't work if you view the page via file:// ==========-->
<!--==========[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
<![endif]==========-->
</head>
<body class="home">

<header class="row transparent white" data-spy="affix" data-offset-top="300" id="header">

    <div class="container">
        <div class="row top-header">
            <div class="col-sm-4 search-form-col">
                <form action="#" method="get" class="search-form">
                    <div class="input-group">
                        <span class="input-group-addon"><img src="images/search-icon-dark.png" alt=""></span>
                        <input type="search" class="form-control" placeholder="搜索">
                    </div>
                </form>
            </div>
            <div class="col-sm-4 logo-col text-center">
            
                <a href="index.jsp" action="loginAction"><img src="images/logo-black-green.png" alt=""></a>
            </div>
            <div class="col-sm-4 menu-trigger-col">
                <button class="menu-trigger black pull-right">
                    <span class="active-page">欢迎  ${sessionScope.username}</span>
                    <img src="images/menu-align-dark.png" alt="" class="icon-burger">
                    <img src="images/menu-close-dark.png" alt="" class="icon-cross">
                </button>
             
            </div>
        </div>        
    </div>
    <div class="row menu-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 menu-col">
                    <div class="row">
                        <ul class="nav column-menu white-bg">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">首页 <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="index.html">Home Option 1</a></li>
                                    <li><a href="index2.html">Home Option 2</a></li>
                                    <li><a href="index3.html">Home Option 3</a></li>
                                    <li><a href="index4.html">Home Option 4</a></li>
                                    <li><a href="index5.html">Home Option 5</a></li>
                                    <li><a href="index6.html">Home Option 6</a></li>
                                </ul>
                            </li>
                            <li><a href="article.jsp">文章</a></li>
                            <li><a href="category.jsp">分类</a></li>
                           
                            
                        </ul>
                        <ul class="nav column-menu black-bg">
                            <li><a href="photo.jsp">相册</a></li>
                            
                            <li><a href="about.jsp">关于我</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4 subscribe-col">
                   
                 
                   <form action="loginAction" method="post" class="form-inline subscribe-form">
                     <input type="text" name="username" class="form-control" placeholder="账号">                    
                        <div class="form-group">
                            
                            <input type="password"  name="password" class="form-control" placeholder="密码">
                        </div>
                        <button type="submit" class="btn btn-primary btn-sm"><span>登陆</span></button>
                    </form>

                    
                </div>
            </div>
        </div>
    </div>
</header>

  <body>
    <div id="content">
  		
  		
    	<div id="main">
    		<div id="main_left">
				<div class="art_zw">
    				<span class="article_title">让代码飞一会儿，超级有用的CSS编码工具集</span>
    				<span class="article_date">作者:panhao&nbsp;&nbsp;发布于：2017-05-19 00:00:00&nbsp;&nbsp; 归类于：<a href="showArticleByCat?categoryid=8">前端那些事儿</a></span>	
 					<div class="article_content"><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); ">当你在开发某个网站或者应用时，找到适宜的工具绝对能帮助您节省大量的时间，本文，笔者收集了九款超级有用的CSS编码工具，借助这些优秀的工具能大大地减少开发时间，加快开发进度。</p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); "><a href="http://purecss.io/" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><strong>Pure CSS</strong></a><br /></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center; "><a href="http://cms.csdnimg.cn/article/201307/16/51e4ff6aac1ee.jpg" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><img src="http://cms.csdnimg.cn/article/201307/16/51e4ff6aac1ee.jpg" style="vertical-align: middle; border: none; width: 468.08562691131493px; height: 361px; " border="0" alt="" /></a><br /></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); ">Pure是CSS模块的组件，你可以在每个项目中将其作为基础组件使用。有了它，使CSS开发变得更加简单，整个框架看起来是如此的洁净与专业。</p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); "><a href="http://valdelama.com/css-responsive-navigation" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><strong>CSS only responsive navigation</strong></a><br /></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center; "><a href="http://cms.csdnimg.cn/article/201307/16/51e4fff32802f.jpg" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><img src="http://cms.csdnimg.cn/article/201307/16/51e4fff32802f.jpg" style="vertical-align: middle; border: none; width: 439.9380804953561px; height: 350px; " border="0" alt="" /></a><br /></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); ">如今，在Web开发领域，响应式设计非常受欢迎。这里你可以下载并且可重复使用响应式导航菜单，但前提是只能在CSS里。</p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); "><a href="http://www.csstrashman.com/" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><strong>CSS Trashman</strong></a><br /></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center; "><a href="http://cms.csdnimg.cn/article/201307/16/51e507874bea2.jpg" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><img src="http://cms.csdnimg.cn/article/201307/16/51e507874bea2.jpg" style="vertical-align: middle; border: none; width: 482.7654320987654px; height: 376px; " border="0" alt="" /></a></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); ">当你在为某个大型项目编码时想要使文件保存简洁且紧凑，这一点似乎很难做到。别担心，有了CSS Trashman工作起来就会变得更加简单。这款在线工具不仅能够检索网站，还能压缩样式，让你最终下载到最为洁净的CSS文件版本。</p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); "><a href="https://github.com/jorgebastida/glue" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><strong>Glue</strong></a></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center; "><a href="http://cms.csdnimg.cn/article/201307/16/51e500bceb9e5.jpg" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><img src="http://cms.csdnimg.cn/article/201307/16/51e500bceb9e5.jpg" style="vertical-align: middle; border: none; " border="0" alt="" /></a><br /></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); ">取代加载数十种图片，以更好的方式来加载一张大图，这种技术被称之为CSS sprites。Glue是一种常见的命令行工具用来将图片集转换成一个单独的文件。</p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); "><a href="https://github.com/geuis/helium-css" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><strong>Helium CSS</strong></a></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center; "><a href="http://cms.csdnimg.cn/article/201307/16/51e50115322d4.jpg" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><img src="http://cms.csdnimg.cn/article/201307/16/51e50115322d4.jpg" style="vertical-align: middle; border: none; " border="0" alt="" /></a><br /></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); ">Helium是一款基于JavaScript的开发工具，能够在浏览器中直接运行并从CSS文件中检测出未被使用的样式。<br /></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); "><a href="http://topcoat.io/" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><strong>Topcoat</strong></a><br /></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center; "><a href="http://cms.csdnimg.cn/article/201307/16/51e5016656e3e.jpg" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><img src="http://cms.csdnimg.cn/article/201307/16/51e5016656e3e.jpg" style="vertical-align: middle; border: none; " border="0" alt="" /></a><br /></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); ">Topcoat是一套非常整洁且干净的CSS类库，专门用于各种表单元素：按钮、复选框、幻灯等。只需几分钟，让你的网站看起来更加出色。<br /></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); "><strong><a href="http://www.fitgrd.com/" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; ">.Fitgrd</a><br /></strong></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center; "><a href="http://cms.csdnimg.cn/article/201307/16/51e50196f0dc4.jpg" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><img src="http://cms.csdnimg.cn/article/201307/16/51e50196f0dc4.jpg" style="vertical-align: middle; border: none; " border="0" alt="" /></a><br /></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); ">.Fitgrd是构建响应式网站的必备工具，除了创建网格，其他一切都由你决定，为你减少大量冗余代码。<br /></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); "><a href="http://necolas.github.io/normalize.css/" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><strong>Normalize.css</strong></a></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center; "><a href="http://cms.csdnimg.cn/article/201307/16/51e501ce088a9.jpg" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><img src="http://cms.csdnimg.cn/article/201307/16/51e501ce088a9.jpg" style="vertical-align: middle; border: none; " border="0" alt="" /></a><br /></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); ">Normalize.css旨在用HTML5-ready来替代CSS重置。它使浏览器渲染出的元素更加一致并符合现代化标准。其常被用于一些主流的网站，包括Twitter、Bootstrap、Soundcloud、TweetDeck等等。</p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); "><a href="http://bearcss.com/" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><strong>Bear CSS</strong></a><br /></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center; "><a href="http://cms.csdnimg.cn/article/201307/16/51e5020009e4b.jpg" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; "><img src="http://cms.csdnimg.cn/article/201307/16/51e5020009e4b.jpg" style="vertical-align: middle; border: none; width: 467px; height: 352px; " border="0" alt="" /></a><br /></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); ">Bear CSS不仅美观，而且非常易用。只需简单创建HTML文档并将其上传。Bear CSS会自动生成基于HTML元素的CSS文件下载包。<br /></p><p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-decoration: none; color: rgb(51, 51, 51); font-family: Helvetica, Tahoma, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); ">英文出自：<a href="http://www.catswhocode.com/blog/super-useful-tools-for-css-coding" target="_blank" style="cursor: pointer; color: rgb(0, 102, 204); text-decoration: none; ">Catswhocode</a></p>
 						
 					</div>
 						    			
    			</div>
    			    
    		</div>		
    		

			
  				
  				



    	</div>

         
    </div>
      
    <div class="clear"></div>
    <div id="footer">Copyright Cynomys™; 2017 Blog, All Rights Reserved</div>
	<div id="tbox">
		<a id="gotop" href="javascript:void(0)" title="回到顶部"></a>
	</div>

      <!--========== jQuery (necessary for Bootstrap's JavaScript plugins) ==========-->

<script src="js/theme.js"></script>
</body>
</html>
 