<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--DEV --%>
<%
String appId = "3";
String userId = "3";
String account = "DEV";
%>
<script type="text/javascript">
/* js 全局变量 **********************************************************/
var $g_menuJson = 
	[
	{"tc_code":"System management","tc_order":"1-1","tc_app_id":1,"tc_authority_id":3,"pid":0,"id":3,"tc_name":"系统管理","tc_url":""},
	{"tc_code":"App management","tc_order":"1-1-1","tc_app_id":1,"tc_authority_id":75,"pid":3,"id":12,"tc_name":"应用管理","tc_url":"/admin/app/query"},
	{"tc_code":"Authority management","tc_order":"1-1-2","tc_app_id":1,"tc_authority_id":5,"pid":3,"id":5,"tc_name":"权限管理","tc_url":"/admin/authority/query"},
	{"tc_code":"Menu management","tc_order":"1-1-3","tc_app_id":1,"tc_authority_id":4,"pid":3,"id":4,"tc_name":"菜单管理","tc_url":"/admin/menu/query"},
	{"tc_code":"Role management","tc_order":"1-1-4","tc_app_id":1,"tc_authority_id":6,"pid":3,"id":6,"tc_name":"角色管理","tc_url":"/admin/role/query"},
	{"tc_code":"User management ","tc_order":"1-1-5","tc_app_id":1,"tc_authority_id":7,"pid":3,"id":7,"tc_name":"用户管理","tc_url":"/admin/user/query"}
	];  
var $g_btnJson = null;
/************************************************************************/
$(function(){
	// 菜单初始化
	$chok.menu2.init($g_menuJson);
	// 菜单查询
	$("#navSearchForm").submit(function(event) {
		event.preventDefault();
	});
});
</script>
