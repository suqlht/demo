<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <title><@spring.message "system.title"/> | 管理面板</title>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta name="MobileOptimized" content="320">

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/js/yui2.9.0/build/menu/css/menu.css" />


    <script type="text/javascript" src="${rc.contextPath}/assets/js/yui2.9.0/build/yahoo-dom-event/yahoo-dom-event.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/js/yui2.9.0/build/container/container-min.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/js/yui2.9.0/build/menu/menu-min.js"></script>

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/jquery-ui-1.11.4/jquery-ui.structure.min.css" />


    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/uniform/css/uniform.default.css" />
    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN THEME STYLES -->
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/style-conquer.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/style.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/style-responsive.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/plugins.css" />

    <!-- END THEME STYLES -->

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-modal/css/bootstrap-modal.css" />

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/fullcalendar-2.3.0/fullcalendar.css" />

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/jquery-nestable/jquery.nestable.css" />

    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-1.10.2.min.js"></script>

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/select2/select2_conquer.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/data-tables/DT_bootstrap.css" />
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/data-tables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/data-tables/DT_bootstrap.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/select2/select2.min.js"></script>

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-datepicker/css/datepicker.css" />

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-datetimepicker/css/datetimepicker.css" />

    <script type="text/javascript" src="${rc.contextPath}/assets/js/uploadifive-v1.2.2/jquery.uploadifive.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/js/uploadifive-v1.2.2/uploadifive.css" />

    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/ckeditor/ckeditor.js"></script>

    <script type="text/javascript" src="${rc.contextPath}/assets/js/app.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/js/cluetip1.2.5/jquery.cluetip.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/js/cluetip1.2.5/jquery.cluetip.css" />

    <script>
        var sf_public_path = '${rc.contextPath}/';
        var selected_items = new Array();
        var CKEDITOR_holders = new Array();

        function keep_session() {
            $.ajax({
                url: '${rc.contextPath}/home'
            });
        }

        $(function() {
            setInterval("keep_session()", 600000);
        });
    </script>

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/app.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/skins/default/default.css" />



    <script type="text/javascript">
        var I18NJSText = new Array()
        I18NJSText['Loading...'] = '上载中...';

        I18NJSText['Are you sure?'] = '是否确定';

        I18NJSText['Please Select Items'] = '请选择事项';

        I18NJSText['Format'] = '格式';

        I18NJSText['Day'] = '日';

        I18NJSText['Week'] = '周';

        I18NJSText['Month'] = '月';

        I18NJSText['Quarter'] = '季';

        I18NJSText['Status'] = '状态';

        I18NJSText['Duration'] = '时段';

        I18NJSText['Progress'] = '进度';

        I18NJSText['Start Date'] = '开始日期';

        I18NJSText['Due Date'] = '截止日期';

        I18NJSText['Bold'] = 'Bold';

        I18NJSText['Italic'] = 'Italic';

        I18NJSText['Underline'] = 'Underline';

        I18NJSText['Left Align'] = 'Left Align';

        I18NJSText['Numbered List'] = 'Numbered List';

        I18NJSText['Bulleted List'] = 'Bulleted List';

        I18NJSText['Indent More'] = 'Indent More';

        I18NJSText['Indent Less'] = 'Indent Less';

        I18NJSText['Strike'] = 'Strike';

        I18NJSText['Remove Formatting'] = 'Remove Formatting';

        I18NJSText['Horizontal Rule'] = 'Horizontal Rule';

        I18NJSText['Image'] = 'Image';

        I18NJSText['Text Color'] = 'Text Color';

        I18NJSText['Background Color'] = 'Background Color';

        I18NJSText['Source'] = 'Source';

        I18NJSText['Code'] = 'Code';

        I18NJSText['Quote'] = 'Quote';

        I18NJSText['Paragraph'] = 'Paragraph';
    </script>

    <link rel="shortcut icon" href="${rc.contextPath}/favicon.ico" />
    <link rel="apple-touch-icon" href="${rc.contextPath}/favicon.png" />
</head>

<body class="page-scale-reduced page-header-fixed yui-skin-sam " id="yahoo-com">

    <!-- BEGIN HEADER -->

    <#include "/common/config/top.ftl" />
<@top 1/>

    <!-- END HEADER -->

    <div class="clearfix">
    </div>

    <!-- BEGIN CONTAINER -->
    <div class="page-container">

        <!-- BEGIN SIDEBAR -->

        <#include "/common/config/left.ftl" />
<@menu 1/>

        <!-- END SIDEBAR -->

        <!-- BEGIN CONTENT -->

        <div class="page-content-wrapper">
            <div class="page-content-wrapper">
                <div class="page-content">
                    <div id="ajax-modal" class="modal fade" tabindex="-1" data-replace="true" data-keyboard="false" data-backdrop="static" data-focus-on=".autofocus"></div>

                    <div id="userAlertContainer" class="alert alert-warning"><strong>提醒:</strong> 有<a> 3 </a>个项目即将到期。有<a> 2 </a>个项目尚未分配班组</div>



                    <h3 class="page-title">项目</h1>

      <div><div class="panel panel-info filter-preview">
      <div class="panel-heading"><div id="filtersMenuBox">
              <div id="filtersMenu" class="yuimenubar yuimenubarnav" style="display: none">
                <div class="bd">
                  <ul>

                    <li class="yuimenubaritem "><span class="yuimenubaritemlevel0"><i class="fa fa-tasks"></i> 筛选条件</span>
              <div id="filtersMenu1168678446" class="yuimenu">
                <div class="bd">
                  <ul>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel1">状态</span>
              <div id="filtersMenu515149187" class="yuimenu">
                <div class="bd">
                  <ul>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsStatusFilters toggle" name="ProjectsStatus1" id="ProjectsStatus1" value="1"  type="checkbox"></td><td><a href="${rc.contextPath}/index.php/projects?filter_by[ProjectsStatus]=1">Open</a></td></table></span></li>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsStatusFilters toggle" name="ProjectsStatus2" id="ProjectsStatus2" value="2"  type="checkbox"></td><td><a href="${rc.contextPath}/index.php/projects?filter_by[ProjectsStatus]=2">On Hold</a></td></table></span></li>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsStatusFilters toggle" name="ProjectsStatus3" id="ProjectsStatus3" value="3"  type="checkbox"></td><td><a href="${rc.contextPath}/index.php/projects?filter_by[ProjectsStatus]=3">Closed</a></td></table></span></li>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsStatusFilters toggle" name="ProjectsStatus4" id="ProjectsStatus4" value="4"  type="checkbox"></td><td><a href="${rc.contextPath}/index.php/projects?filter_by[ProjectsStatus]=4">Cancelled</a></td></table></span></li>
      </ul><ul>
                    <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><form id="filter_by_ProjectsStatus_form" action="${rc.contextPath}/index.php/projects" method="post"><input type="hidden" name="filter_by[ProjectsStatus]" value="" id="filter_by_ProjectsStatus" /><table onClick="filter_by_selected('ProjectsStatus','')"><tr><td style="padding-right: 10px;"><img src="${rc.contextPath}/images/icons/arrow_up.png" /></td><td>按选择项筛选</td></table></form></span></li>

                  </ul>
                </div>
              </div></li>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel1">类型</span>
              <div id="filtersMenu578261799" class="yuimenu">
                <div class="bd">
                  <ul>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsTypesFilters toggle" name="ProjectsTypes3" id="ProjectsTypes3" value="3"  type="checkbox"></td><td><a href="${rc.contextPath}/index.php/projects?filter_by[ProjectsTypes]=3">Support</a></td></table></span></li>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsTypesFilters toggle" name="ProjectsTypes2" id="ProjectsTypes2" value="2"  type="checkbox"></td><td><a href="${rc.contextPath}/index.php/projects?filter_by[ProjectsTypes]=2">New Site</a></td></table></span></li>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsTypesFilters toggle" name="ProjectsTypes4" id="ProjectsTypes4" value="4"  type="checkbox"></td><td><a href="${rc.contextPath}/index.php/projects?filter_by[ProjectsTypes]=4">Internal</a></td></table></span></li>
      </ul><ul>
                    <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><form id="filter_by_ProjectsTypes_form" action="${rc.contextPath}/index.php/projects" method="post"><input type="hidden" name="filter_by[ProjectsTypes]" value="" id="filter_by_ProjectsTypes" /><table onClick="filter_by_selected('ProjectsTypes','')"><tr><td style="padding-right: 10px;"><img src="${rc.contextPath}/images/icons/arrow_up.png" /></td><td>按选择项筛选</td></table></form></span></li>

                  </ul>
                </div>
              </div></li>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel1">团队内</span>
              <div id="filtersMenu1835145123" class="yuimenu">
                <div class="bd">
                  <ul>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><a href="${rc.contextPath}/index.php/projects?filter_by%5BUsers%5D=4">Admin</a></span>
              <div id="filtersMenu348742617" class="yuimenu">
                <div class="bd">
                  <ul>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel3"><table><tr><td style="padding-right: 10px;"><input class="UsersFilters toggle" name="Users4" id="Users4" value="4"  type="checkbox"></td><td><a href="${rc.contextPath}/index.php/projects?filter_by[Users]=4">admin</a></td></table></span></li>

                  </ul>
                </div>
              </div></li>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><a href="${rc.contextPath}/index.php/projects?filter_by%5BUsers%5D=5%2C3">Developer</a></span>
              <div id="filtersMenu738489150" class="yuimenu">
                <div class="bd">
                  <ul>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel3"><table><tr><td style="padding-right: 10px;"><input class="UsersFilters toggle" name="Users5" id="Users5" value="5"  type="checkbox"></td><td><a href="${rc.contextPath}/index.php/projects?filter_by[Users]=5">lht</a></td></table></span></li>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel3"><table><tr><td style="padding-right: 10px;"><input class="UsersFilters toggle" name="Users3" id="Users3" value="3"  type="checkbox"></td><td><a href="${rc.contextPath}/index.php/projects?filter_by[Users]=3">test</a></td></table></span></li>

                  </ul>
                </div>
              </div></li>
      </ul><ul>
                    <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><form id="filter_by_Users_form" action="${rc.contextPath}/index.php/projects" method="post"><input type="hidden" name="filter_by[Users]" value="" id="filter_by_Users" /><table onClick="filter_by_selected('Users','')"><tr><td style="padding-right: 10px;"><img src="${rc.contextPath}/images/icons/arrow_up.png" /></td><td>按选择项筛选</td></table></form></span></li>

                  </ul>
                </div>
              </div></li>

                  </ul>
                </div>
              </div></li>

                  </ul>
                </div>
              </div></div>

      <script type="text/javascript">
          YAHOO.util.Event.onContentReady("filtersMenu", function () {
              var oMenuBar = new YAHOO.widget.MenuBar("filtersMenu", {
                                                      autosubmenudisplay: true,
                                                      hidedelay: 750,
                                                      submenuhidedelay: 0,
                                                      showdelay: 150,
                                                      keepopen: true,
                                                      lazyload: true });
              oMenuBar.render();
          });
      </script>
      </div>
      <ul class="list-group">

          <li class="list-group-item filter-preview-item">
            <div class="filterPreviewBox">
              <table>
                <tr>
                  <td valign="top" style="padding-top: 2px;"><a title="移除筛选条件" class="btn btn-default btn-xs" href="${rc.contextPath}/index.php/projects?remove_filter=ProjectsStatus"><i class="fa fa-times"></i></a></td>
                  <td valign="top"><div id="filtersPreviewMenuBox">

              <div id="filtersMenuProjectsStatus" class="yuimenubar yuimenubarnav" style="display: none">
                <div class="bd">
                  <ul>

                    <li class="yuimenubaritem "><span class="yuimenubaritemlevel0">状态</span>
              <div id="filtersMenuProjectsStatus1247404242" class="yuimenu">
                <div class="bd">
                  <ul>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel1"><table><tr><td style="padding-right: 10px;"><input class="ProjectsStatusFiltersPreview toggle" name="ProjectsStatus1" id="ProjectsStatus1" value="1" checked="checked" type="checkbox"></td><td><a href="${rc.contextPath}/index.php/projects?filter_by[ProjectsStatus]=1">Open</a></td></table></span></li>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel1"><table><tr><td style="padding-right: 10px;"><input class="ProjectsStatusFiltersPreview toggle" name="ProjectsStatus2" id="ProjectsStatus2" value="2"  type="checkbox"></td><td><a href="${rc.contextPath}/index.php/projects?filter_by[ProjectsStatus]=2">On Hold</a></td></table></span></li>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel1"><table><tr><td style="padding-right: 10px;"><input class="ProjectsStatusFiltersPreview toggle" name="ProjectsStatus3" id="ProjectsStatus3" value="3"  type="checkbox"></td><td><a href="${rc.contextPath}/index.php/projects?filter_by[ProjectsStatus]=3">Closed</a></td></table></span></li>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel1"><table><tr><td style="padding-right: 10px;"><input class="ProjectsStatusFiltersPreview toggle" name="ProjectsStatus4" id="ProjectsStatus4" value="4"  type="checkbox"></td><td><a href="${rc.contextPath}/index.php/projects?filter_by[ProjectsStatus]=4">Cancelled</a></td></table></span></li>
      </ul><ul>
                    <li class="yuimenuitem "><span class="yuimenubaritemlevel1"><form id="filter_by_ProjectsStatus_form" action="${rc.contextPath}/index.php/projects" method="post"><input type="hidden" name="filter_by[ProjectsStatus]" value="" id="filter_by_ProjectsStatus" /><table onClick="filter_by_selected('ProjectsStatus','Preview')"><tr><td style="padding-right: 10px;"><img src="${rc.contextPath}/images/icons/arrow_up.png" /></td><td>按选择项筛选</td></table></form></span></li>

                  </ul>
                </div>
              </div></li>

                  </ul>
                </div>
              </div></div></td>
                  <td valign="middle" class="selectedFilterItems">Open</td>
                </tr>
              </table>
            </div>

            <script type="text/javascript">
                YAHOO.util.Event.onContentReady("filtersMenuProjectsStatus", function () {
                    var oMenuBar = new YAHOO.widget.MenuBar("filtersMenuProjectsStatus", {autosubmenudisplay: true,hidedelay: 350,submenuhidedelay: 0,showdelay: 150,keepopen: true,lazyload: true });
                    oMenuBar.render();
                });
            </script>

          </li>

      </ul>
      </div>
      </div>



      <table width="100%">
        <tr>
          <td>
            <table>
              <tr>
                          <td style="padding-right: 15px;"></td>
                          <td style="padding-right: 15px;"><div id="tableListingMultipleActionsMenu">
              <div id="with_selected_menu6642184" class="yuimenubar yuimenubarnav" style="display: none">
                <div class="bd">
                  <ul>

                    <li class="yuimenubaritem "><span class="yuimenubaritemlevel0">将选择项</span>
              <div id="with_selected_menu66421841599211560" class="yuimenu">
                <div class="bd">
                  <ul>

                    <li class="yuimenuitem" onClick="openMultipleActionModalBox('/qdPM_9/index.php/projects/multipleEdit')"><span>更新</span></li>

                    <li class="yuimenuitem" onClick="openMultipleActionModalBox('/qdPM_9/index.php/projects/export')"><span>导出</span></li>
      </ul><ul>
                    <li class="yuimenuitem" onClick="openMultipleActionModalBox('/qdPM_9/index.php/app/multipleDelete/table/projects')"><span>批量删除</span></li>

                  </ul>
                </div>
              </div></li>

                  </ul>
                </div>
              </div>
          <script type="text/javascript">
              YAHOO.util.Event.onContentReady("with_selected_menu6642184", function ()
              {
                  var oMenuBar = new YAHOO.widget.MenuBar("with_selected_menu6642184", {
                                                          autosubmenudisplay: true,
                                                          hidedelay: 750,
                                                          submenuhidedelay: 0,
                                                          showdelay: 150,
                                                          lazyload: true });
                  oMenuBar.render();
              });
          </script>
          </div></td>
              </tr>
            </table>
          </td>

          <td align="right">
            <table>
              <tr>
                <td>

              <div id="search_menu" class="yuimenubar yuimenubarnav" style="display: none">
                <div class="bd">
                  <ul>

                    <li class="yuimenubaritem "><span class="yuimenubaritemlevel0"><i class="fa fa-search"></i> 搜素</span>
              <div id="search_menu2080662395" class="yuimenu">
                <div class="bd">
                  <ul>

                    <li class="yuimenuitem "><span class="yuimenubaritemlevel1">
          <form action="${rc.contextPath}/index.php/projects" method="post">
          <table style="margin: 5px 0;" class="contentTable">
            <tr>
              <td><input type="text" name="search[keywords]" value="" class="form-control" id="search_keywords" /></td>
              <td valign="top"><input type="submit" class="btn btn-default"  value="搜素"></td>
            </tr>
            <tr>
              <td>
              <input class="yuimenecheckbox" name="search[in_description]"  type="checkbox" id="search_in_description"> <label for="search_in_description">说明</label></br>
              <input class="yuimenecheckbox" name="search[in_comments]"  type="checkbox" id="search_in_comments"> <label for="search_in_comments">备注</label><br>

              </td>

            </tr>
          </table>
          </form>
        </span></li>

                  </ul>
                </div>
              </div></li>

                  </ul>
                </div>
              </div>
      <script type="text/javascript">
          YAHOO.util.Event.onContentReady("search_menu", function ()
          {
              var oMenuBar = new YAHOO.widget.MenuBar("search_menu", {
                                                      autosubmenudisplay: true,
                                                      hidedelay: 4000,
                                                      submenuhidedelay: 0,
                                                      showdelay: 150,
                                                      keepopen: true,
                                                      lazyload: true });
              oMenuBar.render();
          });
      </script>



      </td>
                <td>

              <div id="order_by_menu" class="yuimenubar yuimenubarnav" style="display: none">
                <div class="bd">
                  <ul>

                    <li class="yuimenubaritem "><span class="yuimenubaritemlevel0">排序准则</span>
              <div id="order_by_menu622156111" class="yuimenu">
                <div class="bd">
                  <ul>

                      <li class="yuimenuitem"><a  class="yuimenuitemlabel" href="${rc.contextPath}/index.php/projects?set_order=date_added"  >添加的日期</a></li>

                      <li class="yuimenuitem"><a  class="yuimenuitemlabel" href="${rc.contextPath}/index.php/projects?set_order=name"  >名称</a></li>

                      <li class="yuimenuitem"><a  class="yuimenuitemlabel" href="${rc.contextPath}/index.php/projects?set_order=status"  ><strong>状态</strong></a></li>

                      <li class="yuimenuitem"><a  class="yuimenuitemlabel" href="${rc.contextPath}/index.php/projects?set_order=type"  >类型</a></li>

                  </ul>
                </div>
              </div></li>

                  </ul>
                </div>
              </div>
      <script type="text/javascript">
          YAHOO.util.Event.onContentReady("order_by_menu", function ()
          {
              var oMenuBar = new YAHOO.widget.MenuBar("order_by_menu", {
                                                      autosubmenudisplay: true,
                                                      hidedelay: 750,
                                                      submenuhidedelay: 0,
                                                      showdelay: 150,
                                                      lazyload: true });
              oMenuBar.render();
          });
      </script>

      </td>
              </tr>
            </table>
          </td>

        </tr>
      </table>


      <div class="table-scrollable" >

      <table class="table table-striped table-bordered table-hover projects-table" id="itmes_listing_6642184"   >
        <thead>
          <tr>
            <th class="table-checkbox"  data-bSortable="false"><input class="group-checkable" data-set="#itmes_listing_6642184 .checkboxes"  type="checkbox"></th>
            <th><div>项目编号</div></th>
            <th><div>状态</div></th>
            <th width="50%"><div>名称</div></th>
            <th><div>发货日期</div></th>
            <th><div>创建人</div></th>
            <th data-bSortable="false" style="width: 45px;">行动</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><input class="group-checkable" data-set="#itmes_listing_6642184 .checkboxes"  type="checkbox"></td>
            <td>123456</td>
            <td>正常</td>
            <td>项目1</td>
            <td>2018-6-30</td>
            <td>操作员</td>
            <td><a href="${rc.contextPath}/projects/whs/project_assign">分配</a> </td>
          </tr>
        </tbody>
      </table>

      </div>

      <div class="doctrine_pager">



      </div>
      <br />

      <script type="text/javascript">
        $(document).ready(function(){
          $('a.jt').cluetip({
            width:'550px',
            cluetipClass: 'jtip',
            arrows: true,
            dropShadow: true,
            hoverIntent: false,
            sticky: true,
            mouseOutClose: true,
            closePosition: 'title',
            closeText: '<img src="'+sf_public_path+'/images/cross.png" alt="close" />',
            onActivate:  function(ct, ci){ $('#cluetip').hide().removeClass()},
            hoverIntent: {
              sensitivity:  1,
              interval:     50,
              timeout:      50
            }
          });
        });

        $(document).bind('click', function() {
          $('#cluetip').hide().removeClass();
         });
      </script>





          <!-- END PAGE CONTENT-->
      		</div>
      	</div>
      </div>
      <!-- END CONTENT -->

    </div>
    <!-- END CONTAINER -->


<!-- BEGIN FOOTER -->
<#include "/common/config/footer.ftl" />

<@footer />
<!-- END FOOTER -->

<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/respond.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/excanvas.min.js"></script>
<![endif]-->
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-ui-1.11.4/jquery-ui.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery.blockui.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery.cokie.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/uniform/jquery.uniform.min.js"></script>
<!-- END CORE PLUGINS -->

<script type="text/javascript" src="${rc.contextPath}/assets/plugins/bootstrap-modal/js/bootstrap-modalmanager.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/bootstrap-modal/js/bootstrap-modal.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-validation/dist/additional-methods.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-nestable/jquery.nestable.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>

<script type="text/javascript" src="${rc.contextPath}/assets/scripts/app.js"></script>

<script>
jQuery(document).ready(function() {
   App.init();

   qdpm_app_init();

});

</script>

<!-- END JAVASCRIPTS -->

  </body>
</html>
