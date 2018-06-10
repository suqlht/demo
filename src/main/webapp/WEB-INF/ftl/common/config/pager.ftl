<#macro pageShow _totalPageNum _totalCount _currentPageNo _pageSize=10 _maxShowNums=10>
    <#-- 本段默认起始页 -->
    <#local _pageStartNo = 1/>
    <#-- 本段默认结束页 -->
    <#local _pageEndNo = _maxShowNums/>
    <#-- 分页的第一页 -->
    <#local _firstPageNo = 1 />
    <#-- 分页的最后一页 -->
    <#local _lastPageNo = _totalPageNum>
    <#-- 前一页号码 -->
    <#local _prePageNo = _currentPageNo - 1 />
    <#-- 后一页号码 -->
    <#local _nextPageNo = _currentPageNo + 1 />

    <#if _currentPageNo == _pageStartNo>
        <#local _prePageNo = _pageStartNo />
    </#if>

    <#if _currentPageNo == _lastPageNo>
        <#local _nextPageNo = _lastPageNo />
    </#if>

    <#if _currentPageNo gt _maxShowNums>
        <#local _thisPageSegment = (_currentPageNo / _maxShowNums)?int + 1/>
        <#assign _thisPageStartNo = _pageStartNo + (_thisPageSegment-1) * _maxShowNums/>
        <#assign _thisPageEndNo = _pageEndNo + (_thisPageSegment-1) * _maxShowNums/>

        <#if _thisPageEndNo gt _totalPageNum>
            <#assign _thisPageEndNo = _totalPageNum>
        </#if>
    <#else>
        <#assign _thisPageStartNo = _pageStartNo />
        <#assign _thisPageEndNo = _pageEndNo />
    </#if>

    <#if _thisPageEndNo gt _lastPageNo>
        <#assign _thisPageEndNo = _lastPageNo>
    </#if>

    <#local _pages=[] />
    <#if _totalPageNum != 0>
        <#list _thisPageStartNo .. _thisPageEndNo as _index>
            <#if _currentPageNo == _index >
                <#local _pages = _pages + [{"pageNum" : _index ,"url" : _pageName+"?"+_defaultPageParameter+"="+_index , "current" : true}] />
            <#else>
                <#local _pages = _pages + [{"pageNum" : _index ,"url" : _pageName+"?"+_defaultPageParameter+"="+_index , "current" : false}] />
            </#if>
        </#list>
    </#if>
    <#local _htmlNoLinkLine>
    <#if _currentPageNo == 1>
      <li><a href ="#">首页</a></li>
    <#else>
    <li><a href ="#" onclick="getPage(${_firstPageNo})">首页</a></li>

    </#if>
        <#if _currentPageNo != _pageStartNo>
          <li><a href = "#${_prePageNo}" onclick="getPage(${_prePageNo})">上一页</a></li>
        <#else>
        <li><a href = "#${_prePageNo}">上一页</a></li>

        </#if>

        <#list _pages as page>
            <#if page.current?default(false)>
                <li><span class="current" >${page.pageNum}</span></li>
            <#else>
              <li>  <a href="#" onclick="getPage(${page.pageNum})">${page.pageNum}</a> </li>
            </#if>
        </#list>
        <#if _currentPageNo gte _totalPageNum>
        <li><a href = "#">下一页</a></li>
        <li><a href = "#${_lastPageNo}">末页</a></li>
        <#else>
        <li><a href = "#" onclick="getPage(${_nextPageNo})">下一页</a></li>
        <li><a href = "#${_lastPageNo}" onclick="getPage(${_lastPageNo})">末页</a></li>

        </#if>

        <li><span>总数${_totalCount?default(0)}</span></li>
    </#local>

      <ul class="pagination">  ${_htmlNoLinkLine} </ul>
</#macro>
