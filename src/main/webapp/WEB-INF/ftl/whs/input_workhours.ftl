<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
  <head>
    <title><@spring.message "system.title"/> | 管理面板</title>

    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta name="MobileOptimized" content="320">

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/js/yui2.9.0/build/menu/css/menu.css" />


    <script type="text/javascript" src="${rc.contextPath}/assets/js/yui2.9.0/build/yahoo-dom-event/yahoo-dom-event.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/js/yui2.9.0/build/container/container-min.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/js/yui2.9.0/build/menu/menu-min.js"></script>

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
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/data-tables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/data-tables/DT_bootstrap.js"></script>
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

      function keep_session()
      {
        $.ajax({url: '${rc.contextPath}/home'});
      }

      $(function(){
         setInterval("keep_session()",600000);
      });

    </script>

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/app.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/skins/default/default.css" />



    <script type="text/javascript">
      var I18NJSText = new Array()
      I18NJSText['Loading...']='上载中...';

      I18NJSText['Are you sure?']='是否确定';

      I18NJSText['Please Select Items']='请选择事项';

      I18NJSText['Format']='格式';

      I18NJSText['Day']='日';

      I18NJSText['Week']='周';

      I18NJSText['Month']='月';

      I18NJSText['Quarter']='季';

      I18NJSText['Status']='状态';

      I18NJSText['Duration']='时段';

      I18NJSText['Progress']='进度';

      I18NJSText['Start Date']='开始日期';

      I18NJSText['Due Date']='截止日期';

      I18NJSText['Bold']='Bold';

      I18NJSText['Italic']='Italic';

      I18NJSText['Underline']='Underline';

      I18NJSText['Left Align']='Left Align';

      I18NJSText['Numbered List']='Numbered List';

      I18NJSText['Bulleted List']='Bulleted List';

      I18NJSText['Indent More']='Indent More';

      I18NJSText['Indent Less']='Indent Less';

      I18NJSText['Strike']='Strike';

      I18NJSText['Remove Formatting']='Remove Formatting';

      I18NJSText['Horizontal Rule']='Horizontal Rule';

      I18NJSText['Image']='Image';

      I18NJSText['Text Color']='Text Color';

      I18NJSText['Background Color']='Background Color';

      I18NJSText['Source']='Source';

      I18NJSText['Code']='Code';

      I18NJSText['Quote']='Quote';

      I18NJSText['Paragraph']='Paragraph';
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
<@menu 2/>

    <!-- END SIDEBAR -->

      <!-- BEGIN CONTENT -->

           <div class="page-content-wrapper">
            	<div class="page-content-wrapper">
            		<div class="page-content">
                 <div id="ajax-modal" class="modal fade" tabindex="-1" data-replace="true" data-keyboard="false" data-backdrop="static" data-focus-on=".autofocus"></div>


                <h3 class="page-title">填报工时</h3>
                <hr></hr>



                  <div class="form-group">

                    <button class="btn btn-default date-set" type="button" onclick="openModalBox('${rc.contextPath}/projects/whs/assign_groups')"><i class="fa fa-plus"></i>添加</button>


                  </div>


      <div class="modal-body">
      <input type="hidden" name="projects[id]" id="projects_id" /><input type="hidden" name="projects[created_by]" value="5" id="projects_created_by" /><input type="hidden" name="projects[created_at]" value="2018-05-13 12:31:42" id="projects_created_at" /><input type="hidden" name="projects[_csrf_token]" value="ee31984635362ad4266aee5c9c6ff2b1" id="projects__csrf_token" />
      <input type="hidden" name="redirect_to" id="redirect_to" />
      <ul class="nav nav-tabs">
        <li>
        <a href="?d=${previousday?date('yyyy-MM-dd')}">  <i class="fa fa-backward"></i>  </a>
        </li>
      	<li class="${(currentday==monday)?string('active',' ')}">
          <a href="#">${monday}(星期一)</a>
        </li>
        <li class="${(currentday==tuesday)?string('active',' ')}">
          <a href="#">${tuesday}(星期二)</a>
        </li>
        <li class="${(currentday==wednesday)?string('active',' ')}">
          <a href="#tab_3">${wednesday}(星期三)</a>
        </li>
        <li class="${(currentday==thursday)?string('active',' ')}">
          <a href="#tab_4">${thursday}(星期四)</a>
        </li>
        <li class="${(currentday==friday)?string('active',' ')}">
          <a href="#tab_5">${friday}(星期五)</a>
        </li>
        <li class="${(currentday==saturday)?string('active',' ')}">
          <a href="">${saturday}(星期六)</a>
        </li>
        <li class="${(currentday==sunday)?string('active',' ')}">
          <a href="#">${sunday}(星期日)</a>
        </li>
        <li>
          <a href="?d=${nextday?date('yyyy-MM-dd')}"> <i class="fa fa-forward"></i></a>
        </li>
      </ul>
      </div>
      <div class="tab-content">
          <div class="tab-pane fade" id="tab_1">
              <div class="col-md-1"></div>
              <div class="col-md-10"></div>
              <div class="col-md-1"></div>
          </div>
          <div class="tab-pane active fade in" id="tab_2">
            <div class="col-md-10">
                    <div class="form-group">
                        <table class="table table-striped table-bordered table-hover" id="comments-table">
                            <thead>
                                <tr>
                                    <th>员工姓名</th>
                                    <th>项目</th>
                                    <th>工时（小时）</th>
                                    <th>工作内容</th>
                                    <th>操作</th>

                                </tr>
                            </thead>
                            <tbody>
                              <tr>
                                  <td>
                                      张家辉 </td>
                                  <td style="white-space:normal">
                                      某项目
                                  </td>
                                  <td>
                                    3
                                  </td>
                                  <td>
                                    完成xx任务
                                </td>
                                <td><a class="btn btn-default btn-xs purple" onclick="if (confirm('你确定要删除项目吗\n\nabc公司项目?\n\n注：所有项目任务、支持请求单和讨论也将一并删除。')) { var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'post'; f.action = this.href;var m = document.createElement('input'); m.setAttribute('type', 'hidden'); m.setAttribute('name', 'sf_method'); m.setAttribute('value', 'delete'); f.appendChild(m);var m = document.createElement('input'); m.setAttribute('type', 'hidden'); m.setAttribute('name', '_csrf_token'); m.setAttribute('value', '9c4f15ccb6171ef935bf4c7d477ef7dc'); f.appendChild(m);f.submit(); };return false;" href="/qdPM_9/index.php/projects/delete/id/9"><i class="fa fa-trash-o"></i></a> <a href="#" class="btn btn-default btn-xs purple" onClick="openModalBox('/qdPM_9/index.php/projects/edit/id/9'); return false;"><i class="fa fa-edit"></i></a></td>
                              </tr>
                                <tr>
                                    <td>
                                        彭于晏 </td>
                                    <td style="white-space:normal">
                                        项目1
                                    </td>
                                    <td>
                                      4
                                    </td>
                                    <td>
                                      完成任务1
                                  </td>
                                  <td><a class="btn btn-default btn-xs purple" onclick="if (confirm('你确定要删除项目吗\n\nabc公司项目?\n\n注：所有项目任务、支持请求单和讨论也将一并删除。')) { var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'post'; f.action = this.href;var m = document.createElement('input'); m.setAttribute('type', 'hidden'); m.setAttribute('name', 'sf_method'); m.setAttribute('value', 'delete'); f.appendChild(m);var m = document.createElement('input'); m.setAttribute('type', 'hidden'); m.setAttribute('name', '_csrf_token'); m.setAttribute('value', '9c4f15ccb6171ef935bf4c7d477ef7dc'); f.appendChild(m);f.submit(); };return false;" href="/qdPM_9/index.php/projects/delete/id/9"><i class="fa fa-trash-o"></i></a> <a href="#" class="btn btn-default btn-xs purple" onClick="openModalBox('/qdPM_9/index.php/projects/edit/id/9'); return false;"><i class="fa fa-edit"></i></a></td>
                                </tr>
                                <tr>
                                    <td>
                                        彭于晏 </td>
                                    <td style="white-space:normal">
                                        项目2
                                    </td>
                                    <td>
                                      4
                                    </td>
                                    <td>
                                      完成2任务
                                  </td>
                                  <td>
                                    <a class="btn btn-default btn-xs purple" onclick="if (confirm('你确定要删除项目吗\n\nabc公司项目?\n\n注：所有项目任务、支持请求单和讨论也将一并删除。')) { var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'post'; f.action = this.href;var m = document.createElement('input'); m.setAttribute('type', 'hidden'); m.setAttribute('name', 'sf_method'); m.setAttribute('value', 'delete'); f.appendChild(m);var m = document.createElement('input'); m.setAttribute('type', 'hidden'); m.setAttribute('name', '_csrf_token'); m.setAttribute('value', '9c4f15ccb6171ef935bf4c7d477ef7dc'); f.appendChild(m);f.submit(); };return false;" href="/qdPM_9/index.php/projects/delete/id/9"><i class="fa fa-trash-o"></i></a> <a href="#" class="btn btn-default btn-xs purple" onClick="openModalBox('/qdPM_9/index.php/projects/edit/id/9'); return false;"><i class="fa fa-edit"></i></a>
                                  </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                      <script type="text/javascript">
                      $(document).ready(function(){
                        $.extend($.validator.messages, {required: '必须填写此域！'});

                        $("#projects").validate({ignore:'',invalidHandler: function(e, validator) {
                            var errors = validator.numberOfInvalids();
                            if (errors) {
                              var message = '<div class="alert alert-danger">Some fields are required. They have been highlighted above.</div>';
                              $("#form_error_handler").fadeIn().html(message).delay(2000).fadeOut();
                            }
                          }});
                      });
                      </script>

                      <div id="form_error_handler" style="display:none"></div>

            </div>
          </div>
          <div class="tab-pane fade" id="tab_3">
              <div class="col-md-1"></div>
              <div class="col-md-10"></div>
              <div class="col-md-1"></div>
          </div>
          <div class="tab-pane fade" id="tab_4">
              <div class="col-md-1"></div>
              <div class="col-md-10"></div>
              <div class="col-md-1"></div>
          </div>
          <div class="tab-pane fade" id="tab_5">
              <div class="col-md-1"></div>
              <div class="col-md-10"></div>
              <div class="col-md-1"></div>
          </div>
          <div class="tab-pane fade" id="tab_6">
              <div class="col-md-1"></div>
              <div class="col-md-10"></div>
              <div class="col-md-1"></div>
          </div>
          <div class="tab-pane fade" id="tab_7">
              <div class="col-md-1"></div>
              <div class="col-md-10"></div>
              <div class="col-md-1"></div>
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
