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


    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/uniform/css/uniform.default.css" />

    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css" />
    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN THEME STYLES -->

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/style-responsive.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/plugins.css" />

    <!-- END THEME STYLES -->



    <!-- END THEME STYLES -->

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-modal/css/bootstrap-modal.css" />
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-1.10.2.min.js"></script>

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/datatables/jquery.dataTables.css" />
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/datatables/jquery.dataTables.js"></script>

    <script type="text/javascript" src="${rc.contextPath}/assets/js/app.js"></script>

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/app.css" />

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/skins/default/default.css" />


    <link rel="shortcut icon" href="${rc.contextPath}/favicon.ico" />
    <link rel="apple-touch-icon" href="${rc.contextPath}/favicon.png" />
</head>

<body>

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

        <@menu "4-1"/>

        <!-- END SIDEBAR -->

        <!-- BEGIN CONTENT -->

        <div class="page-content-wrapper">
            <div class="page-content-wrapper">
                <div class="page-content">
                    <div id="ajax-modal" class="modal fade" tabindex="-1" data-replace="true" data-keyboard="false" data-backdrop="static" data-focus-on=".autofocus"></div>
                    <h3 class="page-title">设备列表</h1>

      <table width="100%">
        <tr>
          <td>
            <table>
              <tr>
                          <td style="padding-right: 15px;"><button  onClick="openModalBox('${rc.contextPath}/devices/modal_new'); return false;">新建</button></td>
                          <td style="padding-right: 15px;"></td>
              </tr>
            </table>
          </td>

          <td align="right">
            <form action="${rc.contextPath}/devices/list" method="GET">
              <input type="hidden" name="pagelength" value="${pagelength?default(10)}"/>
              <input type="hidden" name="pagecurrent" value="${pagecurrent?default(1)}"/>

              <input type="text" name="search_keywords" value="${search_keywords}" >
              <input type="submit"  id="searchBtn" value="搜素">
            </form>
          </td>

        </tr>
      </table>


      <div>


      <table class="table table-striped table-bordered" id="device_list"   >
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
<#if devices.list?? && (devices.list?size > 0) >
<#list devices.list as device>

<tr>

<td>${device.deviceCode}</td>
<td>${device.deviceName}</td>
<td>${device.mechanicalHours}</td>
<td>${device.electricalHours}</td>
<td>${device.otherHours}</td>

<td><a class="btn btn-default btn-xs purple" onclick="if(confirm('确定删除吗')){(window.location='${rc.contextPath}/devices/delete/${device.id}')};return false;"><i class="fa fa-trash-o"></i>删除</a> <a href="#" class="btn btn-default btn-xs purple" onClick="openModalBox('${rc.contextPath}/devices/edit/${device.id}'); return false;"><i class="fa fa-edit"></i>修改</a></td>
</tr>
</#list>
</#if>
              </tbody>
      </table>
<#include "/common/config/pager.ftl" />
      <@pageShow devices.pages, devices.total ,devices.pageNum />

      </div>


      <script type="text/javascript">

        $(document).ready(function(){

          appHandleUniformCheckboxes();
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
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/scripts/app.js"></script>

<!-- END JAVASCRIPTS -->

    <script>
        jQuery(document).ready(function() {
            App.init();

            qdpm_app_init();

        });
    </script>

  </body>
</html>
