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

        <@menu '3-2' />

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
        报表统计 <small>项目报表</small>
      </h1>

            </section>

            <!-- Main content -->
            <section class="content container-fluid">

              <div class="nav-tabs-custom">
              <div class="tab-content">


                  <form class="form-inline" role="form" action="projects_report" method="post">
                    <div class="form-group pull-right">
                      <input type="submit" class="btn btn-default"  value="搜素">


                    </div>
                <div class="form-group">

                  <label class="sr-only" for="name">班组</label>
                  <select id="work_groups" class="" name="assurance_duration">
                      <option value="">班组</option>

                      <option value="1">装配1组</option>
                      <option value="3">辅助</option>
                  </select>
                </div>
                <div class="form-group">
                  <label class="sr-only" for="name">组员</label>
                  <select id="group_members" class="" name="assurance_duration">
                      <option value="">组员</option>

                      <option value="1">张三</option>
                      <option value="3">李四</option>
                  </select>
                </div>




                <div class="form-group">
                  <label class="sr-only" for="name">起止日期</label>
                   <input type="text" class="form-control date datepicker" id="name" placeholder="开始日期">
                   <input type="text" class="form-control date datepicker" id="name" placeholder="终止日期">
                </div>

                <div class="form-group">

                <label class="sr-only" for="name">项目号</label>
                 <input type="text" class="form-control" id="name" placeholder="项目号">
                </div>

                <div class="form-group">
                  <label class="sr-only" for="name">设备型号</label>
                  <select id="device_type" class="" name="assurance_duration">
                      <option value="">设备型号</option>

                      <option value="1">DHQ-3/3</option>
                      <option value="3">HTS-3/3</option>
                  </select>
                </div>
                <div class="form-group pull-right">
                  <input type="submit" class="btn btn-default"  value="导出">
                  <input type="submit" class="btn btn-default"  value="打印">
                </div>
                  </form>

              <table class="table table-striped table-bordered table-hover projects-table" id="itmes_listing_4466081"   >
                <thead>
                  <tr>
                    <th rowspan="2">序号</th>
                    <th rowspan="2">项目号</th>
                    <th rowspan="2" style="width:8%">客户名称</th>
                    <th rowspan="2">设备型号</th><th rowspan="2" style="width:8%">订货通报日期</th>
                    <th rowspan="2" style="width:8%">合同交货日期</th><th rowspan="2" style="width:8%">调整后交货日期</th>
                    <th rowspan="2" style="width:8%">实际发货日期</th><th rowspan="2">实际拖期天数</th>
                    <th rowspan="2">实际交货天数</th><th rowspan="2">机械设计部拖期天数</th>
                    <th rowspan="2">电气设计部拖期天数</th><th rowspan="2">采购部到货累计拖期天数</th>
                    <th colspan="3">生产部</th>
                    <th rowspan="2">车间调试拖期天数</th>
                  </tr>
                  <tr>

                    <th>拖期天数</th>

                    <th>机械完成总工时数</th>

                    <th>电器完成总工时数</th>

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


      var dataSet = [
        [
          "1","装配一组","1001","张三","2018-04-01","2018-12-01","HM001h6","HDQ 3/3",
          "2","10","10","0","0","10","10","0","30"
        ],
        [
          "2","装配二组","1003","李四","2018-04-01","2018-12-01","HM001h6","HDQ 3/3",
          "2","10","10","出差","出差","10","10","0","30"
        ]
      ]
        $(document).ready(function(){

          $("#device_type").select2({
          });
          $("#work_groups").select2({
          });
          $("#group_members").select2({
          });
          var table = $('#itmes_listing_4466081').DataTable({

          scrollCollapse: true,
          paging:         false,

            data:dataSet,
            "iDisplayLength": 10,
            paging:false,
            info:false,
            "bSort": true,
            "bFilter":false,
            "bLengthChange":false,
            "fnInitComplete": function (oSettings, json) { $(this).css('display','') }

        });

      });

</script>

</html>
