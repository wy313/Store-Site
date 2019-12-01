<#include "head.html">

<div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>首页</cite></a>
              <a><cite>小说管理</cite></a>
              <a><cite>小说推荐列表</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <xblock><button class="layui-btn" onclick="admin_add('添加推荐','recmomendadd','600','500')"><i class="layui-icon">&#xe608;</i>添加</button></xblock>
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
                评分
            </th>

            <th>
                加入时间
            </th>

            <th>
                操作
            </th>
        </tr>
        </thead>
        <tbody>
        <#list recmolist as recmo>
            <tr>

                <td>
                    ${recmo.id}
                </td>
                <td>
                    ${recmo.title}
                </td>
                <td>
                    ${recmo.score}
                </td>
                <td>
                    ${recmo.create_time}
                </td>

                <td class="td-manage">
                    <a title="删除" href="javascript:;" onclick="admin_del(this,${recmo.id})"
                       style="text-decoration:none">
                        <i class="layui-icon">&#xe640;</i>
                    </a>
                </td>
            </tr>
        </#list>
        </tbody>
    </table>

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
    /*添加*/
    function admin_add(title,url,w,h){
        x_admin_show(title,url,w,h);
    }


    /*删除*/
    function admin_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            //发异步删除数据
            $(obj).parents("tr").remove();
            $.post("recmomend/del",{"id":id},function (data) {
                if(JSON.parse(data).code==200){
                    layer.msg('已删除!',{icon:1,time:1000});
                }else{
                    layer.msg("删除失败")
                }

            })

        });
    }
</script>
