<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>

    <meta charset="utf-8">
    <title>LeYou</title>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/travel/css/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/travel/css/responsive.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/js/travel/css/jquery-ui-1.8.24.custom.css"/>


    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/jquery-ui-1.8.24.custom.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/jquery.mobile.customized.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/camera.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/jquery.flexslider-min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/selectnav.min.js"></script>
    <!--
    <script type="text/javascript" src="http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=false&amp;key=AIzaSyB3tShW1hLlV2lYW8_sCVln6TLF2bWvgU8"></script>-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/jquery.googlemaps.1.01.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/travel/theme.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">


</head>

<body class="home">
<div id="slider-wrap">
    <div class="camera_wrap" id="camera-wrap">
        <div data-src="${pageContext.request.contextPath}/images/uploads/1280x800/st-basil.jpg">

            <div class="camera_caption moveFromBottom camera_text_center">
                <div class="caption_slider h2">城堡里的豪华假期</div>
            </div>

        </div>

        <div data-src="${pageContext.request.contextPath}/images/uploads/1280x800/moscow.jpg">

            <div class="camera_caption fadeIn camera_text_center">
                <div class="caption_slider h2"> 八折优惠 : 莫斯科三天游</div>
            </div>

        </div>
        <div data-src="${pageContext.request.contextPath}/images/uploads/1280x800/temple-kyoto.jpg">

            <div class="camera_caption moveFromBottom camera_text_center">
                <div class="caption_slider h2">这里是，日本最有趣的地方</div>
            </div>

        </div>


    </div><!--camera-wrap -->
</div>

<div id="wrapper">
    <div id="container">

        <!--start header -->
        <header id="header">
            <div id="logo"><a href="index.jsp"><strong>乐游网</strong></a></div>
            <div id="searchbox">
                <form action="#">
                    <input type="text" id="search" placeholder="搜索" />
                    <button type="submit"></button>
                </form>
            </div>
            <div id="navigation">
                <ul id="nav">
                    <li class="selected"><a href="${pageContext.request.contextPath}/flight/to_index">首页</a></li>
                    <li><a href="${pageContext.request.contextPath}/flight/to_advisory">旅游咨询</a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/flight/to_advisory_result">攻略</a></li>
                            <li><a href="${pageContext.request.contextPath}/flight/to_advisory_detail">精选</a></li>
                        </ul>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/flight/to_logue">热门游记</a></li>
                    <li><a href="${pageContext.request.contextPath}/flight/to_instamatic">订票</a></li>
                    <li><a href="${pageContext.request.contextPath}/flight/to_hotel">订酒店</a></li>
                    <li><a href="${pageContext.request.contextPath}/flight/to_community">社区</a></li>
                    <li><a href="${pageContext.request.contextPath}/flight/to_personal">我的</a></li>
                    <li><a href="${pageContext.request.contextPath}/flight/to_compass">乘机须知</a></li>
                </ul>
            </div>
        </header>
        <!--end header -->
        <!--start content -->
        <section id="content">
            <div class="two-third">
                <div id="searchmodule" class="tabs">
                    <ul class="tab-control">
                        <li><a href="#flight-search">查找 航班</a></li>
                        <li><a href="#hotel-search"> 酒店 预定</a></li>
                        <li><a href="#travel-search">旅游 计划</a></li>
                    </ul>
                    <div id="flight-search" class="tab-content">
                        <form role="form" action="${pageContext.request.contextPath}/flight/to_flight" method="post">
                            <input type="hidden" name="id" value="1"/>
                            <input type="hidden" name="flight_name" value="飞机"/>
                            <div class="field">
                                <lab1el for="flight-from">出发:</lab1el>
                                <input type="text" id="flight-from" name="start_place" class="input-text" placeholder="中文/拼音" autocomplete="off" />
                            </div>
                            <div class="field">
                                <label for="flight-to">目的地:</label>
                                <input type="text" id="flight-to" name="arrive_place" class="input-text" placeholder="中文/拼音" autocomplete="off" />
                            </div>
                            <div class="field half">
                                <label for="flight-depart">出发日期:</label>
                                <input type="text" name="start_date" id="flight-depart" class="input-text input-cal" placeholder="2020-01-01" autocomplete="off" />
                            </div>
                            <div class="field half even">
                                <label for="flight-return">返程日期:</label>
                                <input type="text" name="back_date" id="flight-return" class="input-text input-cal" placeholder="2020-01-01" autocomplete="off" />
                            </div>
                            <div class="field half">
                                <label for="flight-class">舱位等级:</label>
                                <select id="flight-class" name="flightLevel">
                                    <option>经济舱</option>
                                    <option>头等舱</option>
                                    <option>商务舱</option>
                                </select>
                            </div>
                            <div class="field half even">
                                <label for="flight-person">人数:</label>
                                <select id="flight-person" name="canContain">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                </select>
                            </div>
                            <button type="submit" class="submit">搜索</button>
                            <br class="clear" />
                        </form>
                    </div>
                    <!--flight search -->

                    <div id="hotel-search" class="tab-content">
                        <form action="${pageContext.request.contextPath}/hotel/daelHotel" method="post" role="form">
                            <div class="field">
                                <input type="hidden" name="hotelDesc"/>
                                <input type="hidden" name="id"/>
                                <label for="hotel-to">城市:</label>
                                <input type="text" id="hotel-to" name="city" class="input-text" placeholder="中文/拼音" autocomplete="off" />
                            </div>
                            <div class="field half">
                                <label for="hotel-depart">入住日期:</label>
                                <input type="text" name="inDate" id="hotel-depart"   class="input-text input-cal" placeholder="2020-01-01" autocomplete="off" />
                            </div>
                            <div class="field half even">
                                <label for="hotel-return">退房日期:</label>
                                <input type="text" name="outDate" id="hotel-return" class="input-text input-cal" placeholder="2020-01-01" autocomplete="off" />
                            </div>
                            <div class="field half">
                                <label for="hotel-class">酒店级别:</label>
                                <input type="text" id="hotel-class" name="hotelLevel" class="input-text" autocomplete="off" />
                            </div>
                            <div class="field half even">
                                <label for="hotel-room">住房人数:</label>
                                <select id="hotel-room" name="containNum">
                                    <option>1</option>
                                </select>
                            </div>
                            <button type="submit" class="submit">搜索</button>
                            <br class="clear" />
                        </form>
                    </div>
                    <!--hotel search -->

                    <div id="travel-search" class="tab-content">
                        <form action="${pageContext.request.contextPath}/flight/to_flight">
                            <div class="field">
                                <label for="travel-from">出发:</label>
                                <input type="text" id="travel-from" class="input-text" placeholder="中文/拼音" autocomplete="off" />
                            </div>
                            <div class="field">
                                <label for="travel-to">目的地:</label>
                                <input type="text" id="travel-to" class="input-text" placeholder="中文/拼音" autocomplete="off" />
                            </div>
                            <div class="field half">
                                <label for="travel-depart">启程:</label>
                                <input type="text" id="travel-depart" class="input-text input-cal" placeholder="2020-01-01" autocomplete="off" />
                            </div>
                            <div class="field half even">
                                <label for="travel-return">返程:</label>
                                <input type="text" id="travel-return" class="input-text input-cal" placeholder="2020-01-01" autocomplete="off" />
                            </div>
                            <div class="field half">
                                <label for="travel-class">旅游宣言:</label>
                                <input type="text" id="travel-class" class="input-text" autocomplete="off" />
                            </div>
                            <div class="field half even">
                                <label for="travel-person">同行人数:</label>
                                <select id="travel-person">
                                    <option>1</option>
                                </select>
                            </div>
                            <button type="submit" class="submit">搜索机票</button>
                            <br class="clear" />
                        </form>
                    </div>
                    <!--travel search -->
                </div>
            </div>
            <!--searchmodule -->

            <div class="one-third last">
                <div id="newsletter" class="module">
                    <div class="module-content">
                        <div class="module-content-wrap">
                            <div class="h3">提醒：</div>
                            <p>亲 终于等到你了！ 我是乐游网专属客服， 有关旅游的任何问题，您都可以随时咨询我！旅游信息将发送到您的电子邮箱！</p>
                            <p>
                                <label for="newsletter-email">电子邮箱:</label>
                                <input type="text" id="newsletter-email" class="input-text" />
                            </p>
                            <div>
                                <button type="submit">确定</button>
                            </div>

                            <br class="clear" />
                        </div>
                    </div>
                </div>
            </div>
            <!--newsletter -->

            <div class="hr"><hr /></div>

            <div class="one-third">
                <h3 class="icon32 icon-tick thin">轻松 预定</h3>
                <p>您可在线预订单程或往返机票。所有澳洲航空航班均包含免费行李、娱乐设施以及餐食。</p>
            </div>

            <div class="one-third">
                <h3 class="icon32 icon-tick thin">实惠 省钱</h3>
                <p>啦啦啦啦啦绿绿绿绿绿</p>
            </div>

            <div class="one-third last">
                <h3 class="icon32 icon-tick thin">旅途 愉快</h3>
                <p>啦啦啦啦啦啦啦啦啦啦。</p>
            </div>

            <div class="hr"><hr /></div>

            <!--newsection -->
            <div class="section-title">
                <span class="h3">热门景点</span>
                <a class="right" href="">点击查看所有旅游景点</a>
            </div>
        <c:forEach items="${resorts}" begin="0" end="4" var="resort">
            <div class="one-fourth">
                <div class="post-item">
                    <div class="image-place">
                        <img src="${pageContext.request.contextPath}/${resort.img}" alt="image" />
                    </div>
                    <div class="post-content">
                        <h4 class="post-title">${resort.resortName}</h4>
                        <p class="post-excerpt">${resort.presentation}</p>
                    </div>
                    <div class="post-meta">
                        <span class="comment-count">12条评论</span>
                        <a class="read-more" href="${pageContext.request.contextPath}/flight/resortDetail?id=${resort.id}">更多</a>
                    </div>
                </div>
            </div>
        </c:forEach>
            <br class="clear" />
            <div class="action-box">
                <div class="left">
                    <div class="action-title">马尔代夫阿玛瑞岛AmariHavodda5晚7日自由行，一价全含，赠两项出海，中文服务，浮潜A级，优惠升级AAI</div>
                    <div class="action-desc">★浮潜A级，全岛WIFI免费覆盖，岛屿设施完善★入住期间每人赠送2次出海活动，性价比高★免费使用健身中心，自带迷你小拖尾沙滩★房间设施都很丰富，搭配也很舒适，温馨而浪漫，低调</div>
                </div>
                <div class="right">
                    <a class="button">
                        现在预定
                    </a>
                </div>
            </div>
            <!--action-box -->
            <br class="clear" />
        </section>
        <!--end content -->

    </div>
    <!--container -->

    <!--start footer -->
    <footer id="footer">
        <div class="wrap">
            <div class="one-fourth">
                <div class="theme-logo"><strong>乐游网</strong></div>
                <p>中国年轻一代用得更多的旅游网站上亿，旅行者共同打造的"旅行神器.</p>
                <p>"60,000 多个全球旅游目的地</p>
                <p>"600,000 个细分目的地新玩法</p>
                <p>760,000,000 次攻略下载</p>
                <p>38,000 家旅游产品供应商</p>
            </div>

            <div class="one-fourth">
                <h3>旅行服务</h3>
                <ul>
                    <li><a href="#">旅游攻略</a></li>
                    <li><a href="#">特价指南</a></li>
                    <li><a href="#">酒店预订</a></li>
                    <li><a href="#">旅游问答</a></li>
                </ul>
            </div>

            <div class="one-fourth">
                <h3>关于我们</h3>
                <ul>
                    <li class="glyph-home">公司地址:<br>陕西省西安市</li>
                    <li class="glyph-briefcase">联系电话:<br>+86 132 2782 9537</li>
                    <li class="glyph-envelope">电子邮箱:<br>1481412589@qq.com</li>
                </ul>
            </div>

            <div class="one-fourth last">
                <h3>加入我们</h3>
                <!-- Start of Flickr Badge -->
                <div id="flickr_badge_uber_wrapper">
                    <div id="flickr_badge_wrapper">
                        <img src="${pageContext.request.contextPath}/images/CRcode.jpg" style="width: 10.75rem; height: 10.75rem;"/>
                    </div>
                </div>
                <!-- End of Flickr Badge -->
            </div>

            <br class="clear" />
        </div>
        <!--footer wrap -->
    </footer>
    <!--end footer -->

    <section id="subfooter">
        <div class="wrap">
            <div class="left">
                Copyright &copy; 2020 Leyou.cn
            </div>

            <div class="foot-links right">
                <a href="#">京ICP备11015476号</a>
                <a href="#">京公网安备11010502013401号</a>
                <a href="#"> 京ICP证110318号</a>

            </div>

            <br class="clear" />
        </div>
    </section>
    <!--subfooter -->

</div>
<!--wrapper -->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>