<#macro top index>

<!-- Main Header -->
<header class="main-header">

    <!-- Logo -->
    <a href="index2.html" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>A</b>LT</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>项目&amp;工时管理系统</b></span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>
        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <!-- Messages: style can be found in dropdown.less-->


                <!-- Notifications Menu -->

                <!-- Tasks Menu -->

                <!-- User Account Menu -->
                <li class="dropdown user user-menu">
                    <!-- Menu Toggle Button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <!-- The user image in the navbar-->
                        <img src="${rc.contextPath}/assets/img/no_photo.png" class="user-image" alt="User Image">
                        <!-- hidden-xs hides the username on small devices so only the image appears. -->
                        <span class="hidden-xs">测试账号</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><i class="fa fa-user"></i> 我的详情</a>
                        </li>
                        <li><a href="#"><i class="fa fa-user"></i> 我的权限</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="${rc.contextPath}/logout"><i class="fa fa-sign-out"></i> 注销</a>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>
    </nav>
</header>
</#macro>
