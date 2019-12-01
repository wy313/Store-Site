
<!DOCTYPE html>
<html lang="en">
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>登录|注册</title>
    <meta name="description"
          content="小说站致力于无广告无弹窗的小说阅读环境，是广大网友最喜欢的温馨小说站。">
    <div>
        <link rel="stylesheet" href="/static/layui/css/layui.css">
    </div>



</head>
<body id="read" >

</div>

<div style="height: 50px;line-height: 50px;text-align: center" class="layui-header header header-doc  layui-bg-cyan">

    <div style="float: left;margin-left: 10px">
        <a href="javascript:history.go(-1)">
            <i style="font-size: 20px;color: #92B8B1;" class="layui-icon">&#xe65c;</i></a>
    </div>
    <b class="layui-icon">登录|注册</b>
    <div style="float: right;margin-right: 10px"><a href="/">
            <i style="font-size: 20px;color: #92B8B1;" class="layui-icon">&#xe68e;</i>
        </a>
    </div>
</div>


<form class="layui-form"style="height: 500px;margin-top: 50px;padding:0 10%;" method="post">
    <input type="hidden" id="bookIdHidden" name="bookId" value="${bookId}"/>
    <div class="layui-form-item">
        <label class="layui-form-label">登录名</label>
        <div class="layui-input-inline">
            <input type="text" id="loginName" name="loginName" required  lay-verify="required" placeholder="请输入登录名" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">密码</label>
        <div class="layui-input-inline">
            <input id="password" type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">如果登录名不存在，则直接注册！</div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit  lay-filter="login"  id="login">登录|注册</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>

<script src="/static/js/jquery.js"></script>
<script src="/static/layui/layui.all.js"></script>
<script src="/static/js/common.js"></script>
  <script  type="text/javascript">
      // if(getCookie("username")){
      //     window.location.href="/book/search?uid="+getCookie("uid");
      // }

      layui.use(['form','layer'], function(){
          var layer = layui.layer ,form = layui.form;

         // var $=layui.jquery;
            form.on("submit(login)",function (data) {
              $.post("/aUser/login",{"bookId":$("#bookIdHidden").val(),"loginName":$("#loginName").val(),"password":$("#password").val()},function (data) {
                  console.log(data);
                 var jsondata= JSON.parse(data);
                 if(jsondata.code=200){
                     layer.msg("登录成功",{time:1000},function(data){
                         setCookie("username",$("#loginName").val())
                         setCookie("uid",jsondata.uid);

                         window.location.href="/book/search?uid="+jsondata.uid;
                     })
                 }else if(jsondata.code==401){
                     layer.msg("密码错误")
                 }else{
                     layer.msg("服务出错")
                 }
              })

                return false;
            })
      });
      function login() {
          layer.msg("登录")
      }
</script>


<#include "footer.html">

