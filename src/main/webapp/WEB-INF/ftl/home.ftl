<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>        <@spring.message "system.title"/> |<@spring.message "menu.desktop"/>
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

</head>

<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

        <!-- BEGIN HEADER -->
        <#include "/common/config/top.ftl" />

        <@top 1/>

        <!-- END HEADER -->
        <!-- Left side column. contains the logo and sidebar -->
        <#include "/common/config/left.ftl" />

        <@menu '0-0' />

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
        管理桌面
      </h1>

            </section>

            <!-- Main content -->
            <section class="content container-fluid">


                <!-- dashboard begin -->
                <div class="col-lg-4 ">
                    <div class="box box-default" style="height:100%">
                        <div class="box-header with-border">
                            <i class="fa fa-tasks"></i>
                            <h3 class="box-title"><@spring.message "menu.project.management" /></h3>
                        </div>
                        <div class="box-body">
                            <p>
                                <a href="${rc.contextPath}/projects/list" class="cursor-pointer"><span class="title">项目列表</span></a>
                            </p>
                            <p>
                                <a href="${rc.contextPath}/projects/new" class="cursor-pointer"><span class="title"><@spring.message "menu.project.new" /></span></a>
                            </p>
                            <p>
                                <a href="${rc.contextPath}/plan/mechanical_plan"><span class="title"><@spring.message "menu.project.plan" /></span></a>
                            </p>
                            <p>
                                <a href="${rc.contextPath}/projects/whs/project_status" class="cursor-pointer"><span class="title"><@spring.message "menu.project.schedule" /></span></a>
                            </p>
                            <p><a href="${rc.contextPath}/projects/whs/project_delivery"><span class="title"><@spring.message "menu.project.delivery" /></span></a>
                            </p>
                            <p><a href="${rc.contextPath}/projects/whs/project_debugNassurance"><span class="title"><@spring.message "menu.project.debugservice" /></span></a>
                            </p>
                        </div>
                    </div>
                </div>



                <div class="col-lg-4 col-md-6">
                    <div class="box box-default">

                        <div class="box-header with-border">
                            <i class="fa fa-calendar"></i>
                            <h3 class="box-title"><@spring.message "menu.workhours.management" /></h3>

                        </div>
                        <div class="box-body">
                            <p>
                                <a href="${rc.contextPath}/projects/whs/workhours_input"><span class="title"><@spring.message "menu.workhours.apply" /></span></a>
                            </p>
                            <p>
                                <a href="${rc.contextPath}/projects/check_workhours" class="cursor-pointer"><span class="title"><@spring.message "menu.workhours.approval" /></span></a>
                            </p>
                        </div>
                    </div>
                </div>


                <div class="col-lg-4 col-md-6">
                    <div class="box box-default">

                        <div class="box-header with-border">
                            <i class="fa fa-bar-chart-o"></i>
                            <h3 class="box-title"><@spring.message "menu.report.statistics" /></h3>
                        </div>
                        <div class="box-body">
                            <p>
                                <a href="${rc.contextPath}/projects/whs/projects_report"><span class="title"><@spring.message "menu.report.project" /></span></a>
                            </p>
                            <p>
                                <a href="${rc.contextPath}/projects/whs/workhours_report"><span class="title"><@spring.message "menu.report.workhours" /></span></a>
                            </p>
                        </div>
                    </div>
                </div>


                <div class="col-lg-4 col-md-6">
                    <div class="box box-default">

                        <div class="box-header with-border">
                            <i class="fa fa-cog"></i>
                            <h3 class="box-title"><@spring.message "menu.device.standard.database" /></h3>

                        </div>
                        <div class="box-body">
                            <p>
                                <a href="${rc.contextPath}/devices/list"><span class="title"><@spring.message "menu.device.standard.times" /></span></a>
                            </p>
                        </div>
                    </div>
                </div>





                <div class="col-lg-4 col-md-6">
                    <div class="box box-default">

                        <div class="box-header with-border">
                            <i class="fa fa-user"></i>

                            <h3 class="box-title"><@spring.message "menu.employee.database" /></h3>
                        </div>
                        <div class="box-body">
                            <p> <a href="#"><span class="title"><@spring.message "menu.employee.list" /></span></a></p>
                            <p> <a href="#"><span class="title"><@spring.message "menu.employee.new" /></span></a>
                            </p>

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

    <!-- REQUIRED JS SCRIPTS -->

    <!-- jQuery 3 -->
    <script src="${rc.contextPath}/assets/plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="${rc.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="${rc.contextPath}/assets/dist/js/adminlte.min.js"></script>

    <!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>

</html>
