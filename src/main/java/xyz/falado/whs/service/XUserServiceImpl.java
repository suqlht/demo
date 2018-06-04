package xyz.falado.whs.service;

import org.apache.shiro.authc.credential.DefaultPasswordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import xyz.falado.whs.dao.XUserMapper;
import xyz.falado.whs.model.XUser;
import xyz.falado.whs.model.XUserExample;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service(value="userService")
public class XUserServiceImpl implements XUserService {
    private final static Logger logger = LoggerFactory.getLogger("xyz.falado.whs");

    private DefaultPasswordService defaultPasswordService = new DefaultPasswordService();
    @Resource
    private XUserMapper userMapper;

    @Override
    @Transactional
    public XUser addXUser(XUser user) {
        userMapper.insert(user);
        return user;
    }

    @Override
    public XUser findXUserByID(long id) {


        return userMapper.selectByPrimaryKey(id);
    }

    @Override
    public XUser findXUserByName(String name) {
        logger.info("username:{}",name);
        XUserExample example = new XUserExample();
        XUserExample.Criteria criteria = example.createCriteria();
        criteria.andEmailEqualTo(name);
        List<XUser> users = userMapper.selectByExample(example);
        if(users.size()==1){
            return users.get(0);
        }else{
            return null;
        }
    }

    @Override
    public XUser register(XUser user) {
        user.setCreateTime(new Date());
        user.setPswd(defaultPasswordService.encryptPassword(user.getPswd()));
        userMapper.insert(user);

        return user;
    }
}
