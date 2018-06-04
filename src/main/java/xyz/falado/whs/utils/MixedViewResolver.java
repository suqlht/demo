package xyz.falado.whs.utils;

import java.util.Locale;
import java.util.Map;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

/**
 * 说明： 多视图处理器
 *
 * @author  liuhaitao
 * @version 创建时间：2011-8-19 上午09:41:09
 */
public class MixedViewResolver implements ViewResolver{
    private Map<String,ViewResolver> resolvers;

    public void setResolvers(Map<String, ViewResolver> resolvers) {
        this.resolvers = resolvers;
    }

    public View resolveViewName(String viewName,Locale locale) throws Exception{
        int n=viewName.lastIndexOf(".");
        if(n!=-1){
            //取出扩展名
            String suffix=viewName.substring(n+1);
            //取出对应的ViewResolver
            ViewResolver resolver=resolvers.get(suffix);
            if(resolver==null){
                throw new RuntimeException("No ViewResolver for "+suffix);
            }
            if(resolver instanceof  UrlBasedViewResolver){
                ((UrlBasedViewResolver) resolver).setSuffix(".ftl");
                viewName = viewName.substring(0,n);
            }
            return  resolver.resolveViewName(viewName, locale);
        }else{
            ViewResolver resolver=resolvers.get("ftl");
            if(resolver instanceof  UrlBasedViewResolver){
                ((UrlBasedViewResolver) resolver).setSuffix(".ftl");
            }

            return  resolver.resolveViewName(viewName, locale);
        }
    }
}