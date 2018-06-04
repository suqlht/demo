package xyz.falado.shiro;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import xyz.falado.whs.model.XUser;
import xyz.falado.whs.service.XUserService;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * @ Author     ：apple.
 * @ Date       ：2018/5/25
 * @ Description：安全realm
 * @ Modified By：
 * @Version: 1.0$
 */
public class CustomRealm extends AuthorizingRealm {

    @Resource
    private XUserService userService;
    private final static Logger logger = LoggerFactory.getLogger(CustomRealm.class);


    /**
     * @param
     * @Author: apple
     * @Date: 2018/5/25
     * @Description:
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

        String userName = (String) principalCollection.getPrimaryPrincipal();
        List<String> permissionList = new ArrayList<String>();
        permissionList.add("user:add");
        permissionList.add("user:delete");

        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        info.addStringPermissions(permissionList);
        info.addRole("admin");
        return info;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        String userName = (String) authenticationToken.getPrincipal();
        XUser user = userService.findXUserByName(userName);


        if (user == null) {
            return null;
        }

        logger.info("pswd:{}",user.getPswd());
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(userName, user.getPswd(), this.getName());
        return info;
    }
}