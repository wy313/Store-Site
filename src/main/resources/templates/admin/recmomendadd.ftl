<#include "head.html">
<form class="layui-form x-center" action="" style="width:50%">
    <div class="layui-form-pane" style="margin-top: 15px;">
        <div class="layui-form-item">
            <label class="layui-form-label" style="width:60px">小说名</label>
            <div class="layui-input-inline" style="width:120px;text-align: left">
                <select name="fid">
                    <#list storelist as store>
                        <option value="${store.id}">${store.title}</option>
                    </#list>

                </select>
            </div>
            <div class="layui-input-inline" style="width:80px">
                <button class="layui-btn"  lay-submit="" lay-filter="add"><i class="layui-icon">&#xe608;</i>增加</button>
            </div>
        </div>
    </div>
</form>

<#include "footer.html">

<script>
    layui.use(['element','layer','form'], function(){
        $ = layui.jquery;//jquery
        lement = layui.element();//面包导航
        layer = layui.layer;//弹出层
        form = layui.form();

        //监听提交
        form.on('submit(add)', function(data){
            console.log(data);
            $.post("recmomend/add",{"id":data.field.fid},function (data) {
                if(JSON.parse(data).code==200){
                    layer.alert("增加成功", {icon: 6});
                }else{
                    layer.msg("增加失败，已存在")
                }
            })

            return false;
        });


    })
</script>