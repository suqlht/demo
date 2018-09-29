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

              <@plan 3/>
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


              <table class="table table-striped table-bordered table-hover projects-table" id="itmes_listing_4466081"   style="width:100%">
                <thead>
                  <tr>
                    <th rowspan="2">操作</th>
                    <th rowspan="2">序号</th>
                    <th rowspan="2">项目号</th>
                    <th rowspan="2">项目号</th>
                    <th rowspan="2"> 设备型号</th>
                    <th rowspan="2">订货通<br/>报日期</th>
                    <th rowspan="2">合同交<br/>货日期</th>
                    <th rowspan="2">机械实际<br/>完成日期</th>
                    <th rowspan="2">电气实际<br/>完成日期</th>
                    <th>主要零件</th>
                    <th rowspan="2">截止<br/>到货<br/>时间</th>
                  </tr>
                  <tr>
                    <th>
                      <table class="subtable" style="width:100%">
                        <thead>
                          <tr>
                            <th>名称</th>
                            <th>计划到货<br/>日期</th>
                            <th>实际到货<br/>日期</th>
                          </tr>
                        </thead>
                      </table>
                    </th>

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
      {data:"id",
      render:function(data, type, row, meta){
        return '<a href="plan/assets?id='+data+'" title="调整计划"> <i class="fa fa-edit"></i> </a>'
      }
      },
      {data:null},
      {data:"project.projectCode"},
      {data:"subproject.subProjectId"},
      {data:"device.model"},
      {data:"project.orderDate"},
      {data:"project.deliveryDate"},
      {data:"plans",
        render:function(data, type, row, meta) {
          //acturalEnd
          return data.length>0 ? data[0].acturalEnd : "";
        }},
      {data:"plans",
          render:function(data, type, row, meta) {
            //acturalEnd
            return data.length>1 ? data[1].acturalEnd : "";
          }},
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
          //acturalEnd
          return data.length>2 ? data[2].planEnd : "";
        }}
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


</script>

</html>
