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

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-modal/css/bootstrap-modal.css" />

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/fullcalendar-2.3.0/fullcalendar.css" />

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/jquery-nestable/jquery.nestable.css" />

    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-1.10.2.min.js"></script>

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/select2/select2_conquer.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/data-tables/DT_bootstrap.css" />
    <!-- <script type="text/javascript" src="${rc.contextPath}/assets/plugins/data-tables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/data-tables/DT_bootstrap.js"></script> -->
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/datatables/jquery.dataTables.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/datatables/jquery.dataTables.css" />

    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/select2/select2.min.js"></script>

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-datepicker/css/datepicker.css" />

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-datetimepicker/css/datetimepicker.css" />

    <script type="text/javascript" src="${rc.contextPath}/assets/js/uploadifive-v1.2.2/jquery.uploadifive.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/js/uploadifive-v1.2.2/uploadifive.css" />

    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/ckeditor/ckeditor.js"></script>

    <script type="text/javascript" src="${rc.contextPath}/assets/js/app.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/js/cluetip1.2.5/jquery.cluetip.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/js/cluetip1.2.5/jquery.cluetip.css" />

    <script>
        var sf_public_path = '${rc.contextPath}/';
        var selected_items = new Array();
        var CKEDITOR_holders = new Array();

        function keep_session() {
            $.ajax({
                url: '${rc.contextPath}/home'
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
        <@menu 1/>

        <!-- END SIDEBAR -->

        <!-- BEGIN CONTENT -->

        <div class="page-content-wrapper">
            <div class="page-content-wrapper">
                <div class="page-content">
                    <div id="ajax-modal" class="modal fade" tabindex="-1" data-replace="true" data-keyboard="false" data-backdrop="static" data-focus-on=".autofocus"></div>
                    <h3 class="page-title">新建项目</h3>
                    <hr/>



                    <form class="form-horizontal" role="form" id="projects" action="${rc.contextPath}/projects/whs/new_project" method="post" enctype="multipart/form-data">
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
                                            <input class="form-control input-medium required autofocus" type="text" name="projects[name]" value="" id="projects_name" />


                                        </div>
                                        <label class="checkbox-inline">
                                            <input type="checkbox" checked />已签订合同
                                        </label>

                                        <label class="checkbox-inline">
                                            <input type="checkbox" />库存储备项目
                                        </label>
                                        <label class="checkbox-inline">
                                            <input type="checkbox" />科研项目
                                        </label>
                                        <label class="checkbox-inline">
                                            <input type="checkbox" />虚拟项目
                                        </label>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-3 control-label">客户名称</label>
                                        <div class="col-md-9">
                                            <input type="text" name="extra_fields[7]" value="" class="form-control input-xlarge" />
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 control-label"><span class="required">*</span>订货通报日期</label>
                                        <div class="col-md-9">
                                            <div class="input-group input-medium date datepicker">
                                                <input type="text" name="orderdate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 control-label"><span class="required">*</span>合同交货日期</label>
                                        <div class="col-md-9">
                                            <div class="input-group input-medium date datepicker">
                                                <input type="text" name="deliverydate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-3 control-label"><span class="required">*</span>质保期生效时间</label>
                                        <div class="col-md-9">
                                            <div class="input-group input-medium date datepicker">
                                                <input type="text" name="assurance_date" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 control-label"><span class="required">*</span>质保周期</label>
                                        <div class="col-md-9">
                                            <div class="input-group input-medium">
                                                <select class="" name="assurance_duration">
                                                    <option value=""></option>

                                                    <option value="1">1年</option>
                                                    <option value="3">3年</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">质保备注条件</label>
                                        <div class="col-md-9">
                                            <input type="text" name="assurance_remark" value="" class="form-control input-xlarge" />
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-primary" id="btnNext1">下一步</button>
                                    </div>


                                </div>

                                <div class="tab-pane fade" id="tab_2">

                                    <button class="btn btn-default date-set" type="button" onclick="openModalBox('${rc.contextPath}/projects/whs/modal_newequipment')"><i class="fa fa-plus"></i>添加设备</button>
                                    <br/>
                                    <table class="table table-striped table-bordered table-hover" id="device-table">
                                        <thead>
                                            <tr>
                                              <th rowspan="2">序号</th>

                                                <th rowspan="2">子项目号</th>
                                                <th rowspan="2">基本型号</th>
                                                <th rowspan="2">规格</th>
                                                <th rowspan="2">数量</th>
                                                <th colspan="2">单台车间装配额定工时</th>
                                                <th colspan="3">额定总工时</th>
                                                <th rowspan="2">备注</th>
                                                <th rowspan="2">操作</th>
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
                                        <button type="button" class="btn btn-primary">保存</button>
                                        <button type="button" class="btn btn-warning">下达</button>
                                    </div>

                                </div>


                            </div>


                        </div>




                        <input type="hidden" name="projects[id]" id="projects_id" />
                        <input type="hidden" name="projects[created_by]" value="5" id="projects_created_by" />
                        <input type="hidden" name="projects[created_at]" value="2018-05-13 12:31:42" id="projects_created_at" />
                        <input type="hidden" name="projects[_csrf_token]" value="ee31984635362ad4266aee5c9c6ff2b1" id="projects__csrf_token" />
                        <input type="hidden" name="redirect_to" id="redirect_to" />




                        <script>
                            jQuery(document).ready(function() {
                                appHandleUniform();

                                $('#btnNext1').click(function() {
                                    $('a[href=#tab_2]').click();
                                });

                                var dataSet = [
                                          {
                                            "index":"01",
                                            "subid":"HM0100-01",
                                            "device": [
                                              "DHQ",
                                              "3/3",
                                              "1"
                                            ],
                                            "hr": [
                                              "800",
                                              "200"
                                            ],
                                            "hr2": [
                                              "800",
                                              "200",
                                              "1000"
                                            ],
                                            "extn": ""
                                          }
                                        ];

                                var dataTable = $('#device-table').dataTable({
                                  paging: false,
                                  info:false,
                                  "bSort": true,
                                  "bFilter":false,
                                  "bLengthChange":false,
                                  "fnInitComplete": function (oSettings, json) { $(this).css('display','') },
                                  data:dataSet,
                                  "columns": [
                                    {
                "className":      'details-control',
                "orderable":      false,
                "data":           "index",
                "defaultContent": ''
            },
                                      { "data": "subid" },
                                      { "data": "device.0" },
                                      { "data": "device.1" },
                                      { "data": "device.2" },
                                      { "data": "hr.0" },
                                      { "data": "hr.1" },
                                      { "data": "hr2.0" },
                                      { "data": "hr2.1" },
                                      { "data": "hr2.2" },
                                      { "data": "extn" },
                                      { "data": null,
                                      "defaultContent": '<a>删除</a><a>修改</a>',
                                      "orderable":      false
                                     }

                                    ],
                                    "columnDefs": [ {
                                       "targets": 0,
                                       "searchable": false
                                     } ],
                                    "order": [[ 1, 'asc' ]]
                                  });



                            });


                        </script>

                    </form>





                    <!-- END PAGE CONTENT-->
                </div>
            </div>
        </div>


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
