<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <!--main----------------------------------------------------->
        <div class="section">
        <br><br><br><br><br><br>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <!-- 캐로셀 시작 ---------------------------- -->
                        <div id="fullcarousel-example" data-interval="4000"
                            class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img
                                        src="${pageContext.request.contextPath}/resources/img/carousel.png">
                                    <div class="carousel-caption" >
                                        <h1>MPM에 오신 걸 환영합니다!</h1>
                                        <p>Welcome to MPM!</p>
                                    </div>
                                </div>
                                <div class="item">
                                    <img
                                        src="${pageContext.request.contextPath}/resources/img/carousel2.png">
                                    <div class="carousel-caption">
                                        <h2>Title</h2>
                                        <p>Description</p>
                                    </div>
                                </div>
                                <div class="item">
                                    <img
                                        src="${pageContext.request.contextPath}/resources/img/carousel3.png">
                                    <div class="carousel-caption">
                                        <h2>Title</h2>
                                        <p>Description</p>
                                    </div>
                                </div>
                               
                            </div>
                            <a class="left carousel-control" href="#fullcarousel-example"
                                data-slide="prev"><i class="icon-prev fa fa-angle-left"></i></a><a
                                class="right carousel-control" href="#fullcarousel-example"
                                data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
                        </div>
                        <!-- 캐로셀 끝------------------------------ -->
                    </div>

                </div>
            </div>
        </div>