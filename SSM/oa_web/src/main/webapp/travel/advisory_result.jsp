<%--
  Created by IntelliJ IDEA.
  User: dongwentao
  Date: 2020/3/17
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="navigation.jsp"/>
<!--end header -->

<div class="subheader">
    <div class="left">
        <span class="page-title">热门游记</span>
        <span class="page-desc">世界是一本书，旅行是阅读的过程。</span>			</div>
</div>
<!--subheader -->


<div id="content">
    <div class="one-third">


        <div id="searchmodule">
            <ul class="tab-control">
                <li class="ui-tabs-selected">
                    <a href="#hotel-search">酒店预订</a>

                </li>
            </ul>
            <div id="hotel-search" class="tab-content">
                <form action="/hotel/daelHotel">
                    <input type="hidden" name="id">
                    <input type="hidden" name="hotelDesc">
                    <div class="field">
                        <label for="hotel-to">城市:</label>
                        <input type="text" name="city" id="hotel-to"   style="width: 800px; height: 35px;" class="form input-text" placeholder="中文/拼音" autocomplete="off" />
                    </div>
                    <div class="field half">
                        <label for="hotel-depart">入住时间:</label>
                        <input type="text" name="inDate" id="hotel-depart" class="input-text input-cal" placeholder="2012-10-01" autocomplete="off" />
                    </div>
                    <div class="field half even">
                        <label for="hotel-return">退房时间:</label>
                        <input type="text" name="outDate" id="hotel-return" class="input-text input-cal" placeholder="2012-10-01" autocomplete="off" />
                    </div>
                    <div class="field half">
                        <label for="hotel-class">酒店级别:</label>
                        <input type="text" name="hotelLevel" id="hotel-class" class="input-text" autocomplete="off" />
                    </div>
                    <div class="field half even">
                        <label for="hotel-room">人数:</label>
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
        <!--searchmodule -->

        <div class="widget refine-search">
            <div class="h3 widget-title">
                优化搜索					</div>
            <div class="widget-content">
                <h5>推荐</h5>
                <ul class="pointer">
                    <li>
                        <a href="#" class="sprite-stars star1">1 Star</a>
                        <small>12 个去处</small>							</li>
                    <li>
                        <a href="#" class="sprite-stars star2">2 Star</a>
                        <small>12 个去处</small>							</li>
                    <li>
                        <a href="#" class="sprite-stars star3">3 Star</a>
                        <small>12 个去处</small>							</li>
                    <li>
                        <a href="#" class="sprite-stars star4">4 Star</a>
                        <small>12 个去处</small>							</li>
                    <li>
                        <a href="#" class="sprite-stars star5">5 Star</a>
                        <small>12 个去处</small>							</li>
                </ul>

                <h5>价格区间 (人民币)</h5>
                <ul class="pointer">
                    <li>
                        <a href="#">100 - 200</a>
                        <small>23 个去处</small>							</li>
                    <li>
                        <a href="#">200 - 300</a>
                        <small>12 个去处</small>							</li>
                    <li>
                        <a href="#">300 - 400</a>
                        <small>19 个去处</small>							</li>
                    <li>
                        <a href="#">400 - 500</a>
                        <small>11 个去处</small>							</li>
                    <li>
                        <a href="#">&gt; 500</a>
                        <small>15 个去处</small>							</li>
                </ul>

                <h5>旅行类型</h5>
                <ul class="pointer">
                    <li>
                        <a href="#">自由行</a>
                        <small>23 个去处</small>							</li>
                    <li>
                        <a href="#">当地游</a>
                        <small>12 个去处</small>							</li>
                    <li>
                        <a href="#">跟团游</a>
                        <small>19 个去处</small>							</li>
                    <li>
                        <a href="#">出国游</a>
                        <small>11 个去处</small>							</li>
                </ul>
            </div>
        </div>
        <!--widget -->
    </div>
    <!--one third -->

    <div class="two-third last">

        <div class="post-item post-thumb-hor">
            <div class="image-place">
                <img src="${pageContext.request.contextPath}/images/uploads/620x220/temple-kyoto.jpg" alt="image" />					</div>
            <div class="post-content">
                <h2 class="post-title">沙漠与海，千篇色彩染成一种斑斓叫摩洛哥</h2>
                <p class="post-excerpt">基于一份种草的情节，基于心中按捺已久的蓝城flag，便和小伙伴们不约而同地将海外旅行指针定在了 摩洛哥的版图上。这里是《孤独星球》下的十大旅游目的地之一、这里是色彩的国度、这里有《一千零一夜》与三毛小说的影子，更是自带无数电影光环的情节之地...</p>
                <ul class="post-content-detail">
                    <li>
                        <span>推荐</span>
                        <strong class="sprite-stars star4">4 Stars</strong>							</li>
                    <li>
                        <span>人均</span>
                        <strong class="price">6000 RMB</strong>							</li>
                </ul>
            </div>
            <div class="post-meta">
                <span class="icon-place">摩洛哥, 非洲</span>
                <span class="offer-type">跟团游</span>
                <a class="read-more" href="#">详情</a>					</div>
        </div>
        <!--post item -->

        <div class="post-item post-thumb-hor">
            <div class="image-place">
                <img src="${pageContext.request.contextPath}/images/uploads/620x220/auckland-city.jpg" alt="image" />					</div>
            <div class="post-content">
                <h2 class="post-title">错开高峰去烟台，感受只有我的旅行世界</h2>
                <p class="post-excerpt">其实我之前对烟台没有太多的憧憬和预期，然后此次旅程算是给我一个别致的惊喜！没有同伴在左，没有游客在右，整个旅程只有我和我和摄影器材。一个人的旅途或是没办法写成一首诗；但是却可以在独自辛苦地奔波的一天里收获在路上的一首歌～</p>
                <ul class="post-content-detail">
                    <li>
                        <span>推荐</span>
                        <strong class="sprite-stars star4">4 Stars</strong>							</li>
                    <li>
                        <span>人均</span>
                        <strong class="price">300 RMB</strong>							</li>
                </ul>
            </div>
            <div class="post-meta">
                <span class="icon-place">烟台, 山东</span>
                <span class="offer-type">个人行</span>
                <a class="read-more" href="#">详情</a>					</div>
        </div>
        <!--post item -->

        <div class="post-item post-thumb-hor">
            <div class="image-place">
                <img src="${pageContext.request.contextPath}/images/uploads/620x220/moscow.jpg" alt="image" />					</div>
            <div class="post-content">
                <h2 class="post-title">波罗的海的风吹向莫斯科河畔——俄罗斯的秋，有寒冷亦有金黄</h2>
                <p class="post-excerpt">美丽的夏天衰萎啦，衰萎啦；明朗的日子正飞逝过去；在松林微睡的阴影中；阴霾的云雾在弥漫延长；肥沃的田地荒凉了；嬉戏的溪涧寒冷起来；浓茂的树林斑白了；连苍穹也显得暗淡无光.</p>
                <ul class="post-content-detail">
                    <li>
                        <span>推荐</span>
                        <strong class="sprite-stars star4">4 Stars</strong>							</li>
                    <li>
                        <span>人均</span>
                        <strong class="price">3500 RMB</strong>							</li>
                </ul>
            </div>
            <div class="post-meta">
                <span class="icon-place">莫斯科, 俄罗斯</span>
                <span class="offer-type">跟团游</span>
                <a class="read-more" href="#">详情</a>					</div>
        </div>
        <!--post item -->

        <div class="post-item post-thumb-hor">
            <div class="image-place">
                <img src="${pageContext.request.contextPath}/images/uploads/620x220/egypt.jpg" alt="image" />					</div>
            <div class="post-content">
                <h2 class="post-title">上天入地下海寻梦法老王国</h2>
                <p class="post-excerpt">世界是一本书，旅行是阅读的过程。正如作家三毛所说“生命的过程，无论是 阳春 白雪，青菜豆腐，我都得尝尝是什么滋味，才不枉来走这么一遭”。为了阅读世界这本书，我总是尽最大的努力，追求“旅行，归来；再旅行，再归来的”的生活方式……</p>
                <ul class="post-content-detail">
                    <li>
                        <span>推荐</span>
                        <strong class="sprite-stars star4">4 Stars</strong>							</li>
                    <li>
                        <span>人均</span>
                        <strong class="price">5500 RMB</strong>							</li>
                </ul>
            </div>
            <div class="post-meta">
                <span class="icon-place">埃及</span>
                <span class="offer-type">跟团游</span>
                <a class="read-more" href="#">详情</a>					</div>
        </div>
        <!--post item -->

        <div class="post-item post-thumb-hor">
            <div class="image-place">
                <img src="${pageContext.request.contextPath}/images/uploads/620x220/stupa.jpg" alt="image" />					</div>
            <div class="post-content">
                <h2 class="post-title">天慢慢从黑色转为深蓝，星空逐渐隐没</h2>
                <p class="post-excerpt">布罗莫火山是腾格尔火山口中的一座活火山，距离泗水140公里，有着如月球表面般令人生畏的地貌，是印尼最为壮观的风景之一。从火山坑突现出来的就是浓烟滚滚的布罗莫火山，它也是整个高原的灵魂。这片荒无人烟的地带给人以世界尽头的感觉，尤其是在日出之时。</p>
                <ul class="post-content-detail">
                    <li>
                        <span>推荐</span>
                        <strong class="sprite-stars star4">4 Stars</strong>							</li>
                    <li>
                        <span>人均</span>
                        <strong class="price">5500 RMB</strong>							</li>
                </ul>
            </div>
            <div class="post-meta">
                <span class="icon-place">东爪哇，印度尼西亚</span>
                <span class="offer-type">跟团游</span>
                <a class="read-more" href="#">详情</a>					</div>
        </div>
        <!--post item -->

        <p class="pagination">
            <a class="current"><b>1</b></a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">下一页</a>
            <a href="#">最后一页</a>				</p>
    </div>
    <!--two third -->

    <br class="clear" />
</div>
<!--content -->

</div>
<!--container -->
<jsp:include page="footer.jsp"/>
