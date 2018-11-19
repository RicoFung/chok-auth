package com.admin.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.admin.entity.Authority;
import com.admin.entity.Role;
import com.admin.service.AuthorityService;
import com.admin.service.RoleService;

import chok.devwork.BaseController;
import chok.util.CollectionUtil;


@Scope("prototype")
@Controller
@RequestMapping("/admin/role")
public class RoleAction extends BaseController<Role>
{
	@Autowired
	private RoleService service;
	@Autowired
	private AuthorityService authorityService;
	
	@RequestMapping("/add")
	public String add() 
	{
		put("queryParams",req.getParameterValueMap(false, true));
		return "jsp/admin/role/add";
	}
	@RequestMapping("/add2")
	public void add2(Role po) 
	{
		try
		{
			service.add(po);
			print("1");
	
		}
		catch(Exception e)
		{
			e.printStackTrace();
			print("0:" + e.getMessage());
		}
	}
	
	@RequestMapping("/del")
	public void del() 
	{
		try
		{
			service.del(CollectionUtil.toLongArray(req.getLongArray("id[]", 0l)));
			result.setSuccess(true);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			result.setSuccess(false);
			result.setMsg(e.getMessage());
		}
		printJson(result);
	}
	
	@RequestMapping("/upd")
	public String upd() 
	{
		put("po",service.get(req.getLong("id")));
		put("queryParams",req.getParameterValueMap(false, true));
		return "jsp/admin/role/upd";
	}
	@RequestMapping("/upd2")
	public void upd2(Role po) 
	{
		try
		{
			service.upd(po);
			print("1");
		}
		catch(Exception e)
		{
			e.printStackTrace();
			print("0:" + e.getMessage());
		}
	}

	@RequestMapping("/get")
	public String get() 
	{
		put("po",service.get(req.getLong("id")));
		put("queryParams",req.getParameterValueMap(false, true));
		return "jsp/admin/role/get";
	}

	@RequestMapping("/query")
	public String query() 
	{
		put("queryParams",req.getParameterValueMap(false, true));
		return "jsp/admin/role/query";
	}
	
	@RequestMapping("query2")
	public void query2()
	{
		Map<String, Object> m = req.getParameterValueMap(false, true);
		result.put("total",service.getCount(m));
		result.put("rows",service.query(m));
		printJson(result.getData());
	}
	
	@RequestMapping("/getAuthorityTreeNodesByRoleId")
	public void getAuthorityTreeNodesByRoleId()
	{
		List<Authority> roleAuthorityData = authorityService.queryByRoleId(req.getLong("tc_role_id"));
		List<Authority> authorityData = authorityService.query(null);
		List<Object> treeNodes = new ArrayList<Object>();
		
		for(int i=0; i<authorityData.size(); i++)
		{
			Authority o = authorityData.get(i);
			for(int j=0; j<roleAuthorityData.size(); j++)
			{
				Authority o1 = roleAuthorityData.get(j);
				if(o.getLong("id") == o1.getLong("id"))
				{
					o.set("checked", true);
				}
			}
			treeNodes.add(o.getM());
		}
		printJson(treeNodes);
	}
}