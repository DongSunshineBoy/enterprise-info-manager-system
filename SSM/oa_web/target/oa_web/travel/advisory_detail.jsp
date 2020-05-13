<%--
  Created by IntelliJ IDEA.
  User: dongwentao
  Date: 2020/3/17
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="navigation.jsp"/>

<div class="subheader" >
    <div class="left">
        <span class="page-title">热门游记</span>
        <span class="page-desc">世界是一本书，旅行是阅读的过程。</span>
    </div>
</div>
<!--subheader -->


<div id="content" align="center">

    <div class="post-item post-thumb-hor">
        <div class="image-place">
            <img src="${pageContext.request.contextPath}/images/uploads/620x220/temple-kyoto.jpg" alt="image" />
        </div>
        <div class="post-content">
            <h2 class="post-title">沙漠与海，千篇色彩染成一种斑斓叫摩洛哥</h2>
            <p class="post-excerpt">基于一份种草的情节，基于心中按捺已久的蓝城flag，便和小伙伴们不约而同地将海外旅行指针定在了 摩洛哥的版图上。这里是《孤独星球》下的十大旅游目的地之一、这里是色彩的国度、这里有《一千零一夜》与三毛小说的影子，更是自带无数电影光环的情节之地...</p>
            <ul class="post-content-detail">
                <li>
                    <span>推荐</span>
                    <strong class="sprite-stars star4">4 Stars</strong>
                </li>
                <li>
                    <span>人均</span>
                    <strong class="price">6000 RMB</strong>
                </li>
            </ul>
        </div>
        <div class="post-meta">
            <span class="icon-place">摩洛哥, 非洲</span>
            <span class="offer-type">跟团游</span>
        </div>
    </div>
    <!--post item -->

    <div class="one-third">


        <div id="searchmodule">
            <ul class='tab-control'>
                <li><a href="#hotel-search"> 酒店预订</a></li>
                <li><input placeholder="酒店预订" type="text"  id="hotel-to" style="width: 800px; height: 35px;" class="form input-text"   autocomplete="off" /></li>
            </ul>
            <div id="hotel-search" class="tab-content">
                <form action="#">
                    <div class="field">
                        <label for="hotel-to">城市:</label>
                        <input type="text" id="hotel-to1" class="input-text" placeholder="中文/拼音" autocomplete="off" />
                    </div>
                    <div class="field half">
                        <label for="hotel-depart">入住时间:</label>
                        <input type="text" id="hotel-depart" class="input-text input-cal" placeholder="2012-10-01" autocomplete="off" />
                    </div>
                    <div class="field half even">
                        <label for="hotel-return">退房时间:</label>
                        <input type="text" id="hotel-return" class="input-text input-cal" placeholder="2012-10-01" autocomplete="off" />
                    </div>
                    <div class="field half">
                        <label for="hotel-class">酒店级别:</label>
                        <input type="text" id="hotel-class" class="input-text" autocomplete="off" />
                    </div>
                    <div class="field half even">
                        <label for="hotel-room">人数:</label>
                        <select id="hotel-room">
                            <option>1</option>
                        </select>
                    </div>
                    <button type="submit" class="submit">搜索</button>
                    <br class="clear" />
                </form>
            </div>
            <!--hotel search -->
        </div>
        <!--searchmodule -->

        <div class="widget similiar-place">
            <div class="h3 widget-title">
                小众景点					</div>
            <div class="widget-content">
                <ul>
                    <li class="link-thumb">
                        <div class="link-image">
                            <a href="#"><img src="${pageContext.request.contextPath}/images/uploads/50x50/mount-rushmore.jpg" alt="image"></a>
                        </div>
                        <div class="link-text">
                            <h5><a href="#">拉什莫尔山</a></h5>
                            <p>
                                <span class="place">拉什莫尔山, 美国</span><br />
                                <strong class="price">300R</strong> <span class="sprite-stars star4">4 stars</span>
                            </p>
                        </div>
                    </li>
                    <li class="link-thumb">
                        <div class="link-image">
                            <a href="#"><img src="${pageContext.request.contextPath}/images/uploads/50x50/rome.jpg" alt="image"></a>
                        </div>
                        <div class="link-text">
                            <h5><a href="#">美景酒店</a></h5>
                            <p>
                                <span class="place">意大利, 罗马</span><br />
                                <strong class="price">300R</strong> <span class="sprite-stars star4">4 stars</span>
                            </p>
                        </div>
                    </li>
                    <li class="link-thumb">
                        <div class="link-image">
                            <a href="#"><img src="${pageContext.request.contextPath}/images/uploads/50x50/royal-versailes.jpg" alt="image"></a>
                        </div>
                        <div class="link-text">
                            <h5><a href="#">自然人文</a></h5>
                            <p>
                                <span class="place">凡尔赛宫, 法国</span><br />
                                <strong class="price">5000R</strong> <span class="sprite-stars star4">4 stars</span>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!--widget -->
    </div>
    <!--one third -->

    <div class="two-third last">

        <div class="module-box">

            <div class="flexslider">
                <ul class="slides">
                    <li><a href=""><img src="${pageContext.request.contextPath}/images/uploads/116x87/auckland-city.jpg" alt="image" /></a></li>
                    <li><a href=""><img src="${pageContext.request.contextPath}/images/uploads/116x87/egypt.jpg" alt="image" /></a></li>
                    <li><a href=""><img src="${pageContext.request.contextPath}/images/uploads/116x87/kyoto.jpg" alt="image" /></a></li>
                    <li><a href=""><img src="${pageContext.request.contextPath}/images/uploads/116x87/liberty.jpg" alt="image" /></a></li>
                    <li><a href=""><img src="${pageContext.request.contextPath}/images/uploads/116x87/rome.jpg" alt="image" /></a></li>
                    <li><a href=""><img src="${pageContext.request.contextPath}/images/uploads/116x87/mount-rushmore.jpg" alt="image" /></a></li>
                </ul>
            </div>

            <h3>主题精选</h3>
            <p><img class="left" src="${pageContext.request.contextPath}/images/uploads/220x135/kyoto.jpg" alt="image" />全年适宜| 季节| 出行方式| 节假日</p>

            <br class="clear" />

            <div id="gmap" class="widget side-map"></div>
            <h3>全球目的地（按拼音首字母排序）</h3>

            <div class="one-half">

                <h3>亚洲</h3>
                <p>A</p>
                <p>阿富汗 Afghanistan</p>
                <p>阿联酋 United Arab Emirates</p>
                <p>阿曼 Sultanate of Oman</p>
                <p>阿塞拜疆 Azerbaijan</p>
            </div>
            <!--one-third -->

            <div class="one-half last">
                <h3>北美洲</h3>
                <p>A</p>
                <p>安提瓜和巴布达 Antigua and Barbuda</p>
                <p>B</p>
                <p>巴巴多斯 Barbados</p>
                <p>巴哈马 Bahamas</p>
                <p>巴拿马 Panama</p>
                <p>D</p>
                <p>多米尼加 Dominican Republic</p>
                <p>多米尼克 Dominica</p>
                <p>G</p>
                <p>哥斯达黎加 Costa Rica.</p>
            </div>
            <!--one-third -->

            <br class="clear" />
        </div>
        <!--module-box -->
    </div>
    <!--two third -->

    <br class="clear" />
</div>
<!--content -->

</div>
<!--container -->

<jsp:include page="footer.jsp"/>
