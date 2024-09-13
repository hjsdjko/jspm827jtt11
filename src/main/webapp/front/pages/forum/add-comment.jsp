<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 论坛中心 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>公司论坛</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form {
			height: 100%;
			    margin: 0 !important;
			    box-sizing: border-box;
		}
	</style>
	<body>
		<div id="app">
			<form class="layui-form message-form">
				<div class="layui-form-item layui-form-text" style="display: flex;align-items: center;margin:0">
					<label style="width: auto;" class="layui-form-label">评论</label>
					<div class="layui-input-block" style="margin:0;flex:1;">
						<textarea name="content" required lay-verify="required" placeholder="请输入评论" class="layui-textarea"></textarea>
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
						<button class="layui-btn btn-submit" lay-submit lay-filter="*">评论</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
		</div>
			<!-- layui -->
			<script src="../../layui/layui.js"></script>
			<!-- vue -->
			<script src="../../js/vue.js"></script>
			<!-- 组件配置信息 -->
			<script src="../../js/config.js"></script>
			<!-- 扩展插件配置信息 -->
			<script src="../../modules/config.js"></script>
			<!-- 工具方法 -->
			<script src="../../js/utils.js"></script>

			<script>
				var vue = new Vue({
					el: '#app',
					data: {},
					methods: {
						jump(url) {
							jump(url)
						}
					}
				})

				layui.use(['layer', 'element', 'http', 'jquery', 'form'], function() {
					var layer = layui.layer;
					var element = layui.element;
					var http = layui.http;
					var form = layui.form;
					var jquery = layui.jquery;
					var pid = http.getParam('pid');
					form.on('submit(*)', function(data) {
						// 获取富文本的内容
						data = data.field;
						data.username = localStorage.getItem('adminName');
						data.userid = localStorage.getItem('userid');
						data.parentid = pid;
                        data.avatarurl = localStorage.getItem('headportrait')?localStorage.getItem('headportrait'):'';
                        var sensitiveWords = "";
                        var sensitiveWordsArr = [];
                        if(sensitiveWords) {
                            sensitiveWordsArr = sensitiveWords.split(",");
                        }
                        for(var i=0; i<sensitiveWordsArr.length; i++){
                            //全局替换
                            var reg = new RegExp(sensitiveWordsArr[i],"g");
                            //判断内容中是否包括敏感词
                            if (data.content.indexOf(sensitiveWordsArr[i]) > -1) {
                                // 将敏感词替换为 **
                                data.content = data.content.replace(reg,"**");
                            }
                        }
						http.requestJson('forum/add', 'post', data, function(res) {
							layer.msg('发表成功', {
								time: 2000,
								icon: 6
							}, function() {
								window.parent.location.reload();
							});
						});
						return false;
					});

				});
			</script>
	</body>
</html>