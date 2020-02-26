<#include "head.html">

<div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>首页</cite></a>
              <a><cite>会员管理</cite></a>
              <a><cite>小说列表</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">

    <table class="layui-table">
        <thead>
        <tr>

            <th>
                ID
            </th>
            <th>
                小说名
            </th>
            <th>
                图片
            </th>

            <th>
                简介
            </th>
            <th>
                最近更新时间
            </th>

        </tr>
        </thead>
        <tbody>
        <#list storelist as store>
            <tr>

                <td>
                    ${store.id}
                </td>
                <td>
                    ${store.title}
                </td>
                <td>
                    <img  src="${store.img}" width="100"  height="100" alt="">
                </td>
                <td>
                    ${store.intro}
                </td>
                <td>
                    ${store.newtime}
                </td>


            </tr>
        </#list>
        </tbody>
    </table>

</div>

<div id="books" style="text-align: center">
    <div class="layui-box layui-laypage layui-laypage-default" id="layui-laypage-9">
        <#if last==-1>
            <a href="javascript:void(0);" class="layui-laypage-prev layui-disabled" data-page="${last}">上一页</a>
        <#else>
            <a href="/admin/store?start=${last}" class="layui-laypage-prev " data-page="${last}">上一页</a>
        </#if>
        <#if next==-1>
            <a href="javascript:void(0);" class="layui-laypage-next layui-disabled" data-page="${next}">下一页</a>
        <#else>
            <a href="/admin/store?start=${next}" class="layui-laypage-next" data-page="${next}">下一页</a>
        </#if>

    </div>
</div>
<#include "footer.html">

<script>
    layui.use(['laydate','element','laypage','layer'], function(){
        $ = layui.jquery;//jquery
        laydate = layui.laydate;//日期插件
        lement = layui.element();//面包导航
        laypage = layui.laypage;//分页
        layer = layui.layer;//弹出层

        //以上模块根据需要引入

    });

</script>
