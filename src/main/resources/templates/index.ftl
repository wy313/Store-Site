<#include "head.html">
<div class="layui-container">
    <div class="layui-row">

        <div class="layui-col-xs10 layui-col-sm10 layui-col-md11 layui-col-lg11" style="padding-top:1%">
            <input id="title" type="text" name="title" required lay-verify="required" placeholder="请输入书名·作者"
                   autocomplete="off"
                   class="layui-input">
        </div>
        <div class="layui-col-xs1" style="padding: 1%">
            <button onclick="searchBooks()" class="layui-btn" lay-submit lay-filter="formDemo">搜索</button>
        </div>
    </div>

</div>

<div class="layui-collapse">
    <div class="layui-colla-item">

        <div class="layui-colla-content layui-show">


            <div class="layui-container" style="padding: 0px">
                <div class="layui-row">  <h2 class="layui-colla-title">本站推荐</h2></div>

                <div class="layui-row" style="text-align: center">
                  <#list recmomendList as recmomend>
                      <span>
                    <a href="/page/id=${recmomend.id}">
                        <div style="padding: 1%" class="layui-col-xs4 layui-col-sm4 layui-col-md4 layui-col-lg4">
                            <img style=" width:80%; height:40vh; max-width:100%; max-height:100%;"
                                 src="${siteurl}${recmomend.img}"/>
                            <br/>
                            <span>${recmomend.title}</span>

                        </div>
                    </a>
                        </span>
                  </#list>
                </div>
            </div>
        </div>
    </div>
    </div>

<div class="layui-colla-item">

    <div class="layui-colla-content layui-show">

        <div class="layui-container">
            <div class="layui-row">  <h2 class="layui-colla-title ">热门小说推荐</h2></div>
            <div class="layui-row" style="padding-top: 10px;">

               <#list hotlist as store>
                   <div style="margin-bottom: 5px" class="layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg4">
                       <a href="/page/id=${store.id}">
                           <div class="layui-col-xs5 layui-col-sm4 layui-col-md4 layui-col-lg4">
                               <img style=" width:100px; height:125px;"
                                    src="${siteurl}${store.img}"/>
                           </div>
                           <div class="layui-col-xs5 layui-col-sm6 layui-col-md6 layui-col-lg6">
                               <ul>
                                   <li class="line-limit-length" style="font-weight: bold">${store.title}</li>
                                   <li>作者：${store.author}</li>
                                   <li style="width: 180px;height:40px;overflow: hidden">简介：　${store.intro}</li>
                               </ul>
                           </div>
                           <div style="font-style: italic;color: red"
                                class="layui-col-xs2 layui-col-sm2 layui-col-md2 layui-col-lg2">${store.score}分</div>
                       </a>
                   </div>
               </#list>

        </div>
            </div>

    </div>

</div>
    <div class="layui-colla-item">
        <div class="layui-colla-content layui-show">

            <div class="layui-container" style="padding-left: 2px;padding-right: 5px">
                <div class="layui-row"><a href="javascript:moreNewBooks()">
                        <h2 class="layui-colla-title">最近更新小说
                            <div style="float: right; margin-right: 20px"><i style="font-size: 14px;"
                                                                             class="layui-icon">更多&#xe65b;</i>
                            </div>
                        </h2>
                    </a></div>
                <div class="layui-row" style="padding-top: 10px">

                    <#list newlist as store>
                        <div style="padding-bottom: 30px"
                             class="layui-col-xs12 layui-col-sm6 layui-col-md6 layui-col-lg6">

                            <a href="/page/id=${store.id}">
                                <div class="line-limit-length layui-col-xs8 layui-col-sm6 layui-col-md6 layui-col-lg6"><b>${store.title}</b> - <span class="layui-elip">${store.author}</span>
                                </div>
<#--                                <#assign dlong = store.newtime?number  />-->


                                <div class="layui-col-sm3 layui-col-md3 layui-col-lg3"
                                     style="color: #FF5722;float: right;margin-right:5px"><i> ${store.newtime}</i></div>

                                <div style="clear: both"></div>
                                <div style="padding-left: 5px;padding-top: 5px"
                                     class="layui-elip layui-col-md11 layui-col-sm11 layui-col-lg11">简介：　　${store.intro}</div>
                            </a>
                        </div>
                    </#list>
                </div>
            </div>

        </div>
    </div>
<#include "footer.html">



<script src="/static/js/jquery.js"></script>
<script>
    //一般直接写在一个js文件中
    layui.use(['layer', 'form'], function(){
        var layer = layui.layer
            ,form = layui.form;

    });
    function  searchBooks() {
        var keyword=$("#title").val();
        window.location.href="/book/search?keyword="+keyword;
    }
</script>
