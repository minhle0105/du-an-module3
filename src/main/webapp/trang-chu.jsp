<%--
  Created by IntelliJ IDEA.
  User: TTC
  Date: 3/12/2021
  Time: 3:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
            crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
            integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
            integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./trang-chu.css">
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>
</head>
<body>
<div id="header">
    <div class="row">
        <div class="col-md-3" name="logo">
            <a href="/tus.jsp">
                <img src="https://sablanca.vn/Images/logo_sab.png">
            </a>
        </div>
        <div class="col-md-3" name="search-box">
            <nav class="navbar navbar-light ">
                <form class="form-inline">
                    <input class="form-control mr-sm-2" type="search" placeholder="Bạn cần tìm gì?" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </nav>
        </div>
        <div class="col-md-5" name="menu">
            <nav class="navbar navbar-expand-lg navbar-light">
                <a class="navbar-brand" href="cua-hang.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                         class="bi bi-geo-alt" viewBox="0 0 16 16">
                        <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
                        <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                    </svg>
                    <span>Cửa Hàng</span>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a class="navbar-brand" href="lien-he.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                         class="bi bi-telephone-inbound-fill" viewBox="0 0 16 16">
                        <path fill-rule="evenodd"
                              d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511zM15.854.146a.5.5 0 0 1 0 .708L11.707 5H14.5a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5v-4a.5.5 0 0 1 1 0v2.793L15.146.146a.5.5 0 0 1 .708 0z"/>
                    </svg>
                    <span>Liên Hệ</span>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a class="navbar-brand" href="lich-su.jsp">
                    <span>Lịch Sử Giao Dịch</span>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a class="navbar-brand" href="login.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                         class="bi bi-person-square" viewBox="0 0 16 16">
                        <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                        <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm12 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1v-1c0-1-1-4-6-4s-6 3-6 4v1a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12z"/>
                    </svg>
                    <span>Đăng Nhập</span>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a class="navbar-brand" href="gio-hang.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                         class="bi bi-cart4" viewBox="0 0 16 16">
                        <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
                    </svg>
                    <span>Giỏ Hàng</span>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </nav>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-7">
            <div class="dropdown">
                <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span>NEW ARRIVAL</span>
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">SẢN PHẨM THÁNG 3</a>
                    <a class="dropdown-item" href="#">SIGNATURE SHOES</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="btn dropdown-toggle" type="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <p>TÚI SÁCH</p>
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">MẪU MỚI VỀ</a>
                    <a class="dropdown-item" href="#">Túi xách tay</a>
                    <a class="dropdown-item" href="#">Túi đeo chéo</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="btn dropdown-toggle" type="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <p>GIÀY DÉP</p>
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <div class="d-flex">
                        <div>
                            <button class="btn dropdown-toggle" type="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <p>GIÀY</p>
                            </button>
                            <a class="dropdown-item" href="#">Giày bata</a>
                            <a class="dropdown-item" href="#">Giày búp bê</a>
                            <a class="dropdown-item" href="#">Giày mọi</a>
                            <a class="dropdown-item" href="#">Giày boot</a>
                        </div>
                        <div>
                            <button class="btn dropdown-toggle" type="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <p>CAO gót</p>
                            </button>
                            <a class="dropdown-item" href="#">Tất cả cao gót</a>
                            <a class="dropdown-item" href="#">Cao gót mũi nhọn</a>
                            <a class="dropdown-item" href="#">Cao gót mũi tròn</a>
                            <a class="dropdown-item" href="#">Cao gót hở mũi</a>
                            <a class="dropdown-item" href="#">Cao gót mũi vuông</a>
                        </div>
                        <div>
                            <button class="btn dropdown-toggle" type="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <p>Sandal</p>
                            </button>
                            <a class="dropdown-item" href="#">Tất cả sandal</a>
                            <a class="dropdown-item" href="#">Sandal đế bệt</a>
                            <a class="dropdown-item" href="#">Sandal cao gót</a>
                            <a class="dropdown-item" href="#">Sandal xuồng</a>
                        </div>
                        <div>
                            <button class="btn dropdown-toggle" type="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <p>Dép guốc</p>
                            </button>
                            <a class="dropdown-item" href="#">Dép xẹp</a>
                            <a class="dropdown-item" href="#">Guốc nhọn</a>
                            <a class="dropdown-item" href="#">Guốc xuồng</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="dropdown">
                <button class="btn dropdown-toggle" type="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <p>VÍ CẦM TAY</p>
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">Ví cầm tay Wallet</a>
                    <a class="dropdown-item" href="#">Ví cầm tay Clutch</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="btn dropdown-toggle" type="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <p>MẮT KÍNH</p>
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">Kính to</a>
                    <a class="dropdown-item" href="#">Kính nhỏ</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="btn dropdown-toggle" type="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <p>TIN TỨC</p>
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">Khuyến mãi</a>
                    <a class="dropdown-item" href="#">Sự kiện</a>
                    <a class="dropdown-item" href="#">Phong cách</a>
                    <a class="dropdown-item" href="#">Cộng đồng</a>
                </div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div id="carouselExample1" class="carousel slide z-depth-1-half" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100"
                             src="https://cdn.sablanca.vn/ImageAdvs/new-arrival-moi-20210309093819.jpg"
                             alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="https://cdn.sablanca.vn/ImageAdvs/sale-md-20210203100309.jpg"
                             alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100"
                             src="https://cdn.sablanca.vn/ImageAdvs/new-arrival-moi-20210309093819.jpg"
                             alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExample1" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExample1" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="card-group">
                <div class="card">
                    <a href="/tui-xach.jsp">
                        <img src="https://cdn.sablanca.vn/SmallBannerImage/smallbanner_020220213830711567.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <center><h5 class="card-title">TÚI XÁCH</h5></center>
                        </div>
                    </a>
                </div>
                <div class="card">
                    <a href="/giay-dep.jsp">
                        <img src="https://cdn.sablanca.vn/SmallBannerImage/smallbanner_020220213855307172.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <center><h5 class="card-title">GIÀY DÉP</h5></center>
                        </div>
                    </a>
                </div>
                <div class="card">
                    <a href="/balo-nu.jsp">
                        <img src="https://cdn.sablanca.vn/ImageNews/Banner%2Ficon%2Fbalo.jpg" class="card-img-top"
                             alt="...">
                        <div class="card-body">
                            <center><h5 class="card-title">BALO NỮ</h5></center>
                        </div>
                    </a>
                </div>
                <div class="card">
                    <a href="/vi-camtay.jsp">
                        <img src="https://cdn.sablanca.vn/SmallBannerImage/smallbanner_020220213943792165.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <center><h5 class="card-title">VÍ CẦM TAY</h5></center>
                        </div>
                    </a>
                </div>
                <div class="card">
                    <a href="/matkinh-nu.jsp">
                        <img src="https://cdn.sablanca.vn/SmallBannerImage/smallbanner_020220214006214800.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <center><h5 class="card-title">MẮT KÍNH NỮ</h5></center>
                        </div>
                    </a>
                </div>
                <div class="card">
                    <a href="/sandals.jsp">
                        <img src="https://cdn.sablanca.vn/SmallBannerImage/smallbanner_020220214013683534.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <center><h5 class="card-title">SANDALS</h5></center>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>
<div id="content">
    <div>
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-3" style="font-size: 23px; color: red">
                <span>SẢN PHẨM KHUYẾN MÃI</span>
            </div>
            <div class="col-md-5"></div>
            <div class="col-md-2">
                <a href="">
                    <span style="color: black">Xem tất cả >></span>
                </a>
            </div>
            <div class="col-md-1"></div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="card-group">
                    <div class="card">
                        <a href="/tui-xach.jsp">
                            <img src="https://cdn.sablanca.vn/SmallBannerImage/smallbanner_020220213830711567.jpg"
                                 class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Guốc xuồng xỏ ngón phối plastic GX0005</h5>
                                <h6>Giá: 299,000 đồng</h6>
                            </div>
                        </a>
                    </div>
                    <div class="card">
                        <a href="/giay-dep.jsp">
                            <img src="https://cdn.sablanca.vn/SmallBannerImage/smallbanner_020220213855307172.jpg"
                                 class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Guốc xuồng xỏ ngón phối plastic GX0005</h5>
                                <h6>Giá: 299,000 đồng</h6>
                            </div>
                        </a>
                    </div>
                    <div class="card">
                        <a href="/balo-nu.jsp">
                            <img src="https://cdn.sablanca.vn/ImageNews/Banner%2Ficon%2Fbalo.jpg" class="card-img-top"
                                 alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Guốc xuồng xỏ ngón phối plastic GX0005</h5>
                                <h6>Giá: 299,000 đồng</h6>
                            </div>
                        </a>
                    </div>
                    <div class="card">
                        <a href="/vi-camtay.jsp">
                            <img src="https://cdn.sablanca.vn/SmallBannerImage/smallbanner_020220213943792165.jpg"
                                 class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Guốc xuồng xỏ ngón phối plastic GX0005</h5>
                                <h6>Giá: 299,000 đồng</h6>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
    <div>
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-3" style="font-size: 23px; color: red">
                <span>SẢN PHẨM MỚI NHẤT</span>
            </div>
            <div class="col-md-5"></div>
            <div class="col-md-2">
                <a href="">
                    <span style="color: black">Xem tất cả >></span>
                </a>
            </div>
            <div class="col-md-1"></div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="card-group">
                    <div class="card">
                        <a href="/tui-xach.jsp">
                            <img src="https://cdn.sablanca.vn/SmallBannerImage/smallbanner_020220213830711567.jpg"
                                 class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Guốc xuồng xỏ ngón phối plastic GX0005</h5>
                                <h6>Giá: 299,000 đồng</h6>
                            </div>
                        </a>
                    </div>
                    <div class="card">
                        <a href="/giay-dep.jsp">
                            <img src="https://cdn.sablanca.vn/SmallBannerImage/smallbanner_020220213855307172.jpg"
                                 class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Guốc xuồng xỏ ngón phối plastic GX0005</h5>
                                <h6>Giá: 299,000 đồng</h6>
                            </div>
                        </a>
                    </div>
                    <div class="card">
                        <a href="/balo-nu.jsp">
                            <img src="https://cdn.sablanca.vn/ImageNews/Banner%2Ficon%2Fbalo.jpg" class="card-img-top"
                                 alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Guốc xuồng xỏ ngón phối plastic GX0005</h5>
                                <h6>Giá: 299,000 đồng</h6>
                            </div>
                        </a>
                    </div>
                    <div class="card">
                        <a href="/vi-camtay.jsp">
                            <img src="https://cdn.sablanca.vn/SmallBannerImage/smallbanner_020220213943792165.jpg"
                                 class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Guốc xuồng xỏ ngón phối plastic GX0005</h5>
                                <h6>Giá: 299,000 đồng</h6>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
    <div>
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-3" style="font-size: 23px; color: red">
                <span>SẢN PHẨM BÁN CHẠY NHẤT</span>
            </div>
            <div class="col-md-5"></div>
            <div class="col-md-2">
                <a href="">
                    <span style="color: black">Xem tất cả >></span>
                </a>
            </div>
            <div class="col-md-1"></div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="card-group">
                    <div class="card">
                        <a href="/tui-xach.jsp">
                            <img src="https://cdn.sablanca.vn/SmallBannerImage/smallbanner_020220213830711567.jpg"
                                 class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Guốc xuồng xỏ ngón phối plastic GX0005</h5>
                                <h6>Giá: 299,000 đồng</h6>
                            </div>
                        </a>
                    </div>
                    <div class="card">
                        <a href="/giay-dep.jsp">
                            <img src="https://cdn.sablanca.vn/SmallBannerImage/smallbanner_020220213855307172.jpg"
                                 class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Guốc xuồng xỏ ngón phối plastic GX0005</h5>
                                <h6>Giá: 299,000 đồng</h6>
                            </div>
                        </a>
                    </div>
                    <div class="card">
                        <a href="/balo-nu.jsp">
                            <img src="https://cdn.sablanca.vn/ImageNews/Banner%2Ficon%2Fbalo.jpg" class="card-img-top"
                                 alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Guốc xuồng xỏ ngón phối plastic GX0005</h5>
                                <h6>Giá: 299,000 đồng</h6>
                            </div>
                        </a>
                    </div>
                    <div class="card">
                        <a href="/vi-camtay.jsp">
                            <img src="https://cdn.sablanca.vn/SmallBannerImage/smallbanner_020220213943792165.jpg"
                                 class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Guốc xuồng xỏ ngón phối plastic GX0005</h5>
                                <h6>Giá: 299,000 đồng</h6>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
</div>
<div id="footer">
    <div class="row" style="background-color: #e0e3e6">
        <div class="col-md-5"></div>
        <div class="col-md-4">
            <span style="font-size: 30px;margin-right: 20px">Kết nối với chúng tôi</span>
            <a href="">
                <svg style="margin-right: 10px" xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                    <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
                </svg>
            </a>
            <a href="">
                <svg style="margin-right: 10px"xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-youtube" viewBox="0 0 16 16">
                    <path d="M8.051 1.999h.089c.822.003 4.987.033 6.11.335a2.01 2.01 0 0 1 1.415 1.42c.101.38.172.883.22 1.402l.01.104.022.26.008.104c.065.914.073 1.77.074 1.957v.075c-.001.194-.01 1.108-.082 2.06l-.008.105-.009.104c-.05.572-.124 1.14-.235 1.558a2.007 2.007 0 0 1-1.415 1.42c-1.16.312-5.569.334-6.18.335h-.142c-.309 0-1.587-.006-2.927-.052l-.17-.006-.087-.004-.171-.007-.171-.007c-1.11-.049-2.167-.128-2.654-.26a2.007 2.007 0 0 1-1.415-1.419c-.111-.417-.185-.986-.235-1.558L.09 9.82l-.008-.104A31.4 31.4 0 0 1 0 7.68v-.122C.002 7.343.01 6.6.064 5.78l.007-.103.003-.052.008-.104.022-.26.01-.104c.048-.519.119-1.023.22-1.402a2.007 2.007 0 0 1 1.415-1.42c.487-.13 1.544-.21 2.654-.26l.17-.007.172-.006.086-.003.171-.007A99.788 99.788 0 0 1 7.858 2h.193zM6.4 5.209v4.818l4.157-2.408L6.4 5.209z"/>
                </svg>
            </a>
            <a href="">
                <svg style="margin-right: 10px"xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                    <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
                </svg>
            </a>
        </div>
        <div class="col-md-3">
            <a href="">
                <svg style="margin-right: 10px"xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-telephone-inbound-fill" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511zM15.854.146a.5.5 0 0 1 0 .708L11.707 5H14.5a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5v-4a.5.5 0 0 1 1 0v2.793L15.146.146a.5.5 0 0 1 .708 0z"/>
                </svg>
            </a>
            <span style="font-size: 30px;margin-right: 20px">0961754295(Mất tiền)</span>
        </div>
    </div>
    <div class="row" style="background-color: #a1a7ac">
        <div class="col-md-1"></div>
        <div class="col-md-2">
            <div style="color: white">
                <h5>NHÓM SẢN PHẨM</h5>
                <a href="">
                    <p>Giày cao gót</p>
                </a>
                <a href="">
                    <p>Sandal</p>
                </a>
                <a href="">
                    <p>Giày nữ</p>
                </a>
                <a href="">
                    <p>Túi xách</p>
                </a>
                <a href="">
                    <p>Ví bóp</p>
                </a>
                <a href="">
                    <p>Mắt kính</p>
                </a>
            </div>
        </div>
        <div class="col-md-2">
            <div style="color: white">
                <h5>THÔNG TIN</h5>
                <a href="">
                    <p>Giới thiệu</p>
                </a>
                <a href="">
                    <p>Liên hệ</p>
                </a>
                <a href="">
                    <p>Tuyển dụng</p>
                </a>
                <a href="">
                    <p>Hệ thống hàng nghìn cửa hàng</p>
                </a>
            </div>
        </div>
        <div class="col-md-2">
            <div style="color: white">
                <h5>CHÍNH SÁCH</h5>
                <a href="">
                    <p>Khách hàng thân thiết</p>
                </a>
                <a href="">
                    <p>Điều khoản sử dụng</p>
                </a>
                <a href="">
                    <p>Thanh toán-Vận chuyển</p>
                </a>
                <a href="">
                    <p>Bảo hành trọn đời</p>
                </a>
                <a href="">
                    <p>Chính sách bảo mật</p>
                </a>
                <a href="">
                    <p>Chính sách đổi sản phẩm</p>
                </a>
            </div>
        </div>
        <div class="col-md-2">
            <div style="color: white">
                <h5>HƯỚNG DẪN</h5>
                <a href="">
                    <p>Hướng dẫn mua hàng</p>
                </a>
                <a href="">
                    <p>Hướng dẫn chọn size</p>
                </a>
                <a href="">
                    <p>Hướng dẫn tạo tài khoản</p>
                </a>
            </div>
        </div>
    </div>
</div>
</body>
</html>