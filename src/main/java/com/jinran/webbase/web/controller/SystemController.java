package com.jinran.webbase.web.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/system")

public class SystemController {
	
	// 跳转到登录界面
		@RequestMapping(value = "/gotoLogin", method = RequestMethod.GET)
		public String gotoLogin() {
			return "system/login";
		}

		// 后台登录
		@RequestMapping(value = "/login", method = { RequestMethod.POST, RequestMethod.GET })
		public String login(String username, String password, String remember, Model model, HttpServletResponse response,
				HttpSession session) {
			System.out.println("------remember------"+remember);
			if(username == null||password ==null){
				return "system/login";
			}
			
			if (username.equals("admin") && password.equals("123123")) {
				// 记住密码
				Cookie namecookie = new Cookie("username", username);
				Cookie pwdcookie = new Cookie("password", password);
				// 设置cookie的存活时间为30分钟
				namecookie.setMaxAge(30 * 60);
				pwdcookie.setMaxAge(30 * 60);
				// 将用户名和密码存放到客户端的Cookie中
				response.addCookie(namecookie);
				response.addCookie(pwdcookie);
				// 保存用户信息
				session.setAttribute("username", username);
				return "home/index";
			} else {
				model.addAttribute("flag", 1);
				return "system/login";
			}
		}

		@RequestMapping(value = "/loginHuitaoStatistics")
		public String loginHuitaoStatics() {
			return "redirect:http://192.168.0.160:8080/web/admin/system/login?userName=admin&passWord="
					+ 123123;
		}

		// 注销
		@RequestMapping(value = "/logout", method = RequestMethod.GET)
		public String logout(HttpSession session) {
			System.out.println("/logout");
			session.invalidate();
			return "system/login";
		}

		// 跳转到首页
		@RequestMapping(value = "/index", method = RequestMethod.GET)
		public String gotoIndext(HttpSession session) {
			String username = (String) session.getAttribute("username");
			if(username == null){
				return "system/login";
			}
			return "home/index";
		}
}
