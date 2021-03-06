<@p.header title="卖家中心"/>
<nav class="navmenu pngFix"><span class="left-side pngFix"></span><span class="right-side pngFix"></span>
    <ul>
        <li><a href="#?act=store" class="selected"><span>商家中心</span></a></li>
        <li><a class="" href="#?act=home&op=member"><span>账户设置</span></a></li>
    </ul>
</nav>

<script type="text/javascript">
    // 收缩展开效果
    $(document).ready(function(){
        $(".sidebar dl dt").click(function(){
            $(this).toggleClass("hou");
            var sidebar_id = $(this).attr("id");
            var sidebar_dd = $(this).next("dd");
            sidebar_dd.slideToggle("slow",function(){
                $.cookie(COOKIE_PRE+sidebar_id, sidebar_dd.css("display"), { expires: 7, path: '/'});
            });
        });
        $('.sidebar').find('dd').css('display','none');
    });
</script>
<div class="layout">
   <#if store ??&& store.storeState==1>
       <div class="sidebar"></div> 
   </#if> 
    <div class="right-content">
        <div class="main">

            <div class="wrap">
                <div class="open-store">
                    <h1>欢迎来到商城系统演示站商家中心</h1>
                    <h3>您现在还没有店铺，无法对商家中心功能进行操作，您可以：</h3>
                    <div><em></em>
                        <dl>
                            	 <#if store ??&& store.storeState==2>
                                   <dt>该店铺正在审核中&nbsp;&#8250;</a></dt>
                                 <#elseif (store ??&& store.storeState==0)>
                                   <dd>店铺未通过原因:<font style="font-size: 35px;">${store.storeCloseInfo}</font></dd>
                                   <dd><a href="${base}/storeSetting/storeseting?flag=recheck" style="font-size: 15px;text-decoration: underline;">修改店铺</a></dd>
                                 <#else>
                                    <dd><a href="${base}/joinIn/step1" style="font-size: 15px;text-decoration: underline;">马上开店&nbsp;&#8250;</a></dd>
                                    <dd>选择店铺等级并填写相关信息，即可开设您的店铺。</dd>
                            </#if>
                        </dl><div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>
<@p.footer/>