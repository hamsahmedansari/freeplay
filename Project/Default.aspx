<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FreePlay.Default" %>
<!-- 
    ------- Author's ------

    --- Hams Ahmed Ansari ---
    ----- Email : Hams.Ahmed.Ansari95@gmail.com -------
    ----- Website : https://hams.cf ------

    --- Mumtaz Ahmed Siddiui ---
    ----- Email : mumtaz.sid995@gmail.com -------
    ----- Website : http://mumtazsiddiqui.cf ------

    --- Murtaz Ali ---
    ----- Email : ali7murtaza@gmail.com -------
    ----- Website : http://murtazaali.ga ------
    
-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Free Play - Entertainment Portal </title>

    <meta charset="utf-8" />

    <link rel="shortcut icon" type="image/png" href="Images/FreePlay.ico"/>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- css -->
    <!-- cdn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <link href="dist/css/bootstrap.css" rel="stylesheet" />

    <link href="dist/css/main.css" rel="stylesheet" />

    <!-- js -->
    <script src="dist/js/jquery-slim.min.js"></script>
    <script src="dist/js/bootstrap.js"></script>
    <script src="dist/js/popper.min.js"></script>

    <script src="dist/js/main.js"></script>

    <!-- addin font to nav -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" />

    <!-- slider -->

    <script src="dist/js/slider.js"></script>
    <link rel="stylesheet" href="dist/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="dist/css/owl.theme.default.min.css" />
    <script src="dist/js/owl.carousel.min.js"></script>
    <script>
        
        $(document).ready(function () {

            $('.carousel-inner .carousel-item:first').addClass('active');

        });
    </script>

    <!-- end slider -->
</head>
<body>
    <form id="form1" runat="server">
        <!-- nav -->
        <!-- Start -->
        <header class="mb-4">
            <div class="container-fluid bg-dark custom-outer-box-for-hidden" style="height: 470px; overflow: hidden; position: relative;">

                <div id="demo" class="carousel  slider-backdround  carousel-fade" data-ride="carousel" data-interval="3000">

                    <!-- Indicators -->
                    <ul class="carousel-indicators">
                        <li data-target="#demo" data-slide-to="0" class="active"></li>
                        <li data-target="#demo" data-slide-to="1"></li>
                        <li data-target="#demo" data-slide-to="2"></li>
                        <li data-target="#demo" data-slide-to="3"></li>
                        <li data-target="#demo" data-slide-to="4"></li>
                    </ul>

                    <!-- The slideshow -->
                    <asp:ListView ID="lvSliderMain" runat="server" GroupItemCount="1">
                            <LayoutTemplate>
                                <div runat="server" class="carousel-inner" id="tblProducts">
                                    <span runat="server" id="groupPlaceholder"  style="border: 1px solid #ccc;">
                                    </span>

                                </div>
                            </LayoutTemplate>
                            <GroupTemplate>
                                <div runat="server" id="productRow" class="carousel-item">
                                    <span runat="server" id="itemPlaceHolder" ></span>
                                </div>
                            </GroupTemplate>
                            <ItemTemplate>
                               
                                 <asp:Image ID="imgLatest" runat="server" src='<%#"Images/SliderMain/" + Eval("txtImage") %>' alt="Alternate Text" class="img img-fluid"/>
                                 
                            </ItemTemplate>
                        </asp:ListView>
                    <!-- Left and right controls -->
                    <a class="carousel-control-prev" href="#demo" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>
                </div>
                <!-- nav -->
                <!-- start -->
                <div class="">
                    <nav class="navbar navbar-light navbar-expand-md bg-faded justify-content-center">
                        <a href="#" class="navbar-brand  custom-logo-for-navbar mr-auto text-right" style="width: 20% !important;">
                            <img src="img/logo.png" class="img img-fluid" style="width: 140px;" alt="Alternate Text" /></a>
                        <button class="navbar-toggler bg-dark" type="button" data-toggle="collapse" data-target="#collapsingNavbar3" style="margin-top: 66px;">
                            <span class="fa fa-navicon" style="font-size: 30px; padding: 10px;"></span>
                        </button>
                        <div class="navbar-collapse collapse" id="collapsingNavbar3">
                            <!--<ul class="navbar-nav mx-auto w-100 ">
                            <li class="nav-item active">
                                <a class="nav-link" href="#">Link</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Codeply</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                            </li>
                        </ul>-->
                            <ul class="navbar-nav mx-auto w-100 nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="Default.aspx">Home</a>
                                </li>
                                <li class="nav-item dropdown ml-lg-3 ml-md-1">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Movies
                                    </a>
                                    <div class="dropdown-menu custom-dropdown-for-nav ">
                                        <hr class="d-none d-lg-none d-sm-block d-xs-block" />
                                        <a class="dropdown-item" href="Hollywood.aspx">Hollywood</a>
                                        <a class="dropdown-item" href="Bollywood.aspx">Bollywood</a>
                                        <a class="dropdown-item" href="Animated.aspx">Animated</a>
                                        <a class="dropdown-item" href="OtherMovies.aspx">Dubbed</a>
                                        <hr class="d-none d-lg-none d-sm-block d-xs-block" />
                                    </div>
                                </li>
                                <li class="nav-item ml-lg-3 ml-md-1">
                                    <a class="nav-link" href="Cartoons.aspx">Cartoons</a>
                                </li>
                                <li class="nav-item ml-lg-3 ml-md-1">
                                    <a class="nav-link" href="Dramas.aspx">Dramas</a>
                                </li>
                                <li class="nav-item dropdown ml-lg-3 ml-md-1">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Games
                                    </a>
                                    <div class="dropdown-menu custom-dropdown-for-nav ">
                                        <hr class="d-none d-lg-none d-sm-block d-xs-block" />
                                        <a class="dropdown-item" href="OnlineGame.aspx">Online Games</a>
                                        <a class="dropdown-item" href="Game.aspx">Games</a>
                                        <hr class="d-none d-lg-none d-sm-block d-xs-block" />
                                    </div>
                                </li>
                                <li class="nav-item ml-lg-3 ml-md-1">
                                    <a class="nav-link" href="Songs.aspx">Songs</a>
                                </li>
                                <li class="nav-item ml-lg-3 ml-md-1">
                                    <a class="nav-link" href="https://bolodunya.com/" target="_blank">Articles</a>
                                </li>
                                <li class="nav-item ml-lg-3 ml-md-1">
                                    <a class="nav-link" href="Request.aspx">Request</a>
                                </li>
                                <li class="nav-item ml-lg-3 ml-md-1">
                                    <a class="nav-link" href="ContactUs.aspx">Contact us</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
                <!-- end -->
            </div>
        </header>

        <!-- End -->
        <!-- content -->
        <!-- Start -->
        <!-- Movies -->
        <div class="">
            <!-- nav -->
            <div class="container bg-white custom-nav-for-index-bottom">

                <nav class="navbar navbar-light navbar-expand-md  custom-navbar-index-bottom justify-content-lg-center justify-content-md-start ">
                    <a href="#" class=" col-lg-3 col-xl-3 col-md-3 col-sm-6 col-xs-6 col-6 text-center navbar-brand text-white text-uppercase custom-nav-bar-brand-index-bottom">MOvies Updates
                    </a>
                    <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#collapsingNavbar2">
                        <span class="fa fa-navicon" style="font-size: 17px; padding: 7px;"></span>
                    </button>
                    <div class="  col-lg-9 col-xl-9 col-md-9 col-sm-12 col-xs-12 navbar-collapse collapse custom-navbar-collapse-for-index" id="collapsingNavbar2">

                        <ul class="navbar-nav mx-auto w-100 nav">
                            <li class="nav-item custom-nav-item-for-index">
                                <asp:LinkButton ID="lnkBollywood" runat="server" Text="Bollywood" OnClick="lnkBollywood_Click" CssClass="nav-link"></asp:LinkButton>
                            </li>
                            <li class="nav-item custom-nav-item-for-index ">
                                <asp:LinkButton ID="lnkHollywood" runat="server" Text="Hollywood" OnClick="lnkHollywood_Click" CssClass="nav-link"></asp:LinkButton>
                            </li>
                            <li class="nav-item custom-nav-item-for-index">
                                <asp:LinkButton ID="lnkAnimated" runat="server" Text="Animated" OnClick="lnkAnimated_Click" CssClass="nav-link"></asp:LinkButton>
                            </li>
                            <li class="nav-item custom-nav-item-for-index">
                                <asp:LinkButton ID="lnkOthers" runat="server" Text="Dubbed" OnClick="lnkOthers_Click" CssClass="nav-link"></asp:LinkButton>
                            </li>
                        </ul>
                    </div>
                </nav>

            </div>

            <div class="mt-2"></div>

            <!-- content -->
            <div class="container">
                <div class="row bg-white">
                    <div class="col-xl-3 col-lg-3 p-0 d-xl-block d-lg-block d-md-none d-sm-none d-none text-white position-relative">
                        <asp:Image ID="UpComingMovieImage" runat="server" class="img img-fluid " alt="Alternate Text" Style="height: 340px; width: 100% !important;" />
                        <!-- upcoming -->
                        <img src="img/upcoming.png" class="custom-upcoming-feature-movie-tag" alt="Alternate Text" />
                    </div>
                    <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-xs-12" style="overflow: hidden; padding-left: 30px;">

                        <div class="row position-relative custom-main-slider-for-index">

                            <asp:ListView runat="server"
                                ID="lvLatestMovies"
                                GroupItemCount="1">
                                <LayoutTemplate>
                                    <div class="owl-carousel slider-for-post" runat="server">
                                        <div runat="server" class="items" id="groupPlaceholder">
                                        </div>
                                    </div>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <div runat="server" id="productRow">
                                        <span runat="server" id="itemPlaceholder"></span>
                                    </div>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <a href='<%#"MoviesPost.aspx?ID=" + Eval("pkMovieID") + "&Title=" + Eval("varMovieName") %>' rel="bookmark">
                                        <div class="custom_trasition mt-3" style="">
                                            <div class="p-3 position-relative" style="cursor: pointer">
                                                <div class="position-relative " style="overflow: hidden;">
                                                    <div class="shine"></div>
                                                    <asp:Image runat="server" ImageUrl='<%# "Images/Movies/" + Eval("txtPosterImage") %>' class="img img-fluid custom-img-hover-for-index" alt="Alternate Text" />
                                                </div>
                                                <p class="custom-movie-tittle-for-index-p text-dark"><%# Eval("varMovieName") %></p>
                                                <div class="content_smvalue">
                                                    <span class="smvalue ddata-value text-secondary"><span class="date">Views : <%# Eval("intViewsCounter") %></span></span>
                                                    <br>
                                                    <span class="smvalue ddata-value text-secondary"><span class="date"><%# Eval("dteReleaseDate", "{0:yyyy}") %></span></span>
                                                    <br>
                                                    <span class="smvalue ddata-value"><span class="date"><a href="#"><%#Eval("varMovieQuality") %></a></span></span>
                                                    <br>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                </div>
            </div>

            <!-- start cartoon -->
            <div class="mt-3"></div>

            <div class="container bg-white custom-nav-for-index-bottom">

                <nav class="navbar navbar-light navbar-expand-md  custom-navbar-index-bottom justify-content-lg-center justify-content-md-start ">
                    <a href="#" class=" col-lg-3 col-xl-3 col-md-3 col-sm-6 col-xs-6 col-6 text-center navbar-brand text-white text-uppercase custom-nav-bar-brand-index-bottom">Catroons Updates
                    </a>
                    <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#collapsingNavbar4">
                        <span class="fa fa-navicon" style="font-size: 17px; padding: 7px;"></span>
                    </button>
                    <div class="  col-lg-9 col-xl-9 col-md-9 col-sm-12 col-xs-12 navbar-collapse collapse custom-navbar-collapse-for-index" id="collapsingNavbar4">

                        <ul class="navbar-nav mx-auto w-100 nav">
                            <li class="nav-item custom-nav-item-for-index">
                                <asp:LinkButton ID="lnkLatestCartoons" runat="server" Text="Latest" OnClick="lnkLatestCartoons_Click" CssClass="nav-link"></asp:LinkButton>
                            </li>
                            <li class="nav-item custom-nav-item-for-index ">
                                <asp:LinkButton ID="lnkPopularCartoons" runat="server" Text="Popular" OnClick="lnkPopularCartoons_Click" CssClass="nav-link"></asp:LinkButton>
                            </li>
                        </ul>
                    </div>
                </nav>

            </div>

            <div class="mt-2"></div>

            <!-- content -->
            <div class="container">
                <div class="row bg-white">
                    <div class="col-xl-3 col-lg-3 p-0 d-xl-block d-lg-block d-md-none d-sm-none d-none text-white position-relative">
                        <asp:Image ID="UpcomingCartoonImage" runat="server" class="img img-fluid " alt="Alternate Text" Style="height: 340px; width: 100% !important;" />
                        <!-- upcoming -->
                        <img src="img/upcoming.png" class="custom-upcoming-feature-movie-tag" alt="Alternate Text" />
                    </div>
                    <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-xs-12" style="overflow: hidden; padding-left: 30px;">

                        <div class="row position-relative custom-main-slider-for-index">
                            <asp:ListView runat="server"
                                ID="lvCartoons"
                                GroupItemCount="1">
                                <LayoutTemplate>
                                    <div class="owl-carousel slider-for-post" runat="server">
                                        <div runat="server" class="items" id="groupPlaceholder">
                                        </div>
                                    </div>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <div runat="server" id="productRow">
                                        <span runat="server" id="itemPlaceholder"></span>
                                    </div>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <a href='<%#"CartoonPost.aspx?ID=" + Eval("pkCartoonID") + "&Title=" + Eval("varCartoonName") %>' rel="bookmark">
                                        <div class="custom_trasition mt-3" style="">
                                            <div class="p-3 position-relative" style="cursor: pointer">
                                                <div class="position-relative " style="overflow: hidden;">
                                                    <div class="shine"></div>
                                                    <asp:Image runat="server" ImageUrl='<%# "Images/Cartoons/" + Eval("txtPosterImage") %>' class="img img-fluid custom-img-hover-for-index" alt="Alternate Text" />
                                                </div>
                                                <p class="custom-movie-tittle-for-index-p text-dark"><%# Eval("varCartoonName") %></p>
                                                <div class="content_smvalue">
                                                    <span class="smvalue ddata-value text-secondary"><span class="date">Views : <%# Eval("intViewsCounter") %></span></span>
                                                    <br>
                                                    <span class="smvalue ddata-value text-secondary"><span class="date"><%# Eval("dteDateAdded", "{0:yyyy}") %></span></span>
                                                    <br>
                                                    <%--<span class="smvalue ddata-value"><span class="date"><a href="#"><%#Eval("varMovieQuality") %></a></span></span>--%>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                </div>
            </div>


            <!-- start Dramas -->
            <div class="mt-3"></div>

            <div class="container bg-white custom-nav-for-index-bottom">

                <nav class="navbar navbar-light navbar-expand-md  custom-navbar-index-bottom justify-content-lg-center justify-content-md-start ">
                    <a href="#" class=" col-lg-3 col-xl-3 col-md-3 col-sm-6 col-xs-6 col-6 text-center navbar-brand text-white text-uppercase custom-nav-bar-brand-index-bottom">Dramas Updates
                    </a>
                    <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#collapsingNavbar5">
                        <span class="fa fa-navicon" style="font-size: 17px; padding: 7px;"></span>
                    </button>
                    <div class="  col-lg-9 col-xl-9 col-md-9 col-sm-12 col-xs-12 navbar-collapse collapse custom-navbar-collapse-for-index" id="collapsingNavbar5">
                        <ul class="navbar-nav mx-auto w-100 nav">
                            <li class="nav-item custom-nav-item-for-index">
                                <%--<a class="nav-link">Latest </a>--%>
                                <asp:LinkButton ID="lnkDramaLatest" runat="server" Text="Latest" OnClick="lnkDramaLatest_Click" CssClass="nav-link"></asp:LinkButton>
                            </li>
                            <li class="nav-item custom-nav-item-for-index ">
                                <asp:LinkButton ID="lnkDramaPopular" runat="server" Text="Popular" OnClick="lnkDramaPopular_Click" CssClass="nav-link"></asp:LinkButton>
                            </li>
                        </ul>
                    </div>
                </nav>

            </div>

            <div class="mt-2"></div>

            <!-- content -->
            <div class="container">
                <div class="row bg-white">
                    <div class="col-xl-3 col-lg-3 p-0 d-xl-block d-lg-block d-md-none d-sm-none d-none text-white position-relative">
                        <asp:Image ID="UpComingDramaImage" runat="server" class="img img-fluid " alt="Alternate Text" Style="height: 340px; width: 100% !important;" />
                        <!-- upcoming -->
                        <img src="img/upcoming.png" class="custom-upcoming-feature-movie-tag" alt="Alternate Text" />
                    </div>
                    <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-xs-12" style="overflow: hidden; padding-left: 30px;">

                        <div class="row position-relative custom-main-slider-for-index">

                            <asp:ListView runat="server"
                                ID="lvDramas"
                                GroupItemCount="1">
                                <LayoutTemplate>
                                    <div class="owl-carousel slider-for-post" runat="server">
                                        <div runat="server" class="items" id="groupPlaceholder">
                                        </div>
                                    </div>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <div runat="server" id="productRow">
                                        <span runat="server" id="itemPlaceholder"></span>
                                    </div>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <a href='<%#"DramasPost.aspx?fID=" + Eval("pkDramaID") + "&Title=" + Eval("varDramaName") %>' rel="bookmark">
                                        <div class="custom_trasition mt-3" style="">
                                            <div class="p-3 position-relative" style="cursor: pointer">
                                                <div class="position-relative " style="overflow: hidden;">
                                                    <div class="shine"></div>
                                                    <asp:Image runat="server" ImageUrl='<%# "Images/Dramas/" + Eval("txtDramaImage") %>' class="img img-fluid custom-img-hover-for-index" alt="Alternate Text" />
                                                </div>
                                                <p class="custom-movie-tittle-for-index-p text-dark"><%# Eval("varDramaName") %></p>
                                                <div class="content_smvalue">
                                                    <span class="smvalue ddata-value text-secondary"><span class="date">Views : <%# Eval("intViewsCounter") %></span></span>
                                                    <br>
                                                    <span class="smvalue ddata-value text-secondary"><span class="date"><%# Eval("dteDateAdded", "{0:yyyy}") %></span></span>
                                                    <br>
                                                    <%--<span class="smvalue ddata-value"><span class="date"><a href="#"><%#Eval("varMovieQuality") %></a></span></span>--%>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                </div>
            </div>


            <!-- start Game -->
            <div class="mt-3"></div>

            <div class="container bg-white custom-nav-for-index-bottom">

                <nav class="navbar navbar-light navbar-expand-md  custom-navbar-index-bottom justify-content-lg-center justify-content-md-start ">
                    <a href="#" class=" col-lg-3 col-xl-3 col-md-3 col-sm-6 col-xs-6 col-6 text-center navbar-brand text-white text-uppercase custom-nav-bar-brand-index-bottom">Game Updates
                    </a>
                    <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#collapsingNavbar6">
                        <span class="fa fa-navicon" style="font-size: 17px; padding: 7px;"></span>
                    </button>
                    <div class="col-lg-9 col-xl-9 col-md-9 col-sm-12 col-xs-12 navbar-collapse collapse custom-navbar-collapse-for-index" id="collapsingNavbar6">

                        <ul class="navbar-nav mx-auto w-100 nav">
                            <li class="nav-item custom-nav-item-for-index">
                                <%--<a class="nav-link">Latest </a>--%>
                                <asp:LinkButton runat="server" CssClass="nav-link" ID="btnLatestGameLink" OnClick="btnLatestGameLink_Click">Latest </asp:LinkButton>
                            </li>
                            <li class="nav-item custom-nav-item-for-index ">
                                <%--<a class="nav-link">Popular</a>--%>
                                <asp:LinkButton runat="server" CssClass="nav-link" ID="btnPopularGameLink" OnClick="btnPopularGameLink_Click">Popular </asp:LinkButton>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="mt-2"></div>
            <!-- content -->
            <div class="container">
                <div class="row bg-white">
                    <div class="col-xl-3 col-lg-3 p-0 d-xl-block d-lg-block d-md-none d-sm-none d-none text-white position-relative">
                        <asp:Image ID="UpComingGameImage" runat="server" class="img img-fluid " alt="Alternate Text" Style="height: 340px; width: 100% !important;" />
                        <!-- upcoming -->
                        <img src="img/upcoming.png" class="custom-upcoming-feature-movie-tag" alt="Alternate Text" />
                    </div>
                    <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-xs-12" style="overflow: hidden; padding-left: 30px;">

                        <div class="row position-relative custom-main-slider-for-index">
                            <asp:ListView runat="server"
                                ID="lvSliderGames"
                                GroupItemCount="1">
                                <LayoutTemplate>
                                    <div class="owl-carousel slider-for-post" runat="server">
                                        <div runat="server" class="items" id="groupPlaceholder">
                                        </div>
                                    </div>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <div runat="server" id="productRow">
                                        <span runat="server" id="itemPlaceholder"></span>
                                    </div>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <a href='<%# "Game.aspx?ID=" + Eval("pkGameID") + "&Title=" + Eval("varGameTitle") %>' rel="bookmark">
                                        <div class="custom_trasition mt-3" style="">
                                            <div class="p-3 position-relative" style="cursor: pointer">
                                                <div class="position-relative " style="overflow: hidden;">
                                                    <div class="shine"></div>
                                                    <asp:Image runat="server" ImageUrl='<%# "Images/Games/" + Eval("txtImage1") %>' class="img img-fluid custom-img-hover-for-index" alt="Alternate Text" />
                                                </div>
                                                <p class="custom-movie-tittle-for-index-p text-dark"><%# Eval("varGameTitle") %></p>
                                                <div class="content_smvalue">
                                                    <span class="smvalue ddata-value text-secondary"><span class="date">Views : <%# Eval("intViewsCounter") %></span></span>
                                                    <br>
                                                    <span class="smvalue ddata-value text-secondary"><span class="date">Downloads : <%# Eval("intDownloadsCounter") %></span></span>
                                                    <br>
                                                    <span class="smvalue ddata-value text-secondary"><span class="date"><%# Eval("ReleaseDate", "{0:yyyy}") %></span></span>
                                                    <br>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                </div>
            </div>



            <!-- Drama's -->
            <div class="mt-3"></div>
            <div class="container-fluid p-3 bg-white">
                <div class="container p-0">
                    <div class="">
                        <h4 class="w-100" style="border-bottom: 1px solid #ccc; padding-bottom: 8px;">
                            <span style="border-bottom: 3px solid #FF7300; font-size: 18px; padding-bottom: 5px;">DRAMA'S UPDATES</span>
                            <span class="float-right">
                                <span class="fa fa-caret-left drama-left drleft"></span>
                                <span class="fa fa-caret-right drama-right drright"></span>
                            </span>
                        </h4>
                    </div>

                    <div class="">

                        <asp:ListView ID="lvTopRatedDramas" runat="server" GroupItemCount="1">
                            <LayoutTemplate>
                                <div runat="server" id="tblProducts" class="owl-carousel slider-for-dramas">
                                    <div runat="server" id="groupPlaceholder" class="items" style="border: 1px solid #ccc;">
                                    </div>

                                </div>
                            </LayoutTemplate>
                            <GroupTemplate>
                                <div class="text-center" runat="server" id="productRow">
                                    <span runat="server" id="itemPlaceHolder"></span>
                                </div>
                            </GroupTemplate>
                            <ItemTemplate>
                                <a href='<%#"DramasPost.aspx?fID=" + Eval("pkDramaID") + "&Title=" + Eval("varDramaName") %>'>
                                    <div class=" position-relative custom-drama-for-index" style="">

                                        <asp:Image ID="imgLatest" runat="server" src='<%#"Images/Dramas/" + Eval("txtDramaImage")%>' alt="Alternate Text" class="w-100 mw-100 h-100 mh-100" />
                                        <span class="position-absolute text-center w-100 h-100 custom-img-for-drama-index-play" style="">

                                            <span class="fa fa-play" style=""></span>

                                        </span>
                                    </div>
                                    <div class="position-relative bg-white" style="padding: 15px;">
                                        <h4 style="font-size: 14px; height: 30px; overflow: hidden"><%#Eval("varDramaName")%>
                                        </h4>
                                        <%--<div class="content_smvalue">
                                            <span class="">Category: <span class=""><%#Eval("varChannelName")%></span></span><br>
                                        </div>--%>
                                    </div>

                                </a>
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                </div>
            </div>
            <!-- Songs's -->
            <div class="mt-3"></div>
            <div class="container-fluid p-3 bg-white">
                <div class="container p-0">
                    <div class="">
                        <h4 class="w-100" style="border-bottom: 1px solid #ccc; padding-bottom: 8px;">
                            <span style="border-bottom: 3px solid #FF7300; font-size: 18px; padding-bottom: 5px;">SONG'S UPDATES</span>
                            <span class="float-right">
                                <span class="fa fa-caret-left song-left drleft"></span>
                                <span class="fa fa-caret-right song-right drright"></span>
                            </span>
                        </h4>
                    </div>

                    <div class="">

                         <asp:ListView ID="lvLatestSongs" runat="server" GroupItemCount="1">
                            <LayoutTemplate>
                                <div runat="server" id="tblProducts" class="owl-carousel slider-for-songs">
                                    <div runat="server" id="groupPlaceholder" class="items" style="border: 1px solid #ccc;">
                                    </div>

                                </div>
                            </LayoutTemplate>
                            <GroupTemplate>
                                <figure class="text-center" runat="server" id="productRow">
                                    <span runat="server" id="itemPlaceHolder"></span>
                                </figure>
                            </GroupTemplate>
                            <ItemTemplate>
                               <div class="thumb-image">
                                 <a href='<%#"SongsPost.aspx?ID=" + Eval("pkSongID") + "&Title=" + Eval("varSongName") %>'>
                                    <asp:Image ID="imgLatest" runat="server" src='<%#"Images/Songs/" + Eval("txtSongPosterImage") %>' alt="Alternate Text" />
                                    <span class="name"><%#Eval("varSongName")%></span>
                                </a>
                                   </div>
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                </div>
            </div>
        </div>

        <div class="custom-side-fixed-on-scroll" style="display: none;"></div>

        <!-- End -->
        <!-- Footer -->
        <!-- Start -->


        <footer id="myFooter" style="margin-top: 10px;" class="bg-dark">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <h2 class="logo"><a href="#">
                            <img src="img/logo.png" class="img img-fluid" style="width: 160px;" alt="Alternate Text" />
                        </a></h2>
                    </div>
                    <div class="col-sm-2">
                        <h5>Movies</h5>
                        <ul>
                            <li><a href="Bollywood.aspx">Bollywood</a></li>
                            <li><a href="Hollywood.aspx">Hollywood</a></li>
                            <li><a href="OtherMovies.aspx">Dubbed</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-2">
                        <h5>Other</h5>
                        <ul>
                            <li><a href="Game.aspx">Games</a></li>
                            <li><a href="Songs.aspx">Songs</a></li>
                            <li><a href="Dramas.aspx">Dramas</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-2">
                        <h5>About us</h5>
                        <ul>
                            <li><a href="ContactUs.aspx">Contact us</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-3">
                        <div class="social-networks">
                            <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="google"><i class="fa fa-youtube"></i></a>
                            <a href="#" class="google"><i class="fa fa-instagram"></i></a>
                        </div>
                        <asp:Button runat="server" ID="btnContactUs" Text="Contact us" class="btn btn-default" OnClick="btnContactUs_Click"></asp:Button>
                    </div>
                </div>
            </div>
            <div class="footer-copyright" style="background-color: #17191b;">
                <p>© 2018 Copyright <a href="Default.aspx">Freeplay.pk</a> </p>
            </div>
        </footer>
        <!-- End -->
    </form>
</body>
</html>
