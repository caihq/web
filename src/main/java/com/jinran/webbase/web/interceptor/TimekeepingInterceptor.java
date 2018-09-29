package com.jinran.webbase.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class TimekeepingInterceptor implements HandlerInterceptor{
	
	private Logger logger = LoggerFactory.getLogger(TimekeepingInterceptor.class);
	
	private boolean isLog = true;
	
	private long start;
	
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler, ModelAndView modelAndView) throws Exception {
		String ip = getRemoteIP(request);
		String url  = request.getRequestURL().toString();
		long end = System.currentTimeMillis();
		if(isLog) logger.info("{}[app, {}, {}ms]", url, ip, end - start);
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler) throws Exception {
		start = System.currentTimeMillis();
		return true;
	}
	
	 /**
     * @Title: getRemoteIP
     * @Description: TODO(获取远程IP地址)
     * @param request
     * @return
     * @author jason.peng
     * @date 2015年10月21日 上午7:07:39
      */
     public String getRemoteIP(HttpServletRequest request){
     	String ip = request.getHeader("X-Forwarded-For");
 		if (StringUtils.isNotEmpty(ip) && !"unKnown".equalsIgnoreCase(ip)) {
 			// 多次反向代理后会有多个ip值，第一个ip才是真实ip
 			int index = ip.indexOf(",");
 			if (index != -1) {
 				return ip.substring(0, index);
 			} else {
 				return ip;
 			}
 		}
 		ip = request.getHeader("X-Real-IP");
 		if (StringUtils.isNotEmpty(ip) && !"unKnown".equalsIgnoreCase(ip)) {
 			return ip;
 		}
 		return request.getRemoteAddr();
     }

}
