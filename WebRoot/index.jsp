<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>学生信息管理系统主页</title>
<script src="js/jquery-1.8.1.min.js"></script>
<!--引入弹窗组件start-->
<script type="text/javascript" src="js/attention/zDialog/zDrag.js"></script>
<script type="text/javascript" src="js/attention/zDialog/zDialog.js"></script>
<script src="layer-v3.0.3/layer/layer.js"></scr pt>
<script src="layui-v1.0.9_rls/layui/layui.js"></script>
<link href="layer-v3.0.3/layer/skin/default/layer.css" type="text/css"
	rel="stylesheet" />
<link href="layui-v1.0.9_rls/layui/css/layui.css" type="text/css"
	rel="stylesheet" />
<script type="text/javascript">
	$(document).ready(
		function() {
			$(".div2").click(
				function() {
					$(this).next("div").slideToggle("slow").siblings(
						".div3:visible").slideUp("slow");
				});

		});
	function openurl(url) {
		var rframe = parent.document.getElementById("rightFrame");
		rframe.src = url;
	}
</script>
<style>
body {
	margin: 0;
	font-family: 微软雅黑;
	background-repeat: no-repea;
	background-size: cover;
	background-attachment: fixed;
	background-color: #DDDDDD
}

.title1 {
	float: left;
	margin: 34px 50px;
	font-size: 56px;
	color: #FFFFFF;
	font-height: 55px;
	font-family: 隶书;
}

.top {
	position: absolute;
	top: 0px;
	width: 100%;
	height: 80px;
	text-align: center;
	background-color: #2F4056;
}

.top1 {
	position: absolute;
	top: 80px;
	width: 100%;
	height: 30px;
	background-color: #e2e2e2;
}

.left {
	position: absolute;
	left: 0px;
	top: 108px;
	width: 200px;
	height: 825px;
	border-right: 1px solid #9370DB;
	color: #000000;
	font-size: 20px;
	text-align: center;
	background-color: rgb(57, 61, 73);
}

.right {
	position: absolute;
	left: 210px;
	top: 108px;
	width: 88.6%;
	height: 825px;
	border-top: 0px solid #484860;
	font-size: 14px;
	text-align: center;
	background-color: rgb(231, 239, 239);
}

.shutiao {
	position: absolute;
	left: 200px;
	top: 108px;
	width: 10px;
	height: 825px;
	background-image: url("Image/bs_arrbg.jpg");
	top: 108px;
}

.bottom {
	position: absolute;
	bottom: 0px;
	width: 100%;
	height: 30px;
	font-size: 8px;
	color: white;
	text-align: center;
	background-image: url("Image/bottom.jpg");
}

.div1 {
	text-align: center;
	width: 200px;
	padding-top: 10px;
}

.div2 {
	height: 40px;
	line-height: 40px;
	cursor: pointer;
	font-size: 18px;
	position: relative;
	border-bottom: #ccc 0px dotted;
}

.div3 {
	display: none;
	cursor: pointer;
	font-size: 15px;
}

.div3 ul {
	margin: 0;
	padding: 0;
}

.div3 li {
	height: 30px;
	line-height: 30px;
	list-style: none;
	border-bottom: rgb(64, 136, 192) 2px dotted;
	text-align: center;
	background-color: rgb(231, 239, 239);
}

.a {
	text-decoration: none;
	color: #000000;
	font-size: 15px;
}

.a1 {
	text-decoration: none;
	color: #000000;
	font-size: 18px;
}

.top1_li {
	margin-top: 5px;
	margin-left: 20px;
	list-style: none;
	font-size: 8px;
	
}

#usernameing {
	list-style: none;
	font-size: 8px;
	color: rgb(25, 54, 110);
}

.bs_navright {
	position: absolute;
	top: 3px;
	left: 1810px;
	list-style: none;
	z-index: 1;
}

.icon_no {
	background-image: url("Image/no.gif");
	background-repeat: no-repeat;
	background-position: 0 40%;
	padding: 0 5px 0 18px;
	display: block;
	word-break: keep-all;
	word-wrap: normal;
	cursor: pointer;
}
h3{
font-size:30px;
}
</style>
</head>

<body>
	<div class="top">
		<div class="title1">
			<h3>班级信息管理系统</h3>
		</div>
	</div>
	<div class="top1">
		<li class="top1_li"><span id="usernameing"></span>您好！今天是 <script>
			var weekDayLabels = new Array("星期日", "星期一", "星期二", "星期三", "星期四",
				"星期五", "星期六");
			var now = new Date();
			var year = now.getFullYear();
			var month = now.getMonth() + 1;
			var day = now.getDate()
			var currentime = year + "年" + month + "月" + day + "日 "
			+ weekDayLabels[now.getDay()]
			document.write(currentime)
		</script>
		</li>
		<div class="bs_navright">
			<span class="icon_no hand"
				onclick='top.Dialog.confirm("确定要退出系统吗",function(){window.location="login.jsp"});'>退出系统</span>
			<div class="clear"></div>
		</div>
	</div>
	<div class="left">
		<ul class="layui-nav layui-nav-tree" lay-filter="test">
			<!-- 侧边导航: <ul class="layui-nav layui-nav-tree layui-nav-side"> -->

			<li class="layui-nav-item"><a href="javascript:void(0);"
				onClick="openurl('clalist.action');">班级管理</a>
			</li>
			<li class="layui-nav-item"><a href="javascript:void(0);"
				onClick="openurl('stulist.action');">学生管理</a>
			</li>
			<li class="layui-nav-item"><a href="javascript:void(0);"
				onClick="openurl('courselist.action');">课程管理</a>
			</li>
			<li class="layui-nav-item"><a href="javascript:void(0);"
				onClick="openurl('resultlist.action');">成绩录入</a>
			</li>
			<li class="layui-nav-item"><a href="javascript:void(0);"
				onClick="openurl('StudentResult.jsp');">个人检索</a>
			</li>
			<li class="layui-nav-item"><a href="javascript:void(0);"
				onClick="openurl('courlist.action');">分数查询</a>
			</li>
			<li class="layui-nav-item"><a
				href="javascript:void(0);">统计查询</a>
				<dl class="layui-nav-child">
					<dd>
						<a href="javascript:void(0);"
							onClick="openurl('StudentResult.jsp');">个人检索</a>
					</dd>
					<dd>
						<a href="javascript:void(0);"
							onClick="openurl('courlist.action');">分数查询</a>
					</dd>
				</dl></li>
		</ul>
	</div>
	<div class="shutiao"></div>
	<div class="right">
		<iframe id="rightFrame" name="rightFrame" width="100%" height="100%"
			scrolling="auto" marginheight="0" marginwidth="0" align="center"
			style="border: 0px solid #CCC; margin: 0; padding: 0;"></iframe>
	</div>
	<script>
		//注意：导航 依赖 element 模块，否则无法进行功能性操作
		layui.use('element', function() {
			var element = layui.element();
	
		//…
		});
	</script>
</body>
</html>
