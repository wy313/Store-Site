<#include "head.html">

<div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>首页</cite></a>
              <a><cite>会员管理</cite></a>
              <a><cite>会员列表</cite></a>
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
                用户名
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
        <#list userlist as user>
            <tr>

                <td>
                    ${user.id}
                </td>
                <td>
                    ${user.username}
                </td>
                <td>
                    ${user.create_time}
                </td>

                <td class="td-manage">
                    <a title="删除" href="javascript:;" onclick="admin_del(this,${user.id})"
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

        lement = layui.element();//面包导航

        layer = layui.layer;//弹出层

        //以上模块根据需要引入

    });

    /*删除*/
    function admin_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            //发异步删除数据
            $(obj).parents("tr").remove();
            $.post("userdel",{"id":id},function (data) {
                if(JSON.parse(data).code==200){
                    layer.msg('已删除!',{icon:1,time:1000});
                }else{
                    layer.msg("删除失败")
                }

            })

        });
    }
</script>
