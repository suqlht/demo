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
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/select2/select2_4.0.6.min.css" />

    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/select2/select2_4.0.6.min.js"></script>

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/data-tables/DT_bootstrap.css" />
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/datatables/jquery.dataTables.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/datatables/jquery.dataTables.css" />



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


    <style type="text/css">
        table.subtable {
            width: 100%
        }

        ;
        table.subtable th {
            width: 30%
        }

        ;
        table.subtable td {
            width: 30%
        }

        ;
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
                    <h3 class="page-title">已发货项目列表</h1>
<br>



<div style="padding-bottom:10px;">
  <table style="width:100%">
      <tr>
          <td>
            <ul class="nav navbar-nav">
      				<!-- BEGIN USER LOGIN DROPDOWN -->
      				<li class="dropdown">
      					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
      						<span>列筛选
      					 				</span>
      						<i class="fa fa-angle-down"></i>
      					</a>
      					<ul class="dropdown-menu">
      						<li> <input type="checkbox" checked="checked" value="11,12,13" onchange="toggle_clv(this)"> 机械设计
      						</li>
      						<li><input type="checkbox" checked="checked"  value="14,15,16" onchange="toggle_clv(this)">电气设计
      						</li>
      						<li><input type="checkbox" checked="checked"  value="17,18" onchange="toggle_clv(this)">采购
      						</li>
                  <li><input type="checkbox" checked="checked" value="19" onchange="toggle_clv(this)">油漆
                  </li>
                  <li><input type="checkbox" checked="checked"  value="20,21" onchange="toggle_clv(this)">质检
                  </li>
                  <li><input type="checkbox" checked="checked"  value="22,23" onchange="toggle_clv(this)">筑炉
                  </li>
      					</ul>
      				</li>
      				<!-- END USER LOGIN DROPDOWN -->
      			</ul>
            
          </td>

          <td align="right">
              <form class="form-search" method="GET">
                  <input type="hidden" name="pagelength" value="${pagelength?default(10)}" />
                  <input type="hidden" name="pagecurrent" value="${pagecurrent?default(1)}" />

                  <div class="input-group col-md-4">
                      <input type="text" name="search_keyword" value="${search_keyword}" class="form-control input-small">
                      <span class="input-group-btn">
          <button class="btn btn-default" type="submit" id="searchBtn"><i class="fa fa-search"></i>搜索</button>
      </span>
                  </div>
              </form>
          </td>

      </tr>
  </table>

</div>
      <div style="width:100%; overflow:scroll">


      <table class="table table-striped table-bordered" id="itmes_listing_4466081"   >
        <thead>
          <tr>
            <th rowspan="3">序号</th>
            <th rowspan="3">项目号</th>
            <th rowspan="3">项目号</th>
            <th rowspan="3">设备型号</th>
            <th rowspan="3" style="min-width:70px;text-align:center;">订货通<br/>报日期</th>
            <th rowspan="3" style="min-width:70px;text-align:center;">合同交<br/>货日期</th>
            <th rowspan="3" style="min-width:60px;text-align:center;">距交货<br/>期天数</th>
            <th rowspan="3" style="min-width:70px;text-align:center;">调整后<br/>交货日期</th>
            <th rowspan="3" style="min-width:70px;text-align:center;">实际发<br/>货日期</th>
            <th rowspan="3" style="min-width:50px;text-align:center;">进度<br/>状态</th>
            <th rowspan="3" style="min-width:60px;text-align:center;">当前<br/>瓶颈</th>
            <th colspan="3">机械设计部</th>
            <th colspan="3">电气设计部</th>
            <th colspan="2">采购</th>
            <th>油漆</th>
            <th colspan="2">质检</th>
            <th colspan="2">筑炉</th>
            <th colspan="9">车间生产装配</th>
            <th colspan="5">车间调试</th>
            <th rowspan="3">备注</th>
          </tr>
          <tr>
            <th rowspan="2" style="min-width:70px;text-align:center;">计划<br/>完成<br/>日期</th>
            <th rowspan="2" style="min-width:70px;text-align:center;">实际<br/>完成<br/>日期</th>
            <th rowspan="2" style="min-width:70px;text-align:center;">当前<br/>问题</th>
            <th rowspan="2" style="min-width:70px;text-align:center;">计划<br/>完成<br/>日期</th>
            <th rowspan="2" style="min-width:70px;text-align:center;">实际<br/>完成<br/>日期</th>
            <th rowspan="2" style="min-width:70px;text-align:center;">当前<br/>问题</th>

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
            <th rowspan="2" style="min-width:70px;text-align:center;">实际<br/>完成<br/>日期</th>
            <th rowspan="2" style="min-width:70px;text-align:center;">计划<br/>完成<br/>日期</th>
            <th rowspan="2" style="min-width:70px;text-align:center;">实际<br/>完成<br/>日期</th>
            <th rowspan="2" style="min-width:70px;text-align:center;">计划<br/>完成<br/>日期</th>
            <th rowspan="2" style="min-width:70px;text-align:center;">实际<br/>完成<br/>日期</th>

            <th rowspan="2" style="min-width:70px;text-align:center;">计划<br/>开始<br/>日期</th>
            <th rowspan="2" style="min-width:70px;text-align:center;">实际<br/>开始<br/>日期</th>
            <th rowspan="2" style="min-width:70px;text-align:center;">计划<br/>完成<br/>日期</th>
            <th rowspan="2" style="min-width:70px;text-align:center;">实际<br/>完成<br/>日期</th>

            <th colspan="2">机械</th>
            <th colspan="2">电气</th>
            <th rowspan="2" style="min-width:70px;text-align:center;">当前<br/>问题</th>
            <th rowspan="2" style="min-width:70px;text-align:center;">计划<br/>开始<br/>日期</th>
            <th rowspan="2" style="min-width:70px;text-align:center;">实际<br/>开始<br/>日期</th>
            <th rowspan="2" style="min-width:70px;text-align:center;">计划<br/>完成<br/>日期</th>
            <th rowspan="2" style="min-width:70px;text-align:center;">实际<br/>完成<br/>日期</th>
            <th rowspan="2" style="min-width:70px;text-align:center;">当前<br/>问题</th>
          </tr>
          <tr>
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

      <br />


      <script type="text/javascript">


      function toggle_clv(target){
        var columns = table.columns($(target).val());
        columns.visible(Boolean($(target).attr('checked')));
      }
        $(document).ready(function(){
          var groupColumn = 1;
          $("#columnsToggle").select2({
            "multiple":true
              });
          var dataSet = [
            [
            "",  "HM0100","HM0100-01","","2018-05-30","2018-12-11","215","2018-12-21","2018-12-01","已发货","","2018-12-31","2018-12-31","","2018-12-31","2018-12-31","",[],"","2018-12-31","2018-12-31","2018-12-31","2018-12-31","2018-12-31", "2018-12-31","2018-12-31","2018-12-31","2018-12-31","4","4","8","5","","2018-12-31","2018-12-31","2018-12-31","2018-12-31","",""
            ],
            [
            "",  "HM0100","HM0100-02","DHQ-3/3","2018-05-30","2018-12-11","215","2018-12-21","2018-12-01","已发货","","2018-12-31","2018-12-31","","2018-12-31","2018-12-31","",[['炉壳','2018/1/1','2018/1/1'],['辐射管','2018/1/1','2018/1/1'],['进口电机','2018/1/1','']],"","2018-12-31","2018-12-31","2018-12-31","2018-12-31","2018-12-31", "2018-12-31","2018-12-31","2018-12-31","2018-12-31","4","4","8","5","","2018-12-31","2018-12-31","2018-12-31","2018-12-31","",""
            ]
          ];
          table = $('#itmes_listing_4466081').DataTable({
            "iDisplayLength": 10,
            paging:false,
            info:false,
            "bSort": false,
            "bFilter":false,
            "bLengthChange":false,
            data: dataSet,
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
                "targets": 17
            },

            {"visible":false,
            "targets": 1}
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
        window.location="${rc.contextPath}/projects/whs/schedule_edit"
      }
      function open_modal(){
            $('#form_new_device')[0].reset();
            $('#device_types_id').val("").trigger('change');
            $('#modal_new_device').modal();
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
