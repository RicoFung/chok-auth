package com.admin.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.dao.AuthorityDao;
import com.admin.entity.Authority;

import chok.devwork.springboot.BaseDao;
import chok.devwork.springboot.BaseService;

@Service
public class AuthorityService extends BaseService<Authority,Long>
{
	@Autowired
	private AuthorityDao authorityDao;

	@Override
	public BaseDao<Authority,Long> getEntityDao() {
		return authorityDao;
	}
	
	@Override
	public void del(Long[] ids) 
	{
		for(Long id:ids)
		{
			// 删除菜单关联关系
			// 删除角色关联关系
			// 删除父子关联关系
			// 删除主表记录
			authorityDao.del(id);
		}
	}
	
	public List<Authority> queryByRoleId(Long roleId)
	{
		return authorityDao.queryByRoleId(roleId);
	}
	
	public List<Object> queryBtnAuthorityByUserId(Long userId)
	{
		List<Authority> btnAuthorityData = authorityDao.queryBtnAuthorityByUserId(userId);
		List<Object> treeNodes = new ArrayList<Object>();
		for(int i=0; i<btnAuthorityData.size(); i++)
		{
			Authority o = btnAuthorityData.get(i);
			treeNodes.add(o.getM());
		}
		return treeNodes;
	}
	
	public int getCountByUserIdAndActionUrl(Map<?, ?> m)
	{
		return authorityDao.getCountByUserIdAndActionUrl(m);
	}
}
