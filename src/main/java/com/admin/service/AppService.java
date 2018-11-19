package com.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.dao.AppDao;
import com.admin.entity.App;

import chok.devwork.springboot.BaseDao;
import chok.devwork.springboot.BaseService;

@Service
public class AppService extends BaseService<App, Long>
{
	@Autowired
	private AppDao appDao;

	@Override
	public BaseDao<App, Long> getEntityDao()
	{
		return appDao;
	}
}
