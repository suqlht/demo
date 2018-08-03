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
                    <h3 class="page-title">项目计划安排</h1>
<div>
  <#include "/common/config/plan.ftl" />

  <@plan 3/>
</div>

<br>


<div>
  <table width="100%">
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
<br>
      <div>


      <table class="table table-striped table-bordered table-hover projects-table" id="itmes_listing_4466081"   >
        <thead>
          <tr>
            <th rowspan="2"></th>
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
              <table class="subtable">
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

      </div>

      <br />


      <script type="text/javascript">

      var dataTable;

        $(document).ready(function(){

          var groupColumn = 3;
          var columns = [{data:"id"},
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
            {data:"macturalEnd"},
            {data:"eacturalEnd"},
            {data:"assets",
              render:function(data, type, row, meta) {
                  if(data.length>0){
                    var subtable='<table style="width:100%"><tbody>'
                    for(i=0;i<data.length;i++){
                      subtable += '<tr><td>' + data[i].name
                                  +'</td><td>'+ data[i].planEnd
                                  +'</td><td>'+ data[i].acturalEnd
                                  +'</td></tr>'
                    }
                    subtable += '</tbody></table>'
                    return subtable;
                  }else{
                    return "";
                  }

              }
            },
            {data:"planEnd"}
          ];
          var dataSet = [{
              "id": 2,
              "subprojectId": null,
              "macturalEnd": "2018-07-16",
              "eacturalEnd": "2018-07-26",
              "planBegin": null,
              "planEnd": "2018-07-16",
              "acturalBegin": null,
              "acturalEnd": "2018-07-26",
              "assignerId": null,
              "planType": null,
              "workNumber": null,
              "dayhours": null,
              "weekDays": null,
              "assets": [{
                  "id": 2,
                  "name": "炉壳",
                  "planBegin": null,
                  "planEnd": "2018-07-16",
                  "acturalBegin": null,
                  "acturalEnd": "2018-07-26",
                  "groupId": null
              }],
              "project": {
                  "id": 47,
                  "projectCode": "XM2",
                  "customerName": "客户名称2",
                  "projectType": "已签订合同",
                  "deliveryDate": "2018-06-27",
                  "projectStatus": "新建",
                  "createdBy": null,
                  "createdate": null,
                  "modifydate": null,
                  "projectOwner": null,
                  "projectPhase": null,
                  "orderDate": "2018-06-26",
                  "createdUser": null,
                  "assuranceBegin": "SAT验收结束",
                  "assuranceDuration": "6个月",
                  "assuranceRemark": "不含电机",
                  "reserve": null,
                  "remark": null
              },
              "device": {
                  "id": 31,
                  "deviceName": null,
                  "deviceCode": null,
                  "model": "IU180/1H 1266-2bar",
                  "spec": null,
                  "param": null,
                  "remark": null,
                  "mechanicalHours": null,
                  "electricalHours": null,
                  "otherHours": null
              },
              "subproject": {
                  "id": 32,
                  "projectId": null,
                  "deviceId": null,
                  "deviceQuantity": 1,
                  "remark": "标准",
                  "subProjectId": "XM2-01",
                  "deviceSpec": null,
                  "mechanicalHours": null,
                  "electricalHours": null,
                  "totalMechanicalHours": null,
                  "totalElectricalHours": null,
                  "device": null
              }
          }];
          dataTable = $('#itmes_listing_4466081').DataTable({
            "iDisplayLength": 10,
            paging:false,
            info:false,
            "bSort": true,
            "bFilter":false,
            "bLengthChange":false,
            data: dataSet,
            columns:columns,
            "columnDefs":[{
              "targets":[0,3],
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

  function open_modal(this_tr) {
      dataTable.$('tr.selected').removeClass('selected');
      $(this_tr).parents('tr').addClass("selected");
      var data = dataTable.row('.selected').data();
      $('#sub_project_id').val(data.subproject.id);
      $('#planid').val(data.id);
      $('#projectCode').val(data.subproject.subProjectId);
      if(data.members.length>0){
        $('#employee_list').val(data.members[0].id).trigger("change");

      }else{
        $('#employee_list').val('').trigger("change");

      }
      $('#planEnd').val(data.planEnd);
      $('#acturalEnd').val(data.acturalEnd);
      $('#modal_plan').modal();

  }
   App.init();

   qdpm_app_init();

});

</script>

<!-- END JAVASCRIPTS -->

  </body>
</html>
