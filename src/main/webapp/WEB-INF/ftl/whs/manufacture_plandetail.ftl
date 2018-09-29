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


    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/uniform/css/uniform.default.css" />
    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN THEME STYLES -->
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/style-conquer.css" />
    
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
    <!-- <script type="text/javascript" src="${rc.contextPath}/assets/plugins/select2/i18n/zh-CN.js"></script> -->

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-datepicker/css/datepicker.css" />




    <script type="text/javascript" src="${rc.contextPath}/assets/js/app.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/js/cluetip1.2.5/jquery.cluetip.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/js/cluetip1.2.5/jquery.cluetip.css" />

    <script>
        var sf_public_path = '${rc.contextPath}/';
        var selected_items = new Array();
        var dataTable;
        var dataSet = [{
            "name": "炉壳",
            "planEnd": "2018-08-01"
        }];
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

            <div class="page-content">
                <div id="ajax-modal" class="modal fade" tabindex="-1" data-replace="true" data-keyboard="false" data-backdrop="static" data-focus-on=".autofocus"></div>

                <h5 class="page-title">生产车间计划</h5>
                <hr>

                <div style="padding-top:10px">
                    <form class="form-horizontal" role="form" method="POST">
                        <div class="form-group">
                            <label class="col-md-3 control-label">项目号</label>
                            <div class="col-md-9">
                                <input type="text" name="cd" value="" class="form-control input-large" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">预留车间冷调天数</label>
                            <div class="col-md-9">
                                <input type="text" name="cd" value="" class="form-control input-large" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">（机械）人数</label>
                            <div class="col-md-9">
                                <input type="text" name="cd" value="" class="form-control input-large" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">（机械）每天小时</label>
                            <div class="col-md-9">
                                <input type="text" name="cd" value="" class="form-control input-large" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">（机械）每周天数</label>
                            <div class="col-md-9">
                                <input type="text" name="cd" value="" class="form-control input-large" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">（电气）人数</label>
                            <div class="col-md-9">
                                <input type="text" name="cd" value="" class="form-control input-large" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">（电气）每天小时</label>
                            <div class="col-md-9">
                                <input type="text" name="cd" value="" class="form-control input-large" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">（电气）每周天数</label>
                            <div class="col-md-9">
                                <input type="text" name="cd" value="" class="form-control input-large" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">装配计划开始日期</label>
                            <div class="col-md-9">
                                <div class="input-group input-medium date datepicker">
                                    <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                            </div>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" onclick="save()">保存</button>
                        </div>
                    </form>

                </div>
                <br />



                <!-- END PAGE CONTENT-->
            </div>
        </div>
        <!-- END PAGE CONTENT-->
    </div>


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

    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
    <div id="modal_new" class="modal fade col-md-6 col-md-offset-3" tabindex="-1">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h5 class="modal-title">零件</h5>
            </div>


            <div class="modal-body">
                <form id="form_new" class="form-horizontal" role="form" action="" method="post">
                    <input type="hidden" id="operation" name="" value="">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="col-md-4 control-label">名称</label>
                            <div class="col-md-6">
                                <div class="input-group  input-medium">
                                    <input type="text" value="" class="form-control" id="asset_name" />

                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-4 control-label">计划到货日期</label>
                            <div class="col-md-6">
                                <div class="input-group input-medium date datepicker">
                                    <input type="text" id="planEnd" name="planEnd" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                            </div>
                        </div>
                        <script type="text/javascript">
                            $(document).ready(function() {
                                $.extend($.validator.messages, {
                                    required: '必须填写此域！'
                                });

                                $("#form_new").validate({
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
                <button type="button" class="btn btn-primary" id="okbtn" onclick="save_new_item()">确定</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>


        </div>
    </div>
    <script type="text/javascript" src="${rc.contextPath}/assets/scripts/app.js"></script>

    <script>
        jQuery(document).ready(function() {
            App.init();

            qdpm_app_init();

        });

        function save() {
            window.location='${rc.contextPath}/projects/manufacture_plan'
        }

        function open_modal() {
            $('#operation').val('add');
            $('#asset_name').val('');
            $('#planEnd').val('');
            $('#modal_new').modal();


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
