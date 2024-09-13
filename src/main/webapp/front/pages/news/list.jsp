<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 新闻资讯 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>公告信息</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		/* lists */
		.news .list .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news .list .animation-box:hover {
						transform: translate3d(10px, 0px, 0px);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.news .list img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news .list img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		/* lists */
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
			
			<div id="breadcrumb">
				<span class="en">NEWS / INFORMATION</span>
				<span class="cn">公告信息</span>
			</div>
			
			<div class="news" :style='{"width":"100%","margin":"10px auto","position":"relative","background":"none"}'>
				<form class="layui-form filter" :style='{"padding":"20px 7% 20px","margin":"0","alignItems":"center","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"center","height":"auto"}'>
					<div :style='{"alignItems":"center","margin":"0 10px 0 0","display":"flex"}' class="item-list">
						<div class="lable" :style='{"width":"auto","padding":"0 10px","lineHeight":"42px","fontSize":"14px","color":"#333"}'>标题</div>
						<input type="text" :style='{"padding":"0 10px","margin":"0","borderColor":"#ddd","color":"#666","outline":"none","borderRadius":"0px","background":"#fff","borderWidth":"1px","width":"350px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' name="title" id="title" placeholder="标题" autocomplete="off" class="layui-input">
					</div>
					<button :style='{"cursor":"pointer","border":"0px solid #ffaf03","padding":"0px 15px","boxShadow":"inset 0px 0px 48px 0px #7e5ffb","margin":"0 0px 0 0","color":"#333","outline":"none","borderRadius":"0px","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","height":"40px"}' id="btn-search" type="button" class="layui-btn layui-btn-normal">
						<i :style='{"color":"#333","margin":"0 10px 0 0","fontSize":"14px"}' class="layui-icon layui-icon-search"></i>搜索
					</button>
				</form>
				



				<div :style='{"padding":"0 7%","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-4">
					<div @click="jump('../news/detail.jsp?id='+item.id);" v-for="(item,index) in dataList" :key="index" v-if="index < 2" :style='{"border":"1px solid #ddd","cursor":"pointer","padding":"10px","margin":"10px 10px 20px","background":"linear-gradient(120deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(238,238,238,1) 50%, rgba(238,238,238,1) 100%)","width":"48%","height":"auto"}' class="list-item-body animation-box">
						<img :style='{"width":"100%","objectFit":"cover","display":"block","height":"400px"}' :src="baseurl+item.picture">
						<div class="title" :style='{"cursor":"pointer","padding":"0 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#7e5ffb","background":"none","lineHeight":"40px","fontSize":"16px","textOverflow":"ellipsis","fontWeight":"600"}'>{{item.title}}</div>
						<div class="desc" :style='{"padding":"8px 0","overflow":"hidden","color":"#666","lineHeight":"24px","fontSize":"14px","textIndent":"2em","height":"80px"}'>{{item.introduction}}</div>
						<div class="time" :style='{"lineHeight":"32px","fontSize":"12px","color":"#999","textAlign":"right"}'>{{item.addtime}}</div>
						<div class="tag" :style='{"padding":"0 10px","fontSize":"14px","lineHeight":"32px","color":"#fff","background":"#333","display":"none"}'>新闻动态</div>
					</div>
					<div @click="jump('../news/detail.jsp?id='+item.id);" v-for="(item,index) in dataList" :key="index" v-if="index > 1" :style='{"cursor":"pointer","border":"1px solid #ddd","padding":"10px","margin":"10px 10px 20px","background":"linear-gradient(240deg, rgba(246,246,246,1) 0%, rgba(238,238,238,1) 70%, rgba(246,246,246,1) 70%, rgba(238,238,238,1) 100%)","width":"100%","position":"relative","height":"auto"}' class="list-item-body animation-box">
						<div class="title" :style='{"padding":"0 90px 0 10px","whiteSpace":"nowrap","overflow":"hidden","color":"#7e5ffb","background":"none","lineHeight":"40px","fontSize":"16px","textOverflow":"ellipsis","fontWeight":"600"}'>{{item.title}}</div>
						<div class="desc" :style='{"padding":"8px 0","lineHeight":"24px","fontSize":"14px","color":"#666","textIndent":"2em","height":"72px"}'>{{item.introduction}}</div>
						<div class="time" :style='{"lineHeight":"32px","fontSize":"12px","position":"absolute","right":"20px","color":"#999","top":"10px"}'>{{item.addtime}}</div>
						<div class="tag" :style='{"padding":"0 10px","fontSize":"14px","lineHeight":"32px","color":"#fff","background":"#333","display":"none"}'>新闻动态</div>
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
					baseurl : '',
					dataList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 200) {
								return val.substring(0, 200).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
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

				var limit = 5;
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

      // 分页列表
      pageList();

      // 搜索按钮
      jquery('#btn-search').click(function(e) {
        pageList();
      });

      function pageList() {
		// 获取列表数据
		http.request('news/list', 'get', {
			page: 1,
            sort: 'addtime',
            order: 'desc',
			limit: 12,
			title: '%' + jquery('#title').val() + '%',
		}, function(res) {
			vue.dataList = res.data.list
			// 分页
			laypage.render({
				elem: 'pager',
				count: res.data.total,
				limit: 12,
				groups: 5,
				layout: ["count","prev","page","next","skip"],
				prev: '上一页',
				next: '下一页',
				jump: function(obj, first) {
					//首次不执行
					if (!first) {
						http.request('news/list', 'get', {
							page: obj.curr,
							limit: obj.limit
						}, function(res) {
							vue.dataList = res.data.list
						})
					}
				}
			});
		})
	}
			});
		</script>
	</body>
</html>
