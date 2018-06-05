<!--  -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <title>
        <@spring.message "system.title"/> |
        <@spring.message "menu.desktop"/>
    </title>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
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

    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-1.10.2.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/app.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/skins/default/default.css" />
    <link rel="shortcut icon" href="${rc.contextPath}/favicon.ico" />
    <link rel="apple-touch-icon" href="${rc.contextPath}/favicon.png" />
</head>

<body class="page-scale-reduced page-header-fixed">

    <!-- BEGIN HEADER -->
    <#include "/common/config/top.ftl" />

    <@top 1/>

    <!-- END HEADER -->

    <div class="clearfix">
    </div>
    <div class="col-lg-2">

    </div>
    <div class="page-content col-lg-8 text-center">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header text-center"><@spring.message "menu.desktop" /></h3>
            </div>
            <!-- /.col-lg-12 -->
        </div>

        <!-- dashboard begin -->
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="panel panel-primary">

                    <a href="#">
                        <div class="panel-heading">
                            <span class="pull-left"><@spring.message "menu.project.management" /></span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                    <div class="panel-footer">
                        <div class="row text-left">
                            <ul>
                                <li>
                                    <a href="${rc.contextPath}/projects/new" class="cursor-pointer"><span class="title"><@spring.message "menu.project.new" /></span></a>
                                </li>
                                <li>
                                    <a href="${rc.contextPath}/projects/list"><span class="title"><@spring.message "menu.project.plan" /></span></a>
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


            <div class="col-lg-3 col-md-6">
                <div class="panel panel-primary">

                    <a href="#">
                        <div class="panel-heading">
                            <span class="pull-left"><@spring.message "menu.workhours.management" /></span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                    <div class="panel-footer">
                        <div class="row text-left">
                            <ul class="sub-menu">
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


            <div class="col-lg-3 col-md-6">
                <div class="panel panel-primary">

                    <a href="#">
                        <div class="panel-heading">
                            <span class="pull-left"><@spring.message "menu.report.statistics" /></span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                    <div class="panel-footer">
                        <div class="row text-left">
                            <ul>
                                <li>
                                    <a href="${rc.contextPath}/projects/whs/Report1"><span class="title"><@spring.message "menu.report.project" /></span></a>
                                </li>
                                <li>
                                    <a href="${rc.contextPath}/projects/whs/Report2"><span class="title"><@spring.message "menu.report.workhours" /></span></a>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-3 col-md-6">
                <div class="panel panel-primary">

                    <a href="#">
                        <div class="panel-heading">
                            <span class="pull-left"><@spring.message "menu.device.standard.database" /></span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                    <div class="panel-footer">
                        <div class="row text-left">
                            <ul>
                                <li>
                                    <a href="${rc.contextPath}/devices/list"><span class="title"><@spring.message "menu.device.list" /></span></a>
                                </li>
                                <li>
                                    <a href="${rc.contextPath}/projects/whs/processes"><span class="title">工序流程管理</span></a>
                                </li>
                                <li>
                                    <a href="${rc.contextPath}/projects/whs/Report1"><span class="title">额定工时数据</span></a>
                                </li>


                            </ul>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <div class="row">



            <div class="col-lg-3 col-md-6">
                <div class="panel panel-primary">

                    <a href="#">
                        <div class="panel-heading">
                            <span class="pull-left"><@spring.message "menu.employee.database" /></span>
                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                            <div class="clearfix"></div>
                        </div>
                    </a>
                    <div class="panel-footer">
                        <div class="row text-left">
                            <ul>
                                <li>
                                    <a href="${rc.contextPath}/projects/whs/Report1"><span class="title"><@spring.message "menu.employee.list" /></span></a>
                                </li>
                                <li>
                                    <a href="${rc.contextPath}/projects/whs/Report2"><span class="title"><@spring.message "menu.employee.new" /></span></a>
                                </li>
                                <li>
                                    <a href="${rc.contextPath}/projects/whs/Report2"><span class="title">请假&amp;出差</span></a>
                                </li>


                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- dashboard end -->




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