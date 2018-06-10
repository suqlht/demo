package xyz.falado.whs.service;

import xyz.falado.whs.dao.WHSDeviceProcessMapper;
import xyz.falado.whs.model.WHSDeviceProcess;

import javax.annotation.Resource;
import java.util.List;

/**
 * @ Author     ：apple.
 * @ Date       ：2018/6/10
 * @ Description：设备工序管理实现类
 * @ Modified By：
 * @Version: 1.0$
 */
public class WHSDeviceProcessServiceImpl implements WHSDeviceProcessService {
    @Resource
    private WHSDeviceProcessMapper mapper;

    @Override
    public WHSDeviceProcess createNew(WHSDeviceProcess deviceProcess) {
        mapper.insert(deviceProcess);
        return deviceProcess;
    }

    @Override
    public WHSDeviceProcess findByID(int id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public WHSDeviceProcess updateSingle(WHSDeviceProcess record) {
        mapper.updateByPrimaryKeySelective(record);
        return record;
    }

    @Override
    public List<WHSDeviceProcess> updateBatch(List<WHSDeviceProcess> deviceProcesses) {
        return null;
    }

    @Override
    public int deleteByID(int id) {

        return mapper.deleteByPrimaryKey(id);
    }
}
