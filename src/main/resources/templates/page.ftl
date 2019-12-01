<!DOCTYPE html>
<html lang="en">
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>${store.title}小说最新章节免费阅读</title>
    <meta name="keywords" content="${store.title},${store.title}最新章节,${store.title}免费阅读">
    <meta name="description" content="${store.title}最新章节列表,${store.title}最新更新章节免费无广告无弹窗在线阅读">

    <meta property="og:type" content="novel"/>
    <meta property="og:title" content="${store.title}小说最新章节免费阅读"/>
    <meta property="og:description" content="${store.intro}"/>
    <meta property="og:novel:category" content="${store.typename}"/>
    <meta property="og:novel:author" content="${store.author}"/>
    <meta property="og:novel:book_name" content="${store.title}"/>
    <meta property="og:novel:status" content="连载"/>
    <meta property="og:novel:update_time" content="${store.newtime}"/>


    <div>
        <link rel="stylesheet" href="/static/layui/css/layui.css">
    </div>

    <style type="text/css">

        .indexP p a{
            color:#4c6978;
        }

        .tag-list {
            padding-top: 0px;
            padding-bottom: 20px;
            position: fixed;
            top:50px;
            right: 0px;
            width: 120px;
            z-index:100000;
        }

        .tag-list .tag {
            float: right;
            width: 100%;
            text-align: right;
            margin-top: 5px;
        }

        .tag-list .tag a {
            display: inline-block;
            margin-right: 8px;
            font-size: 12px;
        }
        .tag-list .highlight {
            padding: 5px 9px;
            border: 1px solid #f90;
            color: #f90;
            border-radius: 50px;
        }

        .tag-list .highlight .text {
            color: #f90;
        }
        .tag-list .tag .text {
            display: inline-block;
            vertical-align: middle;
            color: #f90;
        }

        ul, li {
            padding: 0;
            margin: 0;
            list-style: none;
        }

        .tag-list .tag a {
            display: inline-block;
            margin-right: 8px;
            font-size: 12px;
        }

        .tag-list .highlight .icn {
            color: #f90;
        }
        .tag-list .tag .icn {
            margin-right: 5px;
            color: #ccc;
        }

        .tag-list .highlight .text {
            padding-left: 3px;
            color: #f90;
        }
        .tag-list .tag .text {
            display: inline-block;
            vertical-align: middle;
            color: #f90;
        }

    </style>



</head>
<body>

<ul class="tag-list clearfix" id="tagLi">

</ul>


<input type="hidden" id="bookIdHidden" value="${store.id}"/>
<input type="hidden" id="bookTagHidden" value=""/>
<input type="hidden" id="bookNamedHidden" value="${store.title}"/>
<input type="hidden" id="catidHidden" value="1"/>

<div style="height: 50px;line-height: 50px;text-align: center" class="layui-header header header-doc  layui-bg-cyan">

    <div style="float: left;margin-left: 10px">
        <a href="javascript:history.go(-1)">
            <i style="font-size: 20px;color: #92B8B1;" class="layui-icon">&#xe65c;</i></a>
    </div>
    <b class="layui-icon">${store.title}</b>
    <div style="float: right;margin-right: 10px">
        <a href="/"><i style="font-size: 20px;color: #92B8B1;" class="layui-icon">&#xe68e;</i></a>
    </div>
</div>

<div class="layui-row" style="background: #f2f2f2">
    <div style="padding: 10px" class="layui-col-xs4 layui-col-sm2 layui-col-md2 layui-col-lg2">
        <img style=" width:auto; height:auto; max-width:100%; max-height:100%;" src="${siteurl}${store.img}"/>

    </div>
    <div style="position:relative;padding: 10px 20px" class="layui-col-xs8 layui-col-sm8 layui-col-md8 layui-col-lg8">
        <a href="/book/search?keyword=${store.author}"><div style=";color: #4c6978;">作者：${store.author}</div></a>
        <a href="/book/search?Id=${store.id}"><div style="margin-top: 5px;color: #4c6978;">类别：${store.typename}</div></a>
        <div style="margin-top: 5px;color: #4c6978;">状态：连载</div>
        <div style="margin-top: 5px;color: #4c6978;">更新：<i>${store.newtime}</i></div>
        <div style="margin-top: 5px;color: #4c6978;">评分：<i style="font-weight:bold;color: red">${store.score}分</i></div>
    </div>
</div>
</div>



<div style="text-align: center;height: 45px;line-height: 45px">
    <#if lastChap.id==-1>
       &nbsp;
        <#else >
            <a href="/book/${store.id}/${lastChap.id!}"  type="button" class="layui-btn layui-btn-sm layui-btn-radius">开始阅读</a>
    </#if>

    <button type="button" onclick="addCollect()" id="collectButton"  class="layui-btn layui-btn-sm layui-btn-radius layui-btn-warm">加入书架</button>

    <button type="button" onclick="toMyCollect()" class="layui-btn layui-btn-sm layui-btn-radius layui-bg-cyan">我的书架</button>

</div>
<p style="line-height: 23px;padding: 10px;font-size: 14px;color: #4c6978;">　${store.intro}</p>

<div class="layui-collapse">
    <div class="layui-colla-item" >
        <h2 class="layui-colla-title">
            <span>最新章节</span>
            <span style="margin-left: 30px">
                更新： <i>${store.newtime}</i>
            </span>
        </h2>
        <div class="layui-colla-content layui-show indexP">
            <#list chaplist as chap>
                <p style="height: 30px;line-height: 30px;padding: 10px"><a href="/book/${store.id}/${chap.id?c}">${chap.chap}</a></p>
            </#list>


        </div>
    </div>
</div>
<div style="height: 42px;color:#4c6978;line-height: 42px;padding-left: 30px;background: #f2f2f2" >

    <a href="/book/${store.id}/index">查看完整目录</a>
</div>
<input type="hidden" id="store_id" value="${store.id}">

<script src="/static/js/jquery.js"></script>
<script src="/static/js/common.js"></script>
<script src="/static/layui/layui.all.js"></script>

<script>
    layui.use("layer",function (data) {
        var layer=layui.layer;
    })
    /**
     * 查看书架
     */
    function toMyCollect() {

        if(getCookie("username")){
            window.location.href="/book/search?uid="+getCookie("uid");
        }else{
            window.location.href="/aUser/login";
        }
    }

    /**
     * 添加书籍到书架
     */
    function addCollect() {
        if(getCookie("username")){
        $.post("/book/addbookshelf",{"uid":getCookie("uid"),"store_id":$("#store_id").val()},function (data) {
            if(JSON.parse(data).code==200){
                layer.msg("添加书架成功",{time:1000})
            }
        })
        }else{
            window.location.href="/aUser/login";
        }
    }
</script>

<#include "footer.html">