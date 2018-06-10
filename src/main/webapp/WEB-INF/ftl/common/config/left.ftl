<#macro menu index>

	<div class="page-sidebar-wrapper">
		<div class="page-sidebar-wrapper">
			<div class="page-sidebar navbar-collapse collapse">

				<!-- BEGIN SIDEBAR MENU -->
				<ul class="page-sidebar-menu">
					<li class="sidebar-toggler-wrapper">


						<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
						<div class="sidebar-toggler">
						</div>
						<div class="clearfix">
						</div>
						<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
					</li>

					<li class="start  active">
						<a href="${rc.contextPath}/home"><i class="fa fa-home"></i> <span class="title"><@spring.message "menu.desktop" /></span></a>
					</li>
					<li class="${(index==1)?string('open',' ')}">
						<a href="#"><i class="fa fa-sitemap"></i> <span class="title"><@spring.message "menu.project.management" /></span><span class="arrow ${(index==1)?string('open',' ')}"></span></a>
						<ul class="sub-menu" style="display:${(index==1)?string('block','none')}">
							<li>
								<a href="${rc.contextPath}/projects/new" class="cursor-pointer"><span class="title"><@spring.message "menu.project.new" /></span></a>
							</li>
							<li>
								<a href="${rc.contextPath}/projects/whs/mechanical_plan"><span class="title"><@spring.message "menu.project.plan" /></span></a>
							</li>
							<li>
								<a href="${rc.contextPath}/projects/whs/project_status" class="cursor-pointer"><span class="title"><@spring.message "menu.project.schedule" /></span></a>
							</li>
							<li><a href="#"><span class="title"><@spring.message "menu.project.delivery" /></span></a>
							</li>
							<li><a href="#"><span class="title"><@spring.message "menu.project.debugservice" /></span></a>
							</li>
						</ul>
					</li>
					<li class="${(index==2)?string('open',' ')}">
						<a href="#"><i class="fa fa-tasks"></i> <span class="title"><@spring.message "menu.workhours.management" /></span><span class="arrow ${(index==2)?string('open',' ')}"></span></a>
						<ul class="sub-menu" style="display:${(index==2)?string('block','none')}">
							<li>
								<a href="${rc.contextPath}/projects/input_workhours"><span class="title"><@spring.message "menu.workhours.apply" /></span></a>
							</li>
							<li>
								<a href="${rc.contextPath}/projects/check_workhours" class="cursor-pointer"><span class="title"><@spring.message "menu.workhours.approval" /></span></a>
							</li>
						</ul>
					</li>
					<li class="${(index==3)?string('open',' ')}">
						<a href="#"><i class="fa fa-bar-chart-o"></i> <span class="title"><@spring.message "menu.report.statistics" /></span><span class="arrow ${(index==3)?string('open',' ')}"></span></a>
						<ul class="sub-menu" style="display:${(index==3)?string('block','none')}">
							<li>
								<a href="${rc.contextPath}/projects/whs/projects_report"><span class="title"><@spring.message "menu.report.project" /></span></a>
							</li>
							<li>
								<a href="${rc.contextPath}/projects/whs/workhours_report"><span class="title"><@spring.message "menu.report.workhours" /></span></a>
							</li>

						</ul>
					</li>
					<li class="${(index==4)?string('open',' ')}">
						<a href="#"><i class="fa fa-bar-chart-o"></i> <span class="title"><@spring.message "menu.device.standard.database" /></span><span class="arrow ${(index==4)?string('open',' ')}"></span></a>
						<ul class="sub-menu" style="display:${(index==4)?string('block','none')}">

							<li>
								<a href="${rc.contextPath}/devices/list"><span class="title">设备管理</span></a>
							</li>
							<li>
								<a href="${rc.contextPath}/devices/processes"><span class="title">工序流程管理</span></a>
							</li>
							<li>
								<a href="${rc.contextPath}/devices/standardtimes"><span class="title"><@spring.message "menu.device.standard.times" /></span></a>
							</li>
						</ul>
					</li>
					<li class="${(index==5)?string('open',' ')}">
						<a href="#"><i class="fa fa-bar-chart-o"></i> <span class="title"><@spring.message "menu.employee.database" /></span><span class="arrow ${(index==5)?string('open',' ')}"></span></a>
						<ul class="sub-menu" style="display:${(index==5)?string('block','none')}">
							<li>
								<a href="${rc.contextPath}/projects/whs/Report1"><span class="title"><@spring.message "menu.employee.list" /></span></a>
							</li>
							<li>
								<a href="${rc.contextPath}/projects/whs/Report2"><span class="title"><@spring.message "menu.employee.new" /></span></a>
							</li>

						</ul>
					</li>
				</ul>
				<!-- END SIDEBAR MENU -->
			</div>
		</div>
	</div>
</#macro>
