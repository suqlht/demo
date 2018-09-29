<#macro top index>
	<!-- BEGIN HEADER -->
	<div class="header navbar navbar-inverse">
		<!-- BEGIN TOP NAVIGATION BAR -->
		<div class="header-inner">
			<!-- BEGIN LOGO -->

			<a class="navbar-brand" href="${rc.contextPath}/projects/list">
				<@spring.message "system.title"/>
			</a>

			<!-- END LOGO -->
			<!-- BEGIN RESPONSIVE MENU TOGGLER -->
			<a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<img src="${rc.contextPath}/assets/img/menu-toggler.png" /> </a>
			<!-- END RESPONSIVE MENU TOGGLER -->

			<!-- BEGIN TOP NAVIGATION MENU -->
			<ul class="nav navbar-nav pull-right">
				<!-- BEGIN USER LOGIN DROPDOWN -->
				<li class="dropdown user">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-close-others="true">

						<img class="user-photo" src="${rc.contextPath}/assets/img/no_photo.png" />
						<span class="username">
					 				</span>


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
			<script type="text/javascript">
				function keep_session() {
					$.ajax({
						url: '${rc.contextPath}/myName',
						success:function(text){
							var json = eval(text);
							if(json.code='0000'){
								$('.username').html(json.message);
								//查询成功后设置下次定时查询时间
								setTimeout("keep_session()", 6000);
							}else{
								if(confirm('会话失效，是否登录？')){
									window.location='${rc.contextPath}/login'
								}else{
									setTimeout("keep_session()", 6000);
								}
							}
						},
						error:function(textStatus, errorThrown) {
								$('#ajax-modal').html(errorThrown);
								$('#ajax-modal').modal();
								if(confirm('会话失效，是否登录？')){
									window.location='${rc.contextPath}/login'
								}else{
									setTimeout("keep_session()", 6000);
								}
						}
					});
				}

				$(function() {
					keep_session();
				});
			</script>
		</div>
		<!-- END TOP NAVIGATION BAR -->
	</div>
	<!-- END HEADER -->
</#macro>
