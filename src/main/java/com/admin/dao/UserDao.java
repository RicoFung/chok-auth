package com.admin.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.admin.entity.User;

import chok.devwork.springboot.BaseDao;

@Repository
public class UserDao extends BaseDao<User,Long>
{
	@Resource
	private SqlSession sqlSession;

	@Override
	protected SqlSession getSqlSession()
	{
		return sqlSession;
	}
	
	@Override
	public Class<User> getEntityClass()
	{
		return User.class;
	}
}
