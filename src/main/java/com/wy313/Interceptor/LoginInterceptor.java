package com.wy313.Interceptor;


        import org.springframework.context.annotation.Configuration;
        import org.springframework.stereotype.Component;
        import org.springframework.web.servlet.HandlerInterceptor;
        import org.springframework.web.servlet.ModelAndView;
        import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
        import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
        import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
        import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

        import javax.servlet.http.HttpServletRequest;
        import javax.servlet.http.HttpServletResponse;

/**
 * 后台登录拦截器
 */
@Configuration
public class LoginInterceptor extends WebMvcConfigurationSupport {
    @Override
    protected void addInterceptors(InterceptorRegistry registry) {
        HandlerInterceptor interceptor=new HandlerInterceptor() {
            @Override
            public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

                Object username = request.getSession().getAttribute("username");
                if (username==null) {
                    request.setAttribute("msg","没有权限请先登录");
                    request.getRequestDispatcher("/admin/login").forward(request,response);
                    return false;
                }
                return true;


            }

            @Override
            public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

            }

            @Override
            public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

            }
        };
        String [] excul=new String[]{"/static/**","/admin/login"};
        InterceptorRegistration interceptorRegistration = registry.addInterceptor(interceptor);
        interceptorRegistration.addPathPatterns("**");
        interceptorRegistration.addPathPatterns("/admin/**");
        interceptorRegistration.excludePathPatterns(excul);
    }

    @Override
    protected void addResourceHandlers(ResourceHandlerRegistry registry) {
        //registry.addResourceLocations("classpath:/static/");
        registry.addResourceHandler("/**")
                .addResourceLocations("classpath:/resources")
                .addResourceLocations("classpath:/static")
                .addResourceLocations("classpath:/templates");
        super.addResourceHandlers(registry);

    }
}
