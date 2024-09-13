<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 function logout() {
			$.ajax({ 
                type: "GET",
                url: baseUrl + "users/logout",
                beforeSend: function(xhr) {
                    xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                },
                success: function(res){               	
                	if(res.code == 0 || res.code == 401){
    					window.sessionStorage.clear();
						window.location.href="${pageContext.request.contextPath}/jsp/login.jsp"
					}else{
						alert(res.msg);	
					}
                },
            });
        }
        function toFront() {
window.location.assign(baseUrl+'front');
}
function backUp(){
    var mymessage = confirm("是否备份数据库?");
    if (mymessage == true) {
        $.ajax({
            type: "GET",
            url: baseUrl + "mysqldump",
            beforeSend: function(xhr) {
                xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
            },
            success: function(res){                 
                if (res) {
                    const binaryData = [];
                    binaryData.push(res);
                    const objectUrl = window.URL.createObjectURL(new Blob(binaryData, {
                        type: 'application/pdf;chartset=UTF-8'
                    }))
                    const a = document.createElement('a')
                    a.href = objectUrl
                    a.download = 'mysql.dmp'
                    // a.click()
                    // 下面这个写法兼容火狐
                    a.dispatchEvent(new MouseEvent('click', {
                        bubbles: true,
                        cancelable: true,
                        view: window
                    }))
                    window.URL.revokeObjectURL(res)
                    alert("数据备份成功");  
                }
            },
        });     
    }
    else {
        alert("已取消操作");
    }
}
