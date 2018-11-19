package com.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.dao.RoleAuthorityDao;
import com.admin.dao.RoleDao;
import com.admin.dao.UserRoleDao;
import com.admin.entity.Role;
import com.admin.entity.RoleAuthority;

import chok.devwork.springboot.BaseDao;
import chok.devwork.springboot.BaseService;
import chok.util.CollectionUtil;

@Service
public class RoleService extends BaseService<Role,Long>
{
	@Autowired
	private RoleDao roleDao;
	@Autowired
	private RoleAuthorityDao roleAuthorityDao;
	@Autowired
	private UserRoleDao userRoleDao;

	@Override
	public BaseDao<Role,Long> getEntityDao() {
		return roleDao;
	}
	
	@Override
	public void add(Role po)
	{
		// 插入系统角色表
		roleDao.add(po);
		// 插入系统角色权限表
		if (po.get("tc_authority_ids").toString().length()<1) return;
		Long tcRoleId = po.getId();
		Long[] tcAuthorityIds = CollectionUtil.strToLongArray(po.get("tc_authority_ids").toString(), ",");
		for(Long tcAuthorityId : tcAuthorityIds)
		{
			RoleAuthority o = new RoleAuthority();
			o.set("tc_role_id", tcRoleId);
			o.set("tc_authority_id", tcAuthorityId);
			roleAuthorityDao.add(o);
		}
	}
	
	@Override
	public void del(Long[] ids) 
	{
		for(Long id:ids)
		{
			roleAuthorityDao.delByRoleId(id);
			userRoleDao.delByRoleId(id);
			roleDao.del(id);
		}
	}
	
	@Override
	public void upd(Role po)
	{
		roleDao.upd(po);
		if(po.get("tc_authority_ids")!=null)
		{
			// 清空旧记录
			roleAuthorityDao.delByRoleId(po.getLong("id"));
			// 插入系统角色权限表
			if (po.get("tc_authority_ids").toString().length()<1) return;
			Long tcRoleId = po.getLong("id");
			Long[] tcAuthorityIds = CollectionUtil.strToLongArray(po.get("tc_authority_ids").toString(), ",");
			for(Long tcAuthorityId : tcAuthorityIds)
			{
				RoleAuthority o = new RoleAuthority();
				o.set("tc_role_id", tcRoleId);
				o.set("tc_authority_id", tcAuthorityId);
				roleAuthorityDao.add(o);
			}
		}
	}
	
	@Override
	public Role get(Long id) 
	{
		Role po = roleDao.get(id);
		po.set("tc_authority_ids", roleAuthorityDao.getAuthorityIdsByRoleId(id));
		return po;
	}
	
	public List<Role> queryByUserId(Long userId)
	{
		return roleDao.queryByUserId(userId);
	}
}
