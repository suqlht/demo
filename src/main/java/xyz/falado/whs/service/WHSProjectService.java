package xyz.falado.whs.service;

import com.github.pagehelper.PageInfo;
import xyz.falado.whs.model.*;

import java.util.List;

public interface WHSProjectService {


    public WHSProjectSubs createNew(WHSProjectSubs projectSubs);
    public int startProject(Long[] ids, Long current_userid);

    public WHSProjectSubs findProjectSubs(Long id);
    public PageInfo<WHSProject> findPageByExample(WHSProjectExample example, int pageSize, int pageIndex);

    public PageInfo<WHSProject> findPageByKeyword(String kw,  int pageSize, int currentPage);
    public int deleteInBatch(Long[] ids, Long current_userid);
    public WHSProjectSubs createUpdate(WHSProjectSubs projectSubs);

    public WHSProject Update(WHSProject project);

    public WHSSubProject updateSubProject(WHSSubProject subProject);
    public WHSSubProject createSubProject(WHSSubProject subProject);
    public int deleteSubProject(List<Long> ids,Long projectid);

}
