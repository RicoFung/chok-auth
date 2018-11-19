package com.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.admin.dao.UserDao;
import com.admin.dao.UserRoleDao;
import com.admin.entity.User;
import com.admin.entity.UserRole;

import chok.devwork.springboot.BaseDao;
import chok.devwork.springboot.BaseService;
import chok.util.CollectionUtil;
import chok.util.EncryptionUtil;

@Service
public class UserService extends BaseService<User, Long>
{
	@Autowired
	private UserDao		userDao;
	@Autowired
	private UserRoleDao	userRoleDao;

	@Override
	public BaseDao<User, Long> getEntityDao()
	{
		return userDao;
	}

	@Override
	public void add(User po)
	{
		// 插入系统用户表
		po.set("tc_password", EncryptionUtil.getMD5(po.getString("tc_password")).toLowerCase());
		userDao.add(po);
		// 插入系统角色权限表
		if (po.get("tc_role_ids").toString().length() < 1)
			return;
		Long tcUserId = po.getId();
		Long[] tcRoleIds = CollectionUtil.strToLongArray(po.get("tc_role_ids").toString(), ",");
		for (Long tcRoleId : tcRoleIds)
		{
			UserRole o = new UserRole();
			o.set("tc_user_id", tcUserId);
			o.set("tc_role_id", tcRoleId);
			userRoleDao.add(o);
		}
	}

	@Override
	public void del(Long[] ids)
	{
		for (Long id : ids)
		{
			userRoleDao.delByUserId(id);
			userDao.del(id);
		}
	}

	@Override
	public void upd(User po)
	{
		userDao.upd(po);
		if (po.get("tc_role_ids") != null)
		{
			// 清空旧记录
			userRoleDao.delByUserId(po.getLong("id"));
			// 插入系统用户角色表
			if (po.get("tc_role_ids").toString().length() < 1)
				return;
			Long tcUserId = po.getLong("id");
			Long[] tcRoleIds = CollectionUtil.strToLongArray(po.get("tc_role_ids").toString(), ",");
			for (Long tcRoleId : tcRoleIds)
			{
				UserRole o = new UserRole();
				o.set("tc_user_id", tcUserId);
				o.set("tc_role_id", tcRoleId);
				userRoleDao.add(o);
			}
		}
	}

	@Override
	public User get(Long id)
	{
		User po = userDao.get(id);
		po.set("tc_role_ids", userRoleDao.getRoleIdsByUserId(id));
		return po;
	}
}
