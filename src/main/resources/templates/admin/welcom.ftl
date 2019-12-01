<#include "head.html">

<div class="x-body">
    <fieldset class="layui-elem-field layui-field-title site-title">
        <legend><a name="default">信息统计</a></legend>
    </fieldset>
    <table class="layui-table">
        <thead>
        <tr>
            <th colspan="2" scope="col">服务器信息</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>服务器IP地址</td>
            <td>${serverIP!}</td>
        </tr>
        <tr>
            <td>服务器域名</td>
            <td>${hostName}</td>
        </tr>

        <tr>
            <td>服务器当前时间 </td>
            <td>${date}</td>
        </tr>

        </tbody>
    </table>
</div>


<#include "footer.html">
