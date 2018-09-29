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

        <@menu '4-1' />

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
                                <button class="btn btn-default"  onClick="openModalBox('${rc.contextPath}/devices/modal_new'); return false;"><i class="fa fa-plus"></i>添加</button>


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


                    <table class="table table-striped table-bordered" id="device_list">
                        <thead>
                            <tr>

                                <th>设备型号</th>

                                <th>设备名称</th>
                                <th>机械装配额定工时</th>
                                <th>电气装配额定工时</th>
                                <th>其他额定工时</th>

                                <th data-bSortable="false">操作</th>

                            </tr>

                        </thead>

                        <tbody>
                            <#if devices.list?? && (devices.list?size> 0) >
                                <#list devices.list as device>

                                    <tr>

                                        <td>${device.deviceCode}</td>
                                        <td>${device.deviceName}</td>
                                        <td>${device.mechanicalHours}</td>
                                        <td>${device.electricalHours}</td>
                                        <td>${device.otherHours}</td>

                                        <td><a class="btn btn-default btn-xs purple" onclick="if(confirm('确定删除吗')){(window.location='${rc.contextPath}/devices/delete/${device.id}')};return false;"><i class="fa fa-trash-o"></i>删除</a> <a href="#" class="btn btn-default btn-xs purple"
                                                onClick="openModalBox('${rc.contextPath}/devices/edit/${device.id}'); return false;"><i class="fa fa-edit"></i>修改</a></td>
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


        $(document).ready(function(){

          var columnSort = new Array;
          var selected_items = new Array();

          $(this).find('#device_list thead tr th').each(function(){


              sType = 'html';

              attr = $(this).attr('data-bsType');
              if (typeof attr !== typeof undefined && attr !== false) {
                sType = attr;
              }

              if($(this).attr('data-bSortable') == 'false') {
                  columnSort.push({ "bSortable": false});
              } else {
                  columnSort.push({ "bSortable": true,"sType":sType });
              }
          });




          jQuery('#device_list tbody tr .checkboxes').change(function(){
               if($(this).attr('checked'))
               {
                 selected_items.push($(this).attr('value'));
               }
               else
               {
                 selected_items = array_remove(selected_items,$(this).attr('value'))
               }


               $(this).parents('tr').toggleClass("active");
          });

          var table = $('#device_list').DataTable({
            "iDisplayLength": 10,
            paging:false,
            info:false,
            "bFilter":false,
            "bLengthChange":false,
            "columnDefs":[
              {
                "bSortable":false,
                "targets":-1
              }
            ]

            });

            jQuery('#device_list .group-checkable').change(function () {

                      var checked = jQuery(this).is(":checked");
                      selected_items.length = 0;

                      jQuery( "input", table.fnGetNodes() ).each(function(){
                           if(checked)
                           {
                              selected_items.push($(this).attr('value'));

                              $(this).attr("checked", true);
                              $(this).parents('span').addClass("checked");
                              $(this).parents('tr').addClass("active");
                           }
                           else
                           {
                              $(this).attr("checked", false);
                              $(this).parents('span').removeClass("checked");
                              $(this).parents('tr').removeClass("active");
                           }
                      })
                });



        });
        function getPage(index){
          $('[name=pagecurrent]').val(index);
          $('#searchBtn').click();
        }

</script>

</html>
