package xyz.falado.whs.service;

import com.github.pagehelper.PageInfo;
import xyz.falado.whs.model.WHSProcess;
import xyz.falado.whs.model.WHSProcessExample;

import java.util.List;

public interface WHSProcessService {


    public WHSProcess createNew(WHSProcess process);
    public WHSProcess findByID(int id);
    public List<WHSProcess> findByExample(WHSProcessExample example);
    public WHSProcess updateSingle(WHSProcess record);
    public List<WHSProcess> updateBatch(List<WHSProcess> processes);
    public int deleteByID(int id);


}
