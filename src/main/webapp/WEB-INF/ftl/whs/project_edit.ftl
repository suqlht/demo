<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
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


    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/uniform/css/uniform.default.css" />
    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN THEME STYLES -->
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/style-conquer.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/style.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/style-responsive.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/plugins.css" />

    <!-- END THEME STYLES -->

    <!-- <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css" /> -->
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-modal/css/bootstrap-modal.css" />



    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-1.10.2.min.js"></script>

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/select2/select2_4.0.6.min.css" />
    <!-- <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/data-tables/DT_bootstrap.css" /> -->
    <!-- <script type="text/javascript" src="${rc.contextPath}/assets/plugins/data-tables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/data-tables/DT_bootstrap.js"></script> -->
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/datatables/jquery.dataTables.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/datatables/jquery.dataTables.css" />

    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/select2/select2_4.0.6.min.js"></script>

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-datepicker/css/datepicker.css" />




    <script type="text/javascript" src="${rc.contextPath}/assets/js/app.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/js/cluetip1.2.5/jquery.cluetip.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/js/cluetip1.2.5/jquery.cluetip.css" />

    <script>
        var sf_public_path = '${rc.contextPath}/';
        var selected_items = new Array();
        var CKEDITOR_holders = new Array();

        var dataTable;
        var dataSet = JSON.parse('${subprojects}');

        function keep_session() {
            $.ajax({
                url: '${rc.contextPath}/home'
            });
        }

        function save_new_project() {
          if(!$('#form_projects').valid() ){
            alert('请确认检查数据输入');
            return false;
          }
          if(dataTable.data().length==0){
            alert('设备不能为空！');
            return false;
          }
            var form = $('#form_projects')
            var postData = {
                project: {
                    id: form.find('[name="project.projectId"]').val(),
                    projectCode: form.find('[name="project.projectCode"]').val(),
                    customerName: form.find('[name="project.customerName"]').val(),
                    projectType: form.find('[name="project.projectType"]').val(),
                    deliveryDate: form.find('[name="project.deliveryDate"]').val(),
                    orderDate: form.find('[name="project.orderDate"]').val(),
                    assuranceBegin: form.find('[name="project.assuranceBegin"]').val(),
                    assuranceDuration: form.find('[name="project.assuranceDuration"]').val(),
                    assuranceRemark: form.find('[name="project.assuranceRemark"]').val()
                },
                subprojects: []
            };

            dataTable.data().each(function(d){
              postData.subprojects.push(
                {
                    id:d.id,
                    subProjectId: d.subProjectId,
                    projectId:d.projectId,
                    deviceId:d.deviceId,
                    deviceQuantity:d.deviceQuantity,
                    deviceSpec:d.deviceSpec,
                    remark:d.remark,
                    mechanicalHours:d.mechanicalHours,
                    electricalHours:d.electricalHours,
                    totalMechanicalHours:d.totalElectricalHours,
                    totalElectricalHours:d.totalElectricalHours
                }
              );
            })

            $.ajax({
                url: '${rc.contextPath}/projects/update',
                data: JSON.stringify(postData),
                contentType: 'application/json;charset=UTF-8',
                type: 'POST',
                success: function() {
                        window.location = '${rc.contextPath}/projects/list'
                    } ,//成功执行方法
                error: function(textStatus, errorThrown) {
                    $('#message_dialog').modal();
                }
            });
        }

        $(function() {
            setInterval("keep_session()", 600000);
        });
    </script>

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/app.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/skins/default/default.css" />


    <link rel="shortcut icon" href="${rc.contextPath}/favicon.ico" />
    <link rel="apple-touch-icon" href="${rc.contextPath}/favicon.png" />
</head>

<body class="page-scale-reduced yui-skin-sam ">

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
                    <h5 class="page-title">编辑项目</h5>
                    <hr/>

                    <form class="form-horizontal" role="form" id="form_projects" action="${rc.contextPath}/projects/whs/new_project" method="post">
                        <div class="form-body">
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a href="#tab_1" data-toggle="tab">基本信息</a>
                                </li>
                                <li>
                                    <a href="#tab_2" data-toggle="tab">供货范围</a>
                                </li>

                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active fade in" id="tab_1">

                                    <div class="form-group">
                                        <label class="col-md-3 control-label"><span class="required">*</span>
                                            <label for="projects_name">项目号</label>
                                        </label>
                                        <div class="col-md-9">
                                            <input class="form-control input-medium required autofocus" type="text" name="project.projectCode" value="${project.projectCode}" readonly/>
                                            <input type="checkbox" name="project.projectType" value="已签订合同" ${(project.projectType=='已签订合同')?string('checked','')} />已签订合同

                                            <input type="checkbox" name="project.projectType" value="库存储备项目" ${(project.projectType=='库存储备项目')?string('checked','')}  />库存储备项目

                                            <input type="checkbox" name="project.projectType" value="科研项目"  ${(project.projectType=='科研项目')?string('checked','')}/>科研项目

                                            <input type="checkbox" name="project.projectType" value="虚拟项目" ${(project.projectType=='虚拟项目')?string('checked','')} />虚拟项目

                                            <input type="hidden" name="project.projectId" value="${project.id}">
                                        </div>

                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-3 control-label">客户名称</label>
                                        <div class="col-md-9">
                                            <input type="text" name="project.customerName" value="${project.customerName}" class="form-control input-xlarge" />
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 control-label"><span class="required">*</span>订货通报日期</label>
                                        <div class="col-md-9">
                                            <div class="input-group input-medium date datepicker">
                                                <input type="text" name="project.orderDate" value="${project.orderDate?string('yyyy-MM-dd')}" class="form-control required" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 control-label"><span class="required">*</span>合同交货日期</label>
                                        <div class="col-md-9">
                                            <div class="input-group input-medium date datepicker">
                                                <input type="text" name="project.deliveryDate" value="${project.deliveryDate?string('yyyy-MM-dd')}" class="form-control required" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                                        </div>
                                    </div>



                                  <div class="form-group">
                                      <label class="col-md-3 control-label"><span class="required">*</span>质保期生效时间</label>
                                      <div class="col-md-9">
                                          <div class="input-group input-medium">
                                              <input type="text" name="project.assuranceBegin" value="${project.assuranceBegin}" class="form-control required" />
                                            </div>
                                      </div>
                                  </div>

                                    <div class="form-group">
                                        <label class="col-md-3 control-label"><span class="required">*</span>质保周期</label>
                                        <div class="col-md-9">
                                            <div class="input-group input-medium">
                                              <input type="text" name="project.assuranceDuration" value="${project.assuranceDuration}" class="form-control required" /></div>

                                            </div>
                                        </div>
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">质保备注条件</label>
                                        <div class="col-md-9">
                                            <input type="text" name="project.assuranceRemark" value="${project.assuranceRemark}" class="form-control input-xlarge" />
                                        </div>

                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-primary" id="btnNext1">下一步</button>
                                    </div>


                                </div>

                                <div class="tab-pane fade" id="tab_2">
                                    <div class="btn-group" style="padding-bottom:10px">
                                        <button class="btn btn-default" type="button" onclick="open_device_modal()"><i class="fa fa-plus"></i>添加</button>
                                        <button class="btn btn-default" type="button" onclick="open_modify_device()"><i class="fa fa-edit"></i>修改</button>
                                        <button class="btn btn-default" type="button" onclick="remove_device()"><i class="fa fa-trash-o"></i>删除</button>

                                    </div>

                                    <table class="table table-striped table-bordered table-checkbox" id="device_table">
                                        <thead>
                                            <tr>
                                                <th rowspan="2" class="table-checkbox" data-bSortable="false">
                                                    <input class="group-checkable" data-set="#device_table .checkboxes" type="checkbox">

                                                </th>
                                                <th rowspan="2">序号</th>
                                                <th rowspan="2">子项目号</th>
                                                <th rowspan="2">基本型号</th>
                                                <th rowspan="2">规格</th>
                                                <th rowspan="2">数量</th>
                                                <th colspan="2" class="text-center">单台车间装配额定工时</th>
                                                <th colspan="3" class="text-center">额定总工时</th>
                                                <th rowspan="2">备注</th>
                                            </tr>
                                            <tr>
                                                <th>机械</th>
                                                <th>电气</th>
                                                <th>机械</th>
                                                <th>电气</th>
                                                <th>合计</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                        </tbody>
                                    </table>

                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-primary" onclick="save_new_project()">保存</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </form>





                    <!-- END PAGE CONTENT-->
                </div>
            </div>
        </div>



        <script>
            $("#assuranceDuration").select2({});

            $("[name='project.projectType']").click(function() {
                $.uniform.update($("[name='project.projectType']").attr("checked", false));
                $.uniform.update($(this).attr("checked", true));
            });

            jQuery(document).ready(function() {

                appHandleUniformCheckboxes();
                var columnSort = new Array;


                $('#btnNext1').click(function() {
                    $('a[href=#tab_2]').click();
                });



                dataTable = $('#device_table').DataTable({
                    paging: false,
                    info: false,
                    "bSort": false,
                    "bFilter": false,
                    "bLengthChange": false,
                    "fnInitComplete": function(oSettings, json) {
                        $(this).css('display', '')
                    },
                    data: dataSet,
                    columns: [{
                        data: null
                    }, {
                        data: null
                    }, {
                        data: "subProjectId"
                    }, {
                        data: "device.model"
                    }, {
                        data: "deviceSpec"
                    }, {
                        data: "deviceQuantity"
                    }, {
                        data: "mechanicalHours"
                    }, {
                        data: "electricalHours"
                    }, {
                        data: "totalMechanicalHours"
                    }, {
                        data: "totalElectricalHours"
                    }, {
                        data: null,
                        "render": function(data, type, row, meta) {
                            return parseInt(row['totalMechanicalHours']) + parseInt(row['totalElectricalHours']);
                        }
                    }, {
                        data: "remark"
                    }],
                    "columnDefs": [{
                        "targets": 0,
                        "searchable": false,
                        "render": function(data, type, row) {
                            return '<input class="checkboxes"  type="checkbox" onchange="change_row_selected(this)">';
                        }
                    }]
                });


                //init table indexes
                renderIndexes([1]);
                jQuery('#device_table tbody tr .checkboxes').change(function() {
                    console.log($(this));
                    if ($(this).attr('checked')) {
                        selected_items.push($(this).attr('value'));
                        $(this).parents('tr').addClass("selected");

                    } else {
                        $(this).parents('tr').removeClass("selected");
                        selected_items = array_remove(selected_items, $(this).attr('value'))
                    }


                });

                jQuery('#device_table .group-checkable').change(function() {

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


            function change_row_selected(this_tr) {
                console.log($(this_tr));
                if ($(this_tr).attr('checked')) {
                    selected_items.push($(this_tr).attr('value'));
                    $(this_tr).parents('tr').addClass("selected");

                } else {
                    $(this_tr).parents('tr').removeClass("selected");
                    selected_items = array_remove(selected_items, $(this_tr).attr('value'));
                }


            }

            function generateNewDevice() {
                var new_device = {};
                new_device.deviceCode = $('#device_types_id').select2('data').deviceCode;
                new_device.subProjectId = $('#linkto_project_id').text()+$('#sub_project_id').val()

                new_device.deviceId = $('#device_types_id').val();
                new_device.deviceQuantity = ($('#new_device_count').val());
                new_device.totalMechanicalHours = ($('#new_total_mechanical_hours').val());
                new_device.totalElectricalHours = ($('#new_total_electrical_hours').val());
                new_device['device'] = {}
                new_device.device.model = ($('#new_device_model').val());
                new_device.deviceSpec = ($('#new_device_spec').val());
                new_device.mechanicalHours = ($('#new_mechanical_hours').val());
                new_device.electricalHours = ($('#new_electrical_hours').val());
                new_device.remark = ($('#new_device_remark').val()) || '';
                return new_device;
            }

            function save_new_device() {

                if ($('#device_types_id').prop('disabled')) {
                    update_new_device();
                } else {
                    add_new_device();
                }
            }

            function update_new_device() {
                var new_device = generateNewDevice();
                var data = dataTable.row('.selected').data();
                  data.deviceCode = new_device.deviceCode;
                  data.deviceId = new_device.deviceId;
                  data.subProjectId = new_device.subProjectId;
                  data.deviceSpec = new_device.deviceSpec ;
                  data.deviceQuantity = new_device.deviceQuantity ;
                  data.mechanicalHours = new_device.mechanicalHours ;
                  data.electricalHours = new_device.electricalHours ;
                  data.totalMechanicalHours = new_device.totalMechanicalHours;
                  data.totalElectricalHours = new_device.totalElectricalHours;
                  data.remark = new_device.remark ;

                dataTable.rows().invalidate();
                renderIndexes([1]);
                dataTable.$('tr.selected').removeClass('selected');
                appHandleUniformCheckboxes();

                $('#modal_new_device').modal('toggle');
            }

            function add_new_device() {
                var new_device = generateNewDevice();

                var exists = 0
                dataTable.data().each(
                    function(item) {
                        console.log(item.deviceId);
                        console.log(new_device.deviceId);
                        if (item.deviceId == new_device.deviceId) {
                            exists++;
                        }
                    }
                );
                if (exists > 0) {
                    if (!confirm('设备已存在！，是否仍要添加？')) {
                        return false;
                    }
                }
                dataTable.row.add(new_device).draw(false);
                renderIndexes([1]);
                appHandleUniformCheckboxes();
                $('#modal_new_device').modal('toggle');

            }

            function remove_device() {
              if(!confirm('确认删除吗？')){
                return false;
              }
                dataTable.rows('.selected').remove();
                renderIndexes([1]);
            }

            function open_modify_device() {
                if (dataTable.rows('.selected').data().length != 1) {
                    $('#message_dialog_body').html('请选择1行');
                    $('#message_dialog').modal();
                } else { //edit
                    var data = dataTable.row('.selected').data();
                    console.log(data.model)
                    $('#device_types_id').val(data.deviceId).trigger('change');
                    if(data.subProjectId&&data.subProjectId.indexOf('-')>0){
                      var index = data.subProjectId.indexOf('-');
                      $('#sub_project_id').val(data.subProjectId.substring(index+1));

                    }

                    $('#new_device_model').val(data.model);
                    $('#new_device_spec').val(data.deviceSpec);
                    $('#new_device_count').val(data.deviceQuantity);
                    $('#new_mechanical_hours').val(data.mechanicalHours);
                    $('#new_electrical_hours').val(data.electricalHours);
                    $('#new_total_mechanical_hours').val(data.totalMechanicalHours);
                    $('#new_total_electrical_hours').val(data.totalElectricalHours);
                    $('#new_device_remark').val(data.remark);
                    $('#device_types_id').prop('disabled', true);

                    $('#modal_new_device').modal();

                }
            }

            function open_device_modal() {

                if ($('#form_projects').validate().element($('[name="project.projectCode"]'))) {
                    $('#device_types_id').prop('disabled', false);
                    $('#form_new_device')[0].reset();
                    $('#device_types_id').val("").trigger('change');
                    $('#modal_new_device').modal();
                } else {
                    $('#message_dialog_title').html('错误');
                    $('#message_dialog_body').html('缺少项目号，请完善项目基本信息！');
                    $('#message_dialog').modal();
                }

            }

            function renderIndexes(indexes) {
                var index1 = indexes.pop();
                var index2 = indexes.pop();
                if (index1 == 1 || index2 == 1) {
                    dataTable.column(1, "").nodes().each(function(cell, i) {
                        cell.innerHTML = i + 1;
                    });
                }
                if (index1 == 2 || index2 == 2) {
                    var projectCode = $('[name="project.projectCode"]').val();
                    dataTable.column(2, "").nodes().each(function(cell, i) {
                        cell.innerHTML = projectCode + '-' + (i + 1 + 100).toString().substring(1);
                    });
                }
                dataTable.draw(false);;
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
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/bootstrap-datepicker/js/locales/bootstrap-datepicker.zh-CN.js"></script>



    <!-- END JAVASCRIPTS -->
    <div id="modal_new_device" class="modal fade col-md-6 col-md-offset-3" tabindex="-1">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h5 class="modal-title">设备</h5>
            </div>


            <div class="modal-body">
              <form id="form_new_device" class="form-horizontal" role="form" action="" method="post">
                  <div class="form-body">
                    <div class="form-group">
                        <label class="col-md-4 control-label">子项目号</label>
                        <div class="col-md-6">
                            <div class="input-group  input-large">
                              <span class="input-group-addon" id="linkto_project_id">${project.projectCode}-</span>
                              <input type="number" min="01" max="99"  value="" class="form-control" id="sub_project_id" />

                            </div>
                        </div>
                    </div>
                      <div class="form-group">
                          <label class="col-md-4 control-label">基本型号</label>
                          <div class="col-md-6">
                              <div class="input-group">

                                  <select class="input-large" name="projects[projects_types_id]" id="device_types_id">
                                      <option value="" selected="selected"></option>
                                  </select>

                              </div>

                          </div>
<!-- <button  onClick="openModalBox('${rc.contextPath}/devices/modal_new'); return false;">新建</button> -->

                      </div>
                      <div class="form-group">
                          <label class="col-md-4 control-label">规格</label>
                          <div class="col-md-6">
                              <div class="input-group equipment-type">
                                <input type="text"  value="" class="form-control input-large" id="new_device_spec" />

                              </div>
                          </div>
                      </div>
                      <div class="form-group">
                          <label class="col-md-4 control-label">数量</label>
                          <div class="col-md-6">
                              <input onchange="change_device_count()" type="number" min="1" max="999999" id="new_device_count" value="1" class="form-control input-large"/>
                          </div>
                      </div>

                      <div class="form-group">
                          <label class="col-md-4 control-label">机械装配工时（单台）</label>
                          <div class="col-md-6">
                              <input onchange="change_mechanical_hours()" type="text" id="new_mechanical_hours" value="" class="form-control input-large" />
                          </div>
                      </div>

                      <div class="form-group">
                          <label class="col-md-4 control-label">电气装配工时（单台）</label>
                          <div class="col-md-6">
                              <input onchange="change_electrical_hours()" type="text" id="new_electrical_hours" value="" class="form-control input-large" />
                          </div>
                      </div>

                      <div class="form-group">
                          <label class="col-md-4 control-label">机械装配工时（总）</label>
                          <div class="col-md-6">
                              <input type="text" id="new_total_mechanical_hours" value="" class="form-control input-large" />
                          </div>
                      </div>

                      <div class="form-group">
                          <label class="col-md-4 control-label">电气装配工时（总）</label>
                          <div class="col-md-6">
                              <input type="text" id="new_total_electrical_hours" value="" class="form-control input-large" />
                          </div>
                      </div>

                      <div class="form-group">
                          <label class="col-md-4 control-label">备注</label>
                          <div class="col-md-6">
                              <input type="text" id="new_device_remark" value="" class="form-control input-large" />
                          </div>
                      </div>
                      <script type="text/javascript">
                          $(document).ready(function() {
                              $.extend($.validator.messages, {
                                  required: '必须填写此域！'
                              });

                              $("#form_projects").validate({
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
                  <input type="hidden" id="new_device_model" value="">

              </form>


            </div>

            <div class="modal-footer">
                <input type="hidden" id="deviceOperation" value="">
                <button type="button" class="btn btn-primary" id="okbtn" onclick="save_new_device()">确定</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>


        </div>
    </div>
    <script type="text/javascript" src="${rc.contextPath}/assets/scripts/app.js"></script>

    <script>
        jQuery(document).ready(function() {
            App.init();

            var device_options = [];

            $.ajax({
                url: '${rc.contextPath}/devices/list4select',
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
                    new_option.text = json[index].deviceCode;
                    new_option.mechanicalHours = json[index].mechanicalHours;
                    new_option.electricalHours = json[index].electricalHours;
                    new_option.model = json[index].model;

                    device_options.push(new_option);
                });

                //加载数据后初始化select2

                $('#device_types_id').select2({
                    data: device_options,
                    dropdownParent: $("#modal_new_device")

                });

                $('#device_types_id').on('select2:select', function(e) {
                    var data = e.params.data;
                    $('#new_mechanical_hours').val(data.mechanicalHours);
                    $('#new_electrical_hours').val(data.electricalHours);
                    $('#new_device_model').val(data.model);
                    change_electrical_hours();
                    change_mechanical_hours();
                });


            }



            qdpm_app_init();



        });

        function change_device_count() {
            change_mechanical_hours();
            change_electrical_hours();

        }

        function change_electrical_hours() {
            if ($('#new_electrical_hours').val()) {
                var totalHours = parseInt($('#new_electrical_hours').val()) * parseInt($('#new_device_count').val())
                $('#new_total_electrical_hours').val(totalHours);
            }
        }

        function change_mechanical_hours() {
            if ($('#new_mechanical_hours').val()) {
                var totalHours = parseInt($('#new_mechanical_hours').val()) * parseInt($('#new_device_count').val())
                $('#new_total_mechanical_hours').val(totalHours);
            }
        }



    </script>

    <div class="modal fade" id="message_dialog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="message_dialog_title">提示</h4>
                </div>
                <div class="modal-body" id="message_dialog_body"></div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal -->
    </div>


</body>

</html>
