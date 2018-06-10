package xyz.falado.whs.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import xyz.falado.whs.dao.WHSProcessMapper;
import xyz.falado.whs.model.WHSProcess;
import xyz.falado.whs.model.WHSProcessExample;

import javax.annotation.Resource;
import java.util.List;

/**
 * @ Author     ：apple.
 * @ Date       ：2018/6/3
 * @ Description：设备管理
 * @ Modified By：
 * @Version: 1$
 */
@Service(value = "processService")
public class WHSProcessServiceImpl implements WHSProcessService {
    @Resource
    private WHSProcessMapper mapper;

    private final static Logger logger = LoggerFactory.getLogger(WHSProcessServiceImpl.class);

    @Override
    public WHSProcess createNew(WHSProcess process) {
        mapper.insert(process);
        return process;
    }

    @Override
    public WHSProcess findByID(int id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<WHSProcess> findByExample(WHSProcessExample example) {
        List<WHSProcess> results = mapper.selectByExample(example);
        return results;
    }

    @Override
    public WHSProcess updateSingle(WHSProcess process) {
        mapper.updateByPrimaryKeySelective(process);
        return process;
    }

    @Override
    public List<WHSProcess> updateBatch(List<WHSProcess> processs) {
        return null;
    }

    @Override
    public int deleteByID(int id) {
        mapper.deleteByPrimaryKey(id);
        return 0;
    }
}
