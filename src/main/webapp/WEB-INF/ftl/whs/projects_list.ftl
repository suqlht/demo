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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->


    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/datatables/jquery.dataTables.css" />

</head>

<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

        <!-- BEGIN HEADER -->
        <#include "/common/config/top.ftl" />

        <@top />

        <!-- END HEADER -->
        <!-- Left side column. contains the logo and sidebar -->
        <#include "/common/config/left.ftl" />

        <@menu '1-1' />

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
        项目管理 <small>项目列表</small>
      </h1>

            </section>

            <!-- Main content -->
            <section class="content container-fluid">
                <table width="100%">
                    <tr>
                        <td>
                            <div class="btn-group">
                                <button class="btn btn-default" onClick="javascript:top.location='${rc.contextPath}/projects/whs/new_project'"><i class="fa fa-plus"></i>添加</button>
                                <button class="btn btn-default" type="button" onclick="modify_project()"><i class="fa fa-edit"></i>修改</button>
                                <button class="btn btn-default" type="button" onclick="remove_projects()"><i class="fa fa-trash-o"></i>删除</button>
                                <button class="btn btn-default" type="button" onclick="start_projects()"><i class="fa fa-cogs"></i>项目下达</button>

                            </div>
                        </td>

                        <td align="right">
                            <form class="form-search" method="GET">
                                <input type="hidden" name="pagelength" value="${pagelength?default(10)}" />
                                <input type="hidden" name="pagecurrent" value="${pagecurrent?default(1)}" />

                                <div class="input-group col-md-9">
                                    <input type="text" name="search_keyword" value="${search_keyword}" class="form-control">
                                    <span class="input-group-btn">
                      <button class="btn btn-default" type="submit" id="searchBtn"><i class="fa fa-search"></i>搜索</button>
                  </span>
                                </div>
                            </form>
                        </td>

                    </tr>
                </table>

                <div class="clearfix" style="padding-bottom:15px">

                </div>
                <div>

                    <table class="table table-striped table-checkbox" id="items_list" width="100%">
                        <thead>
                            <tr>
                                <th>
                                    <input class="group-checkable" data-set="#items_list .checkboxes" type="checkbox">
                                </th>
                                <th style="min-width:80px;">
                                    <div>项目编号</div>
                                </th>

                                <th>
                                    <div>客户名称</div>
                                </th>
                                <th style="min-width:70px;text-align:center;">
                                    <div>发货日期</div>
                                </th>
                                <th style="min-width:60px;text-align:center;">
                                    <div>剩余天数</div>
                                </th>
                                <th style="min-width:70px;text-align:center;">
                                    <div>状态</div>
                                </th>
                                <th style="min-width:70px;text-align:center;">
                                    <div>创建人</div>
                                </th>
                                <th style="min-width:70px;text-align:center;">
                                    <div>创建时间</div>
                                </th>


                            </tr>
                        </thead>

                        <tbody>

                            <#if projects.list?? && (projects.list?size> 0) >
                                <#list projects.list as project>

                                    <tr>
                                        <td>
                                            <input class="checkboxes" value="${project.id}" type="checkbox">
                                        </td>
                                        <td style="min-width:80px;"><a href="${rc.contextPath}/projects/detail/${project.id}">${project.projectCode}</a></td>
                                        <td>
                                            ${project.customerName} </td>
                                        <td style="min-width:80px;text-align:center;">${project.deliveryDate?string('yyyy-MM-dd')}</td>
                                        <td style="min-width:50px;text-align:center;">

                                        </td>
                                        <td style="min-width:70px;text-align:center;">${project.projectStatus}</td>
                                        <td style="min-width:70px;text-align:center;">${project.createdUser}</td>
                                        <td style="min-width:80px;text-align:center;">${project.createdate?string('yyyy-MM-dd')}</td>
                                    </tr>

                                </#list>
                            </#if>

                        </tbody>

                    </table>

                    <#include "/common/config/pager.ftl" />
                    <@pageShow projects.pages, projects.total ,projects.pageNum />
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

    <!-- REQUIRED JS SCRIPTS -->


    <!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->


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
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/datatables/jquery.dataTables.js"></script>
<script src="${rc.contextPath}/assets/js/common.js" charset="utf-8"></script>

<script type="text/javascript">
    var table;
    var dataSet = [];

    function getPage(index) {
        $('[name=pagecurrent]').val(index);
        $('#searchBtn').click();
    }

    function modalAlert(msg) {
        $('#message_dialog_body').html(msg);
        $('#message_dialog').modal();
    }

    function selected_id_array() {
        var id_array = [];
        jQuery("#items_list .checkboxes").each(function(index, checkbox) {
            if (jQuery(checkbox).is(':checked')) {
                id_array.push($(this).val());
            }
        })
        return id_array;
    }

    function modify_project() {
        var id_array = selected_id_array();
        if (id_array.length != 1) {
            modalAlert('请选择1行');
        } else {
            window.location = '${rc.contextPath}/projects/edit/' + id_array[0];
        }
    }

    function remove_projects() {
        var id_array = selected_id_array();

        if (id_array.length < 1) {
            modalAlert('请选择要删除行');
            return;
        }
        if (!confirm('确认删除吗？')) {
            return false;
        }
        $.ajax({
            url: '${rc.contextPath}/projects/delete',
            data: JSON.stringify(id_array),
            contentType: 'application/json;charset=UTF-8',
            type: 'POST',
            dataType: 'json',
            success: function() {
                window.location = '${rc.contextPath}/projects/list'
            }, //成功执行方法
            error: function(textStatus, errorThrown) {
                $('#message_dialog').modal();
            }
        });
    }

    function start_projects() {
        var id_array = selected_id_array();

        if (id_array.length < 1) {
            modalAlert('请选择要操作的行');
            return;
        }
        if (!confirm('确认执行吗？')) {
            return false;
        }
        $.ajax({
            url: '${rc.contextPath}/projects/start',
            data: JSON.stringify(id_array),
            contentType: 'application/json;charset=UTF-8',
            type: 'POST',
            dataType: 'json',
            success: function() {
                window.location = '${rc.contextPath}/projects/list'
            }, //成功执行方法
            error: function(textStatus, errorThrown) {
                $('#message_dialog').modal();
            }
        });
    }

    function leftDays(d) {
        var t1 = Date.parse("${.now?string('yyyy-MM-dd')}");
        var t2 = Date.parse(d);
        return t2 - t1 >= 0 ? Math.ceil((t2 - t1) / 1000 / 3600 / 24) : 0;
    }
    $(document).ready(function() {
        var columnSort = new Array;

        jQuery('#items_list .group-checkable').change(function() {
            var checked = jQuery(this).is(":checked");
            jQuery(".checkboxes").each(function() {
                if (checked) {
                    $(this).prop("checked", true);
                } else {
                    $(this).prop("checked", false);
                }
            })
        });

        table = $('#items_list').DataTable({
            "bSort": true,
            "bFilter": false,
            "bAutoWidth": false,
            paging: false,
            info: false,
            order: [7, 'desc'],
            "language": tableLang_zh_CN,
            "bLengthChange": false,
            "columnDefs": [{
                "targets": [0],
                "bSortable": false
            }, {
                "targets": [4],
                "render": function(data, type, row) {
                    return leftDays(row[3]);
                }
            }]
        });


    });
</script>

</html>
