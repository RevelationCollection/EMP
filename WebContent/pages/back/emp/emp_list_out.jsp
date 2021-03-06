<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/pages/plugins/include_static_head.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%
	String showEmpUrl = basePath + "pages/back/emp/EmpServletBack/show" ;
%>
<base href="<%=basePath%>">
<jsp:include page="/pages/plugins/include_javascript_head.jsp" />
<script type="text/javascript" src="js/pages/back/emp/emp_list.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<!-- 导入头部标题栏内容 -->
		<jsp:include page="/pages/plugins/include_title_head.jsp" />
		<!-- 导入左边菜单项 -->
		<jsp:include page="/pages/plugins/include_menu_item.jsp">
			<jsp:param name="role" value="emp"/>
			<jsp:param name="action" value="emp:listOut"/>
		</jsp:include>
		<div class="content-wrapper">
			<!-- 此处编写需要显示的页面 -->
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<!-- /.box-header -->
						<div class="box-body table-responsive no-padding">
							<div class="panel panel-info">
								<div class="panel-heading">
									<strong><span class="glyphicon glyphicon-user"></span>&nbsp;雇员信息列表</strong>
								</div>
								<div class="panel-body" style="height : 95%;">
									<jsp:include page="/pages/plugins/include_splitpage_search.jsp"/>
									<table class="table table-hover">
										<tr>
											<th width="5%" class="text-center"><input type="checkbox" id="selall"></th>
											<th width="10%" class="text-center">照片</th> 
											<th width="10%" class="text-center">姓名</th> 
											<th width="10%" class="text-center">级别</th>
											<th width="10%" class="text-center">职位</th>
											<th width="8%" class="text-center">部门</th>
											<th width="12%" class="text-center">基本工资</th>
											<th width="12%" class="text-center">佣金</th>
											<th width="15%" class="text-center">雇佣日期</th>
										</tr>
										<c:forEach items="${allEmps}" var="emp">
											<tr>
												<td class="text-center"><input type="checkbox" id="empno" name="empno" value="${emp.empno}"></td>
												<td class="text-center"><img src="upload/emp/sm-${emp.photo}" style="width:50%"></td>
												<td class="text-center"><a href="<%=showEmpUrl%>?empno=${emp.empno}">${emp.ename}</a></td>
												<td class="text-center">${allLevels['' + emp.lid]}</td>
												<td class="text-center">${emp.job}</td>
												<td class="text-center">${allDepts['' + emp.deptno]}</td>
												<td class="text-center">￥${emp.sal}/月</td>
												<td class="text-center">￥${emp.comm}/月</td>
												<td class="text-center">${emp.hiredate}</td>
											</tr>
										</c:forEach>
									</table>
									<jsp:include page="/pages/plugins/include_splitpage_bar.jsp"/>
									<jsp:include page="/pages/plugins/include_alert.jsp"/>
								</div> 
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
			</div>
		</div>
		<!-- 导入公司尾部认证信息 -->
		<jsp:include page="/pages/plugins/include_title_foot.jsp" />
		<!-- 导入右边工具设置栏 -->
		<jsp:include page="/pages/plugins/include_menu_sidebar.jsp" />
		<div class="control-sidebar-bg"></div>
	</div>
	<jsp:include page="/pages/plugins/include_javascript_foot.jsp" />
</body>
</html>
