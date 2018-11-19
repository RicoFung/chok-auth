package com.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.dao.UserRoleDao;
import com.admin.entity.UserRole;

import chok.devwork.springboot.BaseDao;
import chok.devwork.springboot.BaseService;

@Service
public class UserRoleService extends BaseService<UserRole, Long>
{
	@Autowired
	private UserRoleDao userRoleDao;

	@Override
	public BaseDao<UserRole, Long> getEntityDao()
	{
		return userRoleDao;
	}

	@Override
	public void add(UserRole po)
	{
		userRoleDao.add(po);
	}
}
