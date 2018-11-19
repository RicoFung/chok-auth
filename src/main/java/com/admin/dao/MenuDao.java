package com.admin.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.admin.entity.Menu;

import chok.devwork.springboot.BaseDao;


@Repository
public class MenuDao extends BaseDao<Menu,Long>
{
	@Resource
	private SqlSession sqlSession;

	@Override
	protected SqlSession getSqlSession()
	{
		return sqlSession;
	}
	
	@Override
	public Class<Menu> getEntityClass()
	{
		return Menu.class;
	}
}
