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
        var table;
        var dataSet = [];


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

                <h5 class="page-title">项目管理</h5>
                <hr>

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

                                <div class="input-group col-md-6">
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

                    <table class="table basic table-striped table-checkbox" id="items_list">
                        <thead>
                            <tr>
                                <th></th>

                                <th class="table-checkbox">
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
                                <th style="min-width:50px;text-align:center;">
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
                                        <td>${project.id}</td>

                                        <td>
                                            <input class="checkboxes" name="multiple_selected[]" id="multiple_selected_9" type="checkbox" value="9">
                                        </td>
                                        <td style="min-width:80px;"><a href="${rc.contextPath}/projects/detail/${project.id}">${project.projectCode}</a></td>
                                        <td>
                                          ${project.customerName} </td>
                                          <td style="min-width:70px;text-align:center;">${project.deliveryDate?string('yyyy-MM-dd')}</td>
                                      <td style="min-width:50px;text-align:center;">

                                      </td>
                                        <td style="min-width:70px;text-align:center;">${project.projectStatus}</td>
                                        <td style="min-width:70px;text-align:center;">${project.createdUser}</td>
                                        <td style="min-width:70px;text-align:center;">${project.createdate?string('yyyy-MM-dd')}</td>
                                    </tr>

                                </#list>
                            </#if>

                        </tbody>
                    </table>

                    <#include "/common/config/pager.ftl" />
                    <@pageShow projects.pages, projects.total ,projects.pageNum />
                </div>

                <br />


                <script type="text/javascript">
                    function modify_project() {
                      if (table.rows('.active').data().length != 1) {
                          $('#message_dialog_body').html('请选择1行');
                          $('#message_dialog').modal();
                      } else {
                        window.location = '${rc.contextPath}/projects/edit/'+table.row('.active').data()[0];
                      }
                    }

                    function remove_projects() {
                      if(!confirm('确认删除吗？')){
                        return false;
                      }
                        var id_array = []
                        table.rows('.active').data().each(function(d) {
                            console.log(d[0]);
                            id_array.push(parseInt(d[0]));
                        })
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
                      if(!confirm('确认执行吗？')){
                        return false;
                      }
                        var id_array = []
                        table.rows('.active').data().each(function(d) {
                            console.log(d[0]);
                            id_array.push(parseInt(d[0]));
                        })
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

                    function leftDays(d){
                      var t1 = Date.parse("${.now?string('yyyy-MM-dd')}");
                      var t2 = Date.parse(d);
                      return t2-t1>=0?Math.ceil((t2-t1)/1000/3600/24):0;
                    }
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


                        jQuery('#items_list tbody tr .checkboxes').change(function() {
                          $(this).parents('tr').removeClass("active");

                            if ($(this).attr('checked')) {
                              $(this).parents('tr').addClass("active");

                                selected_items.push($(this).attr('value'));
                            } else {
                                selected_items = array_remove(selected_items, $(this).attr('value'))
                            }
                        });

                        table = $('#items_list').DataTable({
                            "bSort": true,
                            "bFilter": false,
                            paging: false,
                            info: false,
                            "language": tableLang_zh_CN,
                            "bLengthChange": false,
                            "columnDefs": [{
                                "targets": [0],
                                "visible": false
                            }, {
                                "targets": [0, 1],
                                "bSortable": false
                            },
                            {
                                "targets": [5],
                                "render": function(data, type, row) {
                                    return leftDays(row[4]);
                                }
                            }]
                        });

                        jQuery('#items_list .group-checkable').change(function() {

                            var checked = jQuery(this).is(":checked");
                            selected_items.length = 0;

                            jQuery(".checkboxes").each(function() {
                                if (checked) {
                                    selected_items.push($(this).attr('value'));

                                    $(this).attr("checked", true);
                                    $(this).parents('span').addClass("checked");
                                    $(this).parents('tr').addClass("active");
                                } else {
                                    $(this).attr("checked", false);
                                    $(this).parents('span').removeClass("checked");
                                    $(this).parents('tr').removeClass("active");
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

    <script type="text/javascript" src="${rc.contextPath}/assets/scripts/app.js"></script>

    <script>
        jQuery(document).ready(function() {
            App.init();

            qdpm_app_init();

        });

        function getPage(index) {
            $('[name=pagecurrent]').val(index);
            $('#searchBtn').click();
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
