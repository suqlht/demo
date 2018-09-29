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

        <@menu '1-4' />

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
        项目管理 <small>项目进度列表</small>
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


              <table class="table table-striped table-bordered" id="itmes_listing_4466081"  style="width:100%" >
                <thead>
                  <tr>
                    <th rowspan="3">序号</th>
                    <th rowspan="3">项目号</th>
                    <th rowspan="3">项目号</th>
                    <th rowspan="3">设备型号</th>

                    <th colspan="8" style="text-align:center;"><a class="collect" title="项目信息" onclick="toggle_clv(this,[5,6,7,8,9,10,11])" href="#"> 项目信息</a></th>
                    <th colspan="4" style="text-align:center;"><a class="collect" title="机械设计部" onclick="toggle_clv(this,[13,14,15])" href="#">机械设计部</a></th>
                    <th colspan="4" style="text-align:center;"><a class="collect" title="电气设计部" onclick="toggle_clv(this,[17,18,19])" href="#">电气设计部</a></th>
                    <th colspan="3" style="text-align:center;"><a class="collect" title="采购" onclick="toggle_clv(this,[21,22])" href="#">采购</a></th>
                    <th colspan="2" style="text-align:center;"><a class="collect" title="油漆" onclick="toggle_clv(this,[24,25,26,27,28])" href="#">油漆</a></th>
                    <th colspan="2">质检</th>
                    <th colspan="2">筑炉</th>
                    <th colspan="10" style="text-align:center;"><a class="collect" title="车间生产装配" onclick="toggle_clv(this,[30,31,32,33,34,35,36,37,38])" href="#">车间生产装配</a></th>
                    <th colspan="6" style="text-align:center;"><a class="collect" title="车间生产装配" onclick="toggle_clv(this,[40,41,42,43,44])" href="#">车间调试</a></th>
                    <th rowspan="3">备注</th>
                    <th rowspan="3">编辑</th>
                  </tr>
                  <tr>
                    <th rowspan="2" style="min-width:15px;text-align:center;">项目信息</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">订货通<br/>报日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">合同交<br/>货日期</th>
                    <th rowspan="2" style="min-width:60px;text-align:center;">距交货<br/>期天数</th>
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
                    <th rowspan="2" style="min-width:15px;text-align:center;">油漆<br/></th>

                    <th rowspan="2" style="min-width:70px;text-align:center;">实际<br/>完成<br/>日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">计划<br/>完成<br/>日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">实际<br/>完成<br/>日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">计划<br/>完成<br/>日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">实际<br/>完成<br/>日期</th>

                    <th rowspan="2" style="min-width:15px;text-align:center;">生产装配</th>

                    <th rowspan="2" style="min-width:70px;text-align:center;">计划<br/>开始<br/>日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">实际<br/>开始<br/>日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">计划<br/>完成<br/>日期</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">实际<br/>完成<br/>日期</th>

                    <th colspan="2">机械</th>
                    <th colspan="2">电气</th>
                    <th rowspan="2" style="min-width:70px;text-align:center;">当前<br/>问题</th>

                    <th rowspan="2" style="min-width:15px;text-align:center;">车间调试</th>

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


function edit(){

}


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
      "",  "HM0100","HM0100-01","DDD","...","2018-05-30","2018-12-11","215","2018-12-21","2018-12-01","正常","","...","2018-12-31","2018-12-31","","...","2018-12-31","2018-12-31","","...",[],"","...","2018-12-31","2018-12-31","2018-12-31","2018-12-31","2018-12-31", "...","2018-12-31","2018-12-31","2018-12-31","2018-12-31","4","4","8","5","","...","2018-12-31","2018-12-31","2018-12-31","2018-12-31","","",""
      ],
      [
      "",  "HM0100","HM0100-02","DHQ-3/3","...","2018-05-30","2018-12-11","215","2018-12-21","2018-12-01","正常","","...","2018-12-31","2018-12-31","","...","2018-12-31","2018-12-31","","...",[['炉壳','2018/1/1','2018/1/1'],['辐射管','2018/1/1','2018/1/1'],['进口电机','2018/1/1','']],"","...","2018-12-31","2018-12-31","2018-12-31","2018-12-31","2018-12-31", "...","2018-12-31","2018-12-31","2018-12-31","2018-12-31","4","4","8","5","","...","2018-12-31","2018-12-31","2018-12-31","2018-12-31","","",""
      ]
    ];
    table = $('#itmes_listing_4466081').DataTable({
      "iDisplayLength": 10,
      "scrollX":true,
      scrollY:        "300px",

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
          "targets": 21
      },
      {"render": function ( data, type, row ) {

          return '<a href="#" onclick="modify_plan(this)" title="编辑"> <i class="fa fa-edit"></i> </a>' ;
      },
      "targets": -1},
      {"visible":false,
      "targets": [1,4,12,16,20,23,29,39]}
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
                    '<tr class="group"><td>'+index+'</td><td>'+group+'</td><td></td><td colspan="50"></td></tr>'
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

  $('#itmes_listing_4466081 tbody').on( 'click', 'tr[role="row"]', function () {
    $('#active_row').html('');

  if ( $(this).hasClass('selected') ) {
      $(this).removeClass('selected');
  }
  else {
      console.log($(this).find('td:eq(1)'))
      table.$('tr.selected').removeClass('selected');
      $(this).addClass('selected');
      $('#active_row').html('已选项目：'+$(this).find('td:eq(1)').html()+
        ',设备型号：'+$(this).find('td:eq(2)').html()
        );
  }
} );


});

function modify_plan(){
  window.location="${rc.contextPath}/projects/whs/schedule_edit"
}

</script>

</html>
