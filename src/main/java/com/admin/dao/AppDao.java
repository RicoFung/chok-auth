package com.admin.dao;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.admin.entity.App;

import chok.devwork.springboot.BaseDao;

@Repository
public class AppDao extends BaseDao<App,Long>
{
	@Resource
	private SqlSession sqlSession;

	@Override
	protected SqlSession getSqlSession()
	{
		return sqlSession;
	}
	
	@Override
	public Class<App> getEntityClass()
	{
		return App.class;
	}
	
	public List<App> queryByUserId(Map<String, Object> m)
	{
		return this.getSqlSession().selectList(getStatementName("queryByUserId"), m);
	}
}
