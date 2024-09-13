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
		.forum-container .btn-container {
			display: flex;
			align-items: center;
			box-sizing: border-box;
			width: 100%;
		}
		
		.forum-container .btn-container #title {
			padding: 0 10px;
			flex: 1;
			margin-right: 10px;
		}
		
		.forum-container .btn-container button {
			height: 38px;
			line-height: 38px;
			width: auto;
			margin: 0 0 0 10px;
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
				<div class="btn-container">
                    <input type="text" name="title" id="title" placeholder="标题" autocomplete="off" class="layui-input">
                    <button id="btn-search" type="button" class="layui-btn layui-btn-normal">
                        <i class="layui-icon layui-icon-search"></i>搜索
                    </button>
					<button  @click="jump('../forum/add.jsp')" type="button" class="layui-btn btn-theme">
						<i class="layui-icon">&#xe654;</i> 发布帖子
					</button>
				</div>
				<div class="forum-list">
					<div v-for="(item,index) in dataList" v-bind:key="index" href="javascript:void(0);" @click="jump('../forum/detail.jsp?id='+item.id);" class="forum-item">
						<h2 class="h2">{{item.title}}（发布人：{{item.username}}）</h2>
						<div class="create-time">
							{{item.addtime}}
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

				var limit = 10;

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

                  pageList(); 

                  // 搜索按钮
                  jquery('#btn-search').click(function(e) {
                    pageList();
                  });
                  function pageList() {
                    // 获取列表数据
                    http.request('forum/flist?isdone=开放&sort=addtime&order=desc', 'get', {
                        page: 1,
                        limit: limit,
                        title: '%' + jquery('#title').val() + '%',
                    }, function(res) {
                        vue.dataList = res.data.list
                        // 分页
                        laypage.render({
                            elem: 'pager',
                            count: res.data.total,
                            limit: limit,
                            groups: 5,
							layout: ["count","prev","page","next","skip"],
							prev: '上一页',
							next: '下一页',
                            jump: function(obj, first) {
                                //首次不执行
                                if (!first) {
                                    http.request('forum/flist?isdone=开放&sort=addtime&order=desc', 'get', {
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
