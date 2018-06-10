<!--  -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta name="MobileOptimized" content="320">

    <title>
        <@spring.message "system.title"/> |
        <@spring.message "menu.desktop"/>
    </title>

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

    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-1.10.2.min.js"></script>
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

    <div class="page-container">
        <div class="row page-header">

            <h3 class="text-center"><@spring.message "menu.desktop" /></h3>
        </div>
        <!-- /.col-lg-12 -->


        <div class=" col-md-8 col-md-offset-2 ">

            <!-- dashboard begin -->
            <div class="col-lg-4 ">
                <div class="panel panel-primary" style="height:100%">
                    <div class="panel-heading">
                        </i>
                        <span class="pull-right"><i class="fa fa-tasks" style="font-size:28px" ></i></span>
                        <span><@spring.message "menu.project.management" /></span>
                        <div class="clearfix"></div>
                    </div>
                    <div class="panel-footer">
                        <div class="row text-left">
                            <ul class="nav">
                                <li>
                                    <a href="${rc.contextPath}/projects/new" class="cursor-pointer"><span class="title"><@spring.message "menu.project.new" /></span></a>
                                </li>
                                <li>
                                    <a href="${rc.contextPath}/projects/whs/mechanical_plan"><span class="title"><@spring.message "menu.project.plan" /></span></a>
                                </li>
                                <li>
                                    <a href="${rc.contextPath}/projects/whs/projects_query" class="cursor-pointer"><span class="title"><@spring.message "menu.project.schedule" /></span></a>
                                </li>
                                <li><a href="#"><span class="title"><@spring.message "menu.project.delivery" /></span></a>
                                </li>
                                <li><a href="#"><span class="title"><@spring.message "menu.project.debugservice" /></span></a>
                                </li>

                            </ul>

                        </div>
                    </div>
                </div>
            </div>



            <div class="col-lg-4 col-md-6">
                <div class="panel panel-primary">

                    <div class="panel-heading">
                        <span class="pull-left"><@spring.message "menu.workhours.management" /></span>
                        <span class="pull-right"><i class="fa fa-calendar" style="font-size:28px"></i></span>
                        <div class="clearfix"></div>
                    </div>
                    <div class="panel-footer">
                        <div class="row text-left">
                            <ul class="nav">
                                <li>
                                    <a href="${rc.contextPath}/projects/input_workhours"><span class="title"><@spring.message "menu.workhours.apply" /></span></a>
                                </li>
                                <li>
                                    <a href="${rc.contextPath}/projects/check_workhours" class="cursor-pointer"><span class="title"><@spring.message "menu.workhours.approval" /></span></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-4 col-md-6">
                <div class="panel panel-primary">

                    <div class="panel-heading">
                        <span class="pull-left"><@spring.message "menu.report.statistics" /></span>
                        <span class="pull-right"><i class="fa fa-bar-chart-o" style="font-size:28px"></i></span>
                        <div class="clearfix"></div>
                    </div>
                    <div class="panel-footer">
                        <div class="row text-left">
                            <ul class="nav">
                                <li>
                                    <a href="${rc.contextPath}/projects/whs/projects_report"><span class="title"><@spring.message "menu.report.project" /></span></a>
                                </li>
                                <li>
                                    <a href="${rc.contextPath}/projects/whs/workhours_report"><span class="title"><@spring.message "menu.report.workhours" /></span></a>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-4 col-md-6">
                <div class="panel panel-primary">

                    <div class="panel-heading">
                        <span class="pull-left"><@spring.message "menu.device.standard.database" /></span>
                        <span class="pull-right"><i class="fa fa-cog" style="font-size:28px"></i></span>
                        <div class="clearfix"></div>
                    </div>
                    <div class="panel-footer">
                        <div class="row text-left">
                            <ul class="nav">
                                <li>
                                    <a href="${rc.contextPath}/devices/list"><span class="title"><@spring.message "menu.device.list" /></span></a>
                                </li>
                                <li>
                                    <a href="${rc.contextPath}/devices/processes"><span class="title">工序流程管理</span></a>
                                </li>
                                <li>
                                    <a href="${rc.contextPath}/devices/standardtimes"><span class="title"><@spring.message "menu.device.standard.times" /></span></a>
                                </li>


                            </ul>
                        </div>
                    </div>
                </div>
            </div>





            <div class="col-lg-4 col-md-6">
                <div class="panel panel-primary">

                    <div class="panel-heading">
                        <span class="pull-left"><@spring.message "menu.employee.database" /></span>
                        <span class="pull-right"><i class="fa fa-user" style="font-size:28px"></i></span>
                        <div class="clearfix"></div>
                    </div>
                    <div class="panel-footer">
                        <div class="row text-left">
                            <ul class="nav">
                                <li>
                                    <a href="${rc.contextPath}/projects/whs/projects_report"><span class="title"><@spring.message "menu.employee.list" /></span></a>
                                </li>
                                <li>
                                    <a href="${rc.contextPath}/projects/whs/Report2"><span class="title"><@spring.message "menu.employee.new" /></span></a>
                                </li>
                                <li>
                                    &nbsp;
                                </li>


                            </ul>
                        </div>
                    </div>
                </div>
            </div>


            <!-- dashboard end -->


      </div>

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

    <!-- END JAVASCRIPTS -->

</body>

</html>
