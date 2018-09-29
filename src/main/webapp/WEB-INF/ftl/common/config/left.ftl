<#macro menu index>

	<aside class="main-sidebar">

		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">

			<!-- Sidebar Menu -->
			<ul class="sidebar-menu" data-widget="tree">
				<li class="header">导航菜单</li>
				<!-- Optionally, you can add icons to the links -->
				<!-- 管理桌面 -->
				<li class="${(index?index_of('0-')==0)?string('active',' ')}"><a href="${rc.contextPath}/index"><i class="fa fa-home"></i> <span class="title"><@spring.message "menu.desktop" /></span></a>
				</li>

				<!-- 项目管理 -->
				<li class="treeview ${(index?index_of('1-')==0)?string('active',' ')}">
					<a href="${rc.contextPath}/projects/list">
						<i class="fa fa-sitemap"></i> <span><@spring.message "menu.project.management" /></span>
						<span class="pull-right-container">
					              <i class="fa fa-angle-left pull-right"></i>
					            </span>
					</a>
					<ul class="treeview-menu">
						<li class="${(index?index_of('1-1')==0)?string('active',' ')}"> <a href="${rc.contextPath}/projects/list"><i class="fa fa-circle-o"></i>项目列表</a>
						</li>
						<li class="${(index?index_of('1-2')==0)?string('active',' ')}">
							<a href="${rc.contextPath}/projects/new"><i class="fa fa-circle-o"></i><@spring.message "menu.project.new" /></a>
						</li>
						<li class="${(index?index_of('1-3')==0)?string('active',' ')}">
							<a href="${rc.contextPath}/plan/mechanical_plan"><i class="fa fa-circle-o"></i><@spring.message "menu.project.plan" /></a>
						</li>
						<li class="${(index?index_of('1-4')==0)?string('active',' ')}">
							<a href="${rc.contextPath}/projects/whs/project_status"><i class="fa fa-circle-o"></i><@spring.message "menu.project.schedule" /></a>
						</li>
						<li class="${(index?index_of('1-5')==0)?string('active',' ')}"><a href="${rc.contextPath}/projects/whs/project_delivery"><i class="fa fa-circle-o"></i><@spring.message "menu.project.delivery" /></a>
						</li>
						<li class="${(index?index_of('1-6')==0)?string('active',' ')}"><a href="${rc.contextPath}/projects/whs/project_debugNassurance"><i class="fa fa-circle-o"></i><@spring.message "menu.project.debugservice" /></a>
						</li>
					</ul>

				</li>

				<!--  工时管理  -->
				<li class="treeview ${(index?index_of('2-')==0)?string('active',' ')}">
					<a href="#"><i class="fa fa-tasks"></i> <span><@spring.message "menu.workhours.management" /></span>
						<span class="pull-right-container">
												<i class="fa fa-angle-left pull-right"></i>
											</span>
					</a>
					<ul class="treeview-menu">
						<li class="${(index?index_of('2-1')==0)?string('active',' ')}">
							<a href="${rc.contextPath}/projects/whs/workhours_input"><i class="fa fa-circle-o"></i><span class="title"><@spring.message "menu.workhours.apply" /></span></a>
						</li>
						<li class="${(index?index_of('2-2')==0)?string('active',' ')}">
							<a href="${rc.contextPath}/projects/check_workhours"><i class="fa fa-circle-o"></i><span class="title"><@spring.message "menu.workhours.approval" /></span></a>
						</li>
					</ul>
				</li>

				<!-- 报表统计 -->
				<li class="treeview ${(index?index_of('3-')==0)?string('active',' ')}">
					<a href="#"><i class="fa fa-bar-chart-o"></i>
						 <span><@spring.message "menu.report.statistics" /></span>
						 <span class="pull-right-container">
						 						<i class="fa fa-angle-left pull-right"></i>
						 					</span>
						 </a>
					<ul class="treeview-menu">
						<li class="${(index?index_of('3-1')==0)?string('active',' ')}">
							<a href="${rc.contextPath}/projects/whs/projects_report"><i class="fa fa-circle-o"></i><@spring.message "menu.report.project" /></a>
						</li>
						<li class="${(index?index_of('3-2')==0)?string('active',' ')}">
							<a href="${rc.contextPath}/projects/whs/workhours_report"><i class="fa fa-circle-o"></i><@spring.message "menu.report.workhours" /></a>
						</li>
					</ul>
				</li>

				<li  class="treeview ${(index?index_of('4-')==0)?string('active',' ')}">
					<a href="#"><i class="fa fa-cog"></i> <span><@spring.message "menu.device.standard.database" /></span>
						<span class="pull-right-container">
											 <i class="fa fa-angle-left pull-right"></i>
										 </span>
					</a>
					<ul class="treeview-menu">

						<li class="${(index?index_of('4-1')==0)?string('active',' ')}">
							<a href="${rc.contextPath}/devices/list"><i class="fa fa-circle-o"></i><@spring.message "menu.device.standard.times" /></a>
						</li>
					</ul>
				</li>

				<li  class="treeview ${(index?index_of('5-')==0)?string('active',' ')}">
					<a href="#"><i class="fa fa-user"></i> <span><@spring.message "menu.employee.database" /></span>
						<span class="pull-right-container">
											 <i class="fa fa-angle-left pull-right"></i>
										 </span>
					</a>
					<ul class="treeview-menu">
						<li class="${(index?index_of('5-1')==0)?string('active',' ')}">
							<a href="#"><i class="fa fa-circle-o"></i><@spring.message "menu.employee.list" /></a>
						</li>
						<li class="${(index?index_of('5-2')==0)?string('active',' ')}">
							<a href="#"><i class="fa fa-circle-o"></i><@spring.message "menu.employee.new" /></a>
						</li>

					</ul>
				</li>
			</ul>
			<!-- /.sidebar-menu -->
		</section>
		<!-- /.sidebar -->
	</aside>
</#macro>
