<%--
  Created by IntelliJ IDEA.
  User: dongwentao
  Date: 2020/3/17
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="navigation.jsp"/>

<div class="subheader">
    <div class="left">
        <span class="page-title">度假专区</span>
        <span class="page-desc">欢迎您的到来！</span>
    </div>
</div>
<!--subheader -->
<!--start content -->
<section id="content">
    <div>
        <div id="searchmodule" class="tabs">
            <ul class='tab-control'>
                <li><a href="#hotel-search"> 酒店 预定</a></li>
                <li><input placeholder="搜索酒店" type="text" class="form input-text"  id="hotel-to" style="width: 800px; height: 35px;" autocomplete="off" /></li>
            </ul>
            <div id="hotel-search" class="tab-content">
                <form action="${pageContext.request.contextPath}/hotel/daelHotel">
                    <div class="field">
                        <label for="hotel-to">城市:</label>
                        <input type="hidden" name="hotelName"/>
                        <input type="hidden" name="id"/>
                        <input type="hidden" name="hotelDesc"/>
                        <input type="text" name="city" id="hotel-to1"  class="input-text" placeholder="中文/拼音" autocomplete="off" />
                    </div>
                    <div class="field half">
                        <label for="hotel-depart">入住日期:</label>
                        <input type="text" name="inDate" id="hotel-depart" class="input-text input-cal" placeholder="2020-01-01" autocomplete="off" />
                    </div>
                    <div class="field half even">
                        <label for="hotel-return">退房日期:</label>
                        <input type="text" name="outDate" id="hotel-return" class="input-text input-cal" placeholder="2020-01-01" autocomplete="off" />
                    </div>
                    <div class="field half">
                        <label for="hotel-class">酒店级别:</label>
                        <input type="text" name="hotelLevel" id="hotel-class" class="input-text" autocomplete="off" />
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

        </div>
    </div>
    <!--searchmodule -->

    <div >
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

    <div id="content1">
        <div class="two-third">

            <div class="post-item post-blog">
                <div class="image-place">
                </div>
                <div class="post-content">
                    <h2 class="post-title">热门度假区</h2>
                    <p>噜啦啦噜啦啦噜啦噜啦类绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿</p>

                    <p>噜啦啦噜啦啦噜啦噜啦类绿绿绿绿绿</p>

                    <p>噜啦啦噜啦啦噜啦噜啦类绿绿</p>
                </div>
                <div class="post-meta">
                    <span class="comment-count">22 条评论</span>
                    <a class="read-more" href="#">详情</a>
                </div>

                <section id="comments">

                    <h3 id="comments-title">评论 (6)</h3>

                    <ol class="comment-list">

                        <li class="comment-item depth-1">
                            <div class="comment-meta">
                                <div class="comment-meta-image"><img alt="avatar" src="${pageContext.request.contextPath}/images/default-avatar.png" class="avatar avatar-50 photo"></div>
                                <div class="comment-meta-text">
                                    <div class="left">
                                        <h5><cite class="fn">John Doe</cite></h5>
                                        <p class="date">2020年9月25日  16:28</p>
                                    </div>
                                    <div class="right"><a class="button comment-reply-link" href="#">回复</a></div>
                                </div>
                            </div>
                            <!--comment-meta -->
                            <div class="comment-body">
                                <p>噜啦啦噜啦啦噜啦噜啦类绿绿绿绿绿绿绿绿绿绿</p>
                            </div>
                            <!--comment-body -->


                            <ul class="comment-child">
                                <li class="comment-item depth-2">
                                    <div class="comment-meta">
                                        <div class="comment-meta-image"><img alt="avatar" src="${pageContext.request.contextPath}/images/default-avatar.png" class="avatar avatar-50 photo"></div>
                                        <div class="comment-meta-text">
                                            <div class="left">
                                                <h5><cite class="fn">John Doe</cite></h5>
                                                <p class="date">2020年6月21日 16:28</p>
                                            </div>
                                            <div class="right"><a class="button comment-reply-link" href="#">回复</a></div>
                                        </div>
                                    </div>
                                    <!--comment-meta -->
                                    <div class="comment-body">
                                        <p>规划计划分解和科技感和课件库就看你们</p>
                                    </div>
                                    <!--comment-body -->
                                </li>
                                <!--comment depth-2 -->
                            </ul>
                            <!--comment child -->
                        </li>
                        <!--comment depth-1 -->

                        <li class="comment-item depth-1">
                            <div class="comment-meta">
                                <div class="comment-meta-image"><img alt="avatar" src="${pageContext.request.contextPath}/images/default-avatar.png" class="avatar avatar-50 photo"></div>
                                <div class="comment-meta-text">
                                    <div class="left">
                                        <h5><cite class="fn">John Doe</cite></h5>
                                        <p class="date">2019年10月25日  16:28</p>
                                    </div>
                                    <div class="right"><a class="button comment-reply-link" href="#">回复</a></div>
                                </div>
                            </div>
                            <!--comment-meta -->
                            <div class="comment-body">
                                <p>啦啦啦啦付军过晕军或付军或女不女不过交汇处出现</p>
                            </div>
                            <!--comment-body -->
                        </li>
                        <!--comment depth-2 -->
                    </ol>

                    <div id="respond">
                        <h3 id="reply-title">精选留言</h3>
                        <form action="#" method="post" id="commentform">
                            <p class="comment-form-author input-block">
                                <label for="author">
                                    <strong>昵称</strong> (必填)			</label>
                                <input id="author" name="author" type="text" value="" size="30" required="">
                            </p>
                            <p class="comment-form-email input-block">
                                <label for="email">
                                    <strong>邮箱</strong> (必填)			</label>
                                <input id="email" name="email" type="email" value="" size="30" required="">
                            </p>
                            <p class="comment-form-url input-block">
                                <label for="url">
                                    <strong>电话</strong>			</label>
                                <input id="url" name="url" type="url" value="" size="30">
                            </p>
                            <p class="comment-form-comment">
                                <label for="comment">
                                    <strong>您的评论</strong>			</label>
                                <textarea id="comment" name="comment" cols="45" rows="8" required=""></textarea>
                            </p>
                            <p class="form-submit">
                                <input name="submit" type="submit" id="submit" value="提交">
                                <input type="hidden" name="comment_post_ID" id="comment_post_ID">
                                <input type="hidden" name="comment_parent" id="comment_parent" value="0">
                            </p>
                        </form>
                    </div>
                    <!-- respond -->
                </section>
                <!--comment section -->
            </div>
            <!--post-thumb -->
        </div>
        <!--two-third -->

        <div class="one-third last">

            <div class="widget categories">
                <div class="h3 widget-title">
                    特价酒店					</div>
                <div class="widget-content">
                    <ul>
                        <li>
                            <a href="#"><span class="ui-icon ui-icon-triangle-1-e"></span>桔子水晶酒店</a>
                            <small>4.8分</small>							</li>
                        <li>
                            <a href="#"><span class="ui-icon ui-icon-triangle-1-e"></span>常州马哥孛罗酒店</a>
                            <small>4.9分</small>							</li>
                        <li>
                            <a href="#"><span class="ui-icon ui-icon-triangle-1-e"></span>黄山碧桂园凤凰酒店</a>
                            <small>4.8分</small>							</li>
                        <li>
                            <a href="#"><span class="ui-icon ui-icon-triangle-1-e"></span>南京景枫万豪酒店</a>
                            <small>4.7分</small>							</li>
                    </ul>
                </div>
            </div>
            <!--widget -->

            <div class="widget popular-post">
                <div class="h3 widget-title">
                    主题推荐					</div>
                <div class="widget-content">
                    <ul>
                        <li class="link-thumb">
                            <div class="link-image">
                                <a href="#"><img src="${pageContext.request.contextPath}/images/uploads/50x50/mount-rushmore.jpg" alt="image" /></a>
                            </div>
                            <div class="link-text">
                                <h4><a href="#">名山胜景</a></h4>
                                <p>
                                    <span class="author">By John Doe</span>
                                    <small>12 条评论</small>
                                </p>
                            </div>
                        </li>
                        <li class="link-thumb">
                            <div class="link-image">
                                <a href="#"><img src="${pageContext.request.contextPath}/images/uploads/50x50/rome.jpg" alt="image" /></a>
                            </div>
                            <div class="link-text">
                                <h4><a href="#">市郊游乐</a></h4>
                                <p>
                                    <span class="author">By John Doe</span>
                                    <small>12 条评论</small>
                                </p>
                            </div>
                        </li>
                        <li class="link-thumb">
                            <div class="link-image">
                                <a href="#"><img src="${pageContext.request.contextPath}/images/uploads/50x50/royal-versailes.jpg" alt="image" /></a>
                            </div>
                            <div class="link-text">
                                <h4><a href="#">城市精品</a></h4>
                                <p>
                                    <span class="author">By John Doe</span>
                                    <small>12 条评论</small>
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!--widget -->

            <div class="widget tabs-widget">
                <div class="h3 widget-title">
                    留白（暂时没想好）
                </div>
                <div class="widget-content">
                    <div class="tabs">
                        <ul class="tab-control">
                            <li><a href="#tabs-1">留白</a></li>
                            <li><a href="#tabs-2">留白</a></li>
                        </ul>
                        <div id="tabs-1" class="tab-content">
                            <p>留白（暂时没想好） </p>
                        </div>
                        <div id="tabs-2" class="tab-content">
                            <p>留白（暂时没想好）.</p>
                        </div>
                    </div>
                </div>
            </div>
            <!--widget -->


            <div class="widget accordion-widget">
                <div class="h3 widget-title">
                    留白（暂时没想好）
                </div>
                <div class="widget-content">
                    <div class="accordion">
                        <div class="h4 acc-header"><a href="#section1"> 1</a></div>
                        <div class="acc-content">
                            <p>留白（暂时没想好）.</p>
                        </div>
                        <div class="h4 acc-header"><a href="#section2"> 2</a></div>
                        <div class="acc-content">
                            <p>留白（暂时没想好） </p>
                        </div>
                        <div class="h4 acc-header"><a href="#section3"> 3</a></div>
                        <div class="acc-content">
                            <p>留白（暂时没想好） </p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!--one-third -->

        <div class="hr"><hr /></div>

        <div class="action-box">
            <div class="left">
                <div class="action-title">Q1. 机票价格</div>
                <div class="action-desc">机票价格为实时计价，可能会发生价格或舱位变更，请以支付前显示的价格为准，并尽快完成支付。支付之前请仔细查看退改签规则和实际价格，实时计价机票，预订成功后不享受多退少补政策。</div>
            </div>
        </div>
        <div class="action-box">
            <div class="left">
                <div class="action-title">Q2. 支持哪些支付方式</div>
                <div class="action-desc">支持支付宝，微信，银联，工商，农行，招商，中国银行，交通，光大，浦发，广发，中信，兴业。</div>
            </div>
        </div>
        <div class="action-box">
            <div class="left">
                <div class="action-title">Q3. 支持的乘客类型</div>
                <div class="action-desc">目前仅支持成人客票（年龄≥12周岁）和儿童客票（2周岁≤年龄＜12周岁）预订；暂不支持2周岁（不含）以下婴儿票预订。</div>
            </div>
        </div>
        <div class="action-box">
            <div class="left">
                <div class="action-title">Q4. 是否可以提供机票报销凭证</div>
                <div class="action-desc">可以自行在机场打印报销凭证（行程单）。我司也可以提供邮寄，客户承担快递费用。</div>
            </div>
        </div>
        <!--action-box -->

        <br class="clear" />
    </div>
    <!--content -->

    </section>
    <!--container -->
<jsp:include page="footer.jsp"/>