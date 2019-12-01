
<!DOCTYPE html>
<html lang="en">
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>${store.title}最新免费章节目录列表</title>
    <meta name="keywords" content="${store.title},${store.title}最新章节">
    <meta name="description" content="${store.title}最新章节列表,${store.title}最新更新章节免费无广告无弹窗在线阅读">

    <meta property="og:type" content="novel_chapter"/>
    <meta property="og:title" content="${store.title}最新免费章节目录列表"/>
    <meta property="og:description" content="${store.title}最新章节列表,神级农场最新更新章节免费无广告无弹窗在线阅读"/>
    <link rel="stylesheet" href="/static/layui/css/layui.css">
    <script src="/staic/layui/lay/modules/jquery.js"></script>
    <script src="/static/layui/layui.all.js"></script>
    <style type="text/css">

        .indexP p a {
            color: #4c6978;
        }
    </style>
    </div>
</head>
<body>


<input type="hidden" id="bookIdHidden" value="7159"/>
<div style="height: 50px;line-height: 50px;text-align: center" class="layui-header header header-doc  layui-bg-cyan">

    <div style="float: left;margin-left: 10px">
        <a href="javascript:history.go(-1)">
            <i style="font-size: 20px;color: #92B8B1;" class="layui-icon">&#xe65c;</i></a>
    </div>
    <a style="color: #ffffff;" href="/page/id=${store.id}"><b class="layui-icon">${store.title}</b></a>
    <div style="float: right;margin-right: 10px">
        <a href="/"><i style="font-size: 20px;color: #92B8B1;" class="layui-icon">&#xe68e;</i></a>
    </div>
</div>


<p style="height: 30px;line-height: 30px;padding: 10px">

    <a href="#buttom" style="color: red">↓直达页面底部</a>
</p>
<#list chatlist as chat>
    <p style="height: 30px;line-height: 30px;padding: 10px">
        <a href="/book/${store.id}/${chat.id}">${chat.chap}</a>
    </p>

</#list>


<div id="buttom" style="visibility: hidden">页面底部</div>


<#include "footer.html">