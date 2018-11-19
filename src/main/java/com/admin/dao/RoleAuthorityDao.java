package com.admin.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.admin.entity.RoleAuthority;

import chok.devwork.springboot.BaseDao;

@Repository
public class RoleAuthorityDao extends BaseDao<RoleAuthority,Long>
{
	@Resource
	private SqlSession sqlSession;

	@Override
	protected SqlSession getSqlSession()
	{
		return sqlSession;
	}
	
	@Override
	public Class<RoleAuthority> getEntityClass()
	{
		return RoleAuthority.class;
	}
	
	public void delByRoleId(Long roleId)
	{
		this.getSqlSession().delete(getStatementName("delByRoleId"), roleId);
	}
	
	public void delByAuthorityId(Long permitId)
	{
		this.getSqlSession().delete(getStatementName("delByAuthorityId"), permitId);
	}
	
	public String getAuthorityIdsByRoleId(Long roleId)
	{
		return this.getSqlSession().selectOne(getStatementName("getAuthorityIdsByRoleId"), roleId);
	}
}
