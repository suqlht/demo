package xyz.falado.whs.service;

import com.github.pagehelper.PageInfo;
import xyz.falado.whs.model.WHSDevice;
import xyz.falado.whs.model.WHSDeviceExample;

import java.util.List;

public interface WHSDeviceService {


    public WHSDevice createNew(WHSDevice device);
    public WHSDevice findByID(int id);
    public List<WHSDevice> findByExample(WHSDeviceExample example);
    public PageInfo<WHSDevice> selectByPage(WHSDeviceExample example, int pageSize, int pageIndex);
    public PageInfo<WHSDevice> selectByKeyWord(String keyword, int pageSize, int pageIndex);

    public WHSDevice updateSingle(WHSDevice record);
    public List<WHSDevice> updateBatch(List<WHSDevice> devices);
    public int deleteByID(int id);


}
