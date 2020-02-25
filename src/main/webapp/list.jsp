<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath() %>/css/css.css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.8.2.min.js"></script>
</head>
<body>
	<table>
  <tr>
    <th>编号</th>
    <th>商品名称</th>
    <th>商品图片</th>
    <th>英文名称</th>
    <th>价格</th>
    <th>尺寸</th>
    <th>数量</th>
    <th>所属品牌</th>
    <th>所属种类</th>
    <th>所属标签</th>
     
  </tr>
  <c:forEach items="${list }" var="s">
  <tr>
    <td>${s.gid}</td>
    <td>${s.gname}</td>
    <td>${s.picurl}</td>
    <td>${s.ename}</td>
    <td>${s.price}</td>
    <td>${s.size}</td>
    <td>${s.gnum}</td>
    <td>${s.bname}</td>
    <td>${s.kname}</td>
    <td>操作</td>
  </tr>
  </c:forEach>
</table>

</body>
</html>