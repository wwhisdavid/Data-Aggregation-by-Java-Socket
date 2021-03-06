<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>节点列表</title>
</head>
<body>
	<div style="height:50px;text-align:right;">您好，<c:out value="${sessionScope.loginName}"/>&nbsp;&nbsp;<a href="${pageContext.request.contextPath }/UserServlet?method=logout">退出登陆</a></div>
	<table border="1" width="80%" align="center" cellpadding="5" cellspacing="0">
		<tr>
			<th>序号</th>
			<th>节点ID</th>
			<th>节点名</th>
			<th>节点经度</th>
			<th>节点纬度</th>
		</tr>
		<c:choose>
			<c:when test="${not empty requestScope.pageBean.pageData}">
				<c:forEach var="node" items="${requestScope.pageBean.pageData}" varStatus="vs">
					<tr>
  						<td>${vs.count }</td>
  						<td>${node.node_id }</td>
  						<td>${node.name }</td>
  						<td>${node.logitude }</td>
  						<td>${node.latitude }</td>
  					</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
  				<tr>
  					<td colspan="5">对不起，没有你要找的数据</td>
  				</tr>
  			</c:otherwise>
		</c:choose>
		<tr>
  			<td colspan="5" align="center">
  				当前${requestScope.pageBean.currentPage }/${requestScope.pageBean.totalPage }页     &nbsp;&nbsp;
  				
  				<a href="${pageContext.request.contextPath }/NodeListServlet?mode=nomal&currentPage=1">首页</a>
  				<a href="${pageContext.request.contextPath }/NodeListServlet?mode=nomal&currentPage=${requestScope.pageBean.currentPage-1}">上一页 </a>
  				<a href="${pageContext.request.contextPath }/NodeListServlet?mode=nomal&currentPage=${requestScope.pageBean.currentPage+1}">下一页 </a>
  				<a href="${pageContext.request.contextPath }/NodeListServlet?mode=nomal&currentPage=${requestScope.pageBean.totalPage}">末页</a>
  				&nbsp;&nbsp;
  				<a href="${pageContext.request.contextPath }/NodeListServlet?mode=map&table=${requestScope.table}">地图模式</a>
  			</td>
  		</tr>
	</table>
</body>
</html>