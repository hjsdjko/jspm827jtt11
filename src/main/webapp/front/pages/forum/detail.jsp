<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 论坛详情 -->
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
		.forum-container .btn-container {
			display: flex;
			align-items: center;
			box-sizing: border-box;
			width: 100%;
			flex-wrap: wrap; 
			justify-content: space-between !important;
		}
		
		.forum-container .btn-container button i {
			margin-right: 4px;
		}
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->

			<!-- 标题 -->
			<div id="breadcrumb">
				<span class="en">FORUM / INFORMATION</span>
				<span class="cn">公司论坛</span>
			</div>
			<!-- 标题 -->

			<div class="forum-container">
				<h1 class="title">{{detail.title}}</h1>
				<div class="auth-container">
					发布人：{{detail.username}} 时间：{{detail.addtime}}
				</div>
				<div class="content" v-html="detail.content">
				</div>

				<div class="btn-container">
					<div class="title" style="color:#666;font-size: 18px;">
						评论列表
					</div>
					<button id="btn-add-win" class="layui-btn layui-btn-lg btn-theme">
						<i class="layui-icon">&#xe654;</i> 点击评论
					</button>
				</div>

				<div class="message-list" v-if="dataList&&dataList.length">
					<div  class="message-item" v-for="(item,index) in dataList" v-bind:key="index" >
						<div class="username-container" style="display: flex;align-items: center;">
                            <img v-if="item.avatarurl" class="avator" :src="baseurl + item.avatarurl">
                            <img v-else class="avator" src="../../img/avator.png">
							<span style="display: inline-block;" class="username">{{item.username}}</span>
						</div>
						<div class="content" class="content" style="margin: 0;flex: 1;">
							<span style="display: inline-block;" class="message">
								{{item.content}}
							</span>
						</div>
					</div>
				</div>
				<div class="pager" id="pager"></div>
			</div>
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
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					detail: {},
                    baseurl: '',
					dataList: []
				},
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})

			layui.use(['layer', 'element', 'carousel', 'laypage', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var laypage = layui.laypage;
				var http = layui.http;
				var jquery = layui.jquery;

				var id = http.getParam('id');
                vue.baseurl = http.baseurl;

                // 获取轮播图 数据
                http.request('config/list', 'get', {
                    page: 1,
                    limit: 3
                }, function(res) {
                    if (res.data.list.length > 0) {
                        let swiperList = [];
                        res.data.list.forEach(element => {
                          if (element.value != null) {
                            swiperList.push({
                              img: http.baseurl+element.value
                            });
                          }
                        });
                        vue.swiperList = swiperList;

                        vue.$nextTick(() => {
                            carousel.render({
                                elem: '#layui-carousel',
                                width: '100%',
                                height: '620px',
                                anim: 'fade',
                                autoplay: 'true',
                                interval: '6000',
                                arrow: 'none',
                                indicator: 'inside'
                            });
                        })
                    }
                });

				// 详情信息
				http.request('forum/list/' + id, 'get', {}, function(res) {
					vue.detail = res.data
					vue.dataList = res.data.childs
					
					laypage.render({
						elem: 'pager',
						count: res.data.total,
						groups: 5,
						layout: ["count","prev","page","next","skip"],
						prev: '上一页',
						next: '下一页',
						jump: function(obj, first) {
							// param.page = obj.curr;
							// 首次不执行
							if (!first) {
								http.request('forum/list/' + id, 'get', {}, function(res) {
									vue.detail = res.data
									vue.dataList = res.data.childs
								})
							}
						}
					});
				});

				// 添加评论
				jquery('#btn-add-win').click(function(e) {
					layer.open({
						type: 2,
						title: '添加评论',
						area: ['600px', '300px'],
						content: './add-comment.jsp?pid=' + vue.detail.id
					});
				})

			});
		</script>
	</body>
</html>
