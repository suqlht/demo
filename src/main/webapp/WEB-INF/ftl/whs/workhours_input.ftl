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

        <@menu '2-1' />

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
        工时管理 <small>填报工时</small>
      </h1>

            </section>

            <!-- Main content -->
            <section class="content container-fluid">

              <div class="nav-tabs-custom">
              <div class="tab-content">

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


              <table class="table table-striped table-bordered table-hover projects-table" id="items_list"   >
                <thead>
                  <tr>
                    <th rowspan="2">                                    <input class="group-checkable" data-set="#items_list .checkboxes" type="checkbox">
        </th>
                    <th rowspan="2">序号</th>
                    <th rowspan="2">组员姓名</th>
                    <th rowspan="2">起始日期</th>
                    <th rowspan="2">终止日期</th>
                    <th rowspan="2">项目号</th>
                    <th rowspan="2">设备名称</th>
                    <th colspan="8" class="text-center">已完成工时</th>
                  </tr>
                  <tr>
                      <th class="text-center">星期一</th>
                      <th class="text-center">星期二</th>
                      <th class="text-center">星期三</th>
                      <th class="text-center">星期四</th>
                      <th class="text-center">星期五</th>
                      <th class="text-center">星期六</th>
                      <th class="text-center">星期日</th>
                      <th class="text-center" style="min-width:30px">合计</th>

                  </tr>
                </thead>
                <tbody>
                      </tbody>
              </table>


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



    <!-- END JAVASCRIPTS -->
    <div id="time_selection_template" style="display:block"><select class="times" name="" onchange="changeTimes(this)">
      <option value="-1">出差</option>
      <option value="0">0</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
      </select></div>
      <div id="project_selection_template" style="display:none">
        <select class="project" name="" onchange="changeProject(this)">
          <option value="">项目号</option>
          <option value="HM001h6" selected>HM001h6-01</option>
          <option value="HM001h7">HM001h6-02</option>

        </select>
      </div>
        <div id="device_selection_template" style="display:none">
          <select class="device" name="">
            <option value="">设备</option>
            <option value="HM001h6" selected>HDHQ-3/3</option>
            <option value="HM001h7">HM001h6-02</option>
          </select></div>
          <div id="employee_selection_template" style="display:none">
            <select class="" name="">
              <option value="">选择组员</option>
              <option value="1001" selected>张三（1001）</option>
              <option value="1001">李四（1002）</option>
            </select>
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

function change_row_selected(this_tr) {
    console.log($(this_tr));
    if ($(this_tr).attr('checked')) {
        selected_items.push($(this_tr).attr('value'));
        $(this_tr).parents('tr').addClass("selected");

    } else {
        $(this_tr).parents('tr').removeClass("selected");
        selected_items = array_remove(selected_items, $(this_tr).attr('value'));
    }


}
function renderWorkTimes(data, type, row, meta){
  $('#time_selection_template').find('select').find('option').attr("selected",false);

  $('#time_selection_template').find('select').find('option[value='+data+']').attr("selected",true);
  return $('#time_selection_template').html();
}
function renderEmployeeSelection(data, type, row, meta){
  $('#employee_selection_template').find('select').val(data);
  return $('#employee_selection_template').html();
}
function renderProjectList(data, type, row, meta){
  $('#project_selection_template').find('select').val(data);
  return $('#project_selection_template').html();
}
function renderDeviceList(data, type, row, meta){
  $('#device_selection_template').find('select').val(data);
  return $('#device_selection_template').html();
}
function renderTotalTimes(data, type, row, meta) {
    var cols = ['mon','tue','wed','thu','fri','sat','sun']
    var total=0;
    for(var i=0;i<cols.length;i++){
      if(parseInt(row[cols[i]])>=0){
        total += parseInt(row[cols[i]]);
      }
    }
    return total;
}
var table;
var dataSet = [
  {"employeeId":"1001","beginDate":"2018/6/4","endDate":"2018/6/10","projectCode":"HM001h6","device_model":"HDQ 3/3",
    "mon":"8","tue":"8","wed":"8","thu":"8","fri":"8","sat":"0","sun":"0"
  }
]
  $(document).ready(function(){

    $("#device_type").select2({
    });
    $("#work_groups").select2({
    });
    $("#group_members").select2({
    });

   table = $('#items_list').DataTable({
      paging:false,
      data:dataSet,
      "iDisplayLength": 10,
      paging:false,
      info:false,
      "bSort": false,
      "bFilter":false,
      "bLengthChange":false,
      "fnInitComplete": function (oSettings, json) { $(this).css('display','') },
      columns:[
        {data:null,
        "render":function(){
          return '<input class="checkboxes" type="checkbox" onchange="change_row_selected(this)">';
        }

        },
        {data:null},
        {data:"employeeId",
        "render":renderEmployeeSelection},
        {data:"beginDate"},
        {data:"endDate"},
        {data:"projectCode",
        "render":renderProjectList},
        {data:"device_model",
        "render":renderDeviceList
      },
        {data:"mon",
        "render":renderWorkTimes},
        {data:"tue",
        "render":renderWorkTimes},
        {data:"wed",
        "render":renderWorkTimes},
        {data:"thu",
        "render":renderWorkTimes},
        {data:"fri",
        "render":renderWorkTimes},
        {data:"sat",
        "render":renderWorkTimes},
        {data:"sun",
        "render":renderWorkTimes},
        {data:null,
        "render":renderTotalTimes}
      ],
      "columnDefs": [ {
          "searchable": false,
          "orderable": false,
          "targets": 0
      } ]

  });
  renderIndexes();
  jQuery('#items_list tbody tr .checkboxes').change(function() {
      if ($(this).attr('checked')) {
          selected_items.push($(this).attr('value'));
      } else {
          selected_items = array_remove(selected_items, $(this).attr('value'))
      }


      $(this).parents('tr').toggleClass("selected");
  });
  jQuery('#items_list .group-checkable').change(function() {

      var checked = jQuery(this).is(":checked");
      selected_items.length = 0;

      jQuery(".checkboxes").each(function() {
          if (checked) {
              selected_items.push($(this).attr('value'));

              $(this).attr("checked", true);
              $(this).parents('span').addClass("checked");
              $(this).parents('tr').addClass("selected");
          } else {
              $(this).attr("checked", false);
              $(this).parents('span').removeClass("checked");
              $(this).parents('tr').removeClass("selected");
          }
      })
  });


$('#btn_delete_row').click( function () {
  table.rows('.selected').remove().draw( false );
  renderIndexes();
} );


  $('#btn_add_new_row').click(function(e){
    var new_row = {"employeeId":"1001","beginDate":"2018/6/4","endDate":"2018/6/10","projectCode":"HM001h6","device_model":"HDQ 3/3",
      "mon":"8","tue":"8","wed":"8","thu":"8","fri":"8","sat":"0","sun":"0"
    }
    table.row.add(new_row).draw(false);
    renderIndexes();
    appHandleUniformCheckboxes();

  });

  function renderIndexes(){

    table.column(1,"").nodes().each( function (cell, i) {
        cell.innerHTML = i+1;
    } );
    table.draw( false );;
  }

});


function  changeProject(target){
    index = $(target).get(0).selectedIndex;
    console.log(index)

    $(target).parents('tr').find('select.device').selectedIndex = index;
    console.log($(target).parents('tr').find('select.device'));
  }

  function  changeTimes(target){

      renderTotalTimes($(target).parents('tr'));

    }


</script>

</html>
