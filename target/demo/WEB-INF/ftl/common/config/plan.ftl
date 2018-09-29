<#macro plan index>
<ul class="nav nav-tabs">
	<li class="${(index==1)?string('active',' ')}">
		<a href="${(index==1)?string('#','mechanical_plan')}">机械设计部任务分配计划</a>
	</li>
	<li class="${(index==2)?string('active',' ')}">
		<a href="${(index==2)?string('#','electric_plan')}">电气设计部任务分配计划</a>
	</li>
	<li class="${(index==3)?string('active',' ')}">
		<a href="${(index==3)?string('#','purchase_plan')}">采购任务分配计划</a>
	</li>
	<li class="${(index==4)?string('active',' ')}">
		<a href="${(index==4)?string('#','manufacture_plan')}">车间生产计划</a>
	</li>
</ul>

</#macro>
