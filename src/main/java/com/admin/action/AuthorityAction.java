package com.admin.action;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.admin.entity.Authority;
import com.admin.service.AppService;
import com.admin.service.AuthorityService;

import chok.devwork.BaseController;
import chok.util.CollectionUtil;


@Scope("prototype")
@Controller
@RequestMapping("/admin/authority")
public class AuthorityAction extends BaseController<Authority>
{
	@Autowired
	private AuthorityService service;
	@Autowired
	private AppService appService;
	
	@RequestMapping("/add")
	public String add() 
	{
		put("queryParams", req.getParameterValueMap(false, true));
		return "jsp/admin/authority/add";
	}
	@RequestMapping("/add2")
	public void add2(Authority po) 
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
		put("po", service.get(req.getLong("id")));
		put("queryParams", req.getParameterValueMap(false, true));
		return "jsp/admin/authority/upd";
	}
	@RequestMapping("/upd2")
	public void upd2(Authority po) 
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
		put("po", service.get(req.getLong("id")));
		put("queryParams", req.getParameterValueMap(false, true));
		return "jsp/admin/authority/get";
	}

	@RequestMapping("/query")
	public String query() 
	{
		put("queryParams",req.getParameterValueMap(false, true));
		put("appList", appService.query(null));
		return "jsp/admin/authority/query";
	}
	
	@RequestMapping("/query2")
	public void query2()
	{
		Map<String, Object> m = req.getParameterValueMap(false, true);
		result.put("total",service.getCount(m));
		result.put("rows",service.query(m));
		printJson(result.getData());
	}
}