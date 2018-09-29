package com.jinran.webbase.web.resolver;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class CustomHandlerExceptionResolver implements HandlerExceptionResolver {
	
	private Logger logger = LoggerFactory.getLogger(CustomHandlerExceptionResolver.class);
	
	public ModelAndView resolveException(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex) {
		ModelAndView mv = new ModelAndView();
		if(isAjax(request)) {
			sendError(response);
		} else {
			mv.setViewName("redirect:/500.jsp");
		}
		// 记录异常日志
		ex.printStackTrace();
		return mv;
	}

	/**
	* @Title: isAjax
	* @Description: TODO(是否是ajax请求)
	* @param request
	* @return
	* @author jason.peng
	* @date 2016年8月19日 上午8:38:55
	 */
	private boolean isAjax(HttpServletRequest request) {
		String header = request.getHeader("X-Requested-With");
		return StringUtils.isNotBlank(header);
	}
	/**
	* @Title: sendError
	* @Description: TODO(这里用一句话描述这个方法的作用)
	* @param response
	* @author jason.peng
	* @date 2016年8月19日 上午8:46:06
	 */
	private void sendError(HttpServletResponse response) {
		try {
			response.setContentType("application/json;charset=UTF-8");// JSON
			PrintWriter out = response.getWriter();
			out.write("{\"code\":500,\"msg\":\"系统错误\"}");
			out.close();
		} catch (IOException e) {
			logger.error(e.getMessage());
		}
	}
}
