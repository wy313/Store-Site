
<!DOCTYPE html>
<html lang="en">
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>小说站_小说列表</title>

    <meta name="description"
          content="小说站致力于打造小说最全，更新最快、无弹窗、无广告的在线小说阅读网，本站收录了当前最火热的网络小说，提供无广告、高质量内容的小说阅读和TXT小说服务，是广大网友最喜欢的温馨小说站。">
    <meta name="keywords" content="小说站,精品小说,弹幕网站,弹幕,弹幕小说网站,免费小说,小说阅读">

    <link rel="stylesheet" href="/static/layui/css/layui.css">
    <style type="text/css">


        .line-limit-length {

            overflow: hidden;

            text-overflow: ellipsis;

            white-space: nowrap;

        }

        .indexP p a {
            color: #4c6978;
        }

        .Readarea {
            font-size: 18px;
            line-height: 35px;
            padding: 10px;
            color: #333;
        }

        div, p {
            wrap-work: break-word;
            word-break: break-all;
            word-wrap: break-word;
            word-break: normal;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            -ms-box-sizing: border-box;
        }

        .indexDiv a {
            margin-left: 20px;
        }

        img {
            width: 147px;
            height: 197px;
        }
    </style>
</head>
<body>

<div style="height: 50px;line-height: 50px;text-align: center" class="layui-header header header-doc  layui-bg-cyan">

    <div style="float: left;margin-left: 10px">
        <a href="javascript:history.go(-1)">
            <i style="font-size: 20px;color: #92B8B1;" class="layui-icon">&#xe65c;</i></a>
    </div>
    <b class="layui-icon">${typeses!}</b>
    <div style="float: right;margin-right: 10px">
        <a href="/"><i style="font-size: 20px;color: #92B8B1;" class="layui-icon">&#xe68e;</i></a>
    </div>
</div>

<div class="layui-container">
    <div class="layui-row">

        <div class="layui-col-xs10 layui-col-sm10 layui-col-md11 layui-col-lg11" style="padding-top:1%">
            <input id="title" type="text" name="title" required lay-verify="required" placeholder="请输入书名·作者"
                   autocomplete="off"
                   class="layui-input" value="">
        </div>
        <div class="layui-col-xs1" style="padding: 1%">
            <button onclick="searchBooks()" class="layui-btn" lay-submit lay-filter="formDemo">搜索</button>
        </div>
    </div>

</div>
<#if storelist ?exists>
    <#list storelist as store>

        <div class="layui-row" style="margin-bottom:10px;padding:10px;background: #f2f2f2">
            <a href="/page/id=${store.id}">
                <div class="layui-col-xs6 layui-col-sm3 layui-col-md2 layui-col-lg2" style="text-align: center">
                    <img align="center"
                         src="${store.img!}"/>
                </div>
            </a>
            <div style="padding: 20px" class="layui-col-xs6 layui-col-sm8 layui-col-md8 layui-col-lg8">
                <a href="/page/id=${store.id}">
                    <div class="line-limit-length" style=";color: #4c6978;font-weight: bold;font-size: 15px">${store.title!}</div>
                </a>
                <div style=";color: #4c6978;float: right;"><i style="color: red">${store.score!}分</i></div>
                <a href="/book/search?keyword=${store.autor!}">
                    <div style=";color: #4c6978;" class="line-limit-length">作者：${store.autor!}</div>
                </a>
                <div style="margin-top: 5px;color: #4c6978;">类别：${store.typename!}</div>
                <div style="margin-top: 5px;color: #4c6978;">状态：连载</div>
                <div style="margin-top: 5px;color: #4c6978;">更新：<i>　${store.newtime!}</i>
                </div>
                <div class="layui-collapse" style="margin-top: 5px;">
                    <div class="layui-colla-item">
                        <h2 style="color: #4c6978;" class="layui-colla-title">简介：</h2>
                        <div style="color: #4c6978;" class="layui-colla-content">　${store.intro!}</div>
                    </div>
                </div>


            </div>

        </div>
    </#list>


</#if>


<div id="books" style="text-align: center">
    <div class="layui-box layui-laypage layui-laypage-default" id="layui-laypage-9">
        <#if last==0>
            <a href="javascript:void(0);" class="layui-laypage-prev layui-disabled" data-page="${last}">上一页</a>
            <#else>
                <a href="/book/search?catId=${catId!}&curr=${last}" class="layui-laypage-prev " data-page="${last}">上一页</a>
        </#if>
        <#if next==0>
            <a href="javascript:void(0);" class="layui-laypage-next layui-disabled" data-page="${next}">下一页</a>
            <#else>
                <a href="/book/search?catId=${catId!}&curr=${next}" class="layui-laypage-next" data-page="${next}">下一页</a>
        </#if>

    </div>
</div>
<input type="text" id="catId" value="${catId!}" style="visibility: hidden">

<script src="/static/js/jquery.js"></script>
<script src="/static/layui/layui.all.js"></script>
<script>
    function  searchBooks() {
        var keyword=$("#title").val();
        var catId=$("#catId").val();
        window.location.href="/book/search?catId="+catId+"&keyword="+keyword;

    }

</script>

<#include "footer.html">