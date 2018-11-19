package com.admin.dao;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.admin.entity.Authority;

import chok.devwork.springboot.BaseDao;

@Repository
public class AuthorityDao extends BaseDao<Authority, Long>
{
	@Resource
	private SqlSession sqlSession;

	@Override
	protected SqlSession getSqlSession()
	{
		return sqlSession;
	}
	
	@Override
	public Class<Authority> getEntityClass()
	{
		return Authority.class;
	}

	public List<Authority> queryByRoleId(Long roleId)
	{
		return this.getSqlSession().selectList(getStatementName("queryByRoleId"), roleId);
	}

	public List<Authority> queryBtnAuthorityByUserId(Long userId)
	{
		return this.getSqlSession().selectList(getStatementName("queryBtnAuthorityByUserId"), userId);
	}

	public int getCountByUserIdAndActionUrl(Map<?, ?> m)
	{
		return (Integer) this.getSqlSession().selectOne(getStatementName("getCountByUserIdAndActionUrl"), m);
	}
}
