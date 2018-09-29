<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
    <h4 class="modal-title">添加设备</h4>
</div>

<div class="modal-body">

    <form class="form-horizontal" role="form" id="new_device" action="${rc.contextPath}/devices/edit/${device.id}" method="post">
        <div class="form-body">
          <div class="form-group">
              <label class="col-md-3 control-label">设备名称</label>
              <div class="col-md-9">
                  <div class="input-group equipment-type">
                      <input type="text" name="deviceName" class="input-large required" value="${device.deviceName}"  />
                      <input type="hidden" name="id" value="${device.id}" />
                  </div>
              </div>
          </div>

            <div class="form-group">
                <label class="col-md-3 control-label">型号-规格-参数</label>
                <div class="col-md-9">
                    <div class="input-group equipment-type">
                      <i class="required"></i>
                        <input type="text" name="model"  class="input-mini required" value="${device.model}" />

                        <i class="icon-minus"></i>                        <i class="required"></i>

                        <input type="text" name="spec"  class="input-mini required" value="${device.spec}" />

                        <i class="icon-minus"></i>                        <i class="icon-minus"></i>


                        <input type="text" name="param" class="input-mini" value="${device.param}" />
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">机械装配额定工时</label>
                <div class="col-md-9">
                    <div class="input-group equipment-type">
                        <input type="text" name="mechanicalHours" value="${device.mechanicalHours}" class="input-large number" />
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">电气装配额定工时</label>
                <div class="col-md-9">
                    <div class="input-group equipment-type">
                        <input type="text" name="electricalHours" value="${device.electricalHours}" class="input-large number" />
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">其他额定工时</label>
                <div class="col-md-9">
                    <div class="input-group equipment-type">
                        <input type="text" name="otherHours" value="${device.otherHours}" class="input-large number" />
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
