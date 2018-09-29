<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
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

        <@menu '1-3' />

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
        采购任务计划 <small>主要零件</small>
      </h1>

            </section>

            <!-- Main content -->
            <section class="content container-fluid">


                <table width="100%">
                    <tr>
                        <td>
                            <div class="btn-group">
                                <button class="btn btn-default" onClick="open_modal()"><i class="fa fa-plus"></i>添加</button>
                                <button class="btn btn-default" type="button" onclick="modify_table_item()"><i class="fa fa-edit"></i>修改</button>
                                <button class="btn btn-default" type="button" onclick="remove_rows()"><i class="fa fa-trash-o"></i>删除</button>

                            </div>
                        </td>

                        <td align="left">
                        </td>

                    </tr>
                </table>

                <div class="clearfix" style="padding-bottom:15px">

                </div>
                <div>

                    <table class="table table-striped table-bordered table-hover" id="items_list">
                        <thead>
                            <tr>

                                <th class="table-checkbox">
                                    <input class="group-checkable" data-set="#items_list .checkboxes" type="checkbox">
                                </th>

                                <th>
                                    <div>名称</div>
                                </th>
                                <th>
                                    <div>计划到货日期</div>
                                </th>

                            </tr>
                        </thead>

                        <tbody>


                        </tbody>
                    </table>
                </div>

                <div style="padding-top:10px">
                    <form class="form-inline" role="form" method="GET">
                        <input type="hidden" value="${plan.plans[2].id}" class="form-control" id="planid" />
                        <input type="hidden" value="${plan.subproject.id}" class="form-control" name="subprojectId" id="sub_project_id" />


                        <div class="form-group pull-right">
                            <input type="button" class="btn btn-default" onclick="save_plan()" value="保存">


                        </div>
                        <div class="form-group">

                            <label for="name">项目号</label>
                            <input type="text" class="form-control" id="sub_project_name" readonly value="${plan.subproject.subProjectId}" placeholder="项目号">
                        </div>


                        <div class="form-group">
                            <label for="name">截止到货日期</label>
                            <input type="text" class="form-control date datepicker" id="planEnd" value="${plan.plans[2].planEnd?string('yyyy-MM-dd')}" placeholder="截止日期">
                        </div>


                    </form>

                </div>
                <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        <#include "/common/config/footer.ftl" />

        <@footer />

        <!-- Control Sidebar -->

        <!-- Add the sidebar's background. This div must be placed
      immediately after the control sidebar -->
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
                                    <input type="text" id="planFinishTime" name="planFinishTime" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                            </div>
                        </div>

                        <div id="form_error_handler" style="display:none"></div>

                    </div>
                    <input type="hidden" id="new_device_model" value="">

                </form>



            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="okbtn" onclick="save_new_item()">确定</button>
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
<script src="${rc.contextPath}/assets/js/common.js" charset="utf-8"></script>

<script type="text/javascript">
    var dataTable;
    var dataSet = JSON.parse('${planAssets}');
    $(document).ready(function() {


        var columnSort = new Array;
        $(this).find('#items_list thead tr th').each(function() {


            sType = 'html';

            attr = $(this).attr('data-bsType');
            if (typeof attr !== typeof undefined && attr !== false) {
                sType = attr;
            }

            if ($(this).attr('data-bSortable') == 'false') {
                columnSort.push({
                    "bSortable": false
                });
            } else {
                columnSort.push({
                    "bSortable": true,
                    "sType": sType
                });
            }
        });

        dataTable = $('#items_list').DataTable({
            paging: false,
            info: false,
            "bSort": false,
            "bFilter": false,
            "language": tableLang_zh_CN,
            "bLengthChange": false,
            "fnInitComplete": function(oSettings, json) {
                $(this).css('display', '')
            },
            data: dataSet,
            columns: [{
                data: "id",
                render: function(data, type, row, meta) {
                    return '<input class="checkboxes" value="'+ data +'"  type="checkbox" >';

                }
            }, {
                data: "assetName"
            }, {
                data: "planFinishTime"
            }]
        });

        jQuery('#items_list .group-checkable').change(function() {

            var checked = jQuery(this).is(":checked");
            jQuery(".checkboxes").each(function() {
                if (checked) {
                    $(this).attr("checked", true);
                } else {
                    $(this).attr("checked", false);
                }
            })
        });



    });


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



    function save_new_item() {
        if ($('#operation').val() == "update") {
            update_new_item();
        } else {
            add_new_item();
        }
    }

    function update_new_item() {
        var datas = get_selected_data();
        if(datas.length!=1){return false};

        datas[0].assetName = $('#asset_name').val();
        datas[0].planFinishTime = $('#planFinishTime').val();
        dataTable.rows().invalidate();

        $('#modal_new').modal('toggle');
    }

    function add_new_item() {
        var exists = 0
        var new_item = {
            "id": null,
            "assetName": $('#asset_name').val(),
            "planFinishTime": $('#planFinishTime').val()
        }
        dataTable.data().each(
            function(item) {
                if (item.assetName == new_item.assetName) {
                    exists++;
                }
            }
        );
        if (exists > 0) {
            alert('名称已存在！')
            return false;
        }
        dataTable.row.add(new_item).draw(false);
        $('#modal_new').modal('toggle');
    }

    function remove_rows() {
        if (!confirm('确认删除吗？')) {
            return false;
        }

        jQuery("#items_list .checkboxes").each(function(index, checkbox) {
            if (jQuery(checkbox).is(':checked')) {

              dataTable.rows($(this).parents('tr')).remove();
            }
        })
        dataTable.draw(false);;

    }

    function open_modal() {
        $('#operation').val('add');
        $('#asset_name').val('');
        $('#planFinishTime').val('');
        $('#modal_new').modal();


    }

    function modify_table_item() {
        var datas = get_selected_data();

        if (datas.length != 1) {
            $('#message_dialog_body').html('请选择1行');
            $('#message_dialog').modal();
        } else { //edit
            console.log(datas[0]);
            $('#operation').val('update');
            $('#asset_name').val(datas[0].assetName);
            $('#planFinishTime').val(datas[0].planFinishTime);


            $('#modal_new').modal();

        }
    }

    function save_plan() {
        var form = $('#form_plan');

        var postData = {
            "plans": [{
                    "id": $('#planid').val(),
                    "subprojectId": $('#sub_project_id').val(),
                    "planEnd": $('#planEnd').val(),
                    "acturalEnd": $('#acturalEnd').val(),
                    "planType": "30"
                }


            ],
            "planAssets": [],
        }
        dataTable.data().each(function(d) {
            postData.planAssets.push({
                id: d.id || null,
                assetName: d.assetName,
                planFinishTime: d.planFinishTime
            });
        });

        $.ajax({
            url: '${rc.contextPath}/plan/assets/modify',
            data: JSON.stringify(postData),
            contentType: 'application/json;charset=UTF-8',
            type: 'POST',
            success: function(response) {
                var result = eval(response);
                if (result.code == "0000") {
                    window.location = "${rc.contextPath}/plan/purchase_plan"
                } else {
                    $('#message_dialog_body').html(result.message);
                    $('#message_dialog').modal();

                }
            }, //成功执行方法
            error: function(textStatus, errorThrown) {
                $('#message_dialog_body').html("系统错误。");
                $('#message_dialog').modal();
            }
        });
    }

    function get_selected_data() {
        var id_array = [];
        jQuery("#items_list .checkboxes").each(function(index, checkbox) {
            if (jQuery(checkbox).is(':checked')) {
                id_array.push(dataTable.row($(this).parents('tr')).data());
            }
        })
        return id_array;
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
    $('.datepicker').datepicker({
        autoclose: true,
        format: 'yyyy-mm-dd',
        todayHighlight: true,
        language: "zh-CN"
    });

</script>

</html>
