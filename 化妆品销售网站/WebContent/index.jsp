<%@ page contentType="text/html; charset=UTF-8" %>
<html>
    <body background="images/back.jpg">

        <head>
            <%@ include file="head.txt" %>
                <!-- 引入bootstrap 样式文件 -->
                <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
                <!-- 先引入jquery.js文件 -->
                <script src="bootstrap/js/jquery.min.js"></script>
                <script src="bootstrap/js/bootstrap.min.js"></script>
                <!-- 引入index.css文件 -->
                <link rel="stylesheet" href="css/index.css">
                <!-- 引入公共样式文件common.css文件 -->
                <link rel="stylesheet" href="css/common.css">
                <!-- 引入base.css文件 -->
                <link rel="stylesheet" href="css/base.css">
              <style>
                 a:hover {
					  text-decoration: none;
			      }
			      .btn {
			          outline: 0!important;
			      }
			      .form-control:focus {
			      box-shadow: inset 0 1px 1px rgba(0,0,0,.075)!important;
			      -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075)!important;
			      }
              </style>
        </head>
        <title>主页</title>
        <div class="row">
            <center>
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="5"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="images/Welcome1.jpg">
                        </div>
                        <div class="item">
                            <img src="images/Welcome2.jpg">
                        </div>
                        <div class="item">
                            <img src="images/Welcome3.jpg">
                        </div>
                        <div class="item">
                            <img src="images/Welcome4.jpg">
                        </div>
                        <div class="item">
                            <img src="images/Welcome5.jpg">
                        </div>
                        <div class="item">
                            <img src="images/Welcome6.jpg">
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <script>
                    $('.carousel').carousel({
                        interval: 2000
                    });
                </script>
            </center>
        </div>

        <div class="row">
            <div class="footer">
                <div class="w">
                    <!-- mod_service部分 -->
                    <div class="mod_service">
                        <ul>
                            <li>
                                <h5></h5>
                                <h4>正品保障</h4>
                                <p>正品保障，提供发票</p>
                            </li>
                            <li>
                                <h5></h5>
                                <h4>急速物流</h4>
                                <p>急速物流，急速送达</p>
                            </li>
                            <li>
                                <h5></h5>
                                <h4>无忧售后</h4>
                                <p>7天无理由退货</p>
                            </li>
                            <li>
                                <h5></h5>
                                <h4>特色服务</h4>
                                <p>私人订制家电套餐</p>
                            </li>
                            <li>
                                <h5></h5>
                                <h4>帮助中心</h4>
                                <p>您的购物指南</p>
                            </li>
                        </ul>
                    </div>
                    <!-- mod_help部分 -->
                    <div class="mod_help">
                        <dl>
                            <dt>购物指南</dt>
                            <dd><a href="#">购物流程</a></dd>
                            <dd><a href="#">会员介绍</a></dd>
                            <dd><a href="#">生活旅行/团购</a></dd>
                            <dd><a href="#">常见问题</a></dd>
                            <dd><a href="#">大家电</a></dd>
                        </dl>
                        <dl>
                            <dt>配送方式</dt>
                            <dd><a href="#">上门自提</a></dd>
                            <dd><a href="#">211限时达</a></dd>
                            <dd><a href="#">配送服务查询</a></dd>
                            <dd><a href="#">配送费收取标准</a></dd>
                            <dd><a href="#">海外配送</a></dd>
                        </dl>
                        <dl>
                            <dt>支付方式</dt>
                            <dd><a href="#">货到付款</a></dd>
                            <dd><a href="#">在线支付</a></dd>
                            <dd><a href="#">分期付款</a></dd>
                            <dd><a href="#">邮局汇款</a></dd>
                            <dd><a href="#">公司转账</a></dd>
                        </dl>
                        <dl>
                            <dt>售后服务</dt>
                            <dd><a href="#">售后政策</a></dd>
                            <dd><a href="#">价格保护</a></dd>
                            <dd><a href="#">退款说明</a></dd>
                            <dd><a href="#">返修/退换货</a></dd>
                            <dd><a href="#">取消订单</a></dd>
                        </dl>
                        <dl>
                            <dt>特色服务</dt>
                            <dd><a href="#">夺宝岛</a></dd>
                            <dd><a href="#">DIY装机</a></dd>
                            <dd><a href="#">延保服务</a></dd>
                            <dd><a href="#">好物购E卡</a></dd>
                            <dd><a href="#">好物购通信</a></dd>
                        </dl>
                        <dl>
                            <dt>帮助中心</dt>
                            <img src="images/bzz.png" alt="搬砖仔">
                            <dd>联系客服</dd>
                        </dl>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>