<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
    <h4 class="modal-title">添加设备</h4>
</div>

<div class="modal-body">

    <form class="form-horizontal" role="form" id="new_device" action="${rc.contextPath}/devices/create" method="post">
        <div class="form-body">
          <div class="form-group">
              <label class="col-md-3 control-label">设备名称</label>
              <div class="col-md-9">
                  <div class="input-group equipment-type">
                      <input type="text" name="deviceName" value="" class="input-large required" />
                  </div>
              </div>
          </div>

            <div class="form-group">
                <label class="col-md-3 control-label">型号-规格-参数</label>
                <div class="col-md-9">
                    <div class="input-group equipment-type">
                      <i class="required"></i>
                        <input type="text" name="model" value="" class="input-mini required" />

                        <i class="icon-minus"></i>                        <i class="required"></i>

                        <input type="text" name="spec" value="" class="input-mini required" />

                        <i class="icon-minus"></i>                        <i class="icon-minus"></i>


                        <input type="text" name="param" value="" class="input-mini" />
                    </div>
                </div>
            </div>



            <script type="text/javascript">
                $(document).ready(function() {
                    $.extend($.validator.messages, {
                        required: '*'
                    });

                    $("#new_device").validate({
                        ignore: '',
                        invalidHandler: function(e, validator) {
                            var errors = validator.numberOfInvalids();
                            if (errors) {
                                var message = '<div class="alert alert-danger">Some fields are required. They have been highlighted above.</div>';
                                $("#form_error_handler").fadeIn().html(message).delay(2000).fadeOut();
                            }
                        }
                    });
                });
            </script>

            <div id="form_error_handler" style="display:none"></div>



            <div class="modal-footer">

                <button type="submit" class="btn btn-primary">保存</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
            <script>
                jQuery(document).ready(function() {
                    appHandleUniform()
                });
            </script>
        </div>
    </form>




</div>
