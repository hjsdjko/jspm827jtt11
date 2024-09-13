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
		<link rel="stylesheet" href="../../layui/css/layui.css" />
		<link rel="stylesheet" href="../../css/swiper.min.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		/* recommends */
		.recommends .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.recommends .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.recommends .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.recommends .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.recommends .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.recommends .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends .animation-box:hover {
						transform: scale(1);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.recommends img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.recommends img:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						opacity: 0.75;
						transition: 0.3s;
					}
		/* recommends */
		
		/* news */
		.news .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-3 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-3 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.news .list-6 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.news .list-6 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.news .list-6 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.news .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news .animation-box:hover {
						transform: scale(1);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.news img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.news img:hover {
						transform: scale(0.98);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						opacity: 0.75;
						transition: 0.3s;
					}
		/* news */
		
		/* lists */
		.lists .list-3 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.lists .list-3 .swiper-button-prev::after {
						color: #5bb450;
					}
		
		.lists .list-3 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-3 .swiper-button-next::after {
						color: #5bb450;
					}
		
		.lists .list-5 .swiper-slide.swiper-slide-prev {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-next {
			position: relative;
			z-index: 3;
		}
		.lists .list-5 .swiper-slide.swiper-slide-active {
			position: relative;
			z-index: 5;
		}
		
		.lists .list-5 .swiper-button-prev {
						left: 10px;
						right: auto;
					}
		
		.lists .list-5 .swiper-button-prev::after {
						color: rgb(64, 158, 255);
					}
		
		.lists .list-5 .swiper-button-next {
						left: auto;
						right: 10px;
					}
		
		.lists .list-5 .swiper-button-next::after {
						color: rgb(64, 158, 255);
					}
		
		.lists .animation-box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists .animation-box:hover {
						-webkit-perspective: 1000px;
						perspective: 1000px;
						transition: 0.3s;
					}
		
		.lists img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		}
		
		.lists img:hover {
						transform: scale(1);
						-webkit-perspective: 1000px;
						perspective: 1000px;
						opacity: 0.75;
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
						<img :src="baseurl+item.value" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->
			

			<div :style='{"padding":"0","margin":"10px auto","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between"}'>
			
				

				<!-- 推荐 -->
				<div class="recommends" :style='{"padding":"0px","margin":"60px 7% 30px","borderColor":"#eee","textAlign":"center","display":"block","flexWrap":"wrap","background":"none","borderWidth":"0px","flex":"1","width":"100%","position":"relative","borderStyle":"solid","order":"4"}'>
					<div v-if="false && 1 == 1" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 0","margin":"0px auto 0px","borderColor":"#f6cccc","alignItems":"center","textAlign":"left","flexDirection":"initial","display":"flex","justifyContent":"center","minHeight":"50px","borderRadius":"0px","background":"none","borderWidth":"0px","width":"100%","borderStyle":"dashed"}'>
						<span :style='{"color":"#666","background":"#f6f6f6","display":"block","width":"50%","fontSize":"14px","lineHeight":"50px","order":"2","textTransform":"uppercase"}'>Recommend</span>
						<span :style='{"padding":"0 40px","margin":"0px","color":"#fff","textAlign":"right","background":"url(http://codegen.caihongy.cn/20230117/2d9ffa6075c2441fae813ffa27437b7b.png) no-repeat right top,#7e5ffb","width":"50%","fontSize":"18px","lineHeight":"50px"}'>招聘信息推荐</span>
					</div>
					
					<div v-if="false && 1 == 2" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				
					<div :style='{"width":"100%","padding":"10px 0 0","background":"#fff","height":"auto"}' class="list list-9">
						<div :style='{"margin":"0 0 20px","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"240px"}' class="list-4-body">
							<div v-if="zhaopinxinxiRecommend.length>0" @click="jump('../zhaopinxinxi/detail.jsp?id='+zhaopinxinxiRecommend[0].id)" class="list-4-item animation-box item-1" :style='{"cursor":"pointer","width":"48%","margin":"0 0px","position":"relative","display":"inline-block","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="zhaopinxinxiRecommend[0].qiyefengmian?baseurl+zhaopinxinxiRecommend[0].qiyefengmian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                    <div>{{zhaopinxinxiRecommend[0].qiyemingcheng}}</div>
                                    <div>{{zhaopinxinxiRecommend[0].zhaopinzhiwei}}</div>
                                </div>
							</div>
							<div v-if="zhaopinxinxiRecommend.length>1" @click="jump('../zhaopinxinxi/detail.jsp?id='+zhaopinxinxiRecommend[1].id)" class="list-4-item animation-box item-2" :style='{"cursor":"pointer","width":"48%","margin":"0 0px","position":"relative","display":"inline-block","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="zhaopinxinxiRecommend[1].qiyefengmian?baseurl+zhaopinxinxiRecommend[1].qiyefengmian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                    <div>{{zhaopinxinxiRecommend[1].qiyemingcheng}}</div>
                                    <div>{{zhaopinxinxiRecommend[1].zhaopinzhiwei}}</div>
                                </div>
							</div>
						</div>
					    <div :style='{"width":"100%","flexWrap":"wrap","justifyContent":"space-between","display":"flex","height":"240px"}' class="list-4-body">
							<div v-if="zhaopinxinxiRecommend.length>2" @click="jump('../zhaopinxinxi/detail.jsp?id='+zhaopinxinxiRecommend[2].id)" class="list-4-item animation-box item-3" :style='{"cursor":"pointer","width":"32%","margin":"0 0px","position":"relative","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="zhaopinxinxiRecommend[2].qiyefengmian?baseurl+zhaopinxinxiRecommend[2].qiyefengmian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                    <div>{{zhaopinxinxiRecommend[2].qiyemingcheng}}</div>
                                    <div>{{zhaopinxinxiRecommend[2].zhaopinzhiwei}}</div>
                                </div>
							</div>
							<div v-if="zhaopinxinxiRecommend.length>3" @click="jump('../zhaopinxinxi/detail.jsp?id='+zhaopinxinxiRecommend[3].id)" class="list-4-item animation-box item-4" :style='{"cursor":"pointer","width":"32%","margin":"0 0px","position":"relative","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="zhaopinxinxiRecommend[3].qiyefengmian?baseurl+zhaopinxinxiRecommend[3].qiyefengmian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                    <div>{{zhaopinxinxiRecommend[3].qiyemingcheng}}</div>
                                    <div>{{zhaopinxinxiRecommend[3].zhaopinzhiwei}}</div>
                                </div>
							</div>
							<div v-if="zhaopinxinxiRecommend.length>4" @click="jump('../zhaopinxinxi/detail.jsp?id='+zhaopinxinxiRecommend[4].id)" class="list-4-item animation-box item-5" :style='{"cursor":"pointer","width":"32%","margin":"0 0px","position":"relative","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="zhaopinxinxiRecommend[4].qiyefengmian?baseurl+zhaopinxinxiRecommend[4].qiyefengmian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                    <div>{{zhaopinxinxiRecommend[4].qiyemingcheng}}</div>
                                    <div>{{zhaopinxinxiRecommend[4].zhaopinzhiwei}}</div>
                                </div>
							</div>
					    </div>
					</div>
					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"0px auto 0px","borderColor":"#fff","textAlign":"center","display":"inline-block","right":"0","top":"0","borderRadius":"0px","background":"none","borderWidth":"0px","width":"auto","lineHeight":"50px","position":"absolute","borderStyle":"dashed"}' @click="jump('../zhaopinxinxi/list.jsp')">
						<span :style='{"color":"#666","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#666","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
				<!-- 推荐 -->

            
				<!-- 系统简介 -->
				<div :style='{"padding":"60px 7% 60px","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"0","borderColor":"#eee","alignItems":"flex-start","display":"block","justifyContent":"space-between","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230216/fc8b4150b70b4446b8bc1e4a5a9a6e8f.png)","borderWidth":"0px","width":"100%","position":"relative","borderStyle":"solid","height":"auto","order":"11"}'>
					<div :style='{"padding":"0 40px 0 0","margin":"0px auto 0px","borderColor":"#DF8A83","color":"#fff","textAlign":"right","float":"left","background":"url(http://codegen.caihongy.cn/20230117/2d9ffa6075c2441fae813ffa27437b7b.png) no-repeat right top,#7e5ffb","borderWidth":"0px","width":"50%","fontSize":"18px","lineHeight":"50px","borderStyle":"double","fontWeight":"500","height":"50px","order":"2"}'>{{systemIntroductionDetail.title}}</div>
					<div :style='{"padding":"0 20px","margin":"0px","color":"#555","textAlign":"left","background":"#f6f6f6","display":"block","width":"50%","lineHeight":"50px","fontSize":"14px","float":"left"}'>{{systemIntroductionDetail.subtitle}}</div>
					<div :style='{"padding":"0 0px","flexWrap":"wrap","display":"flex","width":"100%","justifyContent":"space-between","height":"auto","order":"1"}'>
						<img :style='{"padding":"20px 20px","margin":"20px 0","borderColor":"#ddd","objectFit":"cover","borderRadius":"0","borderWidth":"1px","background":"rgba(255,255,255,.9)","display":"block","width":"100%","borderStyle":"solid","height":"400px"}' :src="baseurl + systemIntroductionDetail.picture1">
						<img :style='{"padding":"20px","margin":"0px 0px 0","borderColor":"#ddd","objectFit":"cover","borderRadius":"0","borderWidth":"1px","background":"rgba(255,255,255,.9)","display":"block","width":"50%","borderStyle":"solid","height":"400px"}' :src="baseurl + systemIntroductionDetail.picture2">
						<img :style='{"border":"1px solid #bdefb6","padding":"10px","margin":"208px 0px 0","objectFit":"cover","display":"none","width":"24%","height":"150px"}' :src="baseurl + systemIntroductionDetail.picture3">
					</div>
					<div :style='{"padding":"10px 20px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"0","borderColor":"#ddd","color":"#333","textAlign":"left","right":"7%","textIndent":"2em","overflow":"hidden","top":"550px","background":"linear-gradient(120deg, rgba(246,246,246,.9) 0%, rgba(246,246,246,.9) 50%, rgba(238,238,238,.9) 50%, rgba(238,238,238,.9) 100%)","borderWidth":"1px","width":"41%","lineHeight":"2","fontSize":"14px","position":"absolute","borderStyle":"solid","height":"400px","order":"2"}' v-html="systemIntroductionDetail.content"></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
				</div>
					

				<!-- 新闻资讯 -->
				<div class="news" :style='{"margin":"40px 0 0px","borderColor":"#ccc","flexWrap":"wrap","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230217/97bcc0240b264b0c8044d768bc1036c0.jpg) no-repeat center top / 100% 100%","borderWidth":"0px","display":"block","width":"100%","position":"relative","borderStyle":"solid","order":"10"}'>
					<div v-if="false && 1 == 1" class="news-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 0px 0px","margin":"60px 7% 20px","borderColor":"#DF8A83","borderRadius":"0px","alignItems":"center","background":"#999","flexDirection":"inherit","borderWidth":"0px","display":"flex","width":"86%","borderStyle":"double","height":"50px"}'>
						<span :style='{"color":"#666","textAlign":"left","background":"#f6f6f6","display":"inline-block","width":"50%","fontSize":"14px","lineHeight":"50px","order":"2"}'>HOME NEWS</span>
						<span :style='{"padding":"0 40px 0 40px","margin":"0 0px 0 0","color":"#fff","textAlign":"right","background":"url(http://codegen.caihongy.cn/20230117/2d9ffa6075c2441fae813ffa27437b7b.png) no-repeat right top,#7e5ffb","display":"inline-block","width":"50%","fontSize":"18px","lineHeight":"50px"}'>公告信息</span>
					</div>
					
					<div v-if="false && 1 == 2" class="news-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
						
					<div :style='{"border":"4px solid #eee","padding":"20px","margin":"40px 7% 80px","flexWrap":"wrap","background":"rgba(255,255,255,1)","display":"flex","width":"86%","justifyContent":"center","height":"auto"}' v-if="newsList.length" class="list list-4">
						<div @click="jump('../news/detail.jsp?id='+newsList[0].id)" v-if="newsList.length>0" class="new-list-item animation-box" :style='{"width":"50%","padding":"0px 20px 0px 0px","margin":"0 0% 0 0","background":"linear-gradient(240deg, rgba(246,246,246,.9) 0%, rgba(246,246,246,.9) 50%, rgba(238,238,238,.9) 50%, rgba(238,238,238,.9) 100%)","height":"300px","order":"1"}'>
							<div :style='{"cursor":"pointer","padding":"0 20px","margin":"0 0 0px","whiteSpace":"nowrap","overflow":"hidden","color":"#333","textAlign":"left","background":"none","fontSize":"16px","lineHeight":"40px","textOverflow":"ellipsis","fontWeight":"600"}' class="new-list-item-title">{{newsList[0].title}}</div>
							<div :style='{"padding":"10px 20px","margin":"0 0 0px","overflow":"hidden","color":"#333","textAlign":"left","background":"none","fontSize":"14px","lineHeight":"24px","textIndent":"2em","height":"212px"}' class="descript">{{newsList[0].introduction}}</div>
							<div :style='{"padding":"4px 10px","fontSize":"14px","lineHeight":"24px","color":"#333","textAlign":"right","background":"none"}' class="time">{{newsList[0].addtime}}</div>
						</div>
						<div @click="jump('../news/detail.jsp?id='+newsList[0].id)" v-if="newsList.length>0" class="new-list-item animation-box" :style='{"border":"1px solid #eee","padding":"0px","borderColor":"#666","margin":"0 0 0 0","background":"rgba(255,255,255,1)","borderWidth":"0px","width":"50%","borderStyle":"dashed","height":"300px","order":"2"}'>
							<img :style='{"cursor":"pointer","width":"100%","padding":"20px","objectFit":"cover","height":"100%"}' :src="baseurl+newsList[0].picture" alt="">
						</div>
						<div @click="jump('../news/detail.jsp?id='+newsList[1].id)" v-if="newsList.length>1" class="new-list-item animation-box" :style='{"width":"50%","padding":"0px 0 0px 0px","margin":"0","background":"linear-gradient(120deg, rgba(246,246,246,.9) 0%, rgba(246,246,246,.9) 50%, rgba(238,238,238,.9) 50%, rgba(238,238,238,.9) 100%)","height":"300px","order":"4"}'>
							<div :style='{"cursor":"pointer","padding":"0 20px","margin":"0 0 0px","whiteSpace":"nowrap","overflow":"hidden","color":"#333","textAlign":"left","background":"none","fontSize":"16px","lineHeight":"40px","textOverflow":"ellipsis","fontWeight":"600"}' class="new-list-item-title">{{newsList[1].title}}</div>
							<div :style='{"padding":"10px 20px","margin":"0 0 0px","overflow":"hidden","color":"#333","textAlign":"left","background":"none","fontSize":"14px","lineHeight":"24px","textIndent":"2em","height":"212px"}' class="descript">{{newsList[1].introduction}}</div>
							<div :style='{"padding":"4px 10px","fontSize":"14px","lineHeight":"24px","color":"#333","textAlign":"right","background":"none"}' class="time">{{newsList[1].addtime}}</div>
						</div>
						<div @click="jump('../news/detail.jsp?id='+newsList[1].id)" v-if="newsList.length>1" class="new-list-item animation-box" :style='{"border":"1px solid #eee","padding":"0px 0px 0px 0px","borderColor":"#666","margin":"0","background":"rgba(255,255,255,1)","borderWidth":"0px","width":"50%","borderStyle":"dashed","height":"300px","order":"3"}'>
							<img :style='{"cursor":"pointer","width":"100%","padding":"20px","objectFit":"cover","height":"100%"}' :src="baseurl+newsList[1].picture" alt="">
						</div>
						<div @click="jump('../news/detail.jsp?id='+newsList[2].id)" v-if="newsList.length>2" class="new-list-item animation-box" :style='{"width":"50%","padding":"0 20px 0 0","margin":"0","background":"linear-gradient(240deg, rgba(246,246,246,.9) 0%, rgba(246,246,246,.9) 50%, rgba(238,238,238,.9) 50%, rgba(238,238,238,.9) 100%)","height":"300px","order":"5"}'>
							<div :style='{"cursor":"pointer","padding":"0 20px","margin":"0 0 0px","whiteSpace":"nowrap","overflow":"hidden","color":"#333","textAlign":"left","background":"none","fontSize":"16px","lineHeight":"40px","textOverflow":"ellipsis","fontWeight":"600"}' class="new-list-item-title ">{{newsList[2].title}}</div>
							<div :style='{"padding":"10px 20px","margin":"0 0 0px","color":"#333","textAlign":"left","background":"none","fontSize":"14px","lineHeight":"24px","textIndent":"2em","height":"212px"}' class="descript">{{newsList[2].introduction}}</div>
							<div :style='{"padding":"4px 10px","fontSize":"14px","lineHeight":"24px","color":"#333","textAlign":"right","background":"none"}' class="time">{{newsList[2].addtime}}</div>
						</div>
						<div @click="jump('../news/detail.jsp?id='+newsList[2].id)" v-if="newsList.length>2" class="new-list-item animation-box" :style='{"border":"1px solid #eee","padding":"20px","borderColor":"#9dcde9","margin":"0","background":"rgba(255,255,255,1)","borderWidth":"0px","width":"50%","borderStyle":"dotted","height":"300px","order":"6"}'>
							<img :style='{"cursor":"pointer","width":"100%","objectFit":"cover","height":"100%"}' :src="baseurl+newsList[2].picture" alt="">
						</div>
					</div>
					
					<div :style='{"cursor":"pointer","padding":"0 10px","margin":"0px auto","borderColor":"#fff","textAlign":"center","display":"inline-block","right":"calc(7% + 20px)","top":"60px","borderRadius":"0px","background":"none","borderWidth":"0px","width":"auto","lineHeight":"50px","position":"absolute","borderStyle":"dashed"}' @click="jump('../news/list.jsp')">
						<span :style='{"color":"#666","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#666","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 新闻资讯 -->

			
				<!-- 关于我们 -->
				<div :style='{"padding":"0px ","boxShadow":"0 0px 0px rgba(255, 255, 255, .3)","margin":"60px 0 30px 7%","borderColor":"#eee","display":"block","justifyContent":"space-between","flexWrap":"wrap","background":"none","borderWidth":"0px","width":"32%","position":"relative","borderStyle":"solid","height":"auto","order":"3"}'>
					<div :style='{"padding":"0 10px","margin":"0 auto 0px","borderColor":"#DF8A83","color":"#fff","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230117/2d9ffa6075c2441fae813ffa27437b7b.png) no-repeat right top,#7e5ffb","borderWidth":"0px","width":"50%","lineHeight":"50px","fontSize":"18px","borderStyle":"double","float":"left"}'>{{aboutUsDetail.title}}</div>
					<div :style='{"padding":"0 10px","margin":"0 auto 0px","borderColor":"#DF8A83","color":"#666","textAlign":"left","display":"block","float":"right","borderWidth":"0 0 0px","background":"#f6f6f6","width":"50%","lineHeight":"50px","fontSize":"14px","borderStyle":"double","textTransform":"uppercase"}'>{{aboutUsDetail.subtitle}}</div>
					<div :style='{"padding":"10px 0 0","flexWrap":"wrap","background":"rgba(255,255,255,0)","display":"flex","width":"100%","float":"left","height":"auto"}'>
						<img :style='{"padding":"0px","boxShadow":"0px 0px 0px #eee","margin":"0 0px","borderColor":"#eee","objectFit":"cover","borderRadius":"0","borderWidth":"0px","background":"rgba(255,255,255,0)","display":"block","width":"100%","borderStyle":"solid","height":"240px"}' :src="baseurl+aboutUsDetail.picture1">
						<img :style='{"border":"1px solid #e6e6e6","padding":"10px","margin":"20px 0 0","objectFit":"cover","background":"#fff","display":"none","width":"100%","height":"120px"}' :src="baseurl+aboutUsDetail.picture2">
						<img :style='{"margin":"0 10px","objectFit":"cover","flex":1,"display":"none","height":"120px"}' :src="baseurl+aboutUsDetail.picture3">
					</div>
					<div :style='{"padding":"10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"20px 0px 0px 0","borderColor":"#eee","color":"#333","textIndent":"2em","float":"right","overflow":"hidden","borderRadius":"0","background":"linear-gradient(120deg, rgba(246,246,246,.9) 0%, rgba(246,246,246,.9) 50%, rgba(238,238,238,.9) 50%, rgba(238,238,238,.9) 100%)","borderWidth":"1px","width":"100%","lineHeight":"24px","fontSize":"14px","borderStyle":"solid","height":"240px"}' v-html="aboutUsDetail.content"></div>
					<div :style='{"top":"70px","left":"calc(0px)","background":"url(http://codegen.caihongy.cn/20230106/5d0a7d8d50bf45ee9001a5dc0520739f.png) no-repeat center center / 100% 100%","display":"none","width":"48%","position":"absolute","height":"250px","zIndex":"9"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
					<div :style='{"width":"285px","background":"url(\"http://codegen.caihongy.cn/20221225/500f7c061d4f469baa2e032077dcccd4.jpeg\") 0% 0% / cover no-repeat","display":"none","height":"100px"}'></div>
				</div>
			

				<div class="lists" :style='{"padding":"40px 7% 40px","margin":"0px auto 0px","borderColor":"#eee","flexWrap":"wrap","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230210/06a0756a19f142bf97683f032fcc5afb.gif)","borderWidth":"0px","display":"block","width":"100%","position":"relative","borderStyle":"solid","order":"1"}'>
					<div v-if="false && 1 == 1" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div class="title" :style='{"padding":"0px 0","margin":"0px auto 20px","borderColor":"#f6cccc","alignItems":"center","flexDirection":"inherit","display":"flex","justifyContent":"center","minHeight":"50px","borderRadius":"0px","background":"none","borderWidth":"0px","width":"100%","borderStyle":"dashed"}'>
					  <span :style='{"padding":"0 10px","color":"#666","textAlign":"left","background":"#f6f6f6","width":"50%","fontSize":"14px","lineHeight":"50px","order":"2"}'>DATA SHOW</span>
					  <span :style='{"padding":"0 40px","margin":"0px","color":"#fff","textAlign":"right","background":"url(http://codegen.caihongy.cn/20230117/2d9ffa6075c2441fae813ffa27437b7b.png) no-repeat right top,#7e5ffb","width":"50%","fontSize":"18px","lineHeight":"50px"}'>培训信息展示</span>
					</div>
					
					<div v-if="false && 1 == 2" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
					
					<div :style='{"padding":"20px 0","flexWrap":"wrap","background":"none","display":"flex","width":"100%","justifyContent":"space-between","height":"auto"}' class="list list-7">
					    <div v-if="peixunxinxiList.length>0" class="list-4-item animation-box item-1" @click="jump('../peixunxinxi/detail.jsp?id='+peixunxinxiList[0].id)" :style='{"cursor":"pointer","width":"24%","margin":"0 0px","position":"relative","height":"570px"}'>
							<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="peixunxinxiList[0].tupian?baseurl+peixunxinxiList[0].tupian.split(',')[0]:''" alt="" />
							<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                <div>培训标题:{{peixunxinxiList[0].peixunbiaoti}}</div>
                            </div>
					    </div>
					    <div :style='{"width":"24%","margin":"0 0px","height":"275px"}' class="list-4-body">
							<div v-if="peixunxinxiList.length>1" @click="jump('../peixunxinxi/detail.jsp?id='+peixunxinxiList[1].id)" class="list-4-item animation-box item-2" :style='{"cursor":"pointer","width":"100%","margin":"0 0 20px","position":"relative","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="peixunxinxiList[1].tupian?baseurl+peixunxinxiList[1].tupian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                    <div>培训标题:{{peixunxinxiList[1].peixunbiaoti}}</div>
                                </div>
							</div>
							<div v-if="peixunxinxiList.length>2" @click="jump('../peixunxinxi/detail.jsp?id='+peixunxinxiList[2].id)" class="list-4-item animation-box item-3" :style='{"cursor":"pointer","width":"100%","margin":"20px 0 0","position":"relative","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="peixunxinxiList[2].tupian?baseurl+peixunxinxiList[2].tupian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                    <div>培训标题:{{peixunxinxiList[2].peixunbiaoti}}</div>
                                </div>
							</div>
					    </div>
						<div v-if="peixunxinxiList.length>3" class="list-4-item animation-box item-1" @click="jump('../peixunxinxi/detail.jsp?id='+peixunxinxiList[3].id)" :style='{"cursor":"pointer","width":"24%","margin":"0 0px","position":"relative","height":"570px"}'>
							<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="peixunxinxiList[3].tupian?baseurl+peixunxinxiList[3].tupian.split(',')[0]:''" alt="" />
							<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                <div>培训标题:{{peixunxinxiList[3].peixunbiaoti}}</div>
                            </div>
						</div>
					    <div :style='{"width":"24%","margin":"0 0px","height":"275px"}' class="list-4-body">
							<div v-if="peixunxinxiList.length>4" @click="jump('../peixunxinxi/detail.jsp?id='+peixunxinxiList[4].id)" class="list-4-item animation-box item-4" :style='{"cursor":"pointer","width":"100%","margin":"0 0 20px","position":"relative","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="peixunxinxiList[4].tupian?baseurl+peixunxinxiList[4].tupian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                    <div>培训标题:{{peixunxinxiList[4].peixunbiaoti}}</div>
                                </div>
							</div>
							<div v-if="peixunxinxiList.length>5" @click="jump('../peixunxinxi/detail.jsp?id='+peixunxinxiList[5].id)" class="list-4-item animation-box item-5" :style='{"cursor":"pointer","width":"100%","margin":"20px 0 0","position":"relative","height":"100%"}'>
								<img :style='{"width":"100%","objectFit":"cover","float":"left","height":"100%"}' :src="peixunxinxiList[5].tupian?baseurl+peixunxinxiList[5].tupian.split(',')[0]:''" alt="" />
								<div :style='{"whiteSpace":"nowrap","overflow":"hidden","color":"#fff","left":"0","textAlign":"center","bottom":"0","background":"rgba(0,0,0,.3)","width":"100%","lineHeight":"44px","fontSize":"16px","position":"absolute","textOverflow":"ellipsis"}' class="list-4-item-title">
                                    <div>培训标题:{{peixunxinxiList[5].peixunbiaoti}}</div>
                                </div>
							</div>
					    </div>
					</div>
					
					<div :style='{"border":"0","cursor":"pointer","padding":"0 20px","margin":"0px auto 0px","borderColor":"#b5e8af","textAlign":"center","display":"inline-block","right":"7%","top":"40px","borderRadius":"30px","background":"none","borderWidth":"0px","width":"auto","lineHeight":"50px","position":"absolute","borderStyle":"dashed"}' @click="jump('../peixunxinxi/list.jsp')">
						<span :style='{"color":"#666","fontSize":"14px"}'>查看更多</span>
						<i v-if='true' :style='{"color":"#666","fontSize":"14px"}' class="layui-icon layui-icon-next"></i>
					</div>
					
					<div v-if="false && 1 == 3" class="recommend-idea" :style='{"padding":"20px","flexWrap":"wrap","background":"#efefef","justifyContent":"space-between","display":"flex"}'>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box1"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box2"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box3"></div>
						<div :style='{"width":"20%","background":"#fff","height":"80px"}' class="box4"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box5"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box6"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box7"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box8"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box9"></div>
						<div :style='{"width":"20%","background":"#fff","display":"none","height":"80px"}' class="box10"></div>
					</div>
				</div>
			<!-- 图文列表 -->


			


			</div>
		</div>
		<script src="../../layui/layui.js"></script>
		<script src="../../js/swiper.min.js"></script>
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


                    // 推荐数据
					zhaopinxinxiRecommend: [],



                    peixunxinxiList: [],


                    aboutUsDetail:{},
                    systemIntroductionDetail: {},
                    // 轮播图
					swiperList: [],
					baseurl: '',
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
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
					},
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;
						
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

                http.request(`aboutus/detail/1`, 'get', {
                }, function(res) {
                    if(res.code == 0) {
                      vue.aboutUsDetail = res.data;
                    }
                });
                http.request(`systemintro/detail/1`, 'get', {
                }, function(res) {
                    if(res.code == 0) {
                      vue.systemIntroductionDetail = res.data;
                    }
                });

                // 新闻资讯
				http.request('news/list', 'get', {
					page: 1,
                    sort: 'addtime',
                    order: 'desc',
					limit: 4,
				}, function(res) {
					var newsList = res.data.list;
					
					vue.newsList = newsList;
					if (newsList.length > 0 && newsList.length <= 2) {
						vue.leftNewsList = res.data.list
					} else {
						var leftNewsList = []
						for (let i = 0; i <= 2; i++) {
							leftNewsList.push(newsList[i]);
						}
						vue.leftNewsList = leftNewsList
					}
					if (newsList.length > 2 && newsList.length <= 8) {
						var rightNewsList = []
						for (let i = 3; i <= newsList.length; i++) {
							rightNewsList.push(newsList[i]);
						}
						vue.rightNewsList = rightNewsList
					}
					
					let flag = 4;
					
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#newsnews', options)
						})
					}
					
					if(flag == 6) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"4","speed":500,"spaceBetween":10,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						options.centeredSlides = true
						options.watchSlidesProgress = true
						
						vue.$nextTick(() => {
							new Swiper('#new-list-6news', options)
						})
					}
				});

                

                // 获取推荐信息
      				var autoSortUrl = "zhaopinxinxi/autoSort";
				http.request(autoSortUrl, 'get', {
					page: 1,
					sfsh: '是',
					limit: 5,
				}, function(res) {
					vue.zhaopinxinxiRecommend = res.data.list
					
					let flag = 9;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":5,"speed":600,"spaceBetween":20,"autoplay":{"delay":"6000","disableOnInteraction":false}}
						options.pagination = {el:'null'}
						
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
								new Swiper ('#recommendzhaopinxinxi', options)
						})
					}
					
					// 商品推荐样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#recommend-five-swiperzhaopinxinxi', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});

				

                http.request(`peixunxinxi/list`, 'get', {
					page: 1,
					limit: 6,
				}, function(res) {
					vue.peixunxinxiList = res.data.list
					
					let flag = 7;
					if(flag == 3) {
						let options = {"observer":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"observeParents":true,"loop":true,"slidesPerView":"5","speed":500,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
						options.pagination = {el:'null'}
						if(options.slidesPerView) {
							options.slidesPerView = Number(options.slidesPerView);
						}
						if(options.spaceBetween) {
							options.spaceBetween = Number(options.spaceBetween);
						}
						
						vue.$nextTick(() => {
							new Swiper ('#listspeixunxinxi', options)
						})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swiperpeixunxinxi', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
							});
						})
					}
				});

				
			});
		</script>
	</body>
</html>
