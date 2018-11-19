package com.common;

import com.admin.service.AppService;
import com.admin.service.AuthorityService;
import com.admin.service.MenuService;
import com.admin.service.RoleService;

import chok.common.BeanFactory;

public class Factory
{
	public static AppService getAppService(){return (AppService) BeanFactory.getBean("appService");}
	public static MenuService getMenuService(){return (MenuService) BeanFactory.getBean("menuService");}
	public static AuthorityService getAuthorityService(){return (AuthorityService) BeanFactory.getBean("authorityService");}
	public static RoleService getRoleService(){return (RoleService) BeanFactory.getBean("roleService");}
}
