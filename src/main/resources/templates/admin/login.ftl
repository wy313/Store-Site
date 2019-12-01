<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>
       小说站-后台登录
    </title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" href="../static/logo.png" type="image/x-icon" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="../static/x-admin/css/x-admin.css" media="all">
</head>

<body style="background-color: #393D49">
<div class="x-box">
    <div class="x-top">
        <i class="layui-icon x-login-close">

        </i>
        <ul class="x-login-right">
          <#if msg??>
              <p style="color: red;">${msg}</p>
          </#if>
        </ul>
    </div>
    <div class="x-mid">
        <div class="x-avtar">
            <img src="../static/logo.png" alt="">
        </div>
        <div class="input">
            <form class="layui-form">
                <div class="layui-form-item x-login-box">
                    <label for="username" class="layui-form-label">
                        <i class="layui-icon">&#xe612;</i>
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="username" name="username" required="" lay-verify="username"
                               autocomplete="off" placeholder="username" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item x-login-box">
                    <label for="pass" class="layui-form-label">
                        <i class="layui-icon">&#xe628;</i>
                    </label>
                    <div class="layui-input-inline">
                        <input type="password" id="pass" name="pass" required="" lay-verify="pass"
                               autocomplete="off" placeholder="******" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item" id="loginbtn">
                    <button  class="layui-btn" lay-filter="save" lay-submit="">
                        登 录
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
<p style="color:#fff;text-align: center;">Copyright © 重庆师范大学计算机与信息科学2017级计算机科学与技术（职教师资)吴代庄 </p>
<script src="../static/x-admin/lib/layui/layui.js" charset="utf-8">
</script>
<script>
    layui.use(['form'],
        function() {
            $ = layui.jquery;
            var form = layui.form(),
                layer = layui.layer;

            $('.x-login-right li').click(function(event) {
                color = $(this).attr('color');
                $('body').css('background-color', color);
            });

            //监听提交
            form.on('submit(save)',
                function(data) {
                 //   console.log(data);
                    $.post("/admin/login",{"username":data.field.username,"password":data.field.pass},function (data) {
                        console.log(data);
                        if(JSON.parse(data).code==200){
                            layer.msg("登录成功",{time:2000},function () {
                                location.href = "/admin/index";
                            })
                        }else{
                            layer.msg("用户名或者密码错误")
                        }
                    })
                    // layer.alert(JSON.stringify(data.field), {
                    //     title: '最终的提交信息'
                    // },function  () {
                    //     location.href = "./index.html";
                    // })
                    return false;
                });

        });

</script>
</body>

</html>