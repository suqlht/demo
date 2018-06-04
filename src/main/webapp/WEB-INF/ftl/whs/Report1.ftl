<!--  -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
  <head>
    <title><@spring.message "system.title"/> | 管理面板</title>

    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta name="MobileOptimized" content="320">

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/js/yui2.9.0/build/menu/css/menu.css" />


    <script type="text/javascript" src="${rc.contextPath}/assets/js/yui2.9.0/build/yahoo-dom-event/yahoo-dom-event.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/js/yui2.9.0/build/container/container-min.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/js/yui2.9.0/build/menu/menu-min.js"></script>

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/jquery-ui-1.11.4/jquery-ui.structure.min.css" />


    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/uniform/css/uniform.default.css" />
    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN THEME STYLES -->
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/style-conquer.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/style.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/style-responsive.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/plugins.css" />

    <!-- END THEME STYLES -->

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-modal/css/bootstrap-modal.css" />

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/fullcalendar-2.3.0/fullcalendar.css" />

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/jquery-nestable/jquery.nestable.css" />

    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-1.10.2.min.js"></script>

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/select2/select2_conquer.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/data-tables/DT_bootstrap.css" />
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/data-tables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/data-tables/DT_bootstrap.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/select2/select2.min.js"></script>

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-datepicker/css/datepicker.css" />

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap-datetimepicker/css/datetimepicker.css" />

    <script type="text/javascript" src="${rc.contextPath}/assets/js/uploadifive-v1.2.2/jquery.uploadifive.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/js/uploadifive-v1.2.2/uploadifive.css" />

    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/ckeditor/ckeditor.js"></script>

    <script type="text/javascript" src="${rc.contextPath}/assets/js/app.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/js/cluetip1.2.5/jquery.cluetip.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/js/cluetip1.2.5/jquery.cluetip.css" />

    <script>

      var sf_public_path = '${rc.contextPath}/';
      var selected_items = new Array();
      var CKEDITOR_holders = new Array();

      function keep_session()
      {
        $.ajax({url: '${rc.contextPath}/home'});
      }

      $(function(){
         setInterval("keep_session()",600000);
      });

    </script>

    <style>



    .y.axisRight text {
        fill: orange;
    }

    .y.axisLeft text {
        fill: steelblue;
    }

    .axis path,
    .axis line {
      fill: none;
      stroke: #000;
      shape-rendering: crispEdges;
    }

    .bar1 {
      fill: steelblue;
    }

    .bar2 {
      fill: orange;
    }

    .x.axis path {
      display: none;
    }
    </style>
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/app.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/skins/default/default.css" />



    <script type="text/javascript">
      var I18NJSText = new Array()
      I18NJSText['Loading...']='上载中...';

      I18NJSText['Are you sure?']='是否确定';

      I18NJSText['Please Select Items']='请选择事项';

      I18NJSText['Format']='格式';

      I18NJSText['Day']='日';

      I18NJSText['Week']='周';

      I18NJSText['Month']='月';

      I18NJSText['Quarter']='季';

      I18NJSText['Status']='状态';

      I18NJSText['Duration']='时段';

      I18NJSText['Progress']='进度';

      I18NJSText['Start Date']='开始日期';

      I18NJSText['Due Date']='截止日期';

      I18NJSText['Bold']='Bold';

      I18NJSText['Italic']='Italic';

      I18NJSText['Underline']='Underline';

      I18NJSText['Left Align']='Left Align';

      I18NJSText['Numbered List']='Numbered List';

      I18NJSText['Bulleted List']='Bulleted List';

      I18NJSText['Indent More']='Indent More';

      I18NJSText['Indent Less']='Indent Less';

      I18NJSText['Strike']='Strike';

      I18NJSText['Remove Formatting']='Remove Formatting';

      I18NJSText['Horizontal Rule']='Horizontal Rule';

      I18NJSText['Image']='Image';

      I18NJSText['Text Color']='Text Color';

      I18NJSText['Background Color']='Background Color';

      I18NJSText['Source']='Source';

      I18NJSText['Code']='Code';

      I18NJSText['Quote']='Quote';

      I18NJSText['Paragraph']='Paragraph';
</script>
<script src="http://d3js.org/d3.v3.min.js"></script>

    <link rel="shortcut icon" href="${rc.contextPath}/favicon.ico" />
    <link rel="apple-touch-icon" href="${rc.contextPath}/favicon.png" />
  </head>
  <body class="page-scale-reduced page-header-fixed yui-skin-sam " id="yahoo-com">

    <!-- BEGIN HEADER -->

    <#include "/common/config/top.ftl" />
<@top 1/>

    <!-- END HEADER -->

<div class="clearfix">
</div>

    <!-- BEGIN CONTAINER -->
    <div class="page-container">

    <!-- BEGIN SIDEBAR -->

    <#include "/common/config/left.ftl" />
<@menu 3/>

    <!-- END SIDEBAR -->

      <!-- BEGIN CONTENT -->

      <div class="page-content-wrapper">
            	<div class="page-content-wrapper">
            		<div class="page-content">
                 <div id="ajax-modal" class="modal fade" tabindex="-1" data-replace="true" data-keyboard="false" data-backdrop="static" data-focus-on=".autofocus"></div>

                 <div id="userAlertContainer" class="alert alert-warning"><strong>提醒:</strong> 有<a> 3 </a>个项目即将到期。有<a> 2 </a>个项目尚未分配班组</div>


                 <h3 class="page-title">报表1</h1>






                   <script>

                   var margin = {top: 80, right: 80, bottom: 80, left: 80},
                       width = 600 - margin.left - margin.right,
                       height = 400 - margin.top - margin.bottom;

                   var x = d3.scale.ordinal()
                       .rangeRoundBands([0, width], .1);

                   var y0 = d3.scale.linear().domain([300, 1100]).range([height, 0]),
                   y1 = d3.scale.linear().domain([20, 80]).range([height, 0]);

                   var xAxis = d3.svg.axis()
                       .scale(x)
                       .orient("bottom");

                   // create left yAxis
                   var yAxisLeft = d3.svg.axis().scale(y0).ticks(4).orient("left");
                   // create right yAxis
                   var yAxisRight = d3.svg.axis().scale(y1).ticks(6).orient("right");

                   var svg = d3.select(".page-content").append("svg")
                       .attr("width", width + margin.left + margin.right)
                       .attr("height", height + margin.top + margin.bottom)
                     .append("g")
                       .attr("class", "graph")
                       .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

                   d3.tsv("/assets/data.tsv", type, function(error, data) {
                     x.domain(data.map(function(d) { return d.year; }));
                     y0.domain([0, d3.max(data, function(d) { return d.money; })]);

                     svg.append("g")
                         .attr("class", "x axis")
                         .attr("transform", "translate(0," + height + ")")
                         .call(xAxis);

                     svg.append("g")
                   	  .attr("class", "y axis axisLeft")
                   	  .attr("transform", "translate(0,0)")
                   	  .call(yAxisLeft)
                   	.append("text")
                   	  .attr("y", 6)
                   	  .attr("dy", "-2em")
                   	  .style("text-anchor", "end")
                   	  .style("text-anchor", "end")
                   	  .text("工时数");

                     svg.append("g")
                   	  .attr("class", "y axis axisRight")
                   	  .attr("transform", "translate(" + (width) + ",0)")
                   	  .call(yAxisRight)
                   	.append("text")
                   	  .attr("y", 6)
                   	  .attr("dy", "-2em")
                   	  .attr("dx", "2em")
                   	  .style("text-anchor", "end")
                   	  .text("人数");

                     bars = svg.selectAll(".bar").data(data).enter();

                     bars.append("rect")
                         .attr("class", "bar1")
                         .attr("x", function(d) { return x(d.year); })
                         .attr("width", x.rangeBand()/2)
                         .attr("y", function(d) { return y0(d.money); })
                   	  .attr("height", function(d,i,j) { return height - y0(d.money); });

                     bars.append("rect")
                         .attr("class", "bar2")
                         .attr("x", function(d) { return x(d.year) + x.rangeBand()/2; })
                         .attr("width", x.rangeBand() / 2)
                         .attr("y", function(d) { return y1(d.number); })
                   	  .attr("height", function(d,i,j) { return height - y1(d.number); });

                   });

                   function type(d) {
                     d.money = +d.money;
                     return d;
                   }

                   </script>








          <!-- END PAGE CONTENT-->
      		</div>
      	</div>
      </div>
      <!-- END CONTENT -->

    </div>
    <!-- END CONTAINER -->


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
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery.blockui.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery.cokie.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/uniform/jquery.uniform.min.js"></script>
<!-- END CORE PLUGINS -->

<script type="text/javascript" src="${rc.contextPath}/assets/plugins/bootstrap-modal/js/bootstrap-modalmanager.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/bootstrap-modal/js/bootstrap-modal.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-validation/dist/additional-methods.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-nestable/jquery.nestable.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>

<script type="text/javascript" src="${rc.contextPath}/assets/scripts/app.js"></script>

<script>
jQuery(document).ready(function() {
   App.init();

   qdpm_app_init();

});

</script>

<!-- END JAVASCRIPTS -->

  </body>
</html>
