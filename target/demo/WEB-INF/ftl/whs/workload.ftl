<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
  <head>
    <title><@spring.message "system.title"/> | 管理面板</title>

    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
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

      function keep_session()
      {
        $.ajax({url: '${rc.contextPath}/home'});
      }

      $(function(){
         setInterval("keep_session()",600000);
      });

    </script>

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/app.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/skins/default/default.css" />



    <script type="text/javascript">
      var I18NJSText = new Array()
      I18NJSText['Loading...']='上载中...';

      I18NJSText['Are you sure?']='是否确定';

      I18NJSText['Please Select Items']='请选择事项';

      I18NJSText['Format']='格式';

      I18NJSText['Day']='日';

      I18NJSText['Week']='周';

      I18NJSText['Month']='月';

      I18NJSText['Quarter']='季';

      I18NJSText['Status']='状态';

      I18NJSText['Duration']='时段';

      I18NJSText['Progress']='进度';

      I18NJSText['Start Date']='开始日期';

      I18NJSText['Due Date']='截止日期';

      I18NJSText['Bold']='Bold';

      I18NJSText['Italic']='Italic';

      I18NJSText['Underline']='Underline';

      I18NJSText['Left Align']='Left Align';

      I18NJSText['Numbered List']='Numbered List';

      I18NJSText['Bulleted List']='Bulleted List';

      I18NJSText['Indent More']='Indent More';

      I18NJSText['Indent Less']='Indent Less';

      I18NJSText['Strike']='Strike';

      I18NJSText['Remove Formatting']='Remove Formatting';

      I18NJSText['Horizontal Rule']='Horizontal Rule';

      I18NJSText['Image']='Image';

      I18NJSText['Text Color']='Text Color';

      I18NJSText['Background Color']='Background Color';

      I18NJSText['Source']='Source';

      I18NJSText['Code']='Code';

      I18NJSText['Quote']='Quote';

      I18NJSText['Paragraph']='Paragraph';
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




<h3 class="page-title">人员工时负荷统计</h3>

<div><div class="panel panel-info filter-preview">
<div class="panel-heading"><div id="filtersMenuBox">
 <div id="filtersMenu" class="yuimenubar yuimenubarnav" style="display: none">
   <div class="bd">
     <ul>

       <li class="yuimenubaritem "><span class="yuimenubaritemlevel0">筛选条件</span>
 <div id="filtersMenu1451069268" class="yuimenu">
   <div class="bd">
     <ul>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1">优先次序</span>
 <div id="filtersMenu1616534955" class="yuimenu">
   <div class="bd">
     <ul>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksPriorityFilters toggle" name="TasksPriority4" id="TasksPriority4" value="4"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksPriority]=4">Unknown</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksPriorityFilters toggle" name="TasksPriority3" id="TasksPriority3" value="3"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksPriority]=3">Low</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksPriorityFilters toggle" name="TasksPriority5" id="TasksPriority5" value="5"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksPriority]=5">中</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksPriorityFilters toggle" name="TasksPriority2" id="TasksPriority2" value="2"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksPriority]=2">High</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksPriorityFilters toggle" name="TasksPriority1" id="TasksPriority1" value="1"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksPriority]=1">Urgent</a></td></table></span></li>
</ul><ul>
       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><form id="filter_by_TasksPriority_form" action="/qdPM_9/index.php/tasks" method="post"><input type="hidden" name="filter_by[TasksPriority]" value="" id="filter_by_TasksPriority" /><table onClick="filter_by_selected('TasksPriority','')"><tr><td style="padding-right: 10px;"><img src="/qdPM_9/images/icons/arrow_up.png" /></td><td>按选择项筛选</td></table></form></span></li>

     </ul>
   </div>
 </div></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1">项目</span>
 <div id="filtersMenu752266097" class="yuimenu">
   <div class="bd">
     <ul>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=1,3,4"><b>开展</b></a></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksStatusFilters toggle" name="TasksStatus1" id="TasksStatus1" value="1"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=1">已完成</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksStatusFilters toggle" name="TasksStatus3" id="TasksStatus3" value="3"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=3">Waiting Assessment</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksStatusFilters toggle" name="TasksStatus4" id="TasksStatus4" value="4"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=4">Re-opened</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=5"><b>完成</b></a></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksStatusFilters toggle" name="TasksStatus5" id="TasksStatus5" value="5"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=5">Done?</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=7,6,2,8"><b>关闭</b></a></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksStatusFilters toggle" name="TasksStatus7" id="TasksStatus7" value="7"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=7">Completed</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksStatusFilters toggle" name="TasksStatus6" id="TasksStatus6" value="6"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=6">Paid</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksStatusFilters toggle" name="TasksStatus2" id="TasksStatus2" value="2"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=2">Suspended</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksStatusFilters toggle" name="TasksStatus8" id="TasksStatus8" value="8"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=8">Lost</a></td></table></span></li>
</ul><ul>
       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><form id="filter_by_TasksStatus_form" action="/qdPM_9/index.php/tasks" method="post"><input type="hidden" name="filter_by[TasksStatus]" value="" id="filter_by_TasksStatus" /><table onClick="filter_by_selected('TasksStatus','')"><tr><td style="padding-right: 10px;"><img src="/qdPM_9/images/icons/arrow_up.png" /></td><td>按选择项筛选</td></table></form></span></li>

     </ul>
   </div>
 </div></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1">标签</span>
 <div id="filtersMenu1693702472" class="yuimenu">
   <div class="bd">
     <ul>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksLabelsFilters toggle" name="TasksLabels6" id="TasksLabels6" value="6"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksLabels]=6">Change</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksLabelsFilters toggle" name="TasksLabels7" id="TasksLabels7" value="7"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksLabels]=7">PlugIn</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksLabelsFilters toggle" name="TasksLabels1" id="TasksLabels1" value="1"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksLabels]=1">Task</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksLabelsFilters toggle" name="TasksLabels2" id="TasksLabels2" value="2"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksLabels]=2">Bug</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksLabelsFilters toggle" name="TasksLabels3" id="TasksLabels3" value="3"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksLabels]=3">Idea</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksLabelsFilters toggle" name="TasksLabels5" id="TasksLabels5" value="5"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksLabels]=5">Quote</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksLabelsFilters toggle" name="TasksLabels4" id="TasksLabels4" value="4"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksLabels]=4">Issue</a></td></table></span></li>
</ul><ul>
       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><form id="filter_by_TasksLabels_form" action="/qdPM_9/index.php/tasks" method="post"><input type="hidden" name="filter_by[TasksLabels]" value="" id="filter_by_TasksLabels" /><table onClick="filter_by_selected('TasksLabels','')"><tr><td style="padding-right: 10px;"><img src="/qdPM_9/images/icons/arrow_up.png" /></td><td>按选择项筛选</td></table></form></span></li>

     </ul>
   </div>
 </div></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1">类型</span>
 <div id="filtersMenu1902958349" class="yuimenu">
   <div class="bd">
     <ul>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksTypesFilters toggle" name="TasksTypes1" id="TasksTypes1" value="1"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksTypes]=1">Change Priority Rate (Hourly rate $25.00)</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksTypesFilters toggle" name="TasksTypes2" id="TasksTypes2" value="2"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksTypes]=2">Changes (Hourly rate $15.00)</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="TasksTypesFilters toggle" name="TasksTypes3" id="TasksTypes3" value="3"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksTypes]=3">Defects (Hourly rate $0.00)</a></td></table></span></li>
</ul><ul>
       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><form id="filter_by_TasksTypes_form" action="/qdPM_9/index.php/tasks" method="post"><input type="hidden" name="filter_by[TasksTypes]" value="" id="filter_by_TasksTypes" /><table onClick="filter_by_selected('TasksTypes','')"><tr><td style="padding-right: 10px;"><img src="/qdPM_9/images/icons/arrow_up.png" /></td><td>按选择项筛选</td></table></form></span></li>

     </ul>
   </div>
 </div></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1">分配给</span>
 <div id="filtersMenu1014918683" class="yuimenu">
   <div class="bd">
     <ul>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><a href="/qdPM_9/index.php/tasks?filter_by%5BTasksAssignedTo%5D=4">Admin</a></span>
 <div id="filtersMenu459206205" class="yuimenu">
   <div class="bd">
     <ul>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel3"><table><tr><td style="padding-right: 10px;"><input class="TasksAssignedToFilters toggle" name="TasksAssignedTo4" id="TasksAssignedTo4" value="4"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksAssignedTo]=4">admin</a></td></table></span></li>

     </ul>
   </div>
 </div></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><a href="/qdPM_9/index.php/tasks?filter_by%5BTasksAssignedTo%5D=5%2C3">Developer</a></span>
 <div id="filtersMenu1543762462" class="yuimenu">
   <div class="bd">
     <ul>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel3"><table><tr><td style="padding-right: 10px;"><input class="TasksAssignedToFilters toggle" name="TasksAssignedTo5" id="TasksAssignedTo5" value="5"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksAssignedTo]=5">lht</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel3"><table><tr><td style="padding-right: 10px;"><input class="TasksAssignedToFilters toggle" name="TasksAssignedTo3" id="TasksAssignedTo3" value="3"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksAssignedTo]=3">test</a></td></table></span></li>

     </ul>
   </div>
 </div></li>
</ul><ul>
       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><form id="filter_by_TasksAssignedTo_form" action="/qdPM_9/index.php/tasks" method="post"><input type="hidden" name="filter_by[TasksAssignedTo]" value="" id="filter_by_TasksAssignedTo" /><table onClick="filter_by_selected('TasksAssignedTo','')"><tr><td style="padding-right: 10px;"><img src="/qdPM_9/images/icons/arrow_up.png" /></td><td>按选择项筛选</td></table></form></span></li>

     </ul>
   </div>
 </div></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1">创建人</span>
 <div id="filtersMenu148933353" class="yuimenu">
   <div class="bd">
     <ul>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><a href="/qdPM_9/index.php/tasks?filter_by%5BTasksCreatedBy%5D=4">Admin</a></span>
 <div id="filtersMenu1330183355" class="yuimenu">
   <div class="bd">
     <ul>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel3"><table><tr><td style="padding-right: 10px;"><input class="TasksCreatedByFilters toggle" name="TasksCreatedBy4" id="TasksCreatedBy4" value="4"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksCreatedBy]=4">admin</a></td></table></span></li>

     </ul>
   </div>
 </div></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><a href="/qdPM_9/index.php/tasks?filter_by%5BTasksCreatedBy%5D=5%2C3">Developer</a></span>
 <div id="filtersMenu296039123" class="yuimenu">
   <div class="bd">
     <ul>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel3"><table><tr><td style="padding-right: 10px;"><input class="TasksCreatedByFilters toggle" name="TasksCreatedBy5" id="TasksCreatedBy5" value="5"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksCreatedBy]=5">lht</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel3"><table><tr><td style="padding-right: 10px;"><input class="TasksCreatedByFilters toggle" name="TasksCreatedBy3" id="TasksCreatedBy3" value="3"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksCreatedBy]=3">test</a></td></table></span></li>

     </ul>
   </div>
 </div></li>
</ul><ul>
       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><form id="filter_by_TasksCreatedBy_form" action="/qdPM_9/index.php/tasks" method="post"><input type="hidden" name="filter_by[TasksCreatedBy]" value="" id="filter_by_TasksCreatedBy" /><table onClick="filter_by_selected('TasksCreatedBy','')"><tr><td style="padding-right: 10px;"><img src="/qdPM_9/images/icons/arrow_up.png" /></td><td>按选择项筛选</td></table></form></span></li>

     </ul>
   </div>
 </div></li>
</ul><ul>
       <li class="yuimenuitem "><span class="yuimenubaritemlevel1">项目</span>
 <div id="filtersMenu1017768092" class="yuimenu">
   <div class="bd">
     <ul>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsFilters toggle" name="Projects9" id="Projects9" value="9"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[Projects]=9">abc公司项目</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsFilters toggle" name="Projects7" id="Projects7" value="7"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[Projects]=7">pro1</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsFilters toggle" name="Projects13" id="Projects13" value="13"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[Projects]=13">xxx公司项目</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsFilters toggle" name="Projects10" id="Projects10" value="10"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[Projects]=10">xyz集团项目</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsFilters toggle" name="Projects8" id="Projects8" value="8"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[Projects]=8">上海市xx集团项目</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsFilters toggle" name="Projects11" id="Projects11" value="11"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[Projects]=11">国内公司项目</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsFilters toggle" name="Projects12" id="Projects12" value="12"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[Projects]=12">国外公司项目</a></td></table></span></li>
</ul><ul>
       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><form id="filter_by_Projects_form" action="/qdPM_9/index.php/tasks" method="post"><input type="hidden" name="filter_by[Projects]" value="" id="filter_by_Projects" /><table onClick="filter_by_selected('Projects','')"><tr><td style="padding-right: 10px;"><img src="/qdPM_9/images/icons/arrow_up.png" /></td><td>按选择项筛选</td></table></form></span></li>

     </ul>
   </div>
 </div></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1">项目状态</span>
 <div id="filtersMenu192789654" class="yuimenu">
   <div class="bd">
     <ul>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsStatusFilters toggle" name="ProjectsStatus1" id="ProjectsStatus1" value="1"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[ProjectsStatus]=1">已完成</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsStatusFilters toggle" name="ProjectsStatus2" id="ProjectsStatus2" value="2"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[ProjectsStatus]=2">On Hold</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsStatusFilters toggle" name="ProjectsStatus3" id="ProjectsStatus3" value="3"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[ProjectsStatus]=3">Closed</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsStatusFilters toggle" name="ProjectsStatus4" id="ProjectsStatus4" value="4"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[ProjectsStatus]=4">Cancelled</a></td></table></span></li>
</ul><ul>
       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><form id="filter_by_ProjectsStatus_form" action="/qdPM_9/index.php/tasks" method="post"><input type="hidden" name="filter_by[ProjectsStatus]" value="" id="filter_by_ProjectsStatus" /><table onClick="filter_by_selected('ProjectsStatus','')"><tr><td style="padding-right: 10px;"><img src="/qdPM_9/images/icons/arrow_up.png" /></td><td>按选择项筛选</td></table></form></span></li>

     </ul>
   </div>
 </div></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1">项目类型</span>
 <div id="filtersMenu1683842653" class="yuimenu">
   <div class="bd">
     <ul>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsTypesFilters toggle" name="ProjectsTypes3" id="ProjectsTypes3" value="3"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[ProjectsTypes]=3">Support</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsTypesFilters toggle" name="ProjectsTypes2" id="ProjectsTypes2" value="2"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[ProjectsTypes]=2">New Site</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><table><tr><td style="padding-right: 10px;"><input class="ProjectsTypesFilters toggle" name="ProjectsTypes4" id="ProjectsTypes4" value="4"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[ProjectsTypes]=4">Internal</a></td></table></span></li>
</ul><ul>
       <li class="yuimenuitem "><span class="yuimenubaritemlevel2"><form id="filter_by_ProjectsTypes_form" action="/qdPM_9/index.php/tasks" method="post"><input type="hidden" name="filter_by[ProjectsTypes]" value="" id="filter_by_ProjectsTypes" /><table onClick="filter_by_selected('ProjectsTypes','')"><tr><td style="padding-right: 10px;"><img src="/qdPM_9/images/icons/arrow_up.png" /></td><td>按选择项筛选</td></table></form></span></li>

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
                                         scrollincrement:10,
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
     <td valign="top" style="padding-top: 2px;"><a title="移除筛选条件" class="btn btn-default btn-xs" href="/qdPM_9/index.php/tasks?remove_filter=TasksStatus"><i class="fa fa-times"></i></a></td>
     <td valign="top"><div id="filtersPreviewMenuBox">

 <div id="filtersMenuTasksStatus" class="yuimenubar yuimenubarnav" style="display: none">
   <div class="bd">
     <ul>

       <li class="yuimenubaritem "><span class="yuimenubaritemlevel0">项目</span>
 <div id="filtersMenuTasksStatus974594467" class="yuimenu">
   <div class="bd">
     <ul>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1"><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=1,3,4"><b>开展</b></a></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1"><table><tr><td style="padding-right: 10px;"><input class="TasksStatusFiltersPreview toggle" name="TasksStatus1" id="TasksStatus1" value="1" checked="checked" type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=1">已完成</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1"><table><tr><td style="padding-right: 10px;"><input class="TasksStatusFiltersPreview toggle" name="TasksStatus3" id="TasksStatus3" value="3"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=3">Waiting Assessment</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1"><table><tr><td style="padding-right: 10px;"><input class="TasksStatusFiltersPreview toggle" name="TasksStatus4" id="TasksStatus4" value="4"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=4">Re-opened</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1"><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=5"><b>完成</b></a></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1"><table><tr><td style="padding-right: 10px;"><input class="TasksStatusFiltersPreview toggle" name="TasksStatus5" id="TasksStatus5" value="5"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=5">Done?</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1"><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=7,6,2,8"><b>关闭</b></a></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1"><table><tr><td style="padding-right: 10px;"><input class="TasksStatusFiltersPreview toggle" name="TasksStatus7" id="TasksStatus7" value="7"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=7">Completed</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1"><table><tr><td style="padding-right: 10px;"><input class="TasksStatusFiltersPreview toggle" name="TasksStatus6" id="TasksStatus6" value="6"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=6">Paid</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1"><table><tr><td style="padding-right: 10px;"><input class="TasksStatusFiltersPreview toggle" name="TasksStatus2" id="TasksStatus2" value="2"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=2">Suspended</a></td></table></span></li>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1"><table><tr><td style="padding-right: 10px;"><input class="TasksStatusFiltersPreview toggle" name="TasksStatus8" id="TasksStatus8" value="8"  type="checkbox"></td><td><a href="/qdPM_9/index.php/tasks?filter_by[TasksStatus]=8">Lost</a></td></table></span></li>
</ul><ul>
       <li class="yuimenuitem "><span class="yuimenubaritemlevel1"><form id="filter_by_TasksStatus_form" action="/qdPM_9/index.php/tasks" method="post"><input type="hidden" name="filter_by[TasksStatus]" value="" id="filter_by_TasksStatus" /><table onClick="filter_by_selected('TasksStatus','Preview')"><tr><td style="padding-right: 10px;"><img src="/qdPM_9/images/icons/arrow_up.png" /></td><td>按选择项筛选</td></table></form></span></li>

     </ul>
   </div>
 </div></li>

     </ul>
   </div>
 </div></div></td>
     <td  class="selectedFilterItems">已完成</td>
   </tr>
 </table>
</div>

<script type="text/javascript">
   YAHOO.util.Event.onContentReady("filtersMenuTasksStatus", function () {
       var oMenuBar = new YAHOO.widget.MenuBar("filtersMenuTasksStatus", {autosubmenudisplay: true,hidedelay: 350,submenuhidedelay: 0,scrollincrement:10,showdelay: 150,keepopen: true,lazyload: true });
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
</td>

<td align="right">
<table>
 <tr>
   <td>

 <div id="search_menu" class="yuimenubar yuimenubarnav" style="display: none">
   <div class="bd">
     <ul>

       <li class="yuimenubaritem "><span class="yuimenubaritemlevel0"><i class="fa fa-search"></i> 搜素</span>
 <div id="search_menu755524105" class="yuimenu">
   <div class="bd">
     <ul>

       <li class="yuimenuitem "><span class="yuimenubaritemlevel1">
<form action="/qdPM_9/index.php/tasks" method="post">
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
 <div id="order_by_menu775974705" class="yuimenu">
   <div class="bd">
     <ul>

         <li class="yuimenuitem"><a  class="yuimenuitemlabel" href="/qdPM_9/index.php/tasks?set_order=date_added"  >添加的日期</a></li>

         <li class="yuimenuitem"><a  class="yuimenuitemlabel" href="/qdPM_9/index.php/tasks?set_order=name"  >名称</a></li>

         <li class="yuimenuitem"><a  class="yuimenuitemlabel" href="/qdPM_9/index.php/tasks?set_order=priority"  >优先次序</a></li>

         <li class="yuimenuitem"><a  class="yuimenuitemlabel" href="/qdPM_9/index.php/tasks?set_order=status"  ><strong>项目</strong></a></li>

         <li class="yuimenuitem"><a  class="yuimenuitemlabel" href="/qdPM_9/index.php/tasks?set_order=type"  >类型</a></li>

         <li class="yuimenuitem"><a  class="yuimenuitemlabel" href="/qdPM_9/index.php/tasks?set_order=label"  >标签</a></li>

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


<div  >
  <table class="table table-striped table-bordered table-hover" id="comments-table">
    <thead>
      <tr>
        <th >人员</th>
        <th>开始时间</th>
        <th>结束时间</th>
        <th>状态</th>
        <th>工时数</th>
        <th>工作负荷</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>
             人员1  </td>
        <td style="white-space:normal">
          2018-8-1
        </td>
        <td>2018-8-15 </td>
        <td>正常 </td>
        <td>100 </td>
        <td>100%</td>

      </tr>

      <tr>
        <td>
             人员2  </td>
        <td style="white-space:normal">
          2018-8-1
        </td>
        <td>2018-8-15 </td>
        <td>忙碌 </td>
        <td>120 </td>
        <td style="Background:#ff00000">120%</td>

      </tr>

      <tr>  <td>
             人员3 </td>
        <td style="white-space:normal">
          2018-8-1
        </td>
        <td>2018-8-15 </td>
        <td>空闲 </td>
        <td>60 </td>
        <td>60%</td>

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

<script type="text/javascript">
$(document).ready(function(){

appHandleUniformCheckboxes()

var columnSort = new Array;
$(this).find('#itmes_listing_4742872 thead tr th').each(function(){


 sType = 'html';

 attr = $(this).attr('data-bsType');
 if (typeof attr !== typeof undefined && attr !== false) {
   sType = attr;
 }

 if($(this).attr('data-bSortable') == 'false') {
     columnSort.push({ "bSortable": false});
 } else {
     columnSort.push({ "bSortable": true,"sType":sType });
 }
});


jQuery('#itmes_listing_4742872 tbody tr .checkboxes').change(function(){
  if($(this).attr('checked'))
  {
    selected_items.push($(this).attr('value'));
  }
  else
  {
    selected_items = array_remove(selected_items,$(this).attr('value'))
  }


  $(this).parents('tr').toggleClass("active");
});

var table = $('#itmes_listing_4742872').dataTable({
"iDisplayLength": 15,
"sPaginationType": "bootstrap",
"bSort": true,
"bFilter":false,
"bLengthChange":false,
"aoColumns": columnSort,
"fnInitComplete": function (oSettings, json) { $(this).css('display','') },
"oLanguage": {
                 "oPaginate": {
                     "sPrevious": "上一页",
                     "sNext": "下一页"
                 },
                 "sInfo": "正在显示 _START_ - _END_, 总数: _TOTAL_ "
             }
});

jQuery('#itmes_listing_4742872 .group-checkable').change(function () {

         var checked = jQuery(this).is(":checked");
         selected_items.length = 0;

         jQuery( "input", table.fnGetNodes() ).each(function(){
              if(checked)
              {
                 selected_items.push($(this).attr('value'));

                 $(this).attr("checked", true);
                 $(this).parents('span').addClass("checked");
                 $(this).parents('tr').addClass("active");
              }
              else
              {
                 $(this).attr("checked", false);
                 $(this).parents('span').removeClass("checked");
                 $(this).parents('tr').removeClass("active");
              }
         })
});


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
