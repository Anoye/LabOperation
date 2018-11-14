<%--
  Created by IntelliJ IDEA.
  User: Ss邵
  Date: 2018/10/29
  Time: 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/commons/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>登录界面</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="${basePath}/statics/thirdparty/bootstrap/css/bootstrap.css">
    <script src="${basePath}/statics/thirdparty/jquery/jquery.min.js"></script>
    <script src="${basePath}/statics/thirdparty/bootstrap/js/bootstrap.min.js"></script>
    <script>
    </script>
</head>
<body>
<div class="container" style="padding:100px 30px">
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <h4>登陆页面</h4>
        </div>
        <div class="panel-body">
            <div id="loginMessage" class="alert alert-warning text-center" hidden >
            </div>
            <form role="form" class="form-horizontal" action="#">
                <div class="form-group">
                    <label class="col-sm-offset-4 col-sm-1 control-label">用户名：</label>
                    <div class="col-sm-3 ">
                        <input type="text" class="form-control" id="username" placeholder="请输入账号"/>
                    </div>
                    <div class="col-sm-3">
                        <span class="glyphicon" id="usernameMessage" style="font-size:18px;margin-left:-15px"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-offset-4 col-sm-1 control-label"> 密码：</label>
                    <div class="col-sm-3" >
                        <input type="password" class="form-control" id="password" placeholder="请输入密码"/>
                    </div>
                    <div class="col-sm-3" >

                        <span class="glyphicon text-center" id="pwdMessage" style="font-size:18px;margin-left:-15px"></span>

                    </div>

                </div>
                <div class="form-group">
                    <label class="col-sm-offset-4 col-sm-1 control-label">验证码：</label>
                    <div class="col-sm-3 ">
                        <input type="text" class="form-control" id="identify" name= "identify" placeholder="请输入验证码" class="verification teicon3"/>
                        <img src="${basePath}/captcha/Kaptcha" id="validate_image"  onclick="javascript:this.src='${basePath}/captcha/Kaptcha?d='+new Date()*1"  title="点击重新获取验证码"  style="cursor: pointer;"/>
                    </div>
                    <div class="col-sm-3">
                        <span class="glyphicon" id="identifyMessage" style="font-size:18px;margin-left:-15px"></span>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-5 col-sm-1 " >
                        <button type="button" class="btn btn-default btn-primary btn-block" id="login">
                            登陆
                        </button >
                    </div>
                    <br/>
                    <br>
                    <div class="col-sm-offset-5 col-sm-1 " >
                        <button type="button" class="btn btn-default btn-primary btn-block" id="sign"
                                data-toggle="modal" data-target="#signModal"> <!--点击注册弹出模态框-->
                            注册
                        </button >
                    </div>
                </div>
            </form>
        </div>
        <div class="panel-footer">
            <div class="text-center">
                <span>Create By B15040319 SS   2018-5-20</span>
            </div>

        </div>
    </div>
</div>

<div class="modal fade" id="signModal" tabindex="-1" role="dialog" aria-labelledby="signModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true" id="close">&times;</button>
                <h4 class="modal-title" id="myModalLabel">填写注册信息</h4>
            </div>
            <div class="modal-body">

                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label" >用户名:</label>
                        <div class="com-sm-offset-2 col-sm-5 ">
                            <input type="text" class="form-control" id="signusername" required="required">
                            <span id="signUsernameMessage" class="glyphicon pull-right" ></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" >密码:</label>
                        <div class="com-sm-offset-2 col-sm-5 ">
                            <input type="password" class="form-control" id="signpassword">
                            <span id="signPasswordMessage" class="glyphicon pull-right" ></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" >确认密码:</label>
                        <div class="com-sm-offset-2 col-sm-5 ">
                            <input type="password" class="form-control" id="signsurepassword">
                            <span id="signSurepasswordMessage" class="glyphicon pull-right" ></span>
                        </div>
                    </div>
                </form>
            </div>

        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            <button type="button" class="btn btn-primary" id="signsubmit">提交</button>
        </div>
    </div>
</div>
</div>
<%--<script>--%>
    <%--$("#login").on("click",function() {--%>
        <%--var username = $("#username").val();--%>
        <%--var password = $("#password").val();--%>
        <%--if (username == "" | password == "") {--%>
            <%--//  $("#username").popover({delay:{show:5000,hide:500}});--%>
            <%--if (username == "") {--%>
                <%--$("#usernameMessage").hide().html('<label class="label label-danger">账号不能为空</span>').show(200);--%>
            <%--}--%>
            <%--if (password == "") {--%>
                <%--$("#pwdMessage").hide().html('<label class="label label-danger">密码不能为空</span>').show(200);--%>
            <%--}--%>
            <%--setTimeout(function () {//设置延迟--%>
                <%--$("#usernameMessage").hide(200);--%>
                <%--$("#pwdMessage").hide(200);--%>
            <%--}, 1000)--%>
        <%--}--%>
    <%--})--%>
<%--</script>--%>
<script src="${basePath}/statics/modules/login/login.js">
</script>

</body>
</html>

