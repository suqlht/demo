<!--  -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
  <head>
    <title><@spring.message "system.title"/> | 管理面板</title>

    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta name="MobileOptimized" content="320">

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/jquery-ui-1.11.4/jquery-ui.structure.min.css" />

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/uniform/css/uniform.default.css" />

    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css" />
    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN THEME STYLES -->
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/style.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/style-responsive.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/plugins.css" />

    <!-- END THEME STYLES -->

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-modal/css/bootstrap-modal.css" />



    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-1.10.2.min.js"></script>

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/data-tables/DT_bootstrap.css" />
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/data-tables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/data-tables/DT_bootstrap.js"></script>

    <script type="text/javascript" src="${rc.contextPath}/assets/js/app.js"></script>





    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/app.css" />

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/skins/default/default.css" />


<script>

  var sf_public_path = '/${rc.contextPath}/';
  var selected_items = new Array();


</script>
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
                 <h3 class="page-title">项目计划安排</h1>

      <table width="100%">
        <tr>
          <td>
            <table>
              <tr>
                          <td style="padding-right: 15px;"><button class="btn btn-primary" onClick="javascript:top.location='${rc.contextPath}/projects/whs/new_project'">新建项目</button></td>
                          <td style="padding-right: 15px;"></td>
              </tr>
            </table>
          </td>

          <td align="right">
            <input type="text" name="search[keywords]" value="" id="search_keywords" >
            <input type="submit" class="btn btn-default"  value="搜素">
          </td>

        </tr>
      </table>


      <div>


      <table class="table table-striped table-bordered table-hover projects-table" id="itmes_listing_4466081"   >
        <thead>
          <tr>
            <th class="table-checkbox"  data-bSortable="false">
              <input class="group-checkable" data-set="#itmes_listing_6642184 .checkboxes"  type="checkbox"></th>
            <th><div>项目编号</div></th>

                  <th><div>状态</div></th>

            <th><div>名称</div></th>
            <th><div>设备数量</div></th>

            <th><div>发货日期</div></th>

            <th><div>创建人</div></th>
            <th data-bSortable="false" style="width: 45px;">操作</th>

          </tr>
        </thead>

        <tbody>
          <tr>
            <td><input class="checkboxes" name="multiple_selected[]" id="multiple_selected_9" type="checkbox" value="9"></td>
            <td>785b4bb4-5a74-11e8</td>
            <td>设计中</td>
            <td>
              <a href="${rc.contextPath}/projects/whs/project_detail">abc公司项目</a>               </td>
            <td>10</td>
            <td><span title="1526630781"></span>5月 18, 2018 16:06</td>
            <td>总经办</td>
            <td><a class="btn btn-default btn-xs purple" href="#"><i class="fas fa-clock"></i>调整计划</a> <a href="#" class="btn btn-default btn-xs purple" ><i class="fa fa-edit"></i>修改</a></td>
          </tr>

          <tr>
            <td><input class="checkboxes" name="multiple_selected[]" id="multiple_selected_9" type="checkbox" value="9"></td>
            <td>785b4bb4-5a74-11e8</td>
            <td>设计中</td>
            <td>
              <a href="${rc.contextPath}/projects/whs/project_detail">abc公司项目</a>               </td>
            <td>10</td>
            <td><span title="1526630781"></span>5月 18, 2018 16:06</td>
            <td>总经办</td>
            <td><a class="btn btn-default btn-xs purple" href="#"><i class="fas fa-clock"></i>调整计划</a> <a href="#" class="btn btn-default btn-xs purple" ><i class="fa fa-edit"></i>修改</a></td>
          </tr>

          <tr>
            <td><input class="checkboxes" name="multiple_selected[]" id="multiple_selected_9" type="checkbox" value="9"></td>
            <td>785b4bb4-5a74-11e8</td>
            <td>设计中</td>
            <td>
              <a href="${rc.contextPath}/projects/whs/project_detail">abc公司项目</a>               </td>
            <td>10</td>
            <td><span title="1526630781"></span>5月 18, 2018 16:06</td>
            <td>总经办</td>
            <td><a class="btn btn-default btn-xs purple" href="#"><i class="fas fa-clock"></i>调整计划</a> <a href="#" class="btn btn-default btn-xs purple" ><i class="fa fa-edit"></i>修改</a></td>
          </tr>

          <tr>
            <td><input class="checkboxes" name="multiple_selected[]" id="multiple_selected_9" type="checkbox" value="9"></td>
            <td>785b4bb4-5a74-11e8</td>
            <td>设计中</td>
            <td>
              <a href="${rc.contextPath}/projects/whs/project_detail">abc公司项目</a>               </td>
            <td>10</td>
            <td><span title="1526630781"></span>5月 18, 2018 16:06</td>
            <td>总经办</td>
            <td><a class="btn btn-default btn-xs purple" href="#"><i class="fas fa-clock"></i>调整计划</a> <a href="#" class="btn btn-default btn-xs purple" ><i class="fa fa-edit"></i>修改</a></td>
          </tr>

          <tr>
            <td><input class="checkboxes" name="multiple_selected[]" id="multiple_selected_9" type="checkbox" value="9"></td>
            <td>785b4bb4-5a74-11e8</td>
            <td>设计中</td>
            <td>
              <a href="${rc.contextPath}/projects/whs/project_detail">abc公司项目</a>               </td>
            <td>10</td>
            <td><span title="1526630781"></span>5月 18, 2018 16:06</td>
            <td>总经办</td>
            <td><a class="btn btn-default btn-xs purple" href="#"><i class="fas fa-clock"></i>调整计划</a> <a href="#" class="btn btn-default btn-xs purple" ><i class="fa fa-edit"></i>修改</a></td>
          </tr>

          <tr>
            <td><input class="checkboxes" name="multiple_selected[]" id="multiple_selected_9" type="checkbox" value="9"></td>
            <td>785b4bb4-5a74-11e8</td>
            <td>设计中</td>
            <td>
              <a href="${rc.contextPath}/projects/whs/project_detail">abc公司项目</a>               </td>
            <td>10</td>
            <td><span title="1526630781"></span>5月 18, 2018 16:06</td>
            <td>总经办</td>
            <td><a class="btn btn-default btn-xs purple" href="#"><i class="fas fa-clock"></i>调整计划</a> <a href="#" class="btn btn-default btn-xs purple" ><i class="fa fa-edit"></i>修改</a></td>
          </tr>

              </tbody>
      </table>

      </div>

      <br />


      <script type="text/javascript">
        $(document).ready(function(){

          appHandleUniformCheckboxes()

          var columnSort = new Array;
          $(this).find('#itmes_listing_4466081 thead tr th').each(function(){


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


          jQuery('#itmes_listing_4466081 tbody tr .checkboxes').change(function(){
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

          var table = $('#itmes_listing_4466081').dataTable({
            "iDisplayLength": 15,
            "sPaginationType": "bootstrap",
            "bSort": true,
            "bFilter":false,
            "bLengthChange":false,
            "aoColumns": columnSort,
            "fnInitComplete": function (oSettings, json) { $(this).css('display','') },
            "oLanguage": {
                              "oPaginate": {
                                  "sPrevious": "上一页",
                                  "sNext": "下一页"
                              },
                              "sInfo": "正在显示 _START_ - _END_, 总数: _TOTAL_ "
                          }
            });

            jQuery('#itmes_listing_4466081 .group-checkable').change(function () {

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
