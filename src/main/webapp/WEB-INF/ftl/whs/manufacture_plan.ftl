<!--  -->
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

        <@menu 3/>

        <!-- END SIDEBAR -->

        <!-- BEGIN CONTENT -->

        <div class="page-content-wrapper">
            <div class="page-content-wrapper">
                <div class="page-content">
                    <div id="ajax-modal" class="modal fade" tabindex="-1" data-replace="true" data-keyboard="false" data-backdrop="static" data-focus-on=".autofocus"></div>
                    <h3 class="page-title">项目计划安排</h1>
<div>
  <#include "/common/config/plan.ftl" />

  <@plan 4/>
</div>

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
            <th rowspan="3">序号</th>
            <th rowspan="3">项目号</th>
            <th rowspan="3"> 设备型号</th>
            <th rowspan="3">订货通报日期</th>
            <th rowspan="3">合同交货日期</th>
            <th rowspan="3">距交货期天数</th>
            <th rowspan="3">调整后交货日期</th>
            <th rowspan="3" >实际发货日期</th>
            <th rowspan="3">进度状态</th>
            <th rowspan="3">当前瓶颈</th>
            <th colspan="3">机械设计部</th>
            <th colspan="3">电气设计部</th>
            <th colspan="2">采购</th>
            <th>油漆</th>
            <th colspan="2">质检</th>
            <th colspan="2">筑炉</th>
            <th rowspan="3">预留车间冷调天数</th>
            <th colspan="6">人员计划安排</th>
            <th colspan="4">生产时间节点</th>
            <th colspan="2">计划期内可用人数</th>
            <th colspan="4">当前完成状态</th>
            <th rowspan="3">操作</th>
          </tr>
          <tr>
            <th rowspan="2">计划完成日期</th>
            <th rowspan="2">实际完成日期</th>
            <th rowspan="2">当前问题</th>
            <th rowspan="2">计划完成日期</th>
            <th rowspan="2">实际完成日期</th>
            <th rowspan="2">当前问题</th>

            <th rowspan="2">
              <table class="subtable">
                <thead>
                  <tr>
                    <th>主要零件名称</th>
                    <th>计划到货日期</th>
                    <th>实际到货日期</th>
                  </tr>
                </thead>
              </table>
            </th>
            <th rowspan="2">当前问题</th>
            <th rowspan="2">实际完成日期</th>
            <th rowspan="2">计划完成日期</th>
            <th rowspan="2">实际完成日期</th>
            <th rowspan="2">计划完成日期</th>
            <th rowspan="2">实际完成日期</th>
            <th colspan="3">机械</th>
            <th colspan="3">电气</th>
            <th rowspan="2">装配计划开始日期</th>
            <th rowspan="2">装配实际开始日期</th>
            <th rowspan="2">装配计划完成日期</th>
            <th rowspan="2">装配实际完成日期</th>
            <th rowspan="2">机械人数</th>
            <th rowspan="2">电气人数</th>
            <th colspan="2">机械</th>
            <th colspan="2">电气</th>


          </tr>
          <tr>
            <th>人数</th>
            <th>每天小时</th>
            <th>每周天数</th>
            <th>人数</th>
            <th>每天小时</th>
            <th>每周天数</th>
            <th>已完成工时</th>
            <th>剩余工时</th>
            <th>已完成工时</th>
            <th>剩余工时</th>
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
          "1","HM0100-01","","2018-05-30","2018-12-11","215","2018-12-21","2018-12-01","正常","","2018-12-31","2018-12-31","","2018-12-31","2018-12-31","",[],"","2018-12-31","2018-12-31","2018-12-31","2018-12-31","2018-12-31", "3","3","10","6","4","8","5","2018-12-31","2018-12-31","2018-12-31","2018-12-31","10","8","1000","200","400","0",""
        ],
        [
          "1.01","HM0100-01","DHQ-3/3","2018-05-30","2018-12-11","215","2018-12-21","2018-12-01","正常","","2018-12-31","2018-12-31","","2018-12-31","2018-12-31","",[['炉壳','2018/1/1','2018/1/1'],['辐射管','2018/1/1','2018/1/1'],['进口电机','2018/1/1','']],"","2018-12-31","2018-12-31","2018-12-31","2018-12-31","2018-12-31", "3","3","10","6","4","8","5","2018-12-31","2018-12-31","2018-12-31","2018-12-31","10","8","1000","200","400","0",""
        ]
      ]
        $(document).ready(function(){

          $("#device_type").select2({
              });

          var table = $('#itmes_listing_4466081').dataTable({
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
                  if(data.length==0){

                    return '';
                  }
                    return '<table class="subtable"><tr><td>'+data[0][0]+'</td><td>'+data[0][1]+'</td><td>'+data[0][2]+'</td></tr>' +
                           '<tr><td>'+data[1][0]+'</td><td>'+data[1][1]+'</td><td>'+data[1][2]+'</td></tr>' +
                           '<tr><td>'+data[2][0]+'</td><td>'+data[2][1]+'</td><td>'+data[2][2]+'</td></tr></table>' ;
                },
                "targets": 16
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
