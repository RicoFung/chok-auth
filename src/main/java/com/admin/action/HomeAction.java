package com.admin.action;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import chok.devwork.BaseController;

@Scope("prototype")
@Controller
@RequestMapping("/admin/home")
public class HomeAction extends BaseController<Object>
{
	private final Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	MessageSource source;

	@RequestMapping("/query")
	public String query() 
	{
		Locale locale0 = Locale.getDefault();
		log.debug("locale0=language:{},country:{}", locale0.getLanguage(), locale0.getCountry());
		put("i18nHello0", source.getMessage("hello", null, locale0));
		Locale locale1 = new Locale("en", "GB");
		put("i18nHello1", source.getMessage("hello", null, locale1));
		Locale locale2 = new Locale("fr", "FR");
		put("i18nHello2", source.getMessage("hello", null, locale2));
		return "jsp/admin/home/query";
	}
	
}