<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>登录</title>
<script src="layer-v3.0.3/layer/layer.js"></script>
<script src="layui-v1.0.9_rls/layui/layui.js"></script>
<link href="layer-v3.0.3/layer/skin/default/layer.css" type="text/css"
	rel="stylesheet" />
<link href="layui-v1.0.9_rls/layui/css/layui.css" type="text/css"
	rel="stylesheet" />
<style>
body {
	font-family: 微软雅黑;
}

#login-form {
	width: 586px;
	height: 363px;
	margin-left: 665px;
	margin-top: 100px;
}
</style>
</head>

<body>
    <h2 style="font-size:50px;margin-left:784px;margin-top:202px;">登录页面</h2>
	<div id="login-form">
		<form action="login" method="post" name="login" class="layui-form">
			<div class="layui-form-item">
				<label class="layui-form-label">用户名：</label>
				<div class="layui-input-block">
					<input type="text" name="student.sid" required lay-verify="required"
						placeholder="请输入用户名" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">密码：</label>
				<div class="layui-input-block">
					<input type="password" name="student.password" required
						lay-verify="required" placeholder="请输入密码" autocomplete="off"
						class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>
	</div>
	<script>
		//Demo
		layui.use('form', function() {
			var form = layui.form();

		});
	</script>

</body>

</html>
