<#include "head.html">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header header header-demo">
        <div class="layui-main">
            <a class="logo" href="/admin/index">
                小说站
            </a>
            <ul class="layui-nav" lay-filter="">
                <li class="layui-nav-item"><img src="../static/logo.png" class="layui-circle" style="border: 2px solid #A9B7B7;" width="35px" alt=""></li>
                <li class="layui-nav-item">
                    <a href="javascript:;">${username!}</a>
                    <dl class="layui-nav-child"> <!-- 二级菜单 -->
                        <dd><a href="admin/signout">退出</a></dd>
                    </dl>
                </li>

                <li class="layui-nav-item x-index"><a href="/">前台首页</a></li>
            </ul>
        </div>
    </div>
    <div class="layui-side layui-bg-black x-side">
        <div class="layui-side-scroll">
            <ul class="layui-nav layui-nav-tree site-demo-nav" lay-filter="side">

                <li class="layui-nav-item">
                    <a class="javascript:;" href="javascript:;">
                        <i class="layui-icon" style="top: 3px;">&#xe642;</i><cite>小说管理</cite>
                    </a>
                    <dl class="layui-nav-child">
                        <dd class="">
                        <dd class="">
                            <a href="javascript:;" _href="./store">
                                <cite>小说列表</cite>
                            </a>
                        </dd>
                        </dd>
                        <dd class="">
                        <dd class="">
                            <a href="javascript:;" _href="./recmomend">
                                <cite>小说推荐</cite>
                            </a>
                        </dd>
                        </dd>
                    </dl>
                </li>

                <li class="layui-nav-item">
                    <a class="javascript:;" href="javascript:;">
                        <i class="layui-icon" style="top: 3px;">&#xe606;</i><cite>弹幕管理</cite>
                    </a>
                    <dl class="layui-nav-child">
                        <dd class="">
                            <a href="javascript:;" _href="barrage">
                                <cite>弹幕列表</cite>
                            </a>
                        </dd>

                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a class="javascript:;" href="javascript:;">
                        <i class="layui-icon" style="top: 3px;">&#xe612;</i><cite>会员管理</cite>
                    </a>
                    <dl class="layui-nav-child">
                        <dd class="">
                            <a href="javascript:;" _href="userlist">
                                <cite>会员列表</cite>
                            </a>
                        </dd>

                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a class="javascript:;" href="javascript:;">
                        <i class="layui-icon" style="top: 3px;">&#xe613;</i><cite>管理员管理</cite>
                    </a>
                    <dl class="layui-nav-child">
                        <dd class="">
                            <a href="javascript:;" _href="./admin">
                                <cite>管理员列表</cite>
                            </a>
                        </dd>
                    </dl>
                </li>

                <li class="layui-nav-item" style="height: 30px; text-align: center">
                </li>
            </ul>
        </div>

    </div>
    <div class="layui-tab layui-tab-card site-demo-title x-main" lay-filter="x-tab" lay-allowclose="true">
        <div class="x-slide_left"></div>
        <ul class="layui-tab-title">
            <li class="layui-this">
                我的桌面
                <i class="layui-icon layui-unselect layui-tab-close">ဆ</i>
            </li>
        </ul>
        <div class="layui-tab-content site-demo site-demo-body">
            <div class="layui-tab-item layui-show">
                <iframe frameborder="0" src="./welcom" class="x-iframe"></iframe>
            </div>
        </div>
    </div>
    <div class="site-mobile-shade">
    </div>
</div>

<#include "footer.html">