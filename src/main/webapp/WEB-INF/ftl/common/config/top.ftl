<#macro top index>
<!-- BEGIN HEADER -->
<div class="header navbar navbar-inverse navbar-fixed-top">
	<!-- BEGIN TOP NAVIGATION BAR -->
	<div class="header-inner">
		<!-- BEGIN LOGO -->

    <a class="navbar-brand" href="${rc.contextPath}/projects/list"><@spring.message "system.title"/></a>

		<!-- END LOGO -->
		<!-- BEGIN RESPONSIVE MENU TOGGLER -->
		<a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
    <img src="${rc.contextPath}/assets/img/menu-toggler.png" />		</a>
		<!-- END RESPONSIVE MENU TOGGLER -->

        <!-- BEGIN TOP NAVIGATION MENU -->
		<ul class="nav navbar-nav pull-right">
			<!-- BEGIN USER LOGIN DROPDOWN -->
			<li class="dropdown user">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown"  data-close-others="true">

                <img class="user-photo" src="${rc.contextPath}/assets/img/no_photo.png" />				<span class="username">
					 用户名				</span>


				<i class="fa fa-angle-down"></i>
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
  		<!-- END USER LOGIN DROPDOWN -->
  	</ul>
  	<!-- END TOP NAVIGATION MENU -->

</div>
<!-- END TOP NAVIGATION BAR -->
</div>
<!-- END HEADER -->
</#macro>
