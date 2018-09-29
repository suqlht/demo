<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <title>
        <@spring.message "system.title"/> | 管理面板</title>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta name="MobileOptimized" content="320">

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/jquery-ui-1.11.4/jquery-ui.structure.min.css" />

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/uniform/css/uniform.default.css" />

    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css" />
    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN THEME STYLES -->
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/style.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/style-responsive.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/plugins.css" />


    <!-- END THEME STYLES -->

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-modal/css/bootstrap-modal.css" />



    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-1.10.2.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/select2/select2.css" />

    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/select2/select2.min.js"></script>

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/data-tables/DT_bootstrap.css" />
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/datatables/jquery.dataTables.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/datatables/jquery.dataTables.css" />



    <script type="text/javascript" src="${rc.contextPath}/assets/js/app.js"></script>





    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/app.css" />

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/skins/default/default.css" />


    <script>
        var sf_public_path = '/${rc.contextPath}/';
        var selected_items = new Array();
    </script>
    <link rel="shortcut icon" href="${rc.contextPath}/favicon.ico" />
    <link rel="apple-touch-icon" href="${rc.contextPath}/favicon.png"/>


    <style type="text/css">
      table.subtable {width:100%};
      table.subtable th {width:30%};
      table.subtable td {width:30%};
    </style>

</head>

<body class="page-scale-reduced yui-skin-sam " id="yahoo-com">

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
                    <h3 class="page-title">现场调试&amp;质保中项目列表</h3>

<br>


<div>
  <form class="form-inline" role="form" action="projects_report" method="post">
    <div class="form-group pull-right">
      <input type="submit" class="btn btn-default"  value="搜素">


    </div>
<div class="form-group">

    <label class="sr-only" for="name">项目号</label>
     <input type="text" class="form-control" id="name" placeholder="项目号">
</div>


<div class="form-group">
  <label class="sr-only" for="name">订货通报日期</label>
  <div class="input-group input-medium date datepicker">
    <input type="text" class="form-control" id="name" placeholder="最小订货通报日期">
<span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span>
</div>
   <input type="text" class="form-control date datepicker" id="name" placeholder="最大订货通报日期">

</div>

<div class="form-group">
  <label class="sr-only" for="name">合同交货日期</label>
   <input type="text" class="form-control date datepicker" id="name" placeholder="最小合同交货日期">
   <input type="text" class="form-control date datepicker" id="name" placeholder="最大合同交货日期">
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
</div>
<br>
      <div>


      <table class="table table-striped table-bordered table-hover projects-table" id="itmes_listing_4466081"   >
        <thead>
          <tr>
            <th rowspan="2">序号</th>
            <th rowspan="2">项目号</th>
            <th rowspan="2">设备型号</th>
            <th rowspan="2">订货通报日期</th>
            <th rowspan="2">合同交货日期</th>
            <th rowspan="2" >实际发货日期</th>
            <th colspan="4" class="text-center">服务部现场调试阶段</th>
            <th colspan="4" class="text-center">质保</th>
          </tr>
          <tr>
            <th>计划完成时间</th>
            <th>实际完成时间</th>
            <th>SAT签订日期</th>
            <th>当前问题</th>
            <th>质保周期</th>
            <th>开始生效时间</th>
            <th>是否属于质保期</th>
            <th>备注</th>
          </tr>

        </thead>

        <tbody>


              </tbody>
      </table>

      </div>

      <br />


      <script type="text/javascript">

      var dataSet = [
        [
          "1","HM0100-01","","2018-05-30","2018-12-11","2018-12-21","2018-12-01","2018-12-31","2018-12-31","","1年","2018-12-31","是",""
        ],
        [
          "1.01","HM0100-01","DHQ-3/3","2018-05-30","2018-12-11","2018-12-21","2018-12-01","2018-12-31","2018-12-31","","1年","2018-12-31","是",""
        ],
        [
          "1.02","HM0100-01","HTS-3/3","2018-05-30","2018-12-11","2018-12-21","2018-12-01","2018-12-31","2018-12-31","","1年","2018-12-31","否",""
        ]
      ]
        $(document).ready(function(){

          $("#device_type").select2({
              });

          var table = $('#itmes_listing_4466081').DataTable({
            data:dataSet,
            "scrollX": true,
            "scrollY":        "200px",
            scrollCollapse: true,
            "iDisplayLength": 10,
            paging:false,
            info:false,
            "bSort": true,
            "bFilter":false,
            "bLengthChange":false,
            "fnInitComplete": function (oSettings, json) { $(this).css('display','') },
            "columnDefs": [
            {
                // The `data` parameter refers to the data for the cell (defined by the
                // `data` option, which defaults to the column being worked with, in
                // this case `data: 0`.
                "render": function ( data, type, row ) {
                  if(data == '是'){
                    return data;

                  }else if(data =='否'){
                    return '<span class="text-danger">'+data+'</i>' ;

                  }else{
                    return '';

                  }
                },
                "targets": 12
            }]

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
