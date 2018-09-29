<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>        <@spring.message "system.title"/> |<@spring.message "menu.desktop"/>
</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="${rc.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="${rc.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="${rc.contextPath}/assets/plugins/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${rc.contextPath}/assets/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
    <link rel="stylesheet" href="${rc.contextPath}/assets/dist/css/skins/skin-blue.min.css">
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/datatables/jquery.dataTables.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/select2/select2_4.0.6.min.css" />

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/app.css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

        <!-- BEGIN HEADER -->
        <#include "/common/config/top.ftl" />

        <@top 1/>

        <!-- END HEADER -->
        <!-- Left side column. contains the logo and sidebar -->
        <#include "/common/config/left.ftl" />

        <@menu '1-3' />

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
        项目管理 <small>项目计划安排</small>
      </h1>

            </section>

            <!-- Main content -->
            <section class="content container-fluid">

              <div class="nav-tabs-custom">
              <#include "/common/config/plan.ftl" />

              <@plan 4/>
              <div class="tab-content">
<table style="width:100%"><tr><td>
              <form class="form-group" role="form" method="GET">
                <input type="hidden" name="pagelength" value="${pagelength?default(10)}" />
                <input type="hidden" name="pagecurrent" value="${pagecurrent?default(1)}" />

                <div class="input-group col-md-4">
                    <input type="text" name="search_keyword" value="${search_keyword}" class="form-control">
                    <span class="input-group-btn">
            <button class="btn btn-default" type="submit" id="searchBtn"><i class="fa fa-search"></i>搜索</button>
            </span>
                </div>

              </form>
</td><td>
              <ul class="nav navbar-nav pull-right">
                <!-- BEGIN USER LOGIN DROPDOWN -->
                <li class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
                    <span>列导航
                          </span>
                    <i class="fa fa-angle-down"></i>
                  </a>
                  <ul class="dropdown-menu">
                    <li> <a href="#jxsjb">机械设计</a>
                    </li>
                    <li><a href="#dqsjb">电气设计</a>
                    </li>
                    <li><a href="#caigou">采购</a>
                    </li>
                    <li><a href="#youqi">油漆</a>
                    </li>
                    <li><a href="#zhijian">质检</a>
                    </li>
                    <li><a href="#zhulu">筑炉</a>
                    </li>
                    <li><a href="#ryjhap">人员计划安排</a>
                    </li>
                    <li><a href="#scsjjd">生产时间节点</a>
                    </li>
                    <li><a href="#jhqnkyrs">计划期内可用人数</a>
                    </li>
                    <li><a href="#dqwczt">当前完成状态</a>
                    </li>
                  </ul>
                </li>
                <!-- END USER LOGIN DROPDOWN -->
              </ul>
</td></tr></table>

<div style="overflow:scroll;">
              <table class="table table-striped table-bordered" style="width:100%;" id="items_list"   >
                <thead>
                  <tr>
                    <th rowspan="3">序号</th>
                    <th rowspan="3">项目号</th>
                    <th rowspan="3">项目号</th>
                    <th rowspan="3">设备型号</th>
                    <th colspan="8" style="text-align:center;"><a id="xmxx"class="collect" title="项目信息" onclick="toggle_clv(this,[5,6,7,8,9,10,11])" href="#">项目信息</a></th>
                    <th colspan="4" style="text-align:center;"><a id="jxsjb" class="collect" title="机械设计部" onclick="toggle_clv(this,[13,14,15])" href="#"> 机械设计部</a></th>
                    <th colspan="4" style="text-align:center;"><a id="dqsjb" class="collect" title="电气设计部" onclick="toggle_clv(this,[17,18,19])" href="#"> 电气设计部</a></th>
                    <th colspan="3" style="text-align:center;"><a id="caigou" class="collect" title="采购" onclick="toggle_clv(this,[21,22])" href="#"> 采购</a></th>
                    <th colspan="2" style="text-align:center;"><a id="youqi" class="collect" title="油漆" onclick="toggle_clv(this,[24,25,26,27,28])" href="#"> 油漆</th>
                    <th colspan="2" id="zhijian">质检</th>
                    <th colspan="2" id="zhulu">筑炉</th>
                    <th rowspan="3" style="min-width:60px;text-align:center;">预留<br/>车间<br/>冷调<br/>天数</th>
                    <th colspan="7" style="text-align:center;"><a id="ryjhap" class="collect" title="人员计划安排" onclick="toggle_clv(this,[31,32,33,34,35,36])" href="#"> 人员计划安排</th>
                    <th colspan="5" style="text-align:center;"><a id="scsjjd" class="collect" title="生产时间节点" onclick="toggle_clv(this,[38,39,40,41])" href="#"> 生产时间节点</th>
                    <th colspan="3" style="text-align:center;"><a id="jhqnkyrs" class="collect" title="计划期内可用人数" onclick="toggle_clv(this,[43,44])" href="#"> 计划期内可用人数</th>
                    <th colspan="5" style="text-align:center;"><a id="dqwczt" class="collect" title="当前完成状态" onclick="toggle_clv(this,[46,47,48,49])" href="#"> 当前完成状态</th>
                    <th rowspan="3">操作</th>
                  </tr>
                  <tr>
                    <th rowspan="2" style="min-width:15px;text-align:center;">项目信息</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">订货通<br/>报日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">合同交<br/>货日期</th>
                    <th rowspan="2" style="min-width:50px;text-align:center;">距交货<br/>期天数</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">调整后<br/>交货日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">实际发<br/>货日期</th>
                    <th rowspan="2" style="min-width:50px;text-align:center;">进度<br/>状态</th>
                    <th rowspan="2" style="min-width:60px;text-align:center;">当前<br/>瓶颈</th>
                    <th rowspan="2" style="min-width:15px;text-align:center;">机械设计</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">计划<br/>完成<br/>日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">实际<br/>完成<br/>日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">当前<br/>问题</th>
                    <th rowspan="2" style="min-width:15px;text-align:center;">电气设计</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">计划<br/>完成<br/>日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">实际<br/>完成<br/>日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">当前<br/>问题</th>
                    <th rowspan="2" style="min-width:15px;text-align:center;">采购</th>
                    <th rowspan="2">
                      <table>
                        <tbody>
                          <tr>
                            <td style="min-width:60px;text-align:center;">主要<br/>零件<br/>名称</td>
                            <td style="min-width:60px;text-align:center;">计划<br/>到货<br/>日期</td>
                            <td style="min-width:60px;text-align:center;">实际<br/>到货<br/>日期</td>
                          </tr>
                        </tbody>
                      </table>
                    </th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">当前<br/>问题</th>
                    <th rowspan="2" style="min-width:15px;text-align:center;">油漆<br/>...</th>

                    <th rowspan="2" style="min-width:70px;text-align:center;">实际<br/>完成<br/>日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">计划<br/>完成<br/>日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">实际<br/>完成<br/>日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">计划<br/>完成<br/>日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">实际<br/>完成<br/>日期</th>
                    <th rowspan="2" style="min-width:15px;text-align:center;">人员计划</th>
                    <th colspan="3">机械</th>
                    <th colspan="3">电气</th>
                    <th rowspan="2" style="min-width:15px;text-align:center;">生产时间</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">装配计划<br/>开始日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">装配实际<br/>开始日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">装配计划<br/>完成日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">装配实际<br/>完成日期</th>
                    <th rowspan="2" style="min-width:15px;text-align:center;">可用人数</th>
                    <th rowspan="2" style="min-width:60px;text-align:center;">机械<br/>人数</th>
                    <th rowspan="2" style="min-width:60px;text-align:center;">电气<br/>人数</th>
                    <th rowspan="2" style="min-width:15px;text-align:center;">当前完成</th>
                    <th colspan="2">机械</th>
                    <th colspan="2">电气</th>


                  </tr>
                  <tr>
                    <th>人数</th>
                    <th style="min-width:40px;text-align:center;">每天<br/>小时</th>
                    <th style="min-width:40px;text-align:center;">每周<br/>天数</th>
                    <th>人数</th>
                    <th style="min-width:40px;text-align:center;">每天<br/>小时</th>
                    <th style="min-width:40px;text-align:center;">每周<br/>天数</th>
                    <th style="min-width:60px;text-align:center;">已完成<br/>工时</th>
                    <th style="min-width:50px;text-align:center;">剩余<br/>工时</th>
                    <th style="min-width:60px;text-align:center;">已完成<br/>工时</th>
                    <th style="min-width:50px;text-align:center;">剩余<br/>工时</th>
                  </tr>
                </thead>

                <tbody>


                      </tbody>
              </table>
</div>
              <#include "/common/config/pager.ftl" />
              <@pageShow pages, total ,pageNum />
              </div>
            </div>

            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        <#include "/common/config/footer.ftl" />

        <@footer />

        <!-- Control Sidebar -->

        <!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
    </div>

    <div id="modal_plan" class="modal fade col-md-6 col-md-offset-3" tabindex="-1">
        <div class="modal-content">

            <div class="modal-header">
                <h5 class="modal-title">计划安排</h5>
            </div>


            <div class="modal-body">
                <form id="form_plan" class="form-horizontal" role="form" action="" method="POST">
                  <input type="hidden"  value="" class="form-control" name="id" id="planid" />
                  <input type="hidden" value="" class="form-control" name="subprojectId" id="sub_project_id" />

                    <div class="form-body">
                      <div class="form-group">
                          <label class="col-md-4 control-label">子项目号</label>
                          <div class="col-md-6">
                                <input  value="" class="form-control" id="projectCode" readonly />
                          </div>
                      </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">人员安排</label>
                            <div class="col-md-6">

                                    <select style="width:100%" class="input-medium" name="members" id="employee_list">
                                        <option value="" selected="selected"></option>
                                    </select>


                            </div>
    <!-- <button  onClick="openModalBox('${rc.contextPath}/devices/modal_new'); return false;">新建</button> -->

                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label"><span class="required">*</span>计划完成日期</label>
                            <div class="col-md-6">
                                <div class="input-group input-medium date datepicker">
                                    <input type="text" id="planEnd" name="planEnd" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                            </div>
                        </div>

                        <div id="form_error_handler" style="display:none"></div>

                    </div>

                </form>



            </div>

            <div class="modal-footer">
                <input type="hidden" id="deviceOperation" value="">
                <button type="button" class="btn btn-primary" id="okbtn" onclick="save_plan()">确定</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>


        </div>
    </div>

    <!-- ./wrapper -->



    <!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 3 -->
<script src="${rc.contextPath}/assets/plugins/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${rc.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${rc.contextPath}/assets/dist/js/adminlte.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/datatables/jquery.dataTables.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/bootstrap-datepicker/js/locales/bootstrap-datepicker.zh-CN.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/select2/select2_4.0.6.min.js"></script>

<script type="text/javascript">
var table;

$('a.collect').click(function(){
  console.log($(this))
})

function toggle_clv(target,cols){
  //cols = [3,4,5]
  console.log(cols)
  if($(target).hasClass('collapsed')){
    $(target).removeClass('collapsed')
    $(target).html(' ' + $(target).attr('title'))
  }else{
    $(target).addClass('collapsed')
    $(target).html(' ')
  }
  table.columns(cols).visible(!$(target).hasClass('collapsed'));
  table.columns(cols[0]-1).visible($(target).hasClass('collapsed'));

}
  $(document).ready(function(){
    var groupColumn = 1;
    $("#columnsToggle").select2({
      "multiple":true
        });
    var dataSet = JSON.parse('${plans}');
    var columns = [
      {data:null},
      {data:"project.projectCode"},
      {data:"subproject.subProjectId"},
      {data:"device.model"},
      {data:null},
      {data:"project.orderDate"},
      {data:"project.deliveryDate"},
      {data:null},
      {data:null},
      {data:null},
      {data:null},
      {data:null},
      {data:null},
      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>0 ? data[0].planEnd : "";
        }},
      {data:"plans",
        render:function(data, type, row, meta) {
          //acturalEnd
          return data.length>0 ? data[0].acturalEnd : "";
        }},
      {data:"plans",
          render:function(data, type, row, meta) {
            //planEnd
            return data.length>0 ? data[0].problems : "";
          }},
      {data:null},
      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>1 ? data[1].planEnd : "";
        }},

      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>1 ? data[1].acturalEnd : "";
        }},
      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>1 ? data[1].problems : "";
        }},
        {data:null},
      {data:"planAssets",
          render:function(data, type, row, meta) {
              if(data.length>0){
                var subtable='<table style="width:100%"><tbody>'
                for(i=0;i<data.length;i++){
                  subtable += '<tr><td>' + data[i].assetName
                              +'</td><td>'+ data[i].planFinishTime
                              +'</td><td>'+ data[i].acturalFinishTime
                              +'</td></tr>'
                }
                subtable += '</tbody></table>'
                return subtable;
              }else{
                return "";
              }

          }
        },
      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>2 ? data[2].problems : "";
        }},
      {data:null},
      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>3 ? data[3].acturalEnd : "";
        }},
      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>4 ? data[4].planEnd : "";
        }},
      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>4 ? data[4].acturalEnd : "";
        }},
      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>5 ? data[5].planEnd : "";
        }},
      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>5 ? data[5].acturalEnd : "";
        }},
      {data:"subproject.workshopCool"},
      {data:null},
      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>6 ? data[6].workNumber : "";
        }},
      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>6 ? data[6].dayhours : "";
        }},
      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>6 ? data[6].weekDays : "";
        }},
      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>7 ? data[7].weekDays : "";
        }},
      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>7 ? data[7].dayhours : "";
        }},
      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>7 ? data[7].weekDays : "";
        }},
        {data:null},
      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>8 ? data[8].planBegin : "";
        }},
      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>8 ? data[8].acturalBegin : "";
        }},
      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>8 ? data[8].planEnd : "";
        }},
      {data:"plans",
        render:function(data, type, row, meta) {
          //planEnd
          return data.length>8 ? data[8].acturalEnd : "";
        }},
        {data:null},
      {data:"subproject.mcPeopleCount"},
      {data:"subproject.elcPeopleCount"},
      {data:null},
      {data:null},
      {data:null},
      {data:null},
      {data:null},
      {data:null}
    ];

    table = $('#items_list').DataTable({
      "iDisplayLength": 10,
      paging:false,
      info:false,
      "bSort": false,
      "bFilter":false,
      "bLengthChange":false,
      data: dataSet,
      columns:columns,

      "columnDefs": [

      {"render": function ( data, type, row ) {

          return '<a href="#" onclick="modify_plan(this)" title="调整计划"> <i class="fa fa-edit"></i> </a>' ;
      },
      "targets": -1},
      {"visible":false,
      "targets": [1,4,12,16,20,23,30,37,42,45]}
    ],
    "drawCallback": function ( settings ) {
    var api = this.api();
    var rows = api.rows( {page:'current'} ).nodes();
    var last=null;
    var index = 1;
    var subindex = 1;
    //分组
    api.column(groupColumn, {page:'current'} ).data().each( function ( group, i ) {
        if ( last !== group ) {
            $(rows).eq( i ).before(
                '<tr class="group"><td>'+index+'</td><td colspan="50">'+group+'</td></tr>'
            );
            index ++;
            subindex=1
            last = group;
        }
        $(rows).eq(i).find("td","")[0].innerHTML = (index-1) + "." + (subindex + 100).toString().substring(1);
        subindex++;

    } );

}

  });

});

function modify_plan(){
  window.location="${rc.contextPath}/projects/whs/manufacture_plandetail"
}


</script>

</html>
