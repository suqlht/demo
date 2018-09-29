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
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/FixedColumns-3.2.4/js/dataTables.fixedColumns.js"></script>



    <script type="text/javascript" src="${rc.contextPath}/assets/js/app.js"></script>





    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/app.css" />

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/skins/default/default.css" />


    <script>
        var sf_public_path = '/${rc.contextPath}/';
        var selected_items = new Array();
        var table;
    </script>
    <link rel="shortcut icon" href="${rc.contextPath}/favicon.ico" />
    <link rel="apple-touch-icon" href="${rc.contextPath}/favicon.png" />
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

        <@menu 2/>

        <!-- END SIDEBAR -->

        <!-- BEGIN CONTENT -->

        <div class="page-content-wrapper">
            <div class="page-content-wrapper">
                <div class="page-content">
                    <div id="ajax-modal" class="modal fade" tabindex="-1" data-replace="true" data-keyboard="false" data-backdrop="static" data-focus-on=".autofocus"></div>
                    <h3 class="page-title">审批工时</h1>

<div>

  <form class="form-inline" role="form" action="projects_report" method="post">


<div class="form-group">
  <label class="sr-only" for="name">组员</label>
  <select id="group_members" class="" name="assurance_duration">
      <option value="">组员</option>

      <option value="1">张三</option>
      <option value="3">李四</option>
  </select>
</div>


<div class="form-group">
  <label class="sr-only" for="name">设备型号</label>
  <select id="device_type" class="" name="assurance_duration">
      <option value="">设备型号</option>

      <option value="1">DHQ-3/3</option>
      <option value="3">HTS-3/3</option>
  </select>
</div>


<div class="form-group">
  <label class="sr-only" for="name">起止日期</label>
   <input type="text" class="form-control date datepicker" id="name" placeholder="开始日期">
</div>

<div class="form-group">

<label class="sr-only" for="name">项目号</label>
 <input type="text" class="form-control" id="name" placeholder="项目号">
</div>
<div class="form-group">
  <input type="submit" class="btn btn-default"  value="搜素">
</div>
<div class="form-group">
  <ul class="nav navbar-nav">
    <!-- BEGIN USER LOGIN DROPDOWN -->
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <span>操作
              </span>
        <i class="fa fa-angle-down"></i>
      </a>
      <ul class="dropdown-menu">
        <li> <a onclick="">批量通过</a>
        </li>
        <li> <a onclick="">批量驳回</a>
        </li>
      </ul>
    </li>
    <!-- END USER LOGIN DROPDOWN -->
  </ul>
</div>
  </form>
</div>
<br>
      <div>


      <table style="width:100%" class="table table-striped table-bordered table-hover" id="items_list"   >
        <thead>
          <tr>
            <th rowspan="2"><input class="group-checkable" data-set="#items_list .checkboxes" type="checkbox"></th>

            <th rowspan="2">序号</th>
            <th rowspan="2">组员工号</th>
            <th rowspan="2">组员姓名</th>
            <th rowspan="2">起始日期</th>
            <th rowspan="2">终止日期</th>
            <th rowspan="2">项目号</th>
            <th rowspan="2">设备名称</th>
            <th colspan="8" class="text-center">已完成工时</th>
            <th rowspan="2">操作</th>

          </tr>
          <tr>
              <th class="text-center">星期一</th>
              <th class="text-center">星期二</th>
              <th class="text-center">星期三</th>
              <th class="text-center">星期四</th>
              <th class="text-center">星期五</th>
              <th class="text-center">星期六</th>
              <th class="text-center">星期日</th>
              <th class="text-center">合计完成工时</th>

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
          "","1","1001","张三","2018/6/4","2018/6/10","HM001h6","HDQ 3/3",
          "10","0","0","10","10","10","10","50","111"
        ],
        [
          "","1","1003","李四","2018/6/11","2018/6/17","HM001h6","HDQ 3/3",
          "10","10","0(出差)","0(出差)","10","10","0","30","222"
        ]
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
            "columnDefs": [
            {
                // The `data` parameter refers to the data for the cell (defined by the
                // `data` option, which defaults to the column being worked with, in
                // this case `data: 0`.
                "render": function ( data, type, row ) {
                    return  '<a href="#check?id='+ data+'&opinion=yes">通过</a>&nbsp;<a href="#check?id='+data+'&opinion=no">驳回</a>';
                },
                "targets": 16
            },
            {
                // The `data` parameter refers to the data for the cell (defined by the
                // `data` option, which defaults to the column being worked with, in
                // this case `data: 0`.
                "render": function ( data, type, row ) {
                  return '<input class="checkboxes" type="checkbox">';
                },
                "targets": 0
            }
        ]


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

      });
      function renderIndexes(){

        table.column(1,"").nodes().each( function (cell, i) {
            cell.innerHTML = i+1;
        } );
        table.draw( false );;
      }
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
