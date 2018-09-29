<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>
        <@spring.message "system.title"/> |
        <@spring.message "menu.desktop"/>
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
    
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/app.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/select2/select2_4.0.6.min.css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<body class="hold-transition skin-blue sidebar-mini" ng-app="myApp" ng-controller="myCtl">

    <div class="wrapper">

        <!-- BEGIN HEADER -->
        <#include "/common/config/top.ftl" />

        <@top 1/>

        <!-- END HEADER -->
        <!-- Left side column. contains the logo and sidebar -->
        <#include "/common/config/left.ftl" />

        <@menu '1-0' />

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
      项目管理 <small>项目详情</small>
    </h1>

            </section>

            <!-- Main content -->
            <section class="content container-fluid">

                <div class="panel-group box box-primary" id="panel-group">

                    <!-- 项目信息开始 -->
                    <div id="panel_basic" class="panel-default box-header with-border" style="border:none">
                        <div class="panel-heading">
                            <span class="panel-title"><a data-toggle="collapse"
href="#collapseOne" >
项目信息
</a></span>
                            <div class="clearfix"></div>
                        </div>

                        <div id="collapseOne" class="collapse in" style="border:none">
                            <div class="panel-body tab-content ">
                                <div id="collapseOne_1" class="tab-pane active fade in">

                                    <div class="row">
                                        <label class="col-md-3 text-right">
                                            <label for="projects_name">项目号</label>
                                        </label>
                                        <div class="col-md-9">
                                            <span>{{project.projectCode}}</span>

                                        </div>

                                        <div class="inline" ng-repeat="item in projectTypes">
                                            <input type="checkbox" disabled ng-checked="hasType(item.name)" /> {{item.name}}
                                        </div>

                                        <input type="hidden" name="project.projectId" value="${project.id}">
                                    </div>


                                    <div class="row">
                                        <label class="col-md-3 text-right">客户名称</label>
                                        <div class="col-md-6">
                                            {{project.customerName}}
                                        </div>
                                    </div>

                                    <div class="row">
                                        <label class="col-md-3 text-right">订货通报日期</label>
                                        <div class="col-md-6">
                                            {{project.orderDate}}
                                        </div>
                                    </div>

                                    <div class="row">
                                        <label class="col-md-3 text-right">合同交货日期</label>
                                        <div class="col-md-6">
                                            {{project.deliveryDate}}
                                        </div>
                                    </div>



                                    <div class="row">
                                        <label class="col-md-3 text-right">质保期生效时间</label>
                                        <div class="col-md-6">
                                            {{project.assuranceBegin}}

                                        </div>
                                    </div>

                                    <div class="row">
                                        <label class="col-md-3 text-right">质保周期</label>
                                        <div class="col-md-6">
                                            {{project.assuranceDuration}}
                                        </div>
                                    </div>
                                    <div class="row">
                                        <label class="col-md-3 text-right">质保备注条件</label>
                                        <div class="col-md-6">
                                            {{project.assuranceRemark}}
                                        </div>

                                    </div>


                                    <div class="row">
                                        <label class="col-md-3"></label>

                                        <div class="col-md-6">
                                            <a class="btn btn-default" data-toggle="tab" href="#collapseOne_2">编辑</a>
                                        </div>
                                    </div>

                                </div>
                                <div id="collapseOne_2" class="tab-pane fade form-body">
                                    <form id="form_basic" class="form-horizontal">
                                        <div class="form-group">
                                            <label class="col-md-3 control-label"><span class="required">*</span>
                                                <label for="projects_name">项目号</label>
                                            </label>
                                            <div class="col-md-6">
                                                <input class="form-control input-medium required autofocus" type="text" ng-model="project.projectCode" name="project.projectCode" readonly/>
                                                <div class="inline" ng-repeat="item in projectTypes">
                                                    <input type="checkbox" ng-click="change_type(item.name)" ng-checked="hasType(item.name)" /> {{item.name}}
                                                </div>
                                                <input type="hidden" name="project.projectId" value="${project.id}">
                                            </div>

                                        </div>


                                        <div class="form-group">
                                            <label class="col-md-3 control-label">客户名称</label>
                                            <div class="col-md-6">
                                                <input type="text" ng-model="project.customerName" value="${project.customerName}" class="form-control input-xlarge" />
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-3 control-label"><span class="required">*</span>订货通报日期</label>
                                            <div class="col-md-6">
                                                <div class="input-group input-medium date datepicker">
                                                    <input type="text" ng-model="project.orderDate" value="${project.orderDate?string('yyyy-MM-dd')}" class="form-control required" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-3 control-label"><span class="required">*</span>合同交货日期</label>
                                            <div class="col-md-6">
                                                <div class="input-group input-medium date datepicker">
                                                    <input type="text" ng-model="project.deliveryDate" value="${project.deliveryDate?string('yyyy-MM-dd')}" class="form-control required" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                                            </div>
                                        </div>



                                        <div class="form-group">
                                            <label class="col-md-3 control-label"><span class="required">*</span>质保期生效时间</label>
                                            <div class="col-md-6">
                                                <input type="text" ng-model="project.assuranceBegin" value="${project.assuranceBegin}" class="form-control required" />
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-3 control-label"><span class="required">*</span>质保周期</label>
                                            <div class="col-md-6">
                                                <input type="text" ng-model="project.assuranceDuration" value="${project.assuranceDuration}" class="form-control required" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">质保备注条件</label>
                                            <div class="col-md-6">
                                                <input type="text" ng-model="project.assuranceRemark" value="${project.assuranceRemark}" class="form-control input-xlarge" />
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label"></label>

                                            <div class="col-md-6">
                                                <a class="btn btn-primary" ng-click="save()">更新</a>
                                                <a class="btn btn-default" data-toggle="tab" ng-click="reset()" href="#collapseOne_1">取消</a>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                        <!-- 项目信息结束 -->

                        <!-- 供货范围 设备信息开始 -->
                        <div id="panel_basic" class="panel-default" style="border:none">
                            <div class="panel-heading">
                                <span class="panel-title"><a data-toggle="collapse"
href="#collapse2" >
供货范围
</a></span>
                                <div class="clearfix"></div>
                            </div>

                            <div id="collapse2" class="collapse in" style="border:none">
                                <div class="panel-body tab-content ">
                                    <div id="collapse2_1" class="tab-pane active fade in">
                                        <div class="btn-group" style="padding-bottom:10px">
                                            <button class="btn btn-default" type="button" ng-click="addDevice()"><i class="fa fa-plus"></i>添加</button>
                                            <button class="btn btn-default" type="button" ng-click="editDevice()"><i class="fa fa-edit"></i>修改</button>
                                            <button class="btn btn-default" type="button" onclick="remove_device()"><i class="fa fa-trash-o"></i>删除</button>

                                        </div>
                                        <table class="table table-striped table-bordered table-checkbox" id="device_table" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th rowspan="2" class="table-checkbox" data-bSortable="false">
                                                        <input class="group-checkable" data-set="#device_table .checkboxes" type="checkbox">

                                                    </th>
                                                    <th rowspan="2" style="min-width:30px;">序号</th>
                                                    <th rowspan="2">子项目号</th>
                                                    <th rowspan="2">基本型号</th>
                                                    <th rowspan="2">规格</th>
                                                    <th rowspan="2" style="min-width:30px;">数量</th>
                                                    <th colspan="2" style="min-width:80px;">单台车间装配额定工时</th>
                                                    <th colspan="3" style="min-width:80px;">额定总工时</th>
                                                    <th rowspan="2" style="min-width:80px;">备注</th>
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

                                    </div>

                                </div>

                            </div>
                        </div>
                        <!-- 供货范围 设备信息结束 -->



                        <div class="modal-footer">
                            <#if project.projectStatus=='新建'>
                                <button type="button" class="btn btn-warning">下达</button>
                            </#if>
                        </div>

                        <!-- END PAGE CONTENT-->
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
    <!-- ./wrapper -->



    <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
    <!-- BEGIN CORE PLUGINS -->
    <!--[if lt IE 9]>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/respond.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/excanvas.min.js"></script>
<![endif]-->


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
                                    <input type="number" min="01" max="99" value="" class="form-control" id="sub_project_id" />

                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">基本型号</label>
                            <div class="col-md-6">

                                <select class="input-large" name="projects[projects_types_id]" style="width:100%" id="device_types_id">
                                    <option value="" selected="selected"></option>
                                </select>


                            </div>
                            <!-- <button  onClick="openModalBox('${rc.contextPath}/devices/modal_new'); return false;">新建</button> -->

                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">规格</label>
                            <div class="col-md-6">
                                <input type="text" ng-model="device.deviceSpec" class="form-control input-large" id="new_device_spec" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">数量</label>
                            <div class="col-md-6">
                                <input onchange="change_device_count()" ng-model="device.deviceQuantity" type="number" min="1" max="999999" id="new_device_count" value="1" class="form-control input-large" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label">机械装配工时（单台）</label>
                            <div class="col-md-6">
                                <input onchange="change_mechanical_hours()" ng-model="device.mechanicalHours" type="text" id="new_mechanical_hours" class="form-control input-large" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label">电气装配工时（单台）</label>
                            <div class="col-md-6">
                                <input onchange="change_electrical_hours()" type="text" id="new_electrical_hours" ng-model="device.electricalHours" class="form-control input-large" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label">机械装配工时（总）</label>
                            <div class="col-md-6">
                                <input type="text" id="new_total_mechanical_hours" ng-model="device.totalMechanicalHours" class="form-control input-large" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label">电气装配工时（总）</label>
                            <div class="col-md-6">
                                <input type="text" id="new_total_electrical_hours" ng-model="device.totalElectricalHours" class="form-control input-large" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label">备注</label>
                            <div class="col-md-6">
                                <input type="text" id="new_device_remark" ng-model="device.remark" class="form-control input-large" />
                            </div>
                        </div>

                        <div id="form_error_handler" style="display:none"></div>

                    </div>
                    <input type="hidden" id="new_device_model" value="">

                </form>


            </div>

            <div class="modal-footer">
                <input type="hidden" id="deviceOperation" value="">
                <button type="button" class="btn btn-primary" id="okbtn" ng-click="saveDevice()">确定</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>


        </div>
    </div>

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

<!-- jQuery 3 -->
<script src="${rc.contextPath}/assets/plugins/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${rc.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${rc.contextPath}/assets/dist/js/adminlte.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/angular1.4.6.min.js"></script>

<script type="text/javascript" src="${rc.contextPath}/assets/plugins/datatables/jquery.dataTables.js"></script>

<script type="text/javascript" src="${rc.contextPath}/assets/plugins/select2/select2_4.0.6.min.js"></script>

<script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/bootstrap-datepicker/js/locales/bootstrap-datepicker.zh-CN.js"></script>

<script>
    var dataTable;
    var dataSet = JSON.parse('${subprojects}');

    var ngApp = angular.module("myApp", []);
    ngApp.controller("myCtl", function($scope, $http) {
        $scope.project = {
            id: '${project.id}',
            projectCode: '${project.projectCode}',
            customerName: '${project.customerName}',
            projectType: '${project.projectType}',
            deliveryDate: '${project.deliveryDate?string("yyyy-MM-dd")}',
            orderDate: '${project.orderDate?string("yyyy-MM-dd")}',
            assuranceBegin: '${project.assuranceBegin}',
            assuranceDuration: '${project.assuranceDuration}',
            assuranceRemark: '${project.assuranceRemark}',
        };
        $scope.projectTypes = [{
            name: "已签订合同"
        }, {
            name: "库存储备项目"
        }, {
            name: "科研项目"
        }, {
            name: "虚拟项目"
        }];

        $scope.initialPro = angular.copy($scope.project);
        $scope.save = function() {
            var req = {
                method: 'POST', //请求的方式
                url: '${rc.contextPath}/projects/${project.id}', //请求的地址
                headers: {
                    'Content-Type': 'application/json; charset=UTF-8',
                    'Accept': '*/*'
                }, //请求的头，如果默认可以不写
                timeout: 5000, //超时时间，还没有测试
                data: JSON.stringify($scope.project) //message 必须是a=b&c=d的格式
            };
            $http(req).success(function(data, status, headers, config) {
                //成功后的数据处理,更新初始状态
                $scope.initialPro = angular.copy($scope.project);
                $('a[href="#collapseOne_1"]').tab('show');
            }).error(function(data, status, headers, config) {
                //失败后的提示
                modalAlert('更新失败！');

            });
        };
        $scope.hasType = function(value) {
            return $scope.project.projectType == value;
        };
        $scope.change_type = function(value) {
            return $scope.project.projectType = value;
        };
        $scope.reset = function() {
            $scope.project = angular.copy($scope.initialPro);
        };
        $scope.newDevice = {
            id: '',
            subProjectId: '',
            projectId: '${project.id}',
            deviceId: '',
            deviceQuantity: '',
            deviceSpec: '',
            remark: '',
            mechanicalHours: '',
            electricalHours: '',
            totalMechanicalHours: '',
            totalElectricalHours: ''
        };
        $scope.device = {};
        $scope.saveDevice = function() {

            if ($('#device_types_id').prop('disabled')) {
                //修改
                var req = {
                    method: 'POST', //请求的方式
                    url: '${rc.contextPath}/projects/subproject/' + $scope.device.id, //请求的地址
                    headers: {
                        'Content-Type': 'application/json; charset=UTF-8',
                        'Accept': '*/*'
                    }, //请求的头，如果默认可以不写
                    timeout: 5000, //超时时间
                    data: JSON.stringify($scope.device) //message 必须是a=b&c=d的格式
                };
                $http(req).success(function(data, status, headers, config) {
                    //成功后的数据处理,更新初始状态
                    $scope.deviceRef = $scope.device;
                    dataTable.rows().invalidate();
                    $('#modal_new_device').modal('toggle');
                }).error(function(data, status, headers, config) {
                    //失败后的提示
                    modalAlert('更新失败！');

                });



            } else {
                //新增
                $scope.device.subProjectId = $('#linkto_project_id').text() + $('#sub_project_id').val();
                $scope.device.deviceId = $('#device_types_id').val();
                var req = {
                    method: 'POST', //请求的方式
                    url: '${rc.contextPath}/projects/subproject', //请求的地址
                    headers: {
                        'Content-Type': 'application/json; charset=UTF-8',
                        'Accept': '*/*'
                    }, //请求的头，如果默认可以不写
                    timeout: 5000, //超时时间
                    data: JSON.stringify($scope.device)
                };
                $http(req).success(function(data, status, headers, config) {
                    //成功后的数据处理,更新初始状态
                    console.log(data.id);
                    data.device = {};
                    data.device.model = $('#device_types_id').find("option[value='" + data.deviceId + "']").text();
                    dataTable.row.add(data).draw(false);
                    $('#modal_new_device').modal('toggle');
                }).error(function(data, status, headers, config) {
                    //失败后的提示
                    modalAlert('更新失败！');

                });

                $scope.deviceRef = $scope.device;
                dataTable.rows().invalidate();
            }
        };
        $scope.addDevice = function() {
            $scope.device = angular.copy($scope.newDevice);
            $('#modal_new_device').modal();
        }
        $scope.editDevice = function() {
            var id_array = selected_id_array();
            if (id_array.length != 1) {
                modalAlert('请选择1行');
                return;
            }
            var data = {};
            dataTable.data().each(function(d) {
                if (d.id == id_array[0]) {
                    data = d;
                    $scope.deviceRef = angular.copy(data);
                    $scope.device = data;
                }
            });

            $('#device_types_id').val(data.deviceId).trigger('change');
            if (data.subProjectId && data.subProjectId.indexOf('-') > 0) {
                var index = data.subProjectId.indexOf('-');
                $('#sub_project_id').val(data.subProjectId.substring(index + 1));

            }
            $('#device_types_id').prop('disabled', true);
            $('#sub_project_id').prop('disabled', true);

            $('#modal_new_device').modal();


        };
    });


    function save_new_project() {

        dataTable.data().each(function(d) {
            postData.subprojects.push({
                id: d.id,
                subProjectId: d.subProjectId,
                projectId: d.projectId,
                deviceId: d.deviceId,
                deviceQuantity: d.deviceQuantity,
                deviceSpec: d.deviceSpec,
                remark: d.remark,
                mechanicalHours: d.mechanicalHours,
                electricalHours: d.electricalHours,
                totalMechanicalHours: d.totalElectricalHours,
                totalElectricalHours: d.totalElectricalHours
            });
        })

        $.ajax({
            url: '${rc.contextPath}/projects/update',
            data: JSON.stringify(postData),
            contentType: 'application/json;charset=UTF-8',
            type: 'POST',
            success: function() {
                window.location = '${rc.contextPath}/projects/list'
            }, //成功执行方法
            error: function(textStatus, errorThrown) {
                $('#message_dialog').modal();
            }
        });
    }

    function selected_id_array() {
        var id_array = [];
        jQuery("#device_table .checkboxes").each(function(index, checkbox) {
            if (jQuery(checkbox).is(':checked')) {
                id_array.push($(this).val());
            }
        })
        return id_array;
    }

    $("#assuranceDuration").select2({});

    $("[name='project.projectType']").click(function() {
        $("[name='project.projectType']").prop("checked", false);
        $(this).prop("checked", true);
    });

    jQuery(document).ready(function() {

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
                data: null,
                "render": function(data, type, row, meta) {
                    return meta.row + 1
                }
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
                    return '<input class="checkboxes"  type="checkbox" value=' + row['id'] + '>';
                }
            }]
        });


        //init table indexes

        jQuery('#device_table .group-checkable').change(function() {

            var checked = jQuery(this).is(":checked");

            jQuery(".checkboxes").each(function() {
                if (checked) {
                    $(this).prop("checked", true);
                } else {
                    $(this).prop("checked", false);
                }
            })
        });



    });

    function generateNewDevice() {
        var new_device = {};
        new_device.deviceCode = $('#device_types_id').select2('data').deviceCode;
        new_device.subProjectId = $('#linkto_project_id').text() + $('#sub_project_id').val()

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

    function remove_device() {
        var id_array = selected_id_array();
        if (id_array.length < 1) {
            modalAlert('请选择要删除的行');
            return;
        }
        if (!confirm('确认删除吗？')) {
            return false;
        }

        $.ajax({
            url: '${rc.contextPath}/projects/${project.id}/subproject/remove',
            data: JSON.stringify(id_array),
            contentType: 'application/json;charset=UTF-8',
            type: 'POST',
            success: function(response) {
                var result = eval(response);
                if(result.code == "0000"){
                  jQuery(".checkboxes").each(function() {
                    $('#device_table tr').removeClass('selected');
                    if(id_array.indexOf($(this).attr('value')) >= 0){
                      $(this).parents('tr').addClass("selected");
                    }
                  })
                  dataTable.rows('.selected').remove().draw(false);
                }
                modalAlert(result.message);
            }, //成功执行方法
            error: function(textStatus, errorThrown) {
                $('#message_dialog_body').html("系统错误。");
                $('#message_dialog').modal();
            }
        });

    }

    function modalAlert(msg) {
        $('#message_dialog_body').html(msg);
        $('#message_dialog').modal();
    }


    jQuery(document).ready(function() {

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
                $('#new_mechanical_hours').trigger('change');
                $('#new_electrical_hours').val(data.electricalHours);
                $('#new_electrical_hours').trigger('change');
                $('#new_device_model').val(data.model);
                change_electrical_hours();
                change_mechanical_hours();
            });


        }

    });

    function change_device_count() {
        change_mechanical_hours();
        change_electrical_hours();

    }

    function change_electrical_hours() {
        if ($('#new_electrical_hours').val()) {
            var totalHours = parseInt($('#new_electrical_hours').val()) * parseInt($('#new_device_count').val())
            $('#new_total_electrical_hours').val(totalHours);
            $('#new_total_electrical_hours').trigger('change');
        }
    }

    function change_mechanical_hours() {
        if ($('#new_mechanical_hours').val()) {
            var totalHours = parseInt($('#new_mechanical_hours').val()) * parseInt($('#new_device_count').val())
            $('#new_total_mechanical_hours').val(totalHours);
            $('#new_total_mechanical_hours').trigger('change');
        }
    }

    $('.datepicker').datepicker({
        autoclose: true,
        format: 'yyyy-mm-dd',
        todayHighlight: true,
        language: "zh-CN"
    });
</script>

</html>
