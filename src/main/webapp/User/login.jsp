<%--
  Created by IntelliJ IDEA.
  User: minhle
  Date: 3/14/21
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log In</title>
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
    <link rel="stylesheet" href="../trang-chu.css">
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>
</head>
<body>
<div id="header">
    <div class="row">
        <div class="col-md-3" name="logo">
            <a href="../trang-chu.jsp">
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
</div>
<form action="/users?ac=login" method="post" id="form_dangnhap">
    <div class="container" style="margin-top: 10px">
        <div class="loginform">
            <div class="form-group" style="margin-top: 20%">
                <label for="exampleInputUserName">UserName</label>
                <input type="text" name="login_userName" class="form-control" id="exampleInputUserName" placeholder="UserName">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Mật khẩu</label>
                <input type="password" name="login_pwd" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
            <div class="btns" style="margin-left: 45%;">
                <button type="submit" class="btn btn-primary">Đăng nhập</button>
                <a href="signup.jsp" class="btn btn-secondary">Đăng ký</a>
            </div>
        </div>
    </div>
</form>

</body>
</html>
