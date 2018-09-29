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
        项目进度 <small>详情</small>
      </h1>

            </section>

            <!-- Main content -->
            <section class="content container-fluid">
                <div class="panel-group box box-primary" id="panel-group">
                    <div id="panel_basic" class="panel-default" style="border:none">
                        <div class="panel-heading">
                            <span class="panel-title"><a data-toggle="collapse"
         href="#collapseOne" >
        项目信息
      </a></span>
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
                                            <a class="btn btn-default" data-toggle="tab" href="#collapseOne_2">编辑</a>
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
                                                <a class="btn btn-primary" onclick="">更新</a>
                                                <a class="btn btn-default" data-toggle="tab" href="#collapseOne_1">取消</a>
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
                                            <a class="btn btn-default" data-toggle="tab" href="#collapse2_2">编辑</a>
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
                                                <a class="btn btn-primary" onclick="">更新</a>
                                                <a class="btn btn-default" data-toggle="tab" href="#collapse2_1">取消</a>
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
                                            <a class="btn btn-default" data-toggle="tab" href="#collapse3_2">编辑</a>
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
                                                <a class="btn btn-primary" onclick="">更新</a>
                                                <a class="btn btn-default" data-toggle="tab" href="#collapse3_1">取消</a>
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
                                    <a class="btn btn-default" href="#collapse4_2" data-toggle="tab" onclick="">编辑</a>

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
                                    <a class="btn btn-primary" onclick="">更新</a>
                                    <a class="btn btn-default" href="#collapse4_1" data-toggle="tab" onclick="">取消  </a>


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
                                            <a class="btn btn-default" data-toggle="tab" href="#collapse5_2">编辑</a>
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
                                                <a class="btn btn-primary" onclick="">更新</a>
                                                <a class="btn btn-default" data-toggle="tab" href="#collapse5_1">取消</a>
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
                                            <a class="btn btn-default" data-toggle="tab" href="#collapse6_2">编辑</a>
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
                                                <a class="btn btn-primary" onclick="">更新</a>
                                                <a class="btn btn-default" data-toggle="tab" href="#collapse6_1">取消</a>
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
                                            <a class="btn btn-default" data-toggle="tab" href="#collapse7_2">编辑</a>
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
                                                <a class="btn btn-primary" onclick="">更新</a>
                                                <a class="btn btn-default" data-toggle="tab" href="#collapse7_1">取消</a>
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
                                            <a class="btn btn-default" data-toggle="tab" href="#collapse8_2">编辑</a>
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
                                                <a class="btn btn-primary" onclick="">更新</a>
                                                <a class="btn btn-default" data-toggle="tab" href="#collapse8_1">取消</a>
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
                                            <a class="btn btn-default" data-toggle="tab" href="#collapse9_2">编辑</a>
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
                                                <a class="btn btn-primary" onclick="">更新</a>
                                                <a class="btn btn-default" data-toggle="tab" href="#collapse9_1">取消</a>
                                            </div>
                                        </div>
                                </div>
                                </form>
                            </div>
                        </div>

                    </div>


                </div>




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
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/select2/select2_4.0.6.min.js"></script>

<script type="text/javascript">
    var sf_public_path = '${rc.contextPath}/';
    var selected_items = new Array();
    var dataTable;
    var dataSet = [{
        "name": "炉壳",
        "planEnd": "2018-08-01"
    }];

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

</html>
