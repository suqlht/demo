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
                    <h3 class="page-title">项目计划安排</h1>
<div>
  <#include "/common/config/plan.ftl" />

  <@plan 4/>
</div>

<br>



<div style="padding-bottom:10px;">
  <table style="width:100%">
      <tr>
          <td>

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
            <th colspan="8" style="text-align:center;"><a class="collect" title="项目信息" onclick="toggle_clv(this,[5,6,7,8,9,10,11])" href="#">项目信息</a></th>
            <th colspan="4" style="text-align:center;"><a class="collect" title="机械设计部" onclick="toggle_clv(this,[13,14,15])" href="#"> 机械设计部</a></th>
            <th colspan="4" style="text-align:center;"><a class="collect" title="电气设计部" onclick="toggle_clv(this,[17,18,19])" href="#"> 电气设计部</a></th>
            <th colspan="3" style="text-align:center;"><a class="collect" title="采购" onclick="toggle_clv(this,[21,22])" href="#"> 采购</a></th>
            <th colspan="2" style="text-align:center;"><a class="collect" title="油漆" onclick="toggle_clv(this,[24,25,26,27,28])" href="#"> 油漆</th>
            <th colspan="2">质检</th>
            <th colspan="2">筑炉</th>
            <th rowspan="3" style="min-width:60px;text-align:center;">预留<br/>车间<br/>冷调<br/>天数</th>
            <th colspan="7" style="text-align:center;"><a class="collect" title="人员计划安排" onclick="toggle_clv(this,[31,32,33,34,35,36])" href="#"> 人员计划安排</th>
            <th colspan="5" style="text-align:center;"><a class="collect" title="生产时间节点" onclick="toggle_clv(this,[38,39,40,41])" href="#"> 生产时间节点</th>
            <th colspan="3" style="text-align:center;"><a class="collect" title="计划期内可用人数" onclick="toggle_clv(this,[43,44])" href="#"> 计划期内可用人数</th>
            <th colspan="5" style="text-align:center;"><a class="collect" title="当前完成状态" onclick="toggle_clv(this,[46,47,48,49])" href="#"> 当前完成状态</th>
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

      <br />


      <script type="text/javascript">
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
          var dataSet = [
            [
            "",  "HM0100","HM0100-01","DHQ","...","2018-05-30","2018-12-11","215","2018-12-21","2018-12-01","正常","","...","2018-12-31","2018-12-31","","...","2018-12-31","2018-12-31","","...",[],"","...","2018-12-31","2018-12-31","2018-12-31","2018-12-31","2018-12-31", "3","...","3","10","6","4","8","5","...","2018-12-31","2018-12-31","2018-12-31","2018-12-31","...","10","8","...","1000","200","400","0",""
            ],
            [
            "",  "HM0100","HM0100-02","DHQ-3/3","...","2018-05-30","2018-12-11","215","2018-12-21","2018-12-01","正常","","...","2018-12-31","2018-12-31","","...","2018-12-31","2018-12-31","","...",[['炉壳','2018/1/1','2018/1/1'],['辐射管','2018/1/1','2018/1/1'],['进口电机','2018/1/1','']],"","...","2018-12-31","2018-12-31","2018-12-31","2018-12-31","2018-12-31","3","...", "3","10","6","4","8","5","...", "2018-12-31","2018-12-31","2018-12-31","2018-12-31","...", "10","8","...", "1000","200","400","0",""
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
                "targets": 19
            },
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
