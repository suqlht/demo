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

                <h5 class="page-title">项目进度</h5>
                <hr>

                <div>

                    <div class="panel-group" id="panel-group">
                        <div id="panel_basic" class="panel-default" style="border:none">
                            <div class="panel-heading">
                                <span class="panel-title"><a data-toggle="collapse"
         href="#collapseOne" >
        项目信息
      </a></span>
                                <div class="clearfix"></div>
                            </div>

                            <div id="collapseOne" class="collapse in" style="border:none">
                                <div class="panel-body tab-content ">
                                    <div id="collapseOne_1" class="tab-pane active fade in">
                                      <div class="row">
                                          <label class="col-md-3  text-right">子项目号</label>
                                          <div class="col-md-9">
                                            HMM-01
                                          </div>
                                      </div>
                                      <div class="row">
                                          <label class="col-md-3 text-right">调整后交货日期</label>
                                          <div class="col-md-9 form-inline">
                                            2018-01-01

                                          </div>

                                      </div>
                                      <div class="row">
                                          <label class="col-md-3 text-right">实际发货日期</label>
                                          <div class="col-md-9 form-inline">
                                            2018-01-01
                                          </div>

                                      </div>
                                      <div class="row">
                                          <label class="col-md-3 text-right">进度状态</label>
                                          <div class="col-md-9">
                                              正常
                                          </div>
                                      </div>
                                      <div class="row">
                                          <label class="col-md-3 text-right">当前瓶颈</label>
                                          <div class="col-md-9">
                                              问题123412341
                                          </div>
                                      </div>


                                      <div class="row">
                                        <label class="col-md-3"></label>

                                        <div class="col-md-9">
                                          <a  class="btn btn-default" data-toggle="tab" href="#collapseOne_2">编辑</a>
                                        </div>
                                      </div>

                                    </div>
                                    <div id="collapseOne_2" class="tab-pane fade form-body">
                                      <form class="form-horizontal">
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">子项目号</label>
                                            <div class="col-md-9">
                                                <input type="text" name="cd" value="" class="form-control input-large" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">调整后交货日期</label>
                                            <div class="col-md-9 form-inline">
                                                <div class="input-group input-medium date datepicker">
                                                    <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>

                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">实际发货日期</label>
                                            <div class="col-md-9 form-inline">
                                                <div class="input-group input-medium date datepicker">
                                                    <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>

                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">进度状态</label>
                                            <div class="col-md-9">
                                                <select class="" name="">
                                                    <option value="">选择状态</option>
                                                    <option value="" selected>正常</option>
                                                    <option value="">预计拖期</option>
                                                    <option value="">已拖期</option>
                                                    <option value="">暂停</option>
                                                    <option value="">已发货</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">当前瓶颈</label>
                                            <div class="col-md-9">
                                              <textarea type="text" rows="3" name="cd" value="" class="form-control input-xlarge"></textarea>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                          <label class="col-md-3 control-label"></label>

                                          <div class="col-md-9">
                                            <a  class="btn btn-primary" onclick="">更新</a>
                                            <a  class="btn btn-default" data-toggle="tab" href="#collapseOne_1">取消</a>
                                          </div>
                                        </div>
                                    </div>
                                  </form>
                                </div>
                            </div>

                        </div>

                        <div id="panel_2" class="panel-default">
                            <div class="panel-heading">
                                <span class="panel-title"><a data-toggle="collapse"
         href="#collapse2" >
        机械设计部
      </a></span>
                                <div class="clearfix"></div>
                            </div>

                            <div id="collapse2" class="collapse in">
                                <div class="panel-body tab-content ">

                                    <div id="collapse2_1" class="tab-pane active fade in">
                                      <div class="row">
                                          <label class="col-md-3 text-right">计划完成日期</label>
                                          <div class="col-md-9 form-inline">
                                            2018-01-01
                                          </div>
                                      </div>
                                      <div class="row">
                                          <label class="col-md-3 text-right">实际完成日期</label>
                                          <div class="col-md-9 form-inline">
                                            2018-01-01
                                          </div>
                                      </div>
                                      <div class="row">
                                          <label class="col-md-3 text-right">当前问题</label>
                                          <div class="col-md-9 form-inline">
                                            问题234
                                          </div>
                                      </div>
                                      <div class="row">
                                        <label class="col-md-3"></label>

                                        <div class="col-md-9">
                                          <a  class="btn btn-default" data-toggle="tab" href="#collapse2_2">编辑</a>
                                        </div>
                                      </div>
                                    </div>
                                    <div id="collapse2_2" class="tab-pane fade">
                                      <form class="form-horizontal" method="post">

                                      <div class="form-group">
                                          <label class="col-md-3 control-label">计划完成时间</label>
                                          <div class="col-md-9 form-inline">
                                              <div class="input-group input-medium date datepicker">
                                                  <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                                          </div>
                                      </div>
                                      <div class="form-group">
                                          <label class="col-md-3 control-label">实际完成时间</label>
                                          <div class="col-md-9 form-inline">
                                              <div class="input-group input-medium date datepicker">
                                                  <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                                          </div>
                                      </div>
                                      <div class="form-group">
                                          <label class="col-md-3 control-label">当前问题</label>
                                          <div class="col-md-9 form-inline">
                                            <textarea type="text" rows="3" name="cd" value="" class="form-control input-xlarge"></textarea>
                                          </div>
                                      </div>
                                      <div class="form-group">
                                        <label class="col-md-3 control-label"></label>

                                        <div class="col-md-9">
                                          <a  class="btn btn-primary" onclick="">更新</a>
                                          <a  class="btn btn-default" data-toggle="tab" href="#collapse2_1">取消</a>
                                        </div>
                                      </div>
                                      </form>

                                    </div>
                                </div>
                            </div>

                        </div>

                        <div id="panel_3" class="panel-default">
                            <div class="panel-heading">
                                <span class="panel-title"><a data-toggle="collapse"
         href="#collapse3" >
        电气设计部
      </a></span>
                                <div class="clearfix"></div>
                            </div>

                            <div id="collapse3" class="collapse in">
                              <div class="panel-body tab-content ">

                                  <div id="collapse3_1" class="tab-pane active fade in">
                                    <div class="row">
                                        <label class="col-md-3 text-right">计划完成日期</label>
                                        <div class="col-md-9 form-inline">
                                          2018-01-01
                                        </div>
                                    </div>
                                    <div class="row">
                                        <label class="col-md-3 text-right">实际完成日期</label>
                                        <div class="col-md-9 form-inline">
                                          2018-01-01
                                        </div>
                                    </div>
                                    <div class="row">
                                        <label class="col-md-3 text-right">当前问题</label>
                                        <div class="col-md-9 form-inline">
                                          问题234
                                        </div>
                                    </div>
                                    <div class="row">
                                      <label class="col-md-3"></label>

                                      <div class="col-md-9">
                                        <a  class="btn btn-default" data-toggle="tab" href="#collapse3_2">编辑</a>
                                      </div>
                                    </div>
                                  </div>
                                  <div id="collapse3_2" class="tab-pane fade">
                                    <form class="form-horizontal" method="post">

                                    <div class="form-group">
                                        <label class="col-md-3 control-label">计划完成时间</label>
                                        <div class="col-md-9 form-inline">
                                            <div class="input-group input-medium date datepicker">
                                                <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">实际完成时间</label>
                                        <div class="col-md-9 form-inline">
                                            <div class="input-group input-medium date datepicker">
                                                <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">当前问题</label>
                                        <div class="col-md-9 form-inline">
                                          <textarea type="text" rows="3" name="cd" value="" class="form-control input-xlarge"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                      <label class="col-md-3 control-label"></label>

                                      <div class="col-md-9">
                                        <a  class="btn btn-primary" onclick="">更新</a>
                                        <a  class="btn btn-default" data-toggle="tab" href="#collapse3_1">取消</a>
                                      </div>
                                    </div>
                                    </form>

                                  </div>
                              </div>
                            </div>

                        </div>
                        <div id="panel_4" class="panel-default">
                            <div class="panel-heading">
                                <span class="panel-title"><a data-toggle="collapse"
         href="#collapse4" >
        采购
      </a></span>
                                <div class="clearfix"></div>
                            </div>

                            <div id="collapse4" class="collapse in">
                                <div class="panel-body tab-content ">
                                  <div id="collapse4_1" class="tab-pane active fade in col-md-10 col-md-offset-2">

                                      <table class="table table-border">
                                        <thead>
                                          <tr>
                                          <th>主要零件名称</th>
                                          <th>计划到货日期</th>
                                          <th>实际到货日期</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                          <tr>
                                            <td>炉壳</td>
                                            <td>2018-01-01</td>
                                            <td>2018-01-01</td>
                                          </tr>
                                          <tr>
                                            <td>辐射管</td>
                                            <td>2018-01-01</td>
                                            <td>2018-01-01</td>
                                          </tr>
                                          <tr>
                                            <td>进口电机</td>
                                            <td>2018-01-01</td>
                                            <td>2018-01-01</td>
                                          </tr>
                                        </tbody>
                                      </table>

                                      <div class="form-inline">
                                          <label class="">当前问题</label>
                                          <div class="">
                                            问题
                                          </div>
                                      </div>
                                      <a  class="btn btn-default" href="#collapse4_2" data-toggle="tab" onclick="">编辑</a>

                                  </div>
                                    <div id="collapse4_2" class="tab-pane fade col-md-10 col-md-offset-2">

                                        <table class="table table-border">
                                          <thead>
                                            <tr>
                                            <th>主要零件名称</th>
                                            <th>计划到货日期</th>
                                            <th>实际到货日期</th>
                                          </tr>
                                          </thead>
                                          <tbody>
                                            <tr>
                                              <td>炉壳</td>
                                              <td>2018-01-01</td>
                                              <td>2018-01-01</td>
                                            </tr>
                                            <tr>
                                              <td>辐射管</td>
                                              <td>2018-01-01</td>
                                              <td>2018-01-01</td>
                                            </tr>
                                            <tr>
                                              <td>进口电机</td>
                                              <td>2018-01-01</td>
                                              <td>2018-01-01</td>
                                            </tr>
                                          </tbody>
                                        </table>

                                        <div class="form-group">
                                            <label class="">当前问题</label>
                                            <div class="">
                                              <textarea type="text" rows="3" name="cd" value="" class="form-control input-xlarge"></textarea>
                                            </div>
                                        </div>
                                        <a  class="btn btn-primary" onclick="">更新</a>
                                        <a  class="btn btn-default" href="#collapse4_1" data-toggle="tab" onclick="">取消  </a>


                                    </div>
                                </div>
                            </div>

                        </div>
                        <div id="panel_5" class="panel-default">
                            <div class="panel-heading">
                                <span class="panel-title"><a data-toggle="collapse"
         href="#collapse5" >
        油漆
      </a></span>
                                <div class="clearfix"></div>
                            </div>

                            <div id="collapse5" class="collapse in">
                              <div class="panel-body tab-content ">

                                  <div id="collapse5_1" class="tab-pane active fade in">

                                    <div class="row">
                                        <label class="col-md-3 text-right">实际完成日期</label>
                                        <div class="col-md-9 form-inline">
                                          2018-01-01
                                        </div>
                                    </div>
                                    <div class="row">
                                      <label class="col-md-3"></label>

                                      <div class="col-md-9">
                                        <a  class="btn btn-default" data-toggle="tab" href="#collapse5_2">编辑</a>
                                      </div>
                                    </div>
                                  </div>
                                  <div id="collapse5_2" class="tab-pane fade">
                                    <form class="form-horizontal" method="post">

                                    <div class="form-group">
                                        <label class="col-md-3 control-label">实际完成时间</label>
                                        <div class="col-md-9 form-inline">
                                            <div class="input-group input-medium date datepicker">
                                                <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                      <label class="col-md-3 control-label"></label>

                                      <div class="col-md-9">
                                        <a  class="btn btn-primary" onclick="">更新</a>
                                        <a  class="btn btn-default" data-toggle="tab" href="#collapse5_1">取消</a>
                                      </div>
                                    </div>
                                    </form>

                                  </div>
                              </div>

                            </div>

                        </div>

                        <div id="panel_6" class="panel-default">
                            <div class="panel-heading">
                                <span class="panel-title"><a data-toggle="collapse"
         href="#collapse6" >
        质检
      </a></span>
                                <div class="clearfix"></div>
                            </div>

                            <div id="collapse6" class="collapse in">

                                <div class="panel-body tab-content ">

                                    <div id="collapse6_1" class="tab-pane active fade in">
                                      <div class="row">
                                          <label class="col-md-3 text-right">计划完成日期</label>
                                          <div class="col-md-9 form-inline">
                                            2018-01-01
                                          </div>
                                      </div>
                                      <div class="row">
                                          <label class="col-md-3 text-right">实际完成日期</label>
                                          <div class="col-md-9 form-inline">
                                            2018-01-01
                                          </div>
                                      </div>
                                      <div class="row">
                                        <label class="col-md-3"></label>

                                        <div class="col-md-9">
                                          <a  class="btn btn-default" data-toggle="tab" href="#collapse6_2">编辑</a>
                                        </div>
                                      </div>
                                    </div>
                                    <div id="collapse6_2" class="tab-pane fade">
                                      <form class="form-horizontal" method="post">
                                        <div class="form-group">
                                            <label class="col-md-3 control-label">计划完成时间</label>
                                            <div class="col-md-9 form-inline">
                                                <div class="input-group input-medium date datepicker">
                                                    <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                                            </div>
                                        </div>
                                      <div class="form-group">
                                          <label class="col-md-3 control-label">实际完成时间</label>
                                          <div class="col-md-9 form-inline">
                                              <div class="input-group input-medium date datepicker">
                                                  <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                                          </div>
                                      </div>
                                      <div class="form-group">
                                        <label class="col-md-3 control-label"></label>

                                        <div class="col-md-9">
                                          <a  class="btn btn-primary" onclick="">更新</a>
                                          <a  class="btn btn-default" data-toggle="tab" href="#collapse6_1">取消</a>
                                        </div>
                                      </div>
                                      </form>

                                    </div>
                                </div>
                            </div>

                        </div>

                        <div id="panel_7" class="panel-default">
                            <div class="panel-heading">
                                <span class="panel-title"><a data-toggle="collapse"
         href="#collapse7" >
        筑炉
      </a></span>
                                <div class="clearfix"></div>
                            </div>

                            <div id="collapse7" class="collapse in">
                              <div class="panel-body tab-content ">

                                  <div id="collapse7_1" class="tab-pane active fade in">
                                    <div class="row">
                                        <label class="col-md-3 text-right">计划完成日期</label>
                                        <div class="col-md-9 form-inline">
                                          2018-01-01
                                        </div>
                                    </div>
                                    <div class="row">
                                        <label class="col-md-3 text-right">实际完成日期</label>
                                        <div class="col-md-9 form-inline">
                                          2018-01-01
                                        </div>
                                    </div>
                                    <div class="row">
                                      <label class="col-md-3"></label>

                                      <div class="col-md-9">
                                        <a  class="btn btn-default" data-toggle="tab" href="#collapse7_2">编辑</a>
                                      </div>
                                    </div>
                                  </div>
                                  <div id="collapse7_2" class="tab-pane fade">
                                    <form class="form-horizontal" method="post">
                                      <div class="form-group">
                                          <label class="col-md-3 control-label">计划完成时间</label>
                                          <div class="col-md-9 form-inline">
                                              <div class="input-group input-medium date datepicker">
                                                  <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                                          </div>
                                      </div>
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">实际完成时间</label>
                                        <div class="col-md-9 form-inline">
                                            <div class="input-group input-medium date datepicker">
                                                <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                      <label class="col-md-3 control-label"></label>

                                      <div class="col-md-9">
                                        <a  class="btn btn-primary" onclick="">更新</a>
                                        <a  class="btn btn-default" data-toggle="tab" href="#collapse7_1">取消</a>
                                      </div>
                                    </div>
                                    </form>

                                  </div>
                              </div>
                            </div>

                        </div>

                        <div id="panel_8" class="panel-default">
                            <div class="panel-heading">
                                <span class="panel-title"><a data-toggle="collapse"
         href="#collapse8" >
        车间生产装配
      </a></span>
                                <div class="clearfix"></div>
                            </div>

                            <div id="collapse8" class="collapse in">
                              <div class="panel-body tab-content ">
                                  <div id="collapse8_1" class="tab-pane active fade in">
                                    <div class="row">
                                        <label class="col-md-3  text-right">计划开始日期</label>
                                        <div class="col-md-9">
                                          2018-01-01
                                        </div>
                                    </div>
                                    <div class="row">
                                        <label class="col-md-3 text-right">实际开始日期</label>
                                        <div class="col-md-9 form-inline">
                                          2018-01-01

                                        </div>

                                    </div>
                                    <div class="row">
                                        <label class="col-md-3 text-right">计划完成日期</label>
                                        <div class="col-md-9 form-inline">
                                          2018-01-01
                                        </div>

                                    </div>
                                    <div class="row">
                                        <label class="col-md-3 text-right">实际完成日期</label>
                                        <div class="col-md-9">
                                          2018-01-01

                                        </div>
                                    </div>
                                    <div class="row">
                                        <label class="col-md-3  text-right">（机械）已完成工时</label>
                                        <div class="col-md-9">
                                          2018
                                        </div>
                                    </div>
                                    <div class="row">
                                        <label class="col-md-3 text-right">（机械）剩余工时</label>
                                        <div class="col-md-9 form-inline">
                                          100

                                        </div>

                                    </div>
                                    <div class="row">
                                        <label class="col-md-3 text-right">（电气）已完成工时</label>
                                        <div class="col-md-9 form-inline">
                                          100
                                        </div>

                                    </div>
                                    <div class="row">
                                        <label class="col-md-3 text-right">（电气）剩余工时</label>
                                        <div class="col-md-9">
                                            100
                                        </div>
                                    </div>
                                    <div class="row">
                                        <label class="col-md-3 text-right">当前问题</label>
                                        <div class="col-md-9">
                                            问题123412341
                                        </div>
                                    </div>


                                    <div class="row">
                                      <label class="col-md-3"></label>

                                      <div class="col-md-9">
                                        <a  class="btn btn-default" data-toggle="tab" href="#collapse8_2">编辑</a>
                                      </div>
                                    </div>

                                  </div>
                                  <div id="collapse8_2" class="tab-pane fade form-body">
                                    <form class="form-horizontal">
                                      <div class="form-group">
                                          <label class="col-md-3 control-label">计划开始日期</label>
                                          <div class="col-md-9 form-inline">
                                              <div class="input-group input-medium date datepicker">
                                                  <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>

                                          </div>

                                      </div>
                                      <div class="form-group">
                                          <label class="col-md-3 control-label">实际开始日期</label>
                                          <div class="col-md-9 form-inline">
                                              <div class="input-group input-medium date datepicker">
                                                  <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>

                                          </div>

                                      </div>
                                      <div class="form-group">
                                          <label class="col-md-3 control-label">计划完成日期</label>
                                          <div class="col-md-9 form-inline">
                                              <div class="input-group input-medium date datepicker">
                                                  <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>

                                          </div>

                                      </div>
                                      <div class="form-group">
                                          <label class="col-md-3 control-label">实际完成日期</label>
                                          <div class="col-md-9 form-inline">
                                              <div class="input-group input-medium date datepicker">
                                                  <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>

                                          </div>

                                      </div>
                                      <div class="form-group">
                                          <label class="col-md-3 control-label">（机械）已完成工时</label>
                                          <div class="col-md-9">
                                              <input type="text" name="cd" value="" class="form-control input-large" />
                                          </div>
                                      </div>
                                      <div class="form-group">
                                          <label class="col-md-3 control-label">（机械）剩余工时</label>
                                          <div class="col-md-9">
                                              <input type="text" name="cd" value="" class="form-control input-large" />
                                          </div>
                                      </div>
                                      <div class="form-group">
                                          <label class="col-md-3 control-label">（电气）已完成工时</label>
                                          <div class="col-md-9">
                                              <input type="text" name="cd" value="" class="form-control input-large" />
                                          </div>
                                      </div>
                                      <div class="form-group">
                                          <label class="col-md-3 control-label">（电气）剩余工时</label>
                                          <div class="col-md-9">
                                              <input type="text" name="cd" value="" class="form-control input-large" />
                                          </div>
                                      </div>

                                      <div class="form-group">
                                          <label class="col-md-3 control-label">当前问题</label>
                                          <div class="col-md-9">
                                            <textarea type="text" rows="3" name="cd" value="" class="form-control input-xlarge"></textarea>
                                          </div>
                                      </div>


                                      <div class="form-group">
                                        <label class="col-md-3 control-label"></label>

                                        <div class="col-md-9">
                                          <a  class="btn btn-primary" onclick="">更新</a>
                                          <a  class="btn btn-default" data-toggle="tab" href="#collapse8_1">取消</a>
                                        </div>
                                      </div>
                                  </div>
                                </form>
                              </div>
                            </div>

                        </div>

                        <div id="panel_9" class="panel-default">
                            <div class="panel-heading">
                                <span class="panel-title"><a data-toggle="collapse"
         href="#collapse9" >
        车间调试
      </a></span>
                                <div class="clearfix"></div>
                            </div>

                            <div id="collapse9" class="collapse in">

                                  <div class="panel-body tab-content ">
                                      <div id="collapse9_1" class="tab-pane active fade in">
                                        <div class="row">
                                            <label class="col-md-3  text-right">计划开始日期</label>
                                            <div class="col-md-9">
                                              2018-01-01
                                            </div>
                                        </div>
                                        <div class="row">
                                            <label class="col-md-3 text-right">实际开始日期</label>
                                            <div class="col-md-9 form-inline">
                                              2018-01-01

                                            </div>

                                        </div>
                                        <div class="row">
                                            <label class="col-md-3 text-right">计划完成日期</label>
                                            <div class="col-md-9 form-inline">
                                              2018-01-01
                                            </div>

                                        </div>
                                        <div class="row">
                                            <label class="col-md-3 text-right">实际完成日期</label>
                                            <div class="col-md-9">
                                              2018-01-01

                                            </div>
                                        </div>

                                        <div class="row">
                                            <label class="col-md-3 text-right">当前问题</label>
                                            <div class="col-md-9">
                                                问题123412341
                                            </div>
                                        </div>


                                        <div class="row">
                                          <label class="col-md-3"></label>

                                          <div class="col-md-9">
                                            <a  class="btn btn-default" data-toggle="tab" href="#collapse9_2">编辑</a>
                                          </div>
                                        </div>

                                      </div>
                                      <div id="collapse9_2" class="tab-pane fade form-body">
                                        <form class="form-horizontal">
                                          <div class="form-group">
                                              <label class="col-md-3 control-label">计划开始日期</label>
                                              <div class="col-md-9 form-inline">
                                                  <div class="input-group input-medium date datepicker">
                                                      <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>

                                              </div>

                                          </div>
                                          <div class="form-group">
                                              <label class="col-md-3 control-label">实际开始日期</label>
                                              <div class="col-md-9 form-inline">
                                                  <div class="input-group input-medium date datepicker">
                                                      <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>

                                              </div>

                                          </div>
                                          <div class="form-group">
                                              <label class="col-md-3 control-label">计划完成日期</label>
                                              <div class="col-md-9 form-inline">
                                                  <div class="input-group input-medium date datepicker">
                                                      <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>

                                              </div>

                                          </div>
                                          <div class="form-group">
                                              <label class="col-md-3 control-label">实际完成日期</label>
                                              <div class="col-md-9 form-inline">
                                                  <div class="input-group input-medium date datepicker">
                                                      <input type="text" name="project.orderDate" value="" class="form-control" /><span class="input-group-btn"><button class="btn btn-default date-set" type="button"><i class="fa fa-calendar"></i></button></span></div>

                                              </div>

                                          </div>


                                          <div class="form-group">
                                              <label class="col-md-3 control-label">当前问题</label>
                                              <div class="col-md-9">
                                                <textarea type="text" rows="3" name="cd" value="" class="form-control input-xlarge"></textarea>
                                              </div>
                                          </div>


                                          <div class="form-group">
                                            <label class="col-md-3 control-label"></label>

                                            <div class="col-md-9">
                                              <a  class="btn btn-primary" onclick="">更新</a>
                                              <a  class="btn btn-default" data-toggle="tab" href="#collapse9_1">取消</a>
                                            </div>
                                          </div>
                                      </div>
                                    </form>
                                  </div>
                            </div>

                        </div>


                    </div>




                </div>



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
            window.location = '${rc.contextPath}/projects/whs/project_status'
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
