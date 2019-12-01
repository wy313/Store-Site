
<!DOCTYPE html>
<html lang="en">
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>${store.title}${chapter.chap}</title>

    <meta name="keywords" content="${store.title}${chapter.chap}">
    <meta name="description" content="${store.title}${chapter.chap}最新更新章节免费在线阅读">

    <meta property="og:type" content="novel_content"/>
    <meta property="og:title" content="${store.title}${chapter.chap}"/>
    <meta property="og:description" content="${store.title}${chapter.chap}最新更新章节免费在线阅读"/>


    <div>
        <link rel="stylesheet" href="/static/layui/css/layui.css">
    </div>



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

        .Readpage {
            font-size: 14px;
            padding: 0;
            background: #d4eaf2;
            height: 40px;
            line-height: 40px;
            text-align: center;
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

        * {
            margin: 0;
            padding: 0;
            /* background-attachment: fixed; */
        }

        aUser agent stylesheet
        p {
            display: block;
            -webkit-margin-before: 1em;
            -webkit-margin-after: 1em;
            -webkit-margin-start: 0px;
            -webkit-margin-end: 0px;
        }

        .huyanon {
            border: 1px solid #64c878;
            box-shadow: 0 1px 2px #b9ecc4 inset, 0 -1px 0 #6c9f76 inset, 0 -2px 3px #b9ecc4 inset;
            background: -webkit-linear-gradient(top, #90dfa2, #84d494);
            background: -moz-linear-gradient(top, #90dfa2, #84d494);
            background: linear-gradient(top, #90dfa2, #84d494);
        }

        .Readpage a {
            font-size: 16px;
            padding: 2px 2px;
            line-height: 35px;
        }

        .lightoff, .huyanoff, .sizebgon {
            border: 1px solid #333;
            box-shadow: 0 1px 2px #8b8b8b inset, 0 -1px 0 #3d3d3d inset, 0 -2px 3px #8b8b8b inset;
            background: -webkit-linear-gradient(top, #656565, #4c4c4c);
            background: -moz-linear-gradient(top, #656565, #4a4a4a);
            background: linear-gradient(top, #656565, #4a4a4a);
        }

        .button {
            width: 40px;
            line-height: 38px;
            text-align: center;
            font-weight: bold;
            color: #fff;
            text-shadow: 1px 1px 1px #333;
            border-radius: 5px;
            margin: 3px 0px 0px 0;
            position: relative;
            overflow: hidden;
        }

        a {
            color: #4c6978;
            text-decoration: none;
            border: none;
            cursor: pointer;
        }

        .lighton {
            border: 1px solid #d2a000;
            box-shadow: 0 1px 2px #fedd71 inset, 0 -1px 0 #a38b39 inset, 0 -2px 3px #fedd71 inset;
            background: -webkit-linear-gradient(top, #fece34, #d8a605);
            background: -moz-linear-gradient(top, #fece34, #d8a605);
            background: linear-gradient(top, #fece34, #d8a605);
        }

        .screen_toolbar {
            position: fixed;
            width: 100%;
            left: 0px;
            bottom: 110px;
            text-align: center;
        }


    </style>
</head>
<body id="read">


<input type="hidden" id="bookIdHidden" value="${store.id}"/>

<input type="hidden" id="contentIdHidden" value="${chapter.id}"/>

<div style="height: 50px;line-height: 50px;text-align: center" class="layui-header header header-doc  layui-bg-cyan">

    <div style="width:10%;float: left;margin-left: 10px">
        <a href="javascript:history.go(-1)">
            <i style="font-size: 20px;color: #92B8B1;" class="layui-icon">&#xe65c;</i></a>
    </div>
    <a style="color: #ffffff;" href="/page/id=${store.id}"><b style="padding-left: 5%;float: left;width: 69%" class="line-limit-length">${chapter.chap}${store.title}</b></a>
    <div style="width:10%;float: right;margin-right: 10px"><a href="/">
            <i style="font-size: 20px;color: #92B8B1;" class="layui-icon">&#xe68e;</i>
        </a>
    </div>
</div>


<p class="Readpage" style="background:#FFFFFF;padding:2px;">
    <a id="lightdiv" class="button lighton" onclick="nr_setbg('light')">开灯</a>
    <a id="huyandiv" class="button huyanon" onclick="nr_setbg('huyan')">护眼</a>&nbsp;&nbsp;&nbsp;&nbsp;
    字体：<a id="fontbig" class="sizebg" onclick="nr_setbg('big')">大</a> <a id="fontmiddle" class="button sizebgon"
                                                                         onclick="nr_setbg('middle')">中</a> <a
            id="fontsmall" class="sizebg" onclick="nr_setbg('small')">小</a>
</p>
<div class="indexDiv" style="height: 42px;line-height: 42px;text-align:center;background: #f2f2f2">
    <#if last!=-1>
        <a href="/book/${store.id}/${last!}">上一章</a>
    </#if>
    <a href="/page/id=${store.id}">目录</a>
    <#if next!=-1>
        <a href="/book/${store.id}/${next!}">下一章</a>
    </#if>
</div>
<div id="chaptercontent" class="Readarea ReadAjax_content screen_container"
     style="color: rgb(0, 0, 0); font-size: 25px;padding:0 10%">
    <p style="width:100%;text-alight:center; overflow: auto;-webkit-overflow-scrolling:touch;" >&nbsp;&nbsp;&nbsp;&nbsp;
        <a
                href="javascript:void(0);"></a></p>
    <p></p>
    ${chapter.content}
</div>
<div class="indexDiv" style="height: 42px;line-height: 42px;text-align:center;background: #f2f2f2">
    <#if last!=-1>
        <a href="/book/${store.id}/${last!}">上一章</a>
    </#if>
    <a href="/page/id=${store.id}">目录</a>
    <#if next!=-1>
        <a href="/book/${store.id}/${next!}">下一章</a>
    </#if>
</div>


<div id="screenInput" class="screen_toolbar" style="display: none">
    <div style="height: 5px" class="layui-col-xs2 layui-col-sm3 layui-col-md3 layui-col-lg3"></div>
    <div class="layui-col-xs6 layui-col-sm4 layui-col-md4 layui-col-lg4">
        <input type="text" id="screenBulletText" required lay-verify="required" placeholder="请输入弹幕内容,右下角开关可控制弹幕是否开启" autocomplete="off"
               class="layui-input">

    </div>
    <div class="layui-col-xs2 layui-col-sm1 layui-col-md1 layui-col-lg1">
        <button class="layui-btn send">发送</button>
    </div>
</div>

<form id="screenSwitch" class="layui-form">
    <div class="layui-form-item" style="position: fixed;right: 0px;bottom: 100px" title="弹幕开关">
        <!-- <label  class="layui-form-label" style="opacity:0.5;font-weight: bold;color: red;">弹幕</label>-->
        <div class="layui-input-block">
            <input class="clear" type="checkbox" name="switch" lay-skin="switch">
        </div>
    </div>

</form>
<script src="/static/js/jquery.js"></script>
<script src="/static/layui/layui.all.js"></script>
<script src="/static/js/read.js"></script>
<script>
    var ua = navigator.userAgent;

    var ipad = ua.match(/(iPad).*OS\s([\d_]+)/),

        isIphone =!ipad && ua.match(/(iPhone\sOS)\s([\d_]+)/),

        isAndroid = ua.match(/(Android)\s+([\d.]+)/),
        isMobile = isIphone || isAndroid;
    var isShowKey = "isShowKey";
    // 弹幕定时器
    var timers = [];
    // 监听发送按钮
    $(".send").on("click", function () {
        sendBullet();
    });
    layui.use(["layer","form"],function(){
        var layer=layui.layer;
        var form=layui.form;

        form.on('switch()',function (data) {
            showOrHiddenBullet();

        })

    })

    //发送弹幕
    function sendBullet(){
        var bullet = $("#screenBulletText").val();
        var contentId = $("#contentIdHidden").val();
        if (bullet && contentId) {
            $.ajax({
                type: "POST",
                url: "/book/sendBullet",
                contentType: 'application/x-www-form-urlencoded;charset=utf-8',
                data: {chapid: contentId, content: bullet},
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    var bullet = $("#screenBulletText").val("")
                },
                error: function (e) {
                    console.log(e);
                    layer.alert("发送失败");
                    return;
                }
            });
        } else {
            layer.alert("发送内容不能为空");
            return;
        }
        // 创建弹幕
        var jqueryDom = createScreenbullet(bullet);
        // 添加定时任务
        addInterval(jqueryDom);
    }

    // 新建一个弹幕
    function createScreenbullet(text) {
        var jqueryDom = $("<div class='bullet'>" + text + "</div>");
        var fontColor = "rgb(" + Math.floor(Math.random() * 256) + "," + Math.floor(Math.random() * 256) + "," + Math.floor(Math.random()) + ")";
        var fontSize = Math.floor((Math.random() + 1) * 18) + "px";
        var left = $(".screen_container").width() + "px";
        var windowHeight = $(window).height();
        var top = windowHeight/2 + Math.floor(Math.random() * (windowHeight/2-100));
        //top = parseInt(top) > windowHeight - 100 ? (windowHeight - 100) + "px" : top + "px";
        jqueryDom.css({
            "position": 'fixed',
            "color": fontColor,
            "font-size": fontSize,
            "left": left,
            "top": top
        });
        $(".screen_container").append(jqueryDom);
        return jqueryDom;
    }

    // 为弹幕添加定时任务
    function addInterval(jqueryDom) {
        var left = jqueryDom.offset().left - $(".screen_container").offset().left;
        var timer = setInterval(function () {
            left--;
            jqueryDom.css("left", left + "px");
            if (jqueryDom.offset().left + jqueryDom.width() < $(".screen_container").offset().left) {
                jqueryDom.remove();
                clearInterval(timer);
            }
        }, 10);
        timers.push(timer);
    }

    /**
     * 开启弹幕
     */
    function showOrHiddenBullet() {
        var isShow = eval(localStorage.getItem(isShowKey));//eval方法动态将参数运算成一个字符串,然后自动判断了字符串的类型,true被认为是boolean类型的变量.javascript的弱类型机制.通过eval运算可以动态获取运算后参数的类型.
        if (isShow) {
            $(".bullet").css("display", "none");
            $(".screen_toolbar").css("display", "none");
            $("[lay-skin='_switch']").removeClass("layui-form-onswitch");
            localStorage.setItem(isShowKey, false);
            $(".bullet").remove();
            setTimeout(function () {
                $(".bullet").remove();
            },1000)
        } else {
            $(".bullet").css("display", "block");
            $(".screen_toolbar").css("display", "block");
            $("[lay-skin='_switch']").addClass("layui-form-onswitch");
            localStorage.setItem(isShowKey, true);
            loadBullet();
        }
        if(isMobile){
            $("#screenInput").css("display","none");


        }
    }

    /**
     * 加载弹幕
     */
    function loadBullet() {
        var contentId = $("#contentIdHidden").val();
        $.ajax({
            type: "POST",
            url: "/book/queryBullet",
            contentType: 'application/x-www-form-urlencoded;charset=utf-8',
            data: {chapid: contentId},
            dataType: "json",
            success: function (data) {
                var lastCreateTime ;
                var currentCreateTime;

                var i = 0;
                var sllepTime = 0;
                if(data.length>0){
                    var schedule = setInterval(function () {
                        if(!eval(localStorage.getItem(isShowKey))){
                            clearInterval(schedule);
                        }
                        if(data.length>i) {
                            currentCreateTime = new Date(data[i].createTime).getTime();
                            if (lastCreateTime && currentCreateTime - lastCreateTime > 60000 && sllepTime <= 3000) {
                                if (sllepTime == 3000) {
                                    lastCreateTime = currentCreateTime;
                                }
                                sllepTime += 3000;
                            } else {
                                sllepTime = 0;
                                var bullet = data[i].screenBullet;
                                // 创建弹幕
                                var jqueryDom = createScreenbullet(bullet);
                                // 添加定时任务
                                addInterval(jqueryDom);
                                i++;
                                lastCreateTime = currentCreateTime;
                            }
                        }



                    }, 1000);
                }
                console.log(data);
            },
            error: function (e) {
                console.log(e);
                layer.alert("加载弹幕失败");
                return;
            }
        });

    }

</script>



<#include "footer.html">