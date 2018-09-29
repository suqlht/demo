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

  <@plan 2/>
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
            <th></th>

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

      </div>

      <br />


      <script type="text/javascript">
      var dataTable;

        $(document).ready(function(){

          var groupColumn = 3;
          var columns = [{data:"id"},
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
            {data:"mplanEnd"},
            {data:"macturalEnd"},
            {data:"members",
              render:function(data, type, row, meta) {
                  if(data.length>0){
                    return data[0].name;
                  }else{
                    return "";
                  }

              }
            },
            {data:"planEnd"},
            {data:"acturalEnd"},
            {data:"subproject.remark"}
          ];
          var dataSet = [{
              "id": 2,
              "subprojectId": null,
              "mplanBegin": null,
              "mplanEnd": "2018-07-16",
              "macturalBegin": null,
              "macturalEnd": "2018-07-26",
              "planBegin": null,
              "planEnd": "2018-07-16",
              "acturalBegin": null,
              "acturalEnd": "2018-07-26",
              "assignerId": null,
              "planType": null,
              "workNumber": null,
              "dayhours": null,
              "weekDays": null,
              "members": [{
                  "id": 2,
                  "name": "李四",
                  "birthday": null,
                  "age": null,
                  "sex": null,
                  "workYears": null,
                  "skill": null,
                  "status": null,
                  "employeeId": null,
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
                          <div class="input-group  input-medium">
                            <input  value="" class="form-control" id="projectCode" readonly />

                          </div>
                      </div>
                  </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">人员安排</label>
                        <div class="col-md-6">
                            <div class="input-group input-medium">

                                <select name="members" id="employee_list" style="width:100%">
                                    <option value="" selected="selected"></option>
                                </select>

                            </div>

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

                    <div class="form-group">
                        <label class="col-md-4 control-label"><span class="required">*</span>实际完成日期</label>
                        <div class="col-md-6">
                            <div class="input-group input-medium date datepicker">
                                <input type="text" id="acturalEnd" name="acturalEnd" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                        </div>
                    </div>

                    <script type="text/javascript">
                        $(document).ready(function() {
                            $.extend($.validator.messages, {
                                required: '必须填写此域！'
                            });

                            $("#form_plan").validate({
                                ignore: '',
                                invalidHandler: function(e, validator) {
                                    var errors = validator.numberOfInvalids();
                                    if (errors) {
                                        var message = '<div class="alert alert-danger">Some fields are required. They have been highlighted above.</div>';
                                        $("#form_error_handler").fadeIn().html(message).delay(2000).fadeOut();
                                    }
                                }
                            });
                        });
                    </script>

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

function save_plan(){
  var form = $('#form_plan')
  var postData = {
    "id":$('#planid').val(),
    "subprojectId":$('#sub_project_id').val(),
    "members":[{"id":$('#employee_list').val()}],
    "planEnd":$('#planEnd').val(),
    "acturalEnd":$('#acturalEnd').val(),
    "planType":"10"
  }

  $.ajax({
      url: '${rc.contextPath}/plan/modify',
      data: JSON.stringify(postData),
      contentType: 'application/json;charset=UTF-8',
      type: 'POST',
      success: function(response) {
              var result = eval(response);
              if(result.code == "0000"){
                window.location = '${rc.contextPath}/projects/mechanical_plan'
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
   App.init();

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

   qdpm_app_init();

});

</script>

<!-- END JAVASCRIPTS -->

  </body>
</html>
