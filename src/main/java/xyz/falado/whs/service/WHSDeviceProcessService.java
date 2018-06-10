package xyz.falado.whs.service;

import com.github.pagehelper.PageInfo;
import xyz.falado.whs.model.WHSDevice;
import xyz.falado.whs.model.WHSDeviceExample;
import xyz.falado.whs.model.WHSDeviceProcess;

import java.util.List;

public interface WHSDeviceProcessService {


    public WHSDeviceProcess createNew(WHSDeviceProcess deviceProcess);
    public WHSDeviceProcess findByID(int id);

    public WHSDeviceProcess updateSingle(WHSDeviceProcess record);
    public List<WHSDeviceProcess> updateBatch(List<WHSDeviceProcess> deviceProcesses);
    public int deleteByID(int id);


}
