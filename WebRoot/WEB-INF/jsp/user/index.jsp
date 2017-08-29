<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <%    
             if(session.getAttribute("account") == null) {      
   %>    
          <script type="text/javascript" language="javascript">        
            alert("您还没有登录，请登录...");   
           top.location.href="../login.jsp";  
           </script>   
   <%    
       }    
   %> 
<!doctype html>
<html>
<head>
	<meta charset="utf-8" />
	<c:set var="domain" value="${pageContext.request.contextPath}"></c:set>
	<link rel="apple-touch-icon" sizes="76x76" href="${domain}/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="${domain}/assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>我的信息</title>

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
	<div class="sidebar" data-background-color="white" data-active-color="danger">

    <!--
		Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="#" class="simple-text">
                	   健身俱乐部管理系统
                </a>
            </div>

            <ul class="nav">
                
                <li class="active">
                    <a href="myInfo">
                        <i class="ti-user"></i>
                        <p>我的信息</p>
                    </a>
                </li>
                <li>
                    <a href="classTable">
                        <i class="ti-view-list-alt"></i>
                        <p>选课列表</p>
                    </a>
                </li>
                <li>
                    <a href="teachList">
                        <i class="ti-text"></i>
                        <p>选择教练</p>
                    </a>
                </li>
                
				<li class="active-pro">
                    <a href="exit">
                        <i class="ti-export"></i>
                        <p>退出</p>
                    </a>
                </li>
            </ul>
    	</div>
    </div>

    <div class="main-panel">
		<nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#">我的信息</a>
                </div>
                <div class="collapse navbar-collapse">
                  
                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4 col-md-5">
                        <div class="card card-user">
                            <div class="image">
                                <img src="${domain}/assets/img/background.jpg" alt="..."/>
                            </div>
                            <div class="content">
                                <div class="author">
                                  <img class="avatar border-white" src="${domain}/assets/img/faces/face-2.jpg" alt="..."/>
                                  <h4 class="title">${userInfo[0].name}<br />
                                     <a href="#"><small>${userInfo[0].account}</small></a>
                                  </h4>
                                </div>
                                <p class="description text-center">
                    		                ${userInfo[0].address}
                                </p>
                            </div>
                            <hr>
                            <div class="text-center">
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-1">
                                        <h5>${userInfo[0].age}<br /><small>年龄</small></h5>
                                    </div>
                                    <div class="col-md-4">
                                        <h5><c:if test="${userInfo[0].sex==0}">女</c:if>
                                        	<c:if test="${userInfo[0].sex==1}">男</c:if><br /><small>性别</small></h5>
                                    </div>
                                    <div class="col-md-3">
                                        <h5>${userInfo[0].tel}<br /><small>电话</small></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="header">
                                <h4 class="title">我的课程</h4>
                            </div>
                            <div class="content">
                                <ul class="list-unstyled team-members">
                                            <li>
                                                <div class="row">
                                                    <div class="col-xs-3">
                                       			                    <b>课程名称</b>
                                                    </div>
                                                    <div class="col-xs-6">
                                                    	   ${userInfo[0].courses[0].cname}
                                                        <br />
                                                        <span class="text-success"><small></small></span>
                                                    </div>

                                                    <div class="col-xs-3 text-right">
                                                        <btn class="btn btn-sm btn-success btn-icon"><i class="fa fa-envelope"></i></btn>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="row">
                                                    <div class="col-xs-3">
                                                        <div class="avatar">
                                                            <img src="${domain}/assets/img/faces/face-3.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-6">
                     					                ${userInfo[0].teachs[0].tname}
                                                        <br />
                                                        <span class="text-success"><small>${userInfo[0].teachs[0].ttel}</small></span>
                                                    </div>

                                                    <div class="col-xs-3 text-right">
                                                        <btn class="btn btn-sm btn-success btn-icon"><i class="fa fa-envelope"></i></btn>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-7">
                        <div class="card">
                            <div class="header"><br>
                                <h4 class="title">修改信息</h4>
                            </div>
                            <br>
                            <div class="content">
                                <form>
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>用户名</label><input type="hidden" value="${userInfo[0].id}" id="id">
                                                <input type="text" class="form-control border-input" disabled placeholder="Your Account" value="${userInfo[0].account}" id="account">
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
<br><br>

                                   
                                    <div class="text-center">
                                        <button type="button" class="btn btn-info btn-fill btn-wd" onclick="update()">更新信息</button>
                                    </div>
                                    <div class="clearfix"></div>
                                    <br><br>  
                                </form>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>


        <footer class="footer">
            <div class="container-fluid">
				<div class="copyright">
                    Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="javascript:">abcd</a>
                </div>
            </div>
        </footer>

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
    	$(document).ready(function(){

        	demo.initChartist();

        	$.notify({
            	icon: 'ti-gift',
            	message: "尊敬的会员，欢迎回来！"

            },{
                type: 'success',
                timer: 300
            });

    	});
	</script>
	<script type="text/javascript">
		function update(){
			var id = document.getElementById("id").value;
			var account = document.getElementById("account").value;
			var name = document.getElementById("name").value;
			var pwd = document.getElementById("pwd").value;
			var age = document.getElementById("age").value;
			var sex = document.getElementById("sex").value;
			var tel = document.getElementById("tel").value;
			var address = document.getElementById("address").value;
			
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
			$.ajax({
				type: 'post',
				url: 'updateUserInfo',
				data: {id : id,
					   'account' : account,
					   'name' : name,
					   'pwd' : pwd,
					   age : age,
					   sex : sex,
					   'tel' : tel,
					   'address' : address,
					  },
				success: function(data){
					layer.msg('修改成功!',{icon: 1,time:2000});
					setTimeout(function(){
						window.location.href='myInfo';
					},2000)
				},
				error:function(data) {
					console.log(data.msg);
				},
			});	
		}
	</script>
</html>
