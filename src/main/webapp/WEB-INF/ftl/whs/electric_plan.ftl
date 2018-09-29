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

              <@plan 2/>
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


              <table class="table table-striped table-bordered table-hover projects-table" id="itmes_listing_4466081"   >
                <thead>
                  <tr>
                    <th>操作</th>
                    <th>序号</th>
                    <th>项目号</th>
                    <th>项目号</th>
                    <th>设备型号</th>
                    <th>数量</th>
                    <th>订货通<br/>报日期</th>
                    <th>合同交<br/>货日期</th>
                    <th>机械计划<br/>完成日期</th>
                    <th>机械实际<br/>完成日期</th>
                    <th>人员安排</th>
                    <th>电气计划<br/>完成日期</th>
                    <th>电气实际<br/>完成日期</th>
                    <th>备注</th>
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

var dataTable;
var dataSet = JSON.parse('${plans}');

  $(document).ready(function(){

    var groupColumn = 2;
    var columns = [
      {data:null,
      render:function(){
        return '<a href="#" onclick="open_modal(this)" title="调整计划"> <i class="fa fa-edit"></i> </a>'
      }
      },
      {data:null},
      {data:"project.projectCode"},
      {data:"subproject.subProjectId"},
      {data:"device.model"},
      {data:"subproject.deviceQuantity"},
      {data:"project.orderDate"},
      {data:"project.deliveryDate"},
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
          //members
          return data.length>1&&data[1].members.length>0 ? data[1].members[0].name : "";
        }
      },
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
      {data:"subproject.remark"}
    ];
    dataTable = $('#itmes_listing_4466081').DataTable({
      "iDisplayLength": 10,
      paging:false,
      info:false,
      "bSort": false,
      "bFilter":false,
      "bLengthChange":false,
      data: dataSet,
      columns:columns,
      "columnDefs":[{
        "targets":[2],
        "visible":false
      },
      {
        "targets":[0,1,2,3],
        "bSortable":false
      }],
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
                  '<tr class="group"><td></td><td>'+index+'</td><td colspan="11">'+group+'</td></tr>'
              );
              index ++;
              subindex=1
              last = group;
          }
          $(rows).eq(i).find("td","")[1].innerHTML = (index-1) + "." + (subindex + 100).toString().substring(1);
          subindex++;

      } );

  }

  });

});


function open_modal(this_tr) {
    var data = dataTable.row($(this_tr).parents('tr')).data();
    $('#sub_project_id').val(data.subproject.id);
    $('#planid').val(data.plans.length > 1 ? data.plans[1].id : "");
    $('#projectCode').val(data.subproject.subProjectId);
    if(data.plans.length>1 && data.plans[1].members.length>0){
      $('#employee_list').val(data.plans[1].members[0].id).trigger("change");

    }else{
      $('#employee_list').val('').trigger("change");

    }
    $('#planEnd').val( data.plans.length > 1 ? data.plans[1].planEnd : "");
    $('#acturalEnd').val(data.plans.length > 1 ? data.plans[1].acturalEnd : "");
    $('#modal_plan').modal();

}

function save_plan(){
  var form = $('#form_plan')
  var postData = {
    "id":$('#planid').val(),
    "subprojectId":$('#sub_project_id').val(),
    "members":[{"id":$('#employee_list').val()}],
    "planEnd":$('#planEnd').val(),
    "acturalEnd":$('#acturalEnd').val(),
    "planType":"20"
  }

  $.ajax({
      url: '${rc.contextPath}/plan/modify',
      data: JSON.stringify(postData),
      contentType: 'application/json;charset=UTF-8',
      type: 'POST',
      success: function(response) {
              var result = eval(response);
              if(result.code == "0000"){
                window.location = '${rc.contextPath}/plan/electric_plan'
              }else{
                $('#message_dialog_body').html(result.message);
                $('#message_dialog').modal();

              }
          } ,//成功执行方法
      error: function(textStatus, errorThrown) {
        $('#message_dialog_body').html("系统错误。");
          $('#message_dialog').modal();
      }
  });
}

jQuery(document).ready(function() {
       var employee_options = [];

       $.ajax({
           url: '${rc.contextPath}/employee/list',
           type: 'GET',
           dataType: 'json',
           timeout: 1000,
           cache: false,
           success: succFunction //成功执行方法
       });

       function succFunction(tt) {

           //eval将字符串转成对象数组
           var json = eval(tt); //数组
           $.each(json, function(index, item) {
               var new_option = {
                   id: '',
                   text: ''
               };
               //循环获取数据

               new_option.id = json[index].id;
               new_option.text = json[index].employeeId+ '_' + json[index].name ;
               employee_options.push(new_option);
           });

           //加载数据后初始化select2

           $('#employee_list').select2({
             language: {
               noResults: function () {
                 return '无记录';
               }
             },
               data: employee_options,
               dropdownParent: $("#modal_plan")

           });

       }

});


function getPage(index) {
    $('[name=pagecurrent]').val(index);
    $('#searchBtn').click();
}

    $('.datepicker').datepicker({
        autoclose: true,
        format: 'yyyy-mm-dd',
        todayHighlight: true,
        language: "zh-CN"
    });
</script>

</html>
