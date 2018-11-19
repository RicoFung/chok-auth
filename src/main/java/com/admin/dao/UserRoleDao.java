package com.admin.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.admin.entity.UserRole;

import chok.devwork.springboot.BaseDao;

@Repository
public class UserRoleDao extends BaseDao<UserRole,Long>
{
	@Resource
	private SqlSession sqlSession;

	@Override
	protected SqlSession getSqlSession()
	{
		return sqlSession;
	}
	
	@Override
	public Class<UserRole> getEntityClass()
	{
		return UserRole.class;
	}
	
	public void delByUserId(Long userId)
	{
		this.getSqlSession().delete(getStatementName("delByUserId"), userId);
	}
	
	public void delByRoleId(Long roleId)
	{
		this.getSqlSession().delete(getStatementName("delByRoleId"), roleId);
	}
	
	public String getRoleIdsByUserId(Long userId)
	{
		return this.getSqlSession().selectOne(getStatementName("getRoleIdsByUserId"), userId);
	}
}
