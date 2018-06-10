package xyz.falado.whs.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import xyz.falado.whs.dao.WHSDeviceMapper;
import xyz.falado.whs.model.WHSDevice;
import xyz.falado.whs.model.WHSDeviceExample;

import javax.annotation.Resource;
import java.util.List;

/**
 * @ Author     ：apple.
 * @ Date       ：2018/6/3
 * @ Description：设备管理
 * @ Modified By：
 * @Version: 1$
 */
@Service(value = "deviceService")
public class WHSDeviceServiceImpl implements WHSDeviceService {
    @Resource
    private WHSDeviceMapper mapper;
    private final static Logger logger = LoggerFactory.getLogger(WHSDeviceServiceImpl.class);

    @Override
    public WHSDevice createNew(WHSDevice device) {
        mapper.insert(device);
        return device;
    }

    @Override
    public WHSDevice findByID(int id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<WHSDevice> findByExample(WHSDeviceExample example) {
        List<WHSDevice> results = mapper.selectByExample(example);
        return results;
    }

    @Override
    public PageInfo<WHSDevice> selectByPage(WHSDeviceExample example, int pageSize, int currentPage) {
        PageHelper.startPage(currentPage, pageSize);

        List<WHSDevice> results = mapper.selectByExample(example);
        PageInfo<WHSDevice> pageInfo = new PageInfo<>(results);

        return pageInfo;
    }

    @Override
    public PageInfo<WHSDevice> selectByKeyWord(String keyword, int pageSize, int currentPage) {

        PageHelper.startPage(currentPage, pageSize);

        List<WHSDevice> results = mapper.selectByKeyWord("%"+keyword+"%");
        PageInfo<WHSDevice> pageInfo = new PageInfo<>(results);

        return pageInfo;
    }

    @Override
    public WHSDevice updateSingle(WHSDevice device) {
        mapper.updateByPrimaryKeySelective(device);
        return device;
    }

    @Override
    public List<WHSDevice> updateBatch(List<WHSDevice> devices) {
        return null;
    }

    @Override
    public int deleteByID(int id) {
        mapper.deleteByPrimaryKey(id);
        return 0;
    }
}
