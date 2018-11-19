package com.admin.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.admin.entity.Role;

import chok.devwork.springboot.BaseDao;

@Repository
public class RoleDao extends BaseDao<Role,Long>
{
	@Resource
	private SqlSession sqlSession;

	@Override
	protected SqlSession getSqlSession()
	{
		return sqlSession;
	}
	
	@Override
	public Class<Role> getEntityClass()
	{
		return Role.class;
	}
	
	public List<Role> queryByUserId(Long userId)
	{
		return this.getSqlSession().selectList(getStatementName("queryByUserId"), userId);
	}
}
