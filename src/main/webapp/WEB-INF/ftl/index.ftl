<html>
<body>
<h2>${greeting}, ${user.email}</h2>
<input id="btnSave" type="button" value="保存" />
<form action="${rc.contextPath}/saveUser">

</form>
<span id="msgBar"></span>
<script src="${rc.contextPath}/assets/js/jquery1.8.3.min.js" charset="utf-8"></script>
<script type="text/javascript">
  $('#btnSave').click(function(){
    //要发送的参数
    var params = {
        "nickname": "ttt",
        "email": "ttt@falado.xyz"
    }
  ;
    var success = 'succ';
        $.ajax({
               type: 'post',
               url: '${rc.contextPath}/saveUser',
               contentType:'application/json;charset=utf-8',
               dataType: 'json',
               data: JSON.stringify(params),
               success: function(data){
                   console.log(data);
                   $('#msgBar').html(data);
               }
       });
  });
</script>
</body>
</html>
