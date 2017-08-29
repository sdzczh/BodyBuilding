<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8" />
	<c:set var="domain" value="${pageContext.request.contextPath}"></c:set>
	<link rel="apple-touch-icon" sizes="76x76" href="${domain}/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="${domain}/assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title></title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="${domain}/assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="${domain}/assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="${domain}/assets/css/paper-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="${domain}/assets/css/demo.css" rel="stylesheet" />

    <!--  Fonts and icons     -->
    <link href="${domain}/assets/css/themify-icons.css" rel="stylesheet">

</head>
<body>

<div class="wrapper">
	

    <div class="main-panel">
		
        

        <div class="content"><div style="padding-left: 20px;padding-right: 20px">
             <form>
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>用户名</label>
                                                <input type="text" class="form-control border-input"  placeholder="Your Account" value="${userInfo[0].account}" id="account">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>姓名</label>
                                                <input type="text" class="form-control border-input" placeholder="Your Name" value="${userInfo[0].name}" id="name">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">密码 </label>
                                                <input type="password" class="form-control border-input" placeholder="Password" value="${userInfo[0].pwd}" id="pwd">
                                            </div>
                                        </div>
                                    </div>
									<div class="row">
									    <div class="col-md-4">
                                            <div class="form-group">
                                                <label>年龄</label>
                                                <input type="text" class="form-control border-input" placeholder="Your Age" value="${userInfo[0].age}" id="age">
                                            </div>
                                        </div>
									</div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>性别</label>
                                                <input type="text" class="form-control border-input" placeholder="Your Sex" id="sex" <c:if test="${userInfo[0].sex==0}">value="女"</c:if><c:if test="${userInfo[0].sex==1}">value="男"</c:if>>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>联系电话</label>
                                                <input type="text" class="form-control border-input" placeholder="Your Phone" value="${userInfo[0].tel}" id="tel">
                                            </div>
                                        </div>
                                    </div>

                                  
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>详细地址</label>
                                                <input type="text" class="form-control border-input" placeholder="Home Address" value="${userInfo[0].address}" id="address">
                                            </div>
                                        </div>
                                    </div>

                                   
                                    <div class="text-center">
                                        <button type="button" class="btn btn-info btn-fill btn-wd" onclick="update()">增加用户</button>
                                    </div>
                                    <div class="clearfix"></div>
                                </form></div>
            </div>
        </div>



    </div>
</div>


</body>

    <!--   Core JS Files   -->
    <script src="${domain}/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="${domain}/assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="${domain}/assets/js/bootstrap-checkbox-radio.js"></script>

	<!--  Charts Plugin -->
	<script src="${domain}/assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="${domain}/assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <!---<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>--->

    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="${domain}/assets/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="${domain}/assets/js/demo.js"></script>
	<script src="${domain}/js/layer.js"></script>
	<script type="text/javascript">
	function update(){
			var account = document.getElementById("account").value;
			var name = document.getElementById("name").value;
			var pwd = document.getElementById("pwd").value;
			var age = document.getElementById("age").value;
			var sex = document.getElementById("sex").value;
			var tel = document.getElementById("tel").value;
			var address = document.getElementById("address").value;
			if(account==""||name==""||pwd==""||age==""||sex==""||tel==""||address==""){
				layer.msg('请把信息填写完整!',{icon: 2,time:2000});   
				return false;
			}
			var regAge = new RegExp("^[0-9]*$");
			    if(!regAge.test(age)){
					   layer.msg('请输入正确的年龄格式!',{icon: 2,time:2000});   
					return false;
			    }
			var regTel = new RegExp("^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8}$");
			    if(!regTel.test(tel)){
					   layer.msg('请输入正确的手机格式!',{icon: 2,time:2000});   
					return false;
			    }
			var regSex = new RegExp("^(男|女)$");
			    if(!regSex.test(sex)){
					   layer.msg('请输入正确的性别!',{icon: 2,time:2000});   
					return false;
			    }
			if(sex=='男'){
				sex=1;
			}else{
				sex=0;
			}
			$.post("registerUser",{
				'account' : account,
				'name' : name,
				'pwd' : pwd,
				 age : age,
				 sex : sex,
				'tel' : tel,
				'address' : address,
			},function(result){
				if(result=="false"){
					layer.msg('用户名已存在!',{icon: 2,time:2000});
					return false;
				}
				if(result == "true"){
					layer.msg('添加成功!',{icon: 1,time:2000});
				}
			})
	}
	</script>
</html>
