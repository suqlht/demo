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
    <!-- <script type="text/javascript" src="${rc.contextPath}/assets/plugins/select2/i18n/zh-CN.js"></script> -->

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-datepicker/css/datepicker.css" />




    <script type="text/javascript" src="${rc.contextPath}/assets/js/app.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/js/cluetip1.2.5/jquery.cluetip.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/js/cluetip1.2.5/jquery.cluetip.css" />

    <script>
        var sf_public_path = '${rc.contextPath}/';
        var selected_items = new Array();
        var dataTable;
        var dataSet = [{"name":"炉壳","planEnd":"2018-08-01"}];
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

                <h5 class="page-title">主要零件</h5>
                <hr>

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

                    <table class="table basic table-striped table-checkbox" id="items_list">
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
                        <input type="hidden" name="pagelength" value="${pagelength?default(10)}" />

                        <div class="form-group pull-right">
                            <input type="button" class="btn btn-default" onclick="save_plan()" value="保存">


                        </div>
                        <div class="form-group">

                            <label for="name">项目号</label>
                            <input type="text" class="form-control" id="name" placeholder="项目号">
                        </div>


                        <div class="form-group">
                            <label for="name">截止到货日期</label>
                            <input type="text" class="form-control date datepicker" id="name" placeholder="截止日期">
                        </div>


                    </form>

                </div>
                <br />


                <script type="text/javascript">

                    $(document).ready(function() {

                        appHandleUniformCheckboxes();

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
                            "language":tableLang_zh_CN,
                            "bLengthChange": false,
                            "fnInitComplete": function(oSettings, json) {
                                $(this).css('display', '')
                            },
                            data: dataSet,
                            columns: [{
                                data: null
                            }, {
                                data: "name"
                            }, {
                                data: "planEnd"
                            }],
                            "columnDefs": [{
                                "targets": 0,
                                "searchable": false,
                                "render": function(data, type, row) {
                                    return '<input class="checkboxes"  type="checkbox" onchange="change_row_selected(this)">';
                                }
                            }]
                        });


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

                        jQuery('#items_list .group-checkable').change(function() {

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
                </script>
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

        function save_new_item() {
            if ($('#operation').val()=="update") {
                update_new_item();
            } else {
                add_new_item();
            }
        }
        function update_new_item(){
          var data = dataTable.row('.selected').data();
          data.name = $('#asset_name').val();
          data.planEnd = $('#planEnd').val();
          dataTable.rows().invalidate();
          dataTable.$('tr.selected').removeClass('selected');
          appHandleUniformCheckboxes();

          $('#modal_new').modal('toggle');
        }
        function add_new_item(){
          var exists = 0
          var new_item = {"name":$('#asset_name').val(),"planEnd":$('#planEnd').val()}
          dataTable.data().each(
              function(item) {
                  console.log(item.name);
                  if (item.name == new_item.name) {
                      exists++;
                  }
              }
          );
          if (exists > 0) {
            alert('名称已存在！')
            return false;
          }
          dataTable.row.add(new_item).draw(false);
          appHandleUniformCheckboxes();
          $('#modal_new').modal('toggle');
        }
        function remove_rows(){
          if(!confirm('确认删除吗？')){
            return false;
          }
            dataTable.rows('.selected').remove();
            dataTable.draw(false);;

        }
        function open_modal() {
          $('#operation').val('add');
          $('#asset_name').val('');
          $('#planEnd').val('');
            $('#modal_new').modal();


        }
        function modify_table_item() {
            if (dataTable.rows('.selected').data().length != 1) {
                $('#message_dialog_body').html('请选择1行');
                $('#message_dialog').modal();
            } else { //edit
                var data = dataTable.row('.selected').data();
                console.log(data.model);
                $('#operation').val('update');
                $('#asset_name').val(data.name);
                $('#planEnd').val(data.planEnd);


                $('#modal_new').modal();

            }
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

          window.location="${rc.contextPath}/projects/purchase_plan"
          return false;
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
