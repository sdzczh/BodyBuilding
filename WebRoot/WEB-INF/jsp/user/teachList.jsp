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

	<title>教练列表</title>

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
            
                <li>
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
                <li class="active">
                   <a href="javascript:" onclick="selectTeach()">
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
                    <a class="navbar-brand" href="#">选择教练</a>
                </div>
                <div class="collapse navbar-collapse">
                  
                </div>
            </div>
        </nav>
        

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4 col-md-5">
                    
<table><tr>
<c:forEach var="list" items="${SelectTeachInfo}">
                    <td style="padding-left: 20px;">
                        <div class="card card-user" style="width: 350px">
                            <div class="image">
                                <img src="${domain}/assets/img/background.jpg" alt="..."/>
                            </div>
                            <div class="content">
                                <div class="author">
                                  <img class="avatar border-white" src="${domain}/assets/img/faces/face-2.jpg" alt="..."/>
                                  <h4 class="title">${list.tname}<br />
                                     <a href="#"><small>${list.ttel}</small></a>
                                  </h4>
                                </div>
                                <p class="description text-center">
                    		                ${list.taddress}
                                </p>
                            </div>
                            <hr>
                            <div class="text-center">
                                <div class="row">
                                    <div class="col-md-4" style="margin-left:95px;width: 50%">
                                        <h5><br /><button class="btn btn-danger btn-fill " onclick="select(${list.id},${list.cid},${userInfo[0].id})">I WANT YOU</button></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                       </td>
                       </c:forEach></tr>
   </table>                     
                        
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
	function select(id,cid,uid){
		layer.confirm('确认要选择这位教练吗？',function(index){
			$.ajax({
				type: 'get',
				url: 'chooseTeach',
				data: {id : id,
					   cid : cid,
					   uid : uid
					  },
				success: function(data){
					layer.msg('选择成功，请按时进行学习!',{icon: 1,time:2000});
					setTimeout(function(){
						window.location.href='myInfo';
					},2000)
				},
				error:function(data) {
					console.log(data.msg);
				},
			});		
		});
	}
	</script>
		<script type="text/javascript">
function selectTeach(){
	var SelectTeach=document.getElementById("SelectTeachInfo").value;
	if(SelectTeach==""){
		layer.msg('请先选择课程!',{icon: 2,time:2000});
	}
	if(SelectTeach!=""){
		window.location.href='teachList';
	}
}
</script>
</html>
