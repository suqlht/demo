
      			<div class="modal-header">
      				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
      				<h4 class="modal-title">添加班组</h4>
      			</div>
      			<div >


      <form class="form-horizontal" role="form"  id="projects" action="${rc.contextPath}/index.php/projects/create" method="post" enctype="multipart/form-data" >
      <div class="modal-body">
        <div class="form-body">


      <input type="hidden" name="projects[id]" id="projects_id" /><input type="hidden" name="projects[created_by]" value="5" id="projects_created_by" /><input type="hidden" name="projects[created_at]" value="2018-05-13 12:31:42" id="projects_created_at" /><input type="hidden" name="projects[_csrf_token]" value="ee31984635362ad4266aee5c9c6ff2b1" id="projects__csrf_token" />
      <input type="hidden" name="redirect_to" id="redirect_to" />


      <ul class="nav nav-tabs">
      	<li class="active">
          <a href="#tab_general" data-toggle="tab">班组信息</a>
        </li>

      </ul>


      <div class="tab-content" >
          <div class="tab-pane fade active in" id="tab_general">


            <div class="form-group">



            <div class="form-group">
            	<label class="col-md-3 control-label">班组</label>
            	<div class="col-md-9">
            		    <select class="input-mini" name="projects[projects_types_id]" id="projects_projects_types_id">
                        <option value="3" selected="selected">1-生产辅助</option>
                        <option value="2">2-电工组</option>
                        <option value="4">3-锻造</option>
                        </select>

            	</div>
            </div>

            <div class="form-group">
            	<label class="col-md-3 control-label">人数</label>
            	<div class="col-md-9">
            		<input type="text" name="extra_fields[1]" value="" class="input-mini" id="eqp_number" />
            	</div>
            </div>



              </div>

      <script type="text/javascript">
      $(document).ready(function(){
        $.extend($.validator.messages, {required: '必须填写此域！'});

        $("#projects").validate({ignore:'',invalidHandler: function(e, validator) {
      			var errors = validator.numberOfInvalids();
      			if (errors) {
      				var message = '<div class="alert alert-danger">Some fields are required. They have been highlighted above.</div>';
      				$("#form_error_handler").fadeIn().html(message).delay(2000).fadeOut();
      			}
      		}});
      });
      </script>

      <div id="form_error_handler" style="display:none"></div>

        </div>
      </div>


        <div class="modal-footer">

          <button type="submit" class="btn btn-primary">保存</button>
          <button type="button" class="btn btn-default"  data-dismiss="modal">关闭</button>
        </div>
        <script>
          jQuery(document).ready(function() {
             appHandleUniform()
          });
        </script>
      </form>




      			</div>
