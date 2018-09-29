<html>
<body>
<input id="btnReg" type="button" value="注册" />
<form id="regForm" action="${rc.contextPath}/user/register" method="POST">
<input type="text" name="nickname" />
<input type="password" name="pswd" />

</form>
<span id="msgBar"></span>
<script src="${rc.contextPath}/assets/js/jquery1.8.3.min.js" charset="utf-8"></script>
<script type="text/javascript">
  $('#btnReg').click(function(){
    $('#regForm').submit();
  });
</script>
</body>
</html>
