
      			<div class="modal-header">
      				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
      				<h4 class="modal-title">添加设备</h4>
      			</div>
      			<div >


      <form class="form-horizontal" role="form"  id="projects" action="${rc.contextPath}/index.php/projects/create" method="post" enctype="multipart/form-data" >
      <div class="modal-body">
        <div class="form-body">



      <ul class="nav nav-tabs">
      	<li class="active">
          <a href="#tab_general" data-toggle="tab">设备信息</a>
        </li>

      </ul>


      <div class="tab-content" >
          <div class="tab-pane fade active in" id="tab_general">


            <div class="form-group">



            <div class="form-group">
            	<label class="col-md-3 control-label">设备型号</label>
            	<div class="col-md-9">
            	    <div class="input-group equipment-type">
                    <input type="text" name="custom" value="" class="input-mini"  />

            		    <i class="icon-minus"></i>
                    <input type="text" name="custom" value="" class="input-mini" />

            		                		    <i class="icon-minus"></i>

            		    <input type="text" name="custom" value="" class="input-mini" />
                    </div>
            	</div>
            </div>

            <div class="form-group">
            	<label class="col-md-3 control-label">数量</label>
            	<div class="col-md-9">
            		<input type="text" name="extra_fields[1]" value="" class="input-mini" />
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
