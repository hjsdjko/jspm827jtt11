<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
  	<style>
		label.error{
			color: red !important;
			width: auto !important;
		}
	</style>
<body>
	<div id="main-container">
		<!-- Top Navigation -->
		<%@ include file="../../static/topNav.jsp"%>
		
		<!-- Menu -->
		<div id="menu-container" class="navbar">
			<ul class="navbar-nav navbar-vertical" id="navUl">
				
			</ul>
		</div>
		<!-- /Menu -->
		
		<!-- Breadcrumb -->
		<div id="breadcrumb-container">
			<h3 class="breadcrumb-title">编辑人事调动</h3>
			<ol class="breadcrumb-list">
				<li class="breadcrumb-item-home">
					<a href="#">
						<span class="ti-home"></span>
					</a>
				</li>
				<li class="breadcrumb-item-one"><span>人事调动管理</span></li>
				<li class="breadcrumb-item-two"><span>编辑人事调动</span></li>
			</ol>
		</div>

		<!-- Main Content -->
		<div id="add-container">
			<form id="addOrUpdateForm">
				<input id="updateId" name="id" type="hidden">
				<div class="form-item">
					<label>工号</label>
					<select  class="form-control"  name="gonghao" id="gonghaoSelect" onchange="gonghaoSelect2Change()">
					</select>
				</div>
				<div class="form-item">
					<label>姓名</label>
					<input id="xingming" name="xingming" class="form-control"  value="" readonly>
				</div>
				<div class="form-item">
					<label>原部门</label>
					<input id="bumen" name="bumen" class="form-control"  value="" readonly>
				</div>
				<div class="form-item">
					<label>原职位</label>
					<input id="zhiwei" name="zhiwei" class="form-control"  value="" readonly>
				</div>
				<div class="form-item-img">
					<label>照片</label>
                    <div style="display: flex;align-items: center;">
                        <div v-for="(item,index) in zhaopianImgList" :key="index" style="position: relative;">
                            <div style="position: absolute;right: 10px;top: 0;width: 32px;height: 32px;background: #fff;padding: 6px;font-size: 0;cursor: pointer;border-radius: 0 20px 0 0;" @click="zhaopianDelClick(index)">
                                <img src="../../../resources/images/shanchu.png" style="width: 20px;height: 20px;margin: 0;box-shadow: none;min-height:20px">
                            </div>
                            <img :src="baseUrl + item" width="100" height="100">
                        </div>
                    </div>
					<div class="upload btn-img">选择文件<input name="file" type="file" id="zhaopianupload" class="form-control-file"></div>
					<input name="zhaopian" id="zhaopian-input" type="hidden">
				</div>

				<div class="form-item">
					<label>调动部门</label>
					<select id="xianbumenSelect" name="xianbumen" class="form-control">
							<option value="">请选择调动部门</option>
					</select>	
				</div>	
				<div class="form-item">
					<label>调动职位</label>
					<select id="xianzhiweiSelect" name="xianzhiwei" class="form-control">
							<option value="">请选择调动职位</option>
					</select>	
				</div>	
				<div class="form-item">
					<label>调动日期</label>
					<input id="diaodongriqi-input" class="date" name="diaodongriqi" size="15" type="text" readonly placeholder="请选择调动日期">
				</div>
				<div class="form-item">
					<label>人事工号</label>
					<input name="renshigonghao" id="renshigonghao" name="renshigonghao" class="form-control" placeholder="请输入人事工号">
				</div>
				<div class="form-item">
					<label>人事姓名</label>
					<input name="renshixingming" id="renshixingming" name="renshixingming" class="form-control" placeholder="请输入人事姓名">
				</div>
										
				<div class="form-btn">
					<button  id="submitBtn" type="button" class="btn btn-primary btn-add">提交</button>
					<button id="exitBtn" type="button" class="btn btn-primary btn-close">取消</button>
				</div>
			</form>
		</div>
	</div>
	
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">Top</a>
	<!-- /Back to Top -->
	
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../static/utils.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "renshidiaodong";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};

		var xianbumenOptions = [];
		var xianzhiweiOptions = [];


		function gonghaoSelect2(){
			http("option/yuangong/gonghao","GET",{
				tableName: "yuangong",
				columnName: "gonghao"
			},(res)=>{
				if(res.code == 0){
					var options = res.data;
					var option = document.createElement("option");
                    option.innerHTML = "请选择工号";
					$("#gonghaoSelect").append(option)
					for(var i=0;i<options.length;i++){
						var gonghaoOption = document.createElement("option");
						gonghaoOption.setAttribute("value",options[i]);
						gonghaoOption.setAttribute("class","gonghaoOption");
						if(ruleForm.gonghao == options[i]){
							gonghaoOption.setAttribute("selected","selected");
						}
						gonghaoOption.innerHTML = options[i];
						//修改 回显
						if(ruleForm.gonghao != null && ruleForm.gonghao != '' && options[i] == ruleForm.gonghao){
							gonghaoOption.setAttribute("selected","selected");
						}
						$("#gonghaoSelect").append(gonghaoOption);
					}
				}
			});
		}		
		function gonghaoSelect2Change(){
			var options = document.getElementById("gonghaoSelect").options;
			var index = document.getElementById("gonghaoSelect").selectedIndex;
			var colVal = options[index].value;
			http("follow/yuangong/gonghao","GET",{
				tableName: "yuangong",
				columnName: "gonghao",
				columnValue: colVal
			},(res)=>{
				if(res.code == 0){
					if(res.data != null && res.data.xingming != null){
						$("#xingming").val(res.data.xingming);
					}
					if(res.data != null && res.data.bumen != null){
						$("#bumen").val(res.data.bumen);
					}
					if(res.data != null && res.data.zhiwei != null){
						$("#zhiwei").val(res.data.zhiwei);
					}
				}
			});
			
		}			
		function xianbumenSelect(){
			http("option/bumen/bumen","GET",{},(res)=>{
				if(res.code == 0){
					xianbumenOptions = res.data;
					var xianbumenSelect = document.getElementById('xianbumenSelect');
					for(var i=0;i<xianbumenOptions.length;i++){
						var xianbumenOption = document.createElement('option');
						xianbumenOption.setAttribute('name','xianbumenOption');
						xianbumenOption.setAttribute('value',xianbumenOptions[i]);
						xianbumenOption.innerHTML = xianbumenOptions[i];									
						if(ruleForm.xianbumen == xianbumenOptions[i]){
							xianbumenOption.setAttribute('selected','selected');
						}
						xianbumenSelect.appendChild(xianbumenOption);
					}
				}
			});
		}	
		function xianzhiweiSelect(){
			http("option/zhiwei/zhiwei","GET",{},(res)=>{
				if(res.code == 0){
					xianzhiweiOptions = res.data;
					var xianzhiweiSelect = document.getElementById('xianzhiweiSelect');
					for(var i=0;i<xianzhiweiOptions.length;i++){
						var xianzhiweiOption = document.createElement('option');
						xianzhiweiOption.setAttribute('name','xianzhiweiOption');
						xianzhiweiOption.setAttribute('value',xianzhiweiOptions[i]);
						xianzhiweiOption.innerHTML = xianzhiweiOptions[i];									
						if(ruleForm.xianzhiwei == xianzhiweiOptions[i]){
							xianzhiweiOption.setAttribute('selected','selected');
						}
						xianzhiweiSelect.appendChild(xianzhiweiOption);
					}
				}
			});
		}	

		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
              zhaopianImgList:[],
              baseUrl:baseUrl,
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "renshidiaodong/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { 
                zhaopianDelClick(index){
                    var mymessage = confirm("确定移除图片？");
                    if (mymessage == true) {
                        this.zhaopianImgList.splice(index,1)  
                    }
                    
                },
            }
	  	});		

		// 文件上传
		function upload(){
			$('#zhaopianupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {				
					document.getElementById('zhaopian-input').setAttribute('value',"upload/"+data.result.file);
					if(document.getElementById('zhaopianFileName') != null){
						document.getElementById('zhaopianFileName').innerHTML = "上传成功!";
					}				
                    vm.zhaopianImgList.push("upload/"+data.result.file)
				}
			});
		}  
		//取消 
		function cancel() {
            window.location.href = "list.jsp";
		}
		function getQueryString(name) { 
			var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i"); 
			var r = window.location.search.substr(1).match(reg); 
			if (r != null) return unescape(r[2]); 
			return null; 
		}

		// 表单提交
		function submit() {

			var crossFlag = getQueryString("cross");
			if(validform() ==true && compare() == true){
				if(crossFlag) {
				}
				let data = {};
				getContent();
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
                if(vm.zhaopianImgList.length){
                    data.zhaopian = vm.zhaopianImgList.join(',')
                }
				let json = JSON.stringify(data);
				var urlParam;
				var successMes = '';
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{		
					urlParam = 'save';
					successMes = '添加成功';
				}
				//更新跨表属性
			       var crossuserid;
			       var crossrefid;
			       var crossoptnum;
				if(crossFlag) {
					var statusColumnName = window.sessionStorage.getItem('statusColumnName'); 
					var statusColumnValue = window.sessionStorage.getItem('statusColumnValue'); 
					var obj = JSON.parse(window.sessionStorage.getItem('crossObj'));
					if(statusColumnName!='') {
						if(!statusColumnName.startsWith("[")) {
							for (var o in obj){
								if(o==statusColumnName){
									obj[o] = statusColumnValue;
								}
							}
							var table = window.sessionStorage.getItem('crossTableName');
							httpJson(crossTableName + "/update","POST",obj,(res)=>{
								if(res.code == 0){
									console.log('更新属性成功');
								}
							});   
						} else  {
							crossuserid = Number(window.sessionStorage.getItem('userid'));
							crossrefid = obj["id"];
							crossoptnum = window.sessionStorage.getItem('statusColumnName');
							crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
						}
					}
				}
				if(crossrefid && crossuserid) {
					data.crossuserid=crossuserid;
					data.crossrefid=crossrefid;
					http("renshidiaodong/page","GET",{
						page:1,
						limit:10,
						crossuserid:data.crossuserid,
						crossrefid:data.crossrefid,			
					},(res)=>{
						if(res.data.total >= crossoptnum){
							alert(window.sessionStorage.getItem('tips'));
							return false;
						} else {
							httpJson("renshidiaodong/"+urlParam,"POST",data,(res)=>{
								if(res.code == 0){
									window.sessionStorage.removeItem('id');
									let flag = true;
									if(crossFlag) {
									}

									if(flag){
										alert(successMes);
									}
									if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
										window.sessionStorage.removeItem('onlyme');
										window.location.href="${pageContext.request.contextPath}/index.jsp";
									}else{
                                        window.location.href = "list.jsp";
									}
									
								}
							});
						}
					});
				} else {
					httpJson("renshidiaodong/"+urlParam,"POST",data,(res)=>{
						if(res.code == 0){
							window.sessionStorage.removeItem('id');
							let flag = true;
							if(crossFlag) {
							}

							if(flag){
								alert(successMes);
							}
							if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
								window.sessionStorage.removeItem('onlyme');
								window.location.href="${pageContext.request.contextPath}/index.jsp";
							}else{
                                        window.location.href = "list.jsp";
							}
							
						}
					});
				}
			}else{
				alert("表单未填完整或有错误");
			}
		}

		// 填充富文本框
		function setContent(){
		}  

		// 获取富文本框内容
		function getContent(){
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {
				    gonghao: {
					},
				    xingming: {
					},
				    bumen: {
					},
				    zhiwei: {
					},
				    zhaopian: {
					},
				    xianbumen: {
					},
				    xianzhiwei: {
					},
				    diaodongriqi: {
					},
				    renshigonghao: {
					},
				    renshixingming: {
					},
				    sfsh: {
					},
				    shhf: {
					},
				},
				messages: {
					xingming: {
					},
					bumen: {
					},
					zhiwei: {
					},
					zhaopian: {
					},
					xianbumen: {
					},
					xianzhiwei: {
					},
					diaodongriqi: {
					},
					renshigonghao: {
					},
					renshixingming: {
					},
					sfsh: {
					},
					shhf: {
					},
				}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(19[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
                        jQuery.validator.addMethod("isIdCardNo", function(value, element) {
                                return this.optional(element) || value.length == 18;
                        }, "请正确输入您的身份证号码");
                        jQuery.validator.addMethod("isTel", function(value, element) {
                          var length = value.length;
                          var phone = /(^(\d{3,4}-)?\d{6,8}$)|(^(\d{3,4}-)?\d{6,8}(-\d{1,5})?$)|(\d{11})/;
                          return this.optional(element) || (phone.test(value));
                         }, "请填写正确的固定电话");//可以自定义默认提示信息
		}
		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("renshidiaodong/info/" + id,"GET",{},(res)=>{
					if(res.code == 0){
						ruleForm = res.data
						// 是/否下拉框回显
						setSelectOption();
						// 设置图片src
						showImg();
						// 数据填充
						dataBind();
						// 富文本框回显	
						setContent();
												gonghaoSelect2();
						xianbumenSelect();
						xianzhiweiSelect();
						//注册表单验证
						$(validform());	
					}
				});
			}else{
				gonghaoSelect2();	
				xianbumenSelect();	
				xianzhiweiSelect();	



		 		fill()
				//注册表单验证
		    		$(validform());
			}
		}	
		// 下拉框选项回显
		function setSelectOption(){
		}			
		// 关联下拉框改变
		function lvSelectChange(level){
			let data = {};
			let value = $('#addOrUpdateForm').serializeArray();
			$.each(value, function (index, item) { 
			            data[item.name] = item.value;
			        });
			
		}		
		// 清除可能会重复渲染的selection
		function clear(className){
			var elements = document.getElementsByClassName(className);
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
		}		
		function dateTimePick(){
			$.fn.datetimepicker.dates['zh-CN'] = { 
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };
			$("#diaodongriqi-input").datetimepicker({ 
				minView: "month",
				autoclose: true,
				format:'yyyy-mm-dd',
				language:'zh-CN',
			});

		}		
		
		function calculation(){
			//积
			var x = 0;
			//和
			var y = 0;
			var flag = 0;



		}		
		function calculationSE(colName){
			//单列求和接口
			http("renshidiaodong"+colName,"GET",{
				tableName: "renshidiaodong",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					$("#"+colName).attr("value",res.data);
				}
			});
		}	
		function calculationPre(){
			//进入该页面就填充"单列求和"的列
		}			
		
		
			//新增时填充字段
			function fill(){
				var username = window.sessionStorage.getItem('username');
				var accountTableName = window.sessionStorage.getItem('accountTableName');
				http(accountTableName+'/session','GET',{},(res)=>{
					if(res.code == 0){
						var myId = res.data.id;
						if(res.data !=null && res.data.gonghao != null && res.data.gonghao != ''){
							$('#renshigonghao').val(res.data.gonghao)
							$("#renshigonghao").attr('readonly','readonly');
						}
						if(res.data !=null && res.data.xingming != null && res.data.xingming != ''){
							$('#renshixingming').val(res.data.xingming)
							$("#renshixingming").attr('readonly','readonly');
						}
						$(validform());
					}
				});
							
			}	
			
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
			$("#xingming").val(ruleForm.xingming);	
			$("#bumen").val(ruleForm.bumen);	
			$("#zhiwei").val(ruleForm.zhiwei);	
            if(ruleForm.zhaopian){
                vm.zhaopianImgList = ruleForm.zhaopian.split(',')
            }
			$("#zhaopian-input").val(ruleForm.zhaopian);
			var xianbumenOptions = document.getElementsByClassName("xianbumenOption");
			for(var xianbumenCount = 0; xianbumenCount < xianbumenOptions.length;xianbumenCount++){
				if(xianbumenOptions[xianbumenCount].getAttribute('value') == ruleForm.xianbumen){
					xianbumenOptions[xianbumenCount].setAttribute('selected','selected');
				}
			}
			var xianzhiweiOptions = document.getElementsByClassName("xianzhiweiOption");
			for(var xianzhiweiCount = 0; xianzhiweiCount < xianzhiweiOptions.length;xianzhiweiCount++){
				if(xianzhiweiOptions[xianzhiweiCount].getAttribute('value') == ruleForm.xianzhiwei){
					xianzhiweiOptions[xianzhiweiCount].setAttribute('selected','selected');
				}
			}
			$("#diaodongriqi-input").val(ruleForm.diaodongriqi);
			$("#renshigonghao").val(ruleForm.renshigonghao);	
			$("#renshixingming").val(ruleForm.renshixingming);	
			$("#shhf").val(ruleForm.shhf);	
		}		
		//图片显示
		function showImg(){
		}		
		//跨表

        //跨表
        function crossTable(){
		crossTableName = window.sessionStorage.getItem('crossTableName');
		crossTableId = window.sessionStorage.getItem('crossTableId');
		if(crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId != -1){
			http(crossTableName + "/info/" + crossTableId,"GET",{},(res)=>{
				if(res.code == 0){
					crossRuleForm = res.data;
					$('#updateId').val(crossTableId);
					if(res.data != null && res.data != '' && res.data.gonghao != null && res.data.gonghao != ''){

					}
					if(res.data != null && res.data != '' && res.data.xingming != null && res.data.xingming != ''){

						$("#xingming").val(res.data.xingming);
						$("#xingming").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.bumen != null && res.data.bumen != ''){

						$("#bumen").val(res.data.bumen);
						$("#bumen").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.zhiwei != null && res.data.zhiwei != ''){

						$("#zhiwei").val(res.data.zhiwei);
						$("#zhiwei").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.zhaopian != null && res.data.zhaopian != ''){

                        vm.zhaopianImgList = res.data.zhaopian.split(',')
					}
					if(res.data != null && res.data != '' && res.data.xianbumen != null && res.data.xianbumen != ''){

						var xianbumenOptions = document.getElementsByClassName("xianbumenOption");
						for(var xianbumenCount = 0; xianbumenCount < xianbumenOptions.length;xianbumenCount++){
							if(xianbumenOptions[xianbumenCount].getAttribute('value') == res.data.xianbumen){
								xianbumenOptions[xianbumenCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.xianzhiwei != null && res.data.xianzhiwei != ''){

						var xianzhiweiOptions = document.getElementsByClassName("xianzhiweiOption");
						for(var xianzhiweiCount = 0; xianzhiweiCount < xianzhiweiOptions.length;xianzhiweiCount++){
							if(xianzhiweiOptions[xianzhiweiCount].getAttribute('value') == res.data.xianzhiwei){
								xianzhiweiOptions[xianzhiweiCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.diaodongriqi != null && res.data.diaodongriqi != ''){

						$("#diaodongriqi-input").val(res.data.diaodongriqi);
						$('#diaodongriqiFileName').val(res.data.diaodongriqi)
					}
					if(res.data != null && res.data != '' && res.data.renshigonghao != null && res.data.renshigonghao != ''){

						$("#renshigonghao").val(res.data.renshigonghao);
						$("#renshigonghao").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.renshixingming != null && res.data.renshixingming != ''){

						$("#renshixingming").val(res.data.renshixingming);
						$("#renshixingming").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.sfsh != null && res.data.sfsh != ''){

					}
					if(res.data != null && res.data != '' && res.data.shhf != null && res.data.shhf != ''){

						$("#shhf").val(res.data.shhf);
						$("#shhf").attr('readonly','readonly');
					}
				}
			});  
            }
		window.sessionStorage.removeItem('crossTableName');
		window.sessionStorage.removeItem('crossTableId');
        }
		
		//跨表更新字段
		function crossTableUpdate(){
			let flag = crossTableUpdateValidation();
			if(flag){
				httpJson(crossTableName + "/update","POST",{
					id: crossTableId,
				},(res)=>{
					if(res.code == 0){
						console.log('跨表更新成功');
						return true;
					}
				});   
			}
			return false;
		}

		//跨表更新前验证
		function crossTableUpdateValidation(){
			//防止减法导致库存负值
			return true;
		}
		$(document).ready(function() { 
			//设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username')+'('+window.sessionStorage.getItem('role')+')')
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			//设置导航栏菜单
			setMenu();
			//初始化时间插件
			dateTimePick();
			//添加表单校验信息文本
			addValidation();
			getDetails();
			//初始化上传按钮
			upload();
			//单列求和
			calculationPre();
			//跨表
			crossTable();
			<%@ include file="../../static/myInfo.js"%>
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    submit();
			});
			$('#exitBtn').on('click', function(e) {
			    cancel();
			});
			readonly();
		});		

		function readonly(){
            if(window.sessionStorage.getItem('role')!="管理员") {
				$('#money').attr('readonly','readonly');
            }
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
			if(largerVal !=null && smallerVal != null){
				if(parseInt(largerVal)<=parseInt(smallerVal)){
					alert(smallerName+'不能大于等于'+largerName);
					return false;
				}
			}
			return true;
		}


		// 用户登出
        <%@ include file="../../static/logout.jsp"%>		
	</script>
</body>

</html>
