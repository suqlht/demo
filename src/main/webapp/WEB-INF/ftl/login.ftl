<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <title><@spring.message "system.title"/> | 登录</title>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta name="MobileOptimized" content="320">

    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN THEME STYLES -->
    
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/pages/login.css" />

    <!-- END THEME STYLES -->

    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/app.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/css/skins/default/default.css" />

    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-1.10.2.min.js"></script>

</head>

<body class="login">

    <div class="login-fade-in"></div>

    <div class="login-page-logo">

        <@spring.message "system.title"/>
    </div>
    <!-- BEGIN LOGIN -->
    <div class="content">



        <form class="login-form" name="loginForm" id="loginForm" action="${rc.contextPath}/login" method="POST">

            <h3 class="form-title"><@spring.message "system.welcome"/></h3>

            <div>
                <p>如果遇到问题，请联系管理员</p>
            </div>

            <#if errors??>
                <div id="userAlertContainer" class="alert alert-danger"><strong>错误:</strong>
                    <#list errors as err>
                        ${err}&nbsp;&nbsp;
                    </#list>

                </div>

            </#if>
            <div class="form-group">
                <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                <label class="control-label visible-ie8 visible-ie9"><@spring.message "user.username"/></label>
                <div class="input-icon">
                    <i class="fa fa-user"></i>
                    <input class="form-control placeholder-no-fix required" type="text" autocomplete="off" placeholder="账号" name="username" value="${username}" />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label visible-ie8 visible-ie9"><@spring.message "user.password"/></label>
                <div class="input-icon">
                    <i class="fa fa-lock"></i>
                    <input class="form-control placeholder-no-fix required" type="password" autocomplete="off" placeholder="密码" name="password" />
                </div>
            </div>

            <div class="form-actions">

                <label>
                    <input type="checkbox" name="remember_me" value="1" id="remember_me" />记住我</label>

                <button id="login" type="submit" class="btn btn-info pull-right">登录 </button>
            </div>
        </form>

        <script type="text/javascript">
            $(document).ready(function() {
                $.extend($.validator.messages, {
                    required: '必须填写此域！'
                });

                $("#loginForm").validate({
                    ignore: ''
                });
            });
        </script>

    </div>

    <div class="copyright">
        <a href="http://falado.xyz" target="_blank">whs 0.0.1</a>
        <br> Copyright &copy; 2018 <a href="http://falado.xyz" target="_blank">falado.xyz</a>
    </div>

    <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
    <!-- BEGIN CORE PLUGINS -->
    <!--[if lt IE 9]>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/respond.min.js"></script>
<script type="text/javascript" src="${rc.contextPath}/assets/plugins/excanvas.min.js"></script>
<![endif]-->

    <!-- END CORE PLUGINS -->

    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-validation/dist/jquery.validate.min.js"></script>


    <script>
        //回车事件绑定
        document.onkeydown = function(event) {
            var e = event || window.event || arguments.callee.caller.arguments[0];
            if (e && e.keyCode == 13) {
                $('#login').click();
            }
        };
    </script>

    <!-- END JAVASCRIPTS -->

</body>

</html>
