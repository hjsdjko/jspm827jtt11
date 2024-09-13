<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form.add .layui-form-item .layui-form-select .layui-input {
						padding: 0 30px 0 10px;
						margin: 0;
						color: #666;
						font-size: 14px;
						border-color: #ffc303;
						line-height: 40px;
						border-radius: 0px;
						outline: none;
						background: linear-gradient(120deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(238,238,238,1) 50%, rgba(238,238,238,1) 100%);
						width: 320px;
						border-width: 0 0 0px;
						border-style: solid;
						height: 40px;
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
		
			<div class="data-add-container" :style='{"width":"100%","padding":"30px 7% 40px","margin":"10px auto","position":"relative","background":"rgba(255,255,255,0)"}'>
				<form class="layui-form layui-form-pane add" lay-filter="myForm">
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#7e5ffb","textAlign":"right"}' class="label">月份：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 0px","background":"linear-gradient(240deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(238,238,238,1) 50%, rgba(238,238,238,1) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.yuefen" type="text" :readonly="ro.yuefen" name="yuefen" id="yuefen" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#7e5ffb","textAlign":"right"}' class="label">工号：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 0px","background":"linear-gradient(240deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(238,238,238,1) 50%, rgba(238,238,238,1) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.gonghao" type="text" :readonly="ro.gonghao" name="gonghao" id="gonghao" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#7e5ffb","textAlign":"right"}' class="label">姓名：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 0px","background":"linear-gradient(240deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(238,238,238,1) 50%, rgba(238,238,238,1) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.xingming" type="text" :readonly="ro.xingming" name="xingming" id="xingming" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#7e5ffb","textAlign":"right"}' class="label">部门：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 0px","background":"linear-gradient(240deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(238,238,238,1) 50%, rgba(238,238,238,1) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.bumen" type="text" :readonly="ro.bumen" name="bumen" id="bumen" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#7e5ffb","textAlign":"right"}' class="label">职位：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 0px","background":"linear-gradient(240deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(238,238,238,1) 50%, rgba(238,238,238,1) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.zhiwei" type="text" :readonly="ro.zhiwei" name="zhiwei" id="zhiwei" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"44px","fontSize":"16px","color":"#7e5ffb","textAlign":"right"}' class="label">照片：</div>
						<img :style='{"width":"120px","margin":"0 10px 0 0","objectFit":"cover","height":"80px"}' v-if="detail.zhaopian" id="zhaopianImg" :src="baseurl+detail.zhaopian">
						<input v-if="detail.zhaopian" type="hidden" :value="detail.zhaopian" id="zhaopian" name="zhaopian" />
						<button v-if="!ro.zhaopian" :style='{"cursor":"pointer","border":"0","padding":"0px 20px","margin":"0","borderColor":"#86bae6","color":"#fff","minWidth":"100px","outline":"none","borderRadius":"20px","background":"#7e5ffb","borderWidth":"0px","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="button" class="layui-btn btn-theme" id="zhaopianUpload">
							<i :style='{"margin":"0 10px 0 0","fontSize":"14px","color":"#fff","display":"inline-block"}' class="layui-icon">&#xe67c;</i>上传照片
						</button>
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#7e5ffb","textAlign":"right"}' class="label">基本工资：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 0px","background":"linear-gradient(240deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(238,238,238,1) 50%, rgba(238,238,238,1) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.jibengongzi" type="text" :readonly="ro.jibengongzi" name="jibengongzi" id="jibengongzi" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#7e5ffb","textAlign":"right"}' class="label">加班工资：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 0px","background":"linear-gradient(240deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(238,238,238,1) 50%, rgba(238,238,238,1) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.jiabangongzi" type="text" :readonly="ro.jiabangongzi" name="jiabangongzi" id="jiabangongzi" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#7e5ffb","textAlign":"right"}' class="label">绩效奖金：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 0px","background":"linear-gradient(240deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(238,238,238,1) 50%, rgba(238,238,238,1) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.jixiaojiangjin" type="text" :readonly="ro.jixiaojiangjin" name="jixiaojiangjin" id="jixiaojiangjin" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#7e5ffb","textAlign":"right"}' class="label">其他补助：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 0px","background":"linear-gradient(240deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(238,238,238,1) 50%, rgba(238,238,238,1) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.qitabuzhu" type="text" :readonly="ro.qitabuzhu" name="qitabuzhu" id="qitabuzhu" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#7e5ffb","textAlign":"right"}' class="label">扣款金额：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 0px","background":"linear-gradient(240deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(238,238,238,1) 50%, rgba(238,238,238,1) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.koukuanjine" type="text" :readonly="ro.koukuanjine" name="koukuanjine" id="koukuanjine" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#7e5ffb","textAlign":"right"}' class="label">实发工资：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 0px","background":"linear-gradient(240deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(238,238,238,1) 50%, rgba(238,238,238,1) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="shifagongzi"  type="text" name="shifagongzi" id="shifagongzi" disabled="disabled"  autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#7e5ffb","textAlign":"right"}' class="label">发布日期：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 0px","background":"linear-gradient(240deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(238,238,238,1) 50%, rgba(238,238,238,1) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text" name="faburiqi" id="faburiqi" autocomplete="off" class="layui-input" >
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#7e5ffb","textAlign":"right"}' class="label">财务账号：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 0px","background":"linear-gradient(240deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(238,238,238,1) 50%, rgba(238,238,238,1) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.caiwuzhanghao" type="text" :readonly="ro.caiwuzhanghao" name="caiwuzhanghao" id="caiwuzhanghao" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"padding":"10px","margin":"0 0 10px 0","borderColor":"#c6ecc6","alignItems":"center","borderWidth":"0px","display":"flex","borderStyle":"solid"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","fontSize":"16px","color":"#7e5ffb","textAlign":"right"}' class="label">财务姓名：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#ffc303","color":"#666","outline":"none","borderRadius":"0px","borderWidth":"0 0 0px","background":"linear-gradient(240deg, rgba(246,246,246,1) 0%, rgba(246,246,246,1) 50%, rgba(238,238,238,1) 50%, rgba(238,238,238,1) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' v-model="detail.caiwuxingming" type="text" :readonly="ro.caiwuxingming" name="caiwuxingming" id="caiwuxingming" autocomplete="off" class="layui-input">
					</div>


					<div :style='{"margin":"0 0 0 0px","alignItems":"center","justifyContent":"center","display":"flex"}' class="layui-form-item">
						<button :style='{"cursor":"pointer","padding":"0px 15px","boxShadow":"inset 0px 0px 56px 0px #7e5ffb","margin":"0 10px","borderColor":"#9179f2","color":"#111","minWidth":"120px","outline":"none","borderRadius":"0px","background":"#fff","borderWidth":"1px","width":"auto","fontSize":"14px","lineHeight":"44px","borderStyle":"solid","height":"44px"}'  class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","boxShadow":"inset 0px 0px 36px 0px #f2e013","margin":"0 10px","borderColor":"#dfd130","color":"#333","minWidth":"120px","outline":"none","borderRadius":"0px","background":"#fff","borderWidth":"1px","width":"auto","fontSize":"14px","lineHeight":"44px","borderStyle":"solid","height":"44px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</form>
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
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>
		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					baseurl: '',
					dataList: [],
					ro:{
                        yuefen : false,
                        gonghao : false,
                        xingming : false,
                        bumen : false,
                        zhiwei : false,
                        zhaopian : false,
                        jibengongzi : false,
                        jiabangongzi : false,
                        jixiaojiangjin : false,
                        qitabuzhu : false,
                        koukuanjine : false,
                        koukuanyuanyin : false,
                        shifagongzi : false,
                        fuli : false,
                        faburiqi : false,
                        caiwuzhanghao : false,
                        caiwuxingming : false,
                        sfsh : false,
                        shhf : false,
					},
                    detail: {
                        yuefen: '',
                        gonghao: '',
                        xingming: '',
                        bumen: '',
                        zhiwei: '',
                        zhaopian: '',
                        jibengongzi: '',
                        jiabangongzi: '',
                        jixiaojiangjin: '',
                        qitabuzhu: '',
                        koukuanjine: '',
                        koukuanyuanyin: '',
                        shifagongzi: '',
                        fuli: '',
                        faburiqi: '',
                        caiwuzhanghao: '',
                        caiwuxingming: '',
                        sfsh: '',
                        shhf: '',
                    },
					centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {
                    shifagongzi: {
                        get: function () {
                            return 0+parseFloat(this.detail.jibengongzi)+parseFloat(this.detail.jiabangongzi)+parseFloat(this.detail.jixiaojiangjin)+parseFloat(this.detail.qitabuzhu)-this.detail.koukuanjine || ''
                        }
                    },



                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})


			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
				var tinymce = layui.tinymce;
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
				// 上传图片
				var zhaopianUpload = upload.render({
					//绑定元素
					elem: '#zhaopianUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'images',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = 'upload/' + res.file;
							jquery('#zhaopian').val(url);
							jquery('#zhaopianImg').attr('src', http.baseurl +url)
							vue.detail.zhaopian = url;
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
				jquery('#faburiqi').val(getCurDate());
				laydate.render({
					elem: '#faburiqi',
				});
				
                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
					}
				});

                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var o in obj){
                        if(o=='yuefen'){
                                vue.detail[o] = obj[o];
                                vue.ro.yuefen = true;
                                continue;
                        }
                        if(o=='gonghao'){
                                vue.detail[o] = obj[o];
                                vue.ro.gonghao = true;
                                continue;
                        }
                        if(o=='xingming'){
                                vue.detail[o] = obj[o];
                                vue.ro.xingming = true;
                                continue;
                        }
                        if(o=='bumen'){
                                vue.detail[o] = obj[o];
                                vue.ro.bumen = true;
                                continue;
                        }
                        if(o=='zhiwei'){
                                vue.detail[o] = obj[o];
                                vue.ro.zhiwei = true;
                                continue;
                        }
                        if(o=='zhaopian'){
                                vue.detail[o] = obj[o]?obj[o].split(",")[0]:'';
                                vue.ro.zhaopian = true;
                                continue;
                        }
                        if(o=='jibengongzi'){
                                vue.detail[o] = obj[o];
                                vue.ro.jibengongzi = true;
                                continue;
                        }
                        if(o=='jiabangongzi'){
                                vue.detail[o] = obj[o];
                                vue.ro.jiabangongzi = true;
                                continue;
                        }
                        if(o=='jixiaojiangjin'){
                                vue.detail[o] = obj[o];
                                vue.ro.jixiaojiangjin = true;
                                continue;
                        }
                        if(o=='qitabuzhu'){
                                vue.detail[o] = obj[o];
                                vue.ro.qitabuzhu = true;
                                continue;
                        }
                        if(o=='koukuanjine'){
                                vue.detail[o] = obj[o];
                                vue.ro.koukuanjine = true;
                                continue;
                        }
                        if(o=='koukuanyuanyin'){
                                vue.detail[o] = obj[o];
                                vue.ro.koukuanyuanyin = true;
                                continue;
                        }
                        if(o=='shifagongzi'){
                                vue.detail[o] = obj[o];
                                vue.ro.shifagongzi = true;
                                continue;
                        }
                        if(o=='fuli'){
                                vue.detail[o] = obj[o];
                                vue.ro.fuli = true;
                                continue;
                        }
                        if(o=='faburiqi'){
                                vue.detail[o] = obj[o];
                                vue.ro.faburiqi = true;
                                jquery('#faburiqi').val(obj[o]);
                                continue;
                        }
                        if(o=='caiwuzhanghao'){
                                vue.detail[o] = obj[o];
                                vue.ro.caiwuzhanghao = true;
                                continue;
                        }
                        if(o=='caiwuxingming'){
                                vue.detail[o] = obj[o];
                                vue.ro.caiwuxingming = true;
                                continue;
                        }
					}
				}
				

				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
                    if(!data.yuefen){
                        layer.msg('月份不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.gonghao){
                        layer.msg('工号不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.xingming){
                        layer.msg('姓名不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.bumen){
                        layer.msg('部门不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.jibengongzi){
                        layer.msg('基本工资不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isNumber(data.jibengongzi)){
                        layer.msg('基本工资应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.jiabangongzi){
                        layer.msg('加班工资不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isNumber(data.jiabangongzi)){
                        layer.msg('加班工资应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.jixiaojiangjin){
                        layer.msg('绩效奖金不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isNumber(data.jixiaojiangjin)){
                        layer.msg('绩效奖金应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.qitabuzhu){
                        layer.msg('其他补助不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isNumber(data.qitabuzhu)){
                        layer.msg('其他补助应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.koukuanjine){
                        layer.msg('扣款金额不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isNumber(data.koukuanjine)){
                        layer.msg('扣款金额应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!data.koukuanyuanyin){
                        layer.msg('扣款原因不能为空', {
							time: 2000,
							icon: 5
						});
                        return false
                    }
                    if(!isNumber(data.shifagongzi)){
                        layer.msg('实发工资应输入数字', {
							time: 2000,
							icon: 5
						});
                        return false
                    }

					// 跨表计算判断
					
                    // 比较大小

                //更新跨表属性
               var crossuserid;
               var crossrefid;
               var crossoptnum;
                if(http.getParam('corss')){
                        var statusColumnName = localStorage.getItem('statusColumnName');
                        var statusColumnValue = localStorage.getItem('statusColumnValue');
                        if(statusColumnName!='') {
                                var obj = JSON.parse(localStorage.getItem('crossObj'));
				if(!statusColumnName.startsWith("[")) {
					for (var o in obj){
						if(o==statusColumnName){
							obj[o] = statusColumnValue;
						}
					}
					var table = localStorage.getItem('crossTable');
					http.requestJson(`${table}/update`,'post',obj,(res)=>{});
				} else {
                                       crossuserid=Number(localStorage.getItem('userid'));
                                       crossrefid=obj['id'];
                                       crossoptnum=localStorage.getItem('statusColumnName');
                                       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
				}
                        }
                }
                        if(crossrefid && crossuserid) {
                                data.crossuserid=crossuserid;
                                data.crossrefid=crossrefid;
                                http.request('yuangonggongzi/list', 'get', {
                                        page: 1,
                                        limit: 10,
                                        crossuserid:crossuserid,
                                        crossrefid:crossrefid,
                                }, function(res) {
                                        if(res.data.total>=crossoptnum) {
                                                layer.msg(localStorage.getItem('tips'), {
                                                        time: 2000,
                                                        icon: 6
                                                })
                                             return false;
                                        } else {
                                            // 跨表计算



                                            // 提交数据
                                            http.requestJson('yuangonggongzi' + '/add', 'post', data, function(res) {
                                                    layer.msg('提交成功', {
                                                            time: 2000,
                                                            icon: 6
                                                    }, function() {
                                                            back();
                                                    });
                                             });
                                        }
                                });
                        } else {
                                // 跨表计算

                                // 提交数据
                                http.requestJson('yuangonggongzi' + '/add', 'post', data, function(res) {
                                        layer.msg('提交成功', {
                                                time: 2000,
                                                icon: 6
                                        }, function() {
                                                back();
                                        });
                                 });
                        }
			return false
			});
		});
		</script>
	</body>
</html>
