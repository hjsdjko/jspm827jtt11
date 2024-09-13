
var projectName = '企业人事管理系统的开发与实现';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的发布',
	url: '../forum/list-my.jsp'
},

{
	name: '我的收藏',
	url: '../storeup/list.jsp?storeupType=1'
},
]


var indexNav = [

{
	name: '招聘信息',
	url: './pages/zhaopinxinxi/list.jsp'
}, 
{
	name: '培训信息',
	url: './pages/peixunxinxi/list.jsp'
}, 

{
	name: '公司论坛',
	url: './pages/forum/list.jsp'
}, 
{
	name: '公告信息',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspm827jtt11/index.jsp";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-send","buttons":["新增","查看","修改","删除"],"menu":"员工","menuJump":"列表","tableName":"yuangong"}],"menu":"员工管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-rank","buttons":["新增","查看","修改","删除"],"menu":"部门","menuJump":"列表","tableName":"bumen"}],"menu":"部门管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-newshot","buttons":["新增","查看","修改","删除"],"menu":"职位","menuJump":"列表","tableName":"zhiwei"}],"menu":"职位管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核","查看评论"],"appFrontIcon":"cuIcon-taxi","buttons":["查看","修改","删除","查看评论","审核"],"menu":"招聘信息","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息管理"},{"child":[{"allButtons":["新增","查看","修改","删除","参加"],"appFrontIcon":"cuIcon-present","buttons":["新增","查看","修改","删除"],"menu":"培训信息","menuJump":"列表","tableName":"peixunxinxi"}],"menu":"培训信息管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核"],"appFrontIcon":"cuIcon-brand","buttons":["查看","修改","删除","审核"],"menu":"参加培训","menuJump":"列表","tableName":"canjiapeixun"}],"menu":"参加培训管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核"],"appFrontIcon":"cuIcon-brand","buttons":["查看","修改","删除","审核"],"menu":"入职信息","menuJump":"列表","tableName":"ruzhixinxi"}],"menu":"入职信息管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-rank","buttons":["查看","修改","删除"],"menu":"签到打卡","menuJump":"列表","tableName":"qiandaodaka"}],"menu":"签到打卡管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核"],"appFrontIcon":"cuIcon-similar","buttons":["查看","修改","删除","审核"],"menu":"考勤信息","menuJump":"列表","tableName":"kaoqinxinxi"}],"menu":"考勤信息管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核"],"appFrontIcon":"cuIcon-full","buttons":["查看","修改","删除","审核"],"menu":"人事调动","menuJump":"列表","tableName":"renshidiaodong"}],"menu":"人事调动管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核","工资发布"],"appFrontIcon":"cuIcon-vipcard","buttons":["查看","修改","删除","工资发布","审核"],"menu":"绩效考核","menuJump":"列表","tableName":"jixiaokaohe"}],"menu":"绩效考核管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核"],"appFrontIcon":"cuIcon-link","buttons":["查看","修改","删除","审核"],"menu":"员工工资","menuJump":"列表","tableName":"yuangonggongzi"}],"menu":"员工工资管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-group","buttons":["新增","查看","修改","删除"],"menu":"公司论坛","tableName":"forum"}],"menu":"公司论坛"},{"child":[{"allButtons":["查看","修改"],"appFrontIcon":"cuIcon-phone","buttons":["查看","修改"],"menu":"系统简介","tableName":"systemintro"},{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-discover","buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"公告信息","tableName":"news"},{"allButtons":["查看","修改"],"appFrontIcon":"cuIcon-phone","buttons":["查看","修改"],"menu":"关于我们","tableName":"aboutus"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","审核","查看评论"],"appFrontIcon":"cuIcon-full","buttons":["查看"],"menu":"招聘信息列表","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息模块"},{"child":[{"allButtons":["新增","查看","修改","删除","参加"],"appFrontIcon":"cuIcon-goodsnew","buttons":["查看","参加"],"menu":"培训信息列表","menuJump":"列表","tableName":"peixunxinxi"}],"menu":"培训信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","审核","查看评论"],"appFrontIcon":"cuIcon-taxi","buttons":["新增","查看","修改","删除","查看评论"],"menu":"招聘信息","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息管理"},{"child":[{"allButtons":["新增","查看","修改","删除","参加"],"appFrontIcon":"cuIcon-present","buttons":["查看","修改","删除"],"menu":"培训信息","menuJump":"列表","tableName":"peixunxinxi"}],"menu":"培训信息管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核"],"appFrontIcon":"cuIcon-brand","buttons":["查看","修改","删除"],"menu":"参加培训","menuJump":"列表","tableName":"canjiapeixun"}],"menu":"参加培训管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核"],"appFrontIcon":"cuIcon-brand","buttons":["新增","查看","修改","删除"],"menu":"入职信息","menuJump":"列表","tableName":"ruzhixinxi"}],"menu":"入职信息管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-rank","buttons":["新增","查看","修改","删除"],"menu":"签到打卡","menuJump":"列表","tableName":"qiandaodaka"}],"menu":"签到打卡管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核"],"appFrontIcon":"cuIcon-similar","buttons":["新增","查看","修改","删除"],"menu":"考勤信息","menuJump":"列表","tableName":"kaoqinxinxi"}],"menu":"考勤信息管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核"],"appFrontIcon":"cuIcon-full","buttons":["新增","查看","修改","删除"],"menu":"人事调动","menuJump":"列表","tableName":"renshidiaodong"}],"menu":"人事调动管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核","工资发布"],"appFrontIcon":"cuIcon-vipcard","buttons":["新增","查看","修改","删除","工资发布"],"menu":"绩效考核","menuJump":"列表","tableName":"jixiaokaohe"}],"menu":"绩效考核管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核"],"appFrontIcon":"cuIcon-link","buttons":["查看","修改","删除","新增"],"menu":"员工工资","menuJump":"列表","tableName":"yuangonggongzi"}],"menu":"员工工资管理"}],"frontMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","审核","查看评论"],"appFrontIcon":"cuIcon-full","buttons":["查看"],"menu":"招聘信息列表","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息模块"},{"child":[{"allButtons":["新增","查看","修改","删除","参加"],"appFrontIcon":"cuIcon-goodsnew","buttons":["查看","参加"],"menu":"培训信息列表","menuJump":"列表","tableName":"peixunxinxi"}],"menu":"培训信息模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"员工","tableName":"yuangong"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
