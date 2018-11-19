package com.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.dao.RoleAuthorityDao;
import com.admin.entity.RoleAuthority;

import chok.devwork.springboot.BaseDao;
import chok.devwork.springboot.BaseService;

@Service
public class RoleAuthorityService extends BaseService<RoleAuthority, Long>
{
	@Autowired
	private RoleAuthorityDao roleAuthorityDao;

	@Override
	public BaseDao<RoleAuthority, Long> getEntityDao()
	{
		return roleAuthorityDao;
	}

	public void delByRoleId(Long roleId)
	{
		roleAuthorityDao.delByRoleId(roleId);
	}
}
