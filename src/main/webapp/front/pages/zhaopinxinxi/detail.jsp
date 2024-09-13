<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		#swiper .layui-carousel-arrow[lay-type=sub] {
						background: rgba(0,0,0,.2);
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=sub]:hover {
						background: #FF7373;
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=add] {
						background: rgba(0,0,0,.2);
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=add]:hover {
						background: #FF7373;
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-ind {
						top: -35px;
						width: 100%;
						position: relative;
					}
		
		#swiper .layui-carousel-ind ul {
						border-radius: 10px;
						padding: 5px;
						background: rgba(0,0,0,.2);
						display: inline-block;
					}
		
		#swiper .layui-carousel-ind ul li {
						cursor: pointer;
						border-radius: 50%;
						margin: 0 3px;
						background: rgba(255,255,255,.5);
						display: inline-block;
						width: 10px;
						font-size: 14px;
						height: 10px;
					}
		
		#swiper .layui-carousel-ind ul li:hover {
						cursor: pointer;
						border-radius: 50%;
						margin: 0 3px;
						background: rgba(255,255,255,.7);
						display: inline-block;
						width: 10px;
						font-size: 14px;
						height: 10px;
					}
		
		#swiper .layui-carousel-ind ul li.layui-this {
						cursor: pointer;
						border-radius: 50%;
						margin: 0 3px;
						background: rgba(255,255,255,1);
						display: inline-block;
						width: 10px;
						font-size: 14px;
						height: 10px;
					}
		
		.layui-tab-card .layui-tab-title li {
						cursor: pointer;
						padding: 0 15px;
						margin: 0px 24px 0 0;
						color: #333;
						font-size: 16px;
						border-color: #333;
						line-height: 40px;
						border-radius: 30px;
						background: rgba(255,255,255,.9);
						width: auto;
						border-width: 0px;
						border-style: dashed;
						text-align: center;
						min-width: 120px;
						height: 40px;
					}
		
		.layui-tab-card .layui-tab-title li:hover {
						cursor: pointer;
						padding: 0 15px;
						margin: 0px 24px 0 0;
						color: #fff;
						font-size: 16px;
						border-color: #333;
						line-height: 40px;
						background: #333;
						width: auto;
						border-width: 0px;
						border-style: dashed;
						text-align: center;
						min-width: 120px;
					}
		
		.layui-tab-card .layui-tab-title li.layui-this {
						cursor: pointer;
						padding: 0 15px;
						margin: 0px 24px 0 0;
						color: #fff;
						font-size: 16px;
						border-color: #333;
						line-height: 40px;
						border-radius: 30px;
						background: #333;
						width: auto;
						border-width: 0px;
						border-style: dashed;
						text-align: center;
						min-width: 120px;
						height: 40px;
					}
		
		.layui-tab-card .layui-tab-title li.layui-this::after {
			content: none;
		}
	</style>
	<body>
		<div id="app">
			<div id="layui-carousel" class="layui-carousel">
                <div carousel-item>
                    <div class="layui-carousel-item" v-for="(item,index) in swiperList2" :key="index">
                        <img :src="item.img" />
                    </div>
                </div>	
			</div>
		
			<div id="breadcrumb">
				<a class="en" href="../home/home.jsp">首页</a>
				<!-- <span class="en">DETAIL / INFORMATION</span> -->
				<span class="cn">{{title}}</span>
			</div>
			
			<div class="data-detail" :style='{"margin":"0px auto","alignItems":"flex-start","flexWrap":"wrap","background":"none","display":"flex","width":"100%","position":"relative","justifyContent":"space-between"}'>
				<div :style='{"padding":"0px","boxShadow":"0px 0px 0px #eee","borderColor":"#e6e6e6","margin":"0","display":"flex","justifyContent":"space-between","overflow":"hidden","borderRadius":"4px","flexWrap":"wrap","background":"none","borderWidth":"0px","width":"100%","position":"relative","borderStyle":"solid"}'>
					
					<div class="layui-carousel" id="swiper" :style='{"border":"0px solid #bdefb6","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","padding":"0px 0 0px 7%","margin":"20px auto 0","borderRadius":"0","background":"none","width":"48%","order":"1","height":"560px"}'>
						<div carousel-item>
							<div :style='{"borderRadius":"0","width":"100%","height":"100%"}' v-if="swiperList.length" v-for="(item,index) in swiperList" :key="index">
								<img :style='{"border":"1px solid #eee","margin":"0 auto","objectFit":"contain","borderRadius":"0","background":"#fff","width":"100%","height":"100%"}' :src="baseurl+item" />
							</div>
						</div>
					</div>




					<div :style='{"minHeight":"540px","padding":"0px","margin":"20px 7% 0","borderColor":"#eee","background":"rgba(255,255,255,.9)","borderWidth":"1px","flex":"1","width":"100%","borderStyle":"solid","order":"2"}'>
						<div :style='{"padding":"0px 0","margin":"0 0 10px","borderColor":"#FF7373","alignItems":"center","display":"inline-block","justifyContent":"space-between","borderRadius":"0px","background":"none","borderWidth":"0px","width":"100%","lineHeight":"50px","borderStyle":"solid","height":"50px"}'>
							<div :style='{"padding":"0 0 0 20px","color":"#fff","background":"url(http://codegen.caihongy.cn/20230117/2d9ffa6075c2441fae813ffa27437b7b.png) no-repeat right top,#7e5ffb","display":"inline-block","width":"50%","fontSize":"18px","float":"left"}'>{{title}}</div>
							<div v-if='storeupFlag' :style='{"cursor":"pointer","border":"0px dashed #fff","padding":"0 20px","margin":"0px 0 0","borderRadius":"0px","textAlign":"right","background":"#f6f6f6","display":"inline-block","width":"50%","lineHeight":"50px","float":"right","height":"50px"}' @click="storeUp()">
								<i class="layui-icon" :style='{"color":"#333","fontSize":"14px"}'>&#xe67a;</i>
								<span :style='{"color":"#333","fontSize":"14px"}'>取消收藏</span>
							</div>
							<div v-if='!storeupFlag' :style='{"cursor":"pointer","border":"0px dashed #fff","padding":"0 20px","margin":"0px 0 0","borderRadius":"0px","textAlign":"right","background":"#f6f6f6","display":"inline-block","width":"50%","lineHeight":"50px","float":"right","height":"50px"}' @click="storeUp()">
								<i class="layui-icon" :style='{"color":"#333","fontSize":"14px"}'>&#xe67b;</i>
								<span :style='{"color":"#333","fontSize":"14px"}'>点我收藏</span>
							</div>
						</div>



						<div :style='{"padding":"0px","margin":"0 0 10px","borderColor":"#f7e7b3","background":"none","borderWidth":"0px 0px 0px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#7e5ffb","textAlign":"right","background":"none","width":"auto","fontSize":"16px","lineHeight":"40px","minWidth":"130px","height":"40px"}'>企业简介：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#333","background":"none"}' class="desc">
								{{detail.qiyejianjie}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 0 10px","borderColor":"#f7e7b3","background":"none","borderWidth":"0px 0px 0px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#7e5ffb","textAlign":"right","background":"none","width":"auto","fontSize":"16px","lineHeight":"40px","minWidth":"130px","height":"40px"}'>招聘职位：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#333","background":"none"}' class="desc">
								{{detail.zhaopinzhiwei}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 0 10px","borderColor":"#f7e7b3","background":"none","borderWidth":"0px 0px 0px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#7e5ffb","textAlign":"right","background":"none","width":"auto","fontSize":"16px","lineHeight":"40px","minWidth":"130px","height":"40px"}'>职位要求：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#333","background":"none"}' class="desc">
								{{detail.zhiweiyaoqiu}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 0 10px","borderColor":"#f7e7b3","background":"none","borderWidth":"0px 0px 0px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#7e5ffb","textAlign":"right","background":"none","width":"auto","fontSize":"16px","lineHeight":"40px","minWidth":"130px","height":"40px"}'>上班时间：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#333","background":"none"}' class="desc">
								{{detail.shangbanshijian}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 0 10px","borderColor":"#f7e7b3","background":"none","borderWidth":"0px 0px 0px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#7e5ffb","textAlign":"right","background":"none","width":"auto","fontSize":"16px","lineHeight":"40px","minWidth":"130px","height":"40px"}'>薪资待遇：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#333","background":"none"}' class="desc">
								{{detail.xinzidaiyu}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 0 10px","borderColor":"#f7e7b3","background":"none","borderWidth":"0px 0px 0px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#7e5ffb","textAlign":"right","background":"none","width":"auto","fontSize":"16px","lineHeight":"40px","minWidth":"130px","height":"40px"}'>招聘人数：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#333","background":"none"}' class="desc">
								{{detail.zhaopinrenshu}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 0 10px","borderColor":"#f7e7b3","background":"none","borderWidth":"0px 0px 0px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#7e5ffb","textAlign":"right","background":"none","width":"auto","fontSize":"16px","lineHeight":"40px","minWidth":"130px","height":"40px"}'>发布时间：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#333","background":"none"}' class="desc">
								{{detail.fabushijian}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 0 10px","borderColor":"#f7e7b3","background":"none","borderWidth":"0px 0px 0px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#7e5ffb","textAlign":"right","background":"none","width":"auto","fontSize":"16px","lineHeight":"40px","minWidth":"130px","height":"40px"}'>人事工号：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#333","background":"none"}' class="desc">
								{{detail.gonghao}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 0 10px","borderColor":"#f7e7b3","background":"none","borderWidth":"0px 0px 0px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#7e5ffb","textAlign":"right","background":"none","width":"auto","fontSize":"16px","lineHeight":"40px","minWidth":"130px","height":"40px"}'>人事姓名：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#333","background":"none"}' class="desc">
								{{detail.xingming}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 0 10px","borderColor":"#f7e7b3","background":"none","borderWidth":"0px 0px 0px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#7e5ffb","textAlign":"right","background":"none","width":"auto","fontSize":"16px","lineHeight":"40px","minWidth":"130px","height":"40px"}'>联系电话：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#333","background":"none"}' class="desc">
								{{detail.lianxidianhua}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 0 10px","borderColor":"#f7e7b3","background":"none","borderWidth":"0px 0px 0px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#7e5ffb","textAlign":"right","background":"none","width":"auto","fontSize":"16px","lineHeight":"40px","minWidth":"130px","height":"40px"}'>部门：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#333","background":"none"}' class="desc">
								{{detail.bumen}}
							</div>
						</div>
						<div :style='{"padding":"0px","margin":"0 0 10px","borderColor":"#f7e7b3","background":"none","borderWidth":"0px 0px 0px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px 0 0","color":"#7e5ffb","textAlign":"right","background":"none","width":"auto","fontSize":"16px","lineHeight":"40px","minWidth":"130px","height":"40px"}'>点击次数：</div>
							<div  :style='{"width":"100%","padding":"8px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#333","background":"none"}' class="desc">
								{{detail.clicknum}}
							</div>
						</div>


						<div class="detail-item" :style='{"padding":"10px 7%","flexWrap":"wrap","background":"none","display":"flex"}'>

						</div>
					</div>
					
				</div>
				



				<div class="layui-tab layui-tab-card" :style='{"minHeight":"500px","padding":"0","boxShadow":"none","margin":"20px 7% 0","borderColor":"#e6e6e6","overflow":"hidden","borderRadius":"0px","background":"none","borderWidth":"0px","width":"100%","borderStyle":"solid","order":"10"}'>
					<ul class="layui-tab-title" :style='{"border":"0","padding":"20px 10px 0","borderColor":"#c5ddfb","textAlign":"center","background":"linear-gradient(240deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(126,95,251,1) 50%, rgba(126,95,251,1) 100%)","borderWidth":"0px","fontSize":"0","borderStyle":"solid","height":"80px"}'>




						<li>评论</li>







					</ul>
					<div :style='{"padding":"15px","background":"#fff"}' class="layui-tab-content">





						<div class="layui-tab-item" layui-show>
							<form class="layui-form message-form" :style='{"boxShadow":"0 0px 0px 0 rgba(0, 0, 0, .1)","padding":"15px 0","margin":"0px 0 0px","borderColor":"#fff","borderWidth":"0px","background":"none","width":"100%","borderStyle":"dotted"}'>
								<div :style='{"width":"100%","display":"flex","height":"auto"}' class="layui-form-item layui-form-text">
									<label :style='{"width":"80px","padding":"0 10px 0 0","lineHeight":"40px","fontSize":"14px","color":"#666","textAlign":"right"}' class="layui-form-label">评论</label>
									<textarea :style='{"border":"0","padding":"15px","borderColor":"#ddd","color":"#333","minHeight":"150px","outline":"none","borderRadius":"0px","borderWidth":"1px","background":"linear-gradient(120deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(238,238,238,1) 50%, rgba(238,238,238,1) 100%)","width":"1058px","lineHeight":"32px","fontSize":"14px","borderStyle":"solid"}' name="content" required lay-verify="required" placeholder="请输入内容" class="layui-textarea"></textarea>
								</div>
								<div :style='{"width":"100%","padding":"0 0 0 80px","margin":"30px 0 0","textAlign":"center","height":"auto"}' class="layui-form-item">
									<button :style='{"cursor":"pointer","padding":"0","boxShadow":"inset 0px 0px 56px 0px #7e5ffb","margin":"0 20px 0 0","borderColor":"#9179f2","color":"#fff","outline":"none","borderRadius":"0px","background":"#fff","borderWidth":"1px","width":"110px","lineHeight":"44px","fontSize":"14px","borderStyle":"solid","height":"44px"}' class="layui-btn btn-submit" lay-submit lay-filter="*">立即提交</button>
									<button :style='{"cursor":"pointer","padding":"0","boxShadow":"inset 0px 0px 36px 0px #f2e013","margin":"0 20px 0 0","borderColor":"#dfd130","color":"#333","outline":"none","borderRadius":"0px","background":"#fff","borderWidth":"1px","width":"120px","lineHeight":"44px","fontSize":"14px","borderStyle":"solid","height":"44px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
								</div>
							</form>
							
							<div class="message-list" :style='{"boxShadow":"0 0px 0px 0 rgba(0, 0, 0, .1)","padding":"15px 0","borderColor":"#fff","borderWidth":"0px","background":"none","width":"100%","borderStyle":"groove"}'>
								<div :style='{"padding":"10px","boxShadow":"0px 0px 0px #eee","margin":"0 0 20px","borderColor":"#ddd","alignItems":"center","borderRadius":"4px","borderWidth":"0px","background":"none","width":"100%","borderStyle":"solid","height":"auto"}' class="message-item" v-for="(item,index) in dataList" v-bind:key="index">
									<div :style='{"padding":"4px","alignItems":"center","borderRadius":"4px","background":"none","display":"flex","width":"100%","height":"auto"}' class="username-container">
										<img :style='{"width":"40px","margin":"0 10px 0 0","borderRadius":"100%","objectFit":"cover","height":"40px"}' class="avator" :src="baseurl + item.avatarurl">
										<div :style='{"color":"#333","fontSize":"16px"}' class="username">{{item.nickname}}</div>
									</div>
									<div :style='{"padding":"8px","margin":"10px 0px 0px","borderColor":"#ddd","color":"#333","borderRadius":"0px","background":"linear-gradient(240deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(238,238,238,1) 50%, rgba(238,238,238,1) 100%)","borderWidth":"1px","lineHeight":"30px","fontSize":"14px","borderStyle":"solid","textIndent":"2em"}'>
										{{item.content}}
									</div>
									<div :style='{"padding":"8px","margin":"10px 0px 0px","borderColor":"#ddd","color":"#333","borderRadius":"0px","background":"linear-gradient(240deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(238,238,238,1) 50%, rgba(238,238,238,1) 100%)","borderWidth":"1px","lineHeight":"30px","fontSize":"14px","borderStyle":"solid","textIndent":"2em"}' v-if="item.reply" class="content">
										回复:{{item.reply}}
									</div>
								</div>
							</div>
							<div class="pager" id="pager"></div>
						</div>







					</div>
				</div>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
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
                    swiperList2: [{
                        img: '../../img/banner.jpg'
                    }],
					swiperList: [],
					// 数据详情
					detail: {
						id: 0
					},
					// 商品标题
					title: '',
					// 倒计时
					count: 0,
					// 加入购物车数量
					buynumber: 1,
					// 当前详情页表
					detailTable: 'zhaopinxinxi',
					baseurl: '',
					// 评论列表
					dataList: [],
					storeupFlag: 0,
					// 选座座位列表
					numberList: []
				},
				// 倒计时效果
				computed: {
					SecondToDate: function() {
						var time = this.count;
						if (null != time && "" != time) {
							if (time > 60 && time < 60 * 60) {
								time =
									parseInt(time / 60.0) +
									"分钟" +
									parseInt((parseFloat(time / 60.0) - parseInt(time / 60.0)) * 60) +
									"秒";
							} else if (time >= 60 * 60 && time < 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else if (time >= 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0 / 24) +
									"天" +
									parseInt(
										(parseFloat(time / 3600.0 / 24) - parseInt(time / 3600.0 / 24)) *
										24
									) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else {
								time = parseInt(time) + "秒";
							}
						}
						return time;
					}
				},
				//  清除定时器
				destroyed: function() {
					window.clearInterval(this.inter);
				},
				methods: {
                    // 初始化
                    init() {
                    },

					jump(url) {
						jump(url)
					},
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					// 倒计时初始化
					countDown() {
						let reversetime = new Date(this.detail.reversetime).getTime()
						let now = new Date().getTime();
						let count = reversetime - now;
						if (count > 0) {
							this.count = count / 1000
							var _this = this;
							this.inter = window.setInterval(function() {
								_this.count = _this.count - 1;
								if (_this.count < 0) {
									window.clearInterval(_this.inter);
									layer.msg("活动已结束", {
										time: 2000,
										icon: 5
									})
								}
							}, 1000);
						}
					},

					// 下载文件
					downFile(url) {
						var download = $("#download");
						download.append(
							"<a id=\"down\" href=\"aaaa.txt\" target=\"_blank\" download=\"aaaa.txt\" style=\"display:none\">下载该文件</a>");
						console.log(download);
						$("#down")[0].click();
					},
					// 跨表
					onAcrossTap(acrossTable,statusColumnName,tips,statusColumnValue){
						localStorage.setItem('crossTable',`zhaopinxinxi`);
						localStorage.setItem('crossObj', JSON.stringify(this.detail));
						localStorage.setItem('statusColumnName',statusColumnName);
						localStorage.setItem('statusColumnValue',statusColumnValue);
						localStorage.setItem('tips',tips);

						if(statusColumnName!=''&&!statusColumnName.startsWith("[")) {
							var obj = JSON.parse(localStorage.getItem('crossObj'));
							for (var o in obj){
								if(o==statusColumnName && obj[o]==statusColumnValue){
									layer.msg(tips, {
										time: 2000,
										icon: 5
									});
									return
								}
							}
						}

						jump(`../${acrossTable}/add.jsp?corss=true`);
					},




					// 收藏商品
					storeUp() {
						layui.http.request('storeup/list', 'get', {
							page: 1,
							limit: 1,
							type: 1,
							refid : this.detail.id,
							tablename : this.detailTable,
							userid: localStorage.getItem('userid'),
						}, (res) => {
							vue.dataList = res.data.list
							if(res.data.list.length==1) {
								layui.http.requestJson(`storeup/delete`, 'post', [res.data.list[0].id], function(res) {
									layer.msg('取消成功', {
										time: 1000,
										icon: 5
									}, function() {
										window.location.reload();
									});
								});
								return;
							}
							layui.http.requestJson('storeup/save', 'post', {
								userid: localStorage.getItem('userid'),
								name: this.title,
							    type:1,
								picture:vue.detail.qiyefengmian.split(",")[0],
								refid: this.detail.id,
								tablename: this.detailTable
							}, function(res) {
								layer.msg('收藏成功', {
									time: 1000,
									icon: 6
								}, function() {
									window.location.reload();
								});
							});
						});
					},
					
				}
			})
			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery', 'laypage'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var laypage = layui.laypage;
				var limit = 10;
				// 数据ID
				var id = http.getParam('id');
				vue.detail.id = id;
				vue.baseurl = http.baseurl;
                vue.init();
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
                        vue.swiperList2 = swiperList;

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
				// 商品信息
				http.request(`${vue.detailTable}/detail/` + id, 'get', {}, function(res) {
					// 详情信息
					vue.detail = res.data
					vue.title = vue.detail.qiyemingcheng;
					// 轮播图片
					vue.swiperList = vue.detail.qiyefengmian ? vue.detail.qiyefengmian.split(",") : [];
					// 轮播图
					vue.$nextTick(() => {
						carousel.render({
							elem: '#swiper',
							width: '48%',
							height: '560px',
							anim: 'fade',
							autoplay: 'true',
							interval: '5000',
							arrow: 'none',
							indicator: 'inside'
						});
					})


				});
				if(localStorage.getItem('userid')){
					http.request(`storeup/list`, 'get', {
						page: 1,
						limit: 1,
						type:1,
						refid : vue.detail.id,
						tablename : vue.detailTable,
						userid: localStorage.getItem('userid'),
					}, function(res) {
						vue.storeupFlag = res.data.list.length;
					})
				}





				// 获取评论
				http.request(`discuss${vue.detailTable}/list`, 'get', {
					page: 1,
					limit: limit,
					refid: vue.detail.id,
					//userid: localStorage.getItem('userid')
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
								http.request(`discuss${vue.detailTable}/list`, 'get', {
									page: obj.curr,
									limit: obj.limit,
									userid: localStorage.getItem('userid')
								}, function(res) {
									vue.dataList = res.data.list
								})
							}
						}
					});
				})
				// 提交评论
				form.on('submit(*)', function(data) {
					data = data.field;
					data.userid = localStorage.getItem('userid')
					data.nickname = localStorage.getItem('adminName')
					data.refid = vue.detail.id
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
					http.requestJson(`discuss${vue.detailTable}/save`, 'post', data, function(res) {
						layer.msg('评论成功', {
							time: 2000,
							icon: 6
						}, function() {
							window.location.reload();
						});
						return false
					});
					return false
				});
			});
		</script>
	</body>
</html>
