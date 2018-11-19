package com.webconfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.core.env.Environment;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter
{
	////////////////////////////////////////////////////////////
	// Http 表单认证
	////////////////////////////////////////////////////////////
	@Autowired
	private Environment env;

	@Override
	protected void configure(HttpSecurity http) throws Exception
	{
		http.csrf().disable();
		http.authorizeRequests().anyRequest().authenticated().and().formLogin().permitAll().and().logout().permitAll();
	}

	@Bean
	public UserDetailsService userDetailsService()
	{
		// Get the user credentials from the console (or any other source):
		String username = env.getProperty("spring.security.user.name");
		String password = env.getProperty("spring.security.user.password");

		// Set the inMemoryAuthentication object with the given credentials:
		InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
		String encodedPassword = passwordEncoder().encode(password);
		manager.createUser(User.withUsername(username).password(encodedPassword).roles("ADMIN").build());
		return manager;
	}

	@Bean
	public PasswordEncoder passwordEncoder()
	{
		return new BCryptPasswordEncoder();
	}

	////////////////////////////////////////////////////////////
	// HttpBasic 认证
	////////////////////////////////////////////////////////////
	// @Autowired
	// private Environment env;
	//
	// @Override
	// protected void configure(HttpSecurity http) throws Exception
	// {
	// http.authorizeRequests().antMatchers("/**").authenticated().and().httpBasic();
	// http.csrf().disable();
	// }
	//
	// @Bean
	// public UserDetailsService userDetailsService()
	// {
	// // Get the user credentials from the console (or any other source):
	// String username = env.getProperty("spring.security.user.name");
	// String password = env.getProperty("spring.security.user.password");
	//
	// // Set the inMemoryAuthentication object with the given credentials:
	// InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
	// String encodedPassword = passwordEncoder().encode(password);
	// manager.createUser(User.withUsername(username).password(encodedPassword).roles("ADMIN").build());
	// return manager;
	// }
	//
	// @Bean
	// public PasswordEncoder passwordEncoder()
	// {
	// return new BCryptPasswordEncoder();
	// }

}