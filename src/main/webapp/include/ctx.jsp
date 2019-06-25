<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="chok.util.PropertiesUtil" %>
<%
String ctx = request.getContextPath();
String imagePath = PropertiesUtil.getValue("image.path");
request.setAttribute("ctx", ctx);
request.setAttribute("staticexternal", ctx+"/staticexternal");
request.setAttribute("staticinternal", ctx+"/staticinternal");
request.setAttribute("imagePath", imagePath);
%>
<script type="text/javascript">
var $ctx="${ctx}";
</script>