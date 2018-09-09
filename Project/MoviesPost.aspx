<%@ Page Language="C#" MasterPageFile="~/FreePlay.Master" AutoEventWireup="true" CodeBehind="MoviesPost.aspx.cs" Inherits="FreePlay.MoviesPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title runat="server" id="txtPageTitle"></title>
    <%--FACEBOOK--%>
    <meta property="og:url" runat="server" id="txtFaceBootMetaPageUrl" />
    <meta property="og:type" content="article" />
    <meta property="og:title" runat="server" id="txtFaceBookMetaPostTitle" />
    <meta property="og:description" runat="server" id="txtFaceBookMetaPostDescription" />
    <meta property="og:image" runat="server" id="txtFaceBookMetaPostImage" />
    <%--TWITTER--%>
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:title" runat="server" id="txtTwitterMetaPostTitle" />
    <meta name="twitter:description" runat="server" id="txtTwitterMetaPostDescription" />
    <meta name="twitter:image" runat="server" id="txtTwitterMetaPostImage" />
    <%--GOOGLE--%>
    <meta name="description" runat="server" id="txtGoogleMetaDescription" />
    <meta name="keywords" runat="server" id="txtGoogleKeywords" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- content -->
    <!-- Start -->
    <div class="container-fluid">
        <div class="row">
            <!-- ads-1 -->
            <!-- start -->
            <div class="col-xl-2 col-lg-2 col-md-2 d-none d-lg-block text-center order-md-1 ">
                <img src="img/120x600.png" class="img-fluid cuntom-img-for-ads " />
            </div>
            <!-- end -->
            <!-- main-content -->
            <!-- Start -->
            <div class="col-xl-8 col-lg-8 com-md-8 col-sm-12 col-xs-12  order-md-2 order-5 ">
                <div class="container">
                    <!-- main-container-center-ads -->
                    <!-- Start -->
                    <!-- ads top -->
                    <div class="col-xl-12 text-center">
                        <img src="img/720x90.png" class="img-fluid cuntom-img-for-ads-top" alt="Alternate Text" />
                    </div>
                    <!-- Popular -->
                    <!-- Start -->
                    <div class="col-xl-12 mt-5 text-center">
                        <div style="margin-top: 10px;">
                            <ul class="nav nav-tabs nav-justified text-dark">
                                <li class="nav-item">
                                    <a class="nav-link text-dark-constom active" data-toggle="tab" href="#info">Info</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-dark-constom" data-toggle="tab" href="#Screenshort">Screen Shot</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link  text-dark-constom" data-toggle="tab" href="#Watch_now">Watch Now</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-dark-constom" data-toggle="tab" href="#Download_now">Download Now</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-dark-constom" data-toggle="tab" href="#Tralier">Tralier</a>
                                </li>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <div id="Watch_now" class="container fade tab-pane  text-center">
                                <br>
                                <img src="img/720x90.png" class="img-fluid " />
                                <div>
                                    <br>
                                    <video class="jw-video jw-reset" id="vidMovie" runat="server" x-webkit-airplay="allow" webkit-playsinline="" src="https://f4.megaup.net/Ag3/The.Foreigner.2017.720p.BluRay.x264-[YTS.AG].mp4?download_token=b7c7db5a095c45a90e9813a8b93ccc9621c02e5590142daf2570a5d48be99175"></video>
                                </div>
                            </div>
                            <div id="Download_now" class="container tab-pane  fade text-center">
                                <br>
                                <img src="img/720x90.png" class="img-fluid " />
                                <br />
                                <br />
                                <h3>Download Now</h3>
                                <br />
                                <asp:HyperLink type="button" ID="download" class="btn btn-success btn-lg text-white" runat="server" OnClick="btnDownLoad_Click">Download Now
                                </asp:HyperLink>
                            </div>
                            <div id="Tralier" class="container tab-pane fade text-center">
                                <br>
                                <img src="img/720x90.png" class="img-fluid " />
                                <br />
                                <br />
                                <h3 class="text-left">Tralier</h3>
                                <div>
                                    <br>
                                    <!-- Youtube Video Emberd -->
                                    <div data-type="youtube" id="youtubeTrailer" runat="server" data-video-id="bTqVqk7FSmY"></div>
                                </div>
                            </div>
                            <div id="info" class="container tab-pane active ">
                                <br>
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-xs-12 col-sm-12">
                                        <asp:Image runat="server" ID="imgPoster" ImageUrl="img/test.jpg" class="img img-fluid" alt="Alternate Text" />
                                    </div>
                                    <div class="col-lg-8 col-md-4 col-xs-12 col-sm-12 text-left">
                                        <h3 id="txtMovieTitle" runat="server">Tittle of Movie</h3>
                                        Release Date:&nbsp
                                        <p id="txtReleaseDate" runat="server" style="display: inline">Release Date</p>
                                        <h5>No Of Downloads : <span class="badge bg-info text-white  custom_briage_for_aside" id="txtNoOfDownloads" runat="server"></span>
                                            <br />
                                            <br />
                                            No Of Views : <span class="badge bg-info text-white  custom_briage_for_aside" id="txtNoOfViews" runat="server">50000</span>
                                        </h5>
                                    </div>
                                </div>
                                <p></p>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 text-left mt-5">
                                        <h4>Producer</h4>
                                        <p class="text-justify" id="txtProducer" runat="server"></p>
                                        <h4>Director</h4>
                                        <p class="text-justify" id="txtDirector" runat="server"></p>
                                        <h4>Cast</h4>
                                        <p class="text-justify" id="txtMovieCast" runat="server"></p>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 mt-5 text-left">
                                        <h4>Movie Quality</h4>
                                        <p class="text-justify" id="txtMovieQuality" runat="server"></p>
                                        <h4>Movie Genre</h4>
                                        <p class="text-justify" id="txtMovieGene" runat="server"></p>

                                        <h4>Movie Language</h4>
                                        <p class="text-justify" id="txtMovieLanguage" runat="server"></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 text-left">
                                        <h4>StoryLine</h4>
                                        <p class="text-justify" id="txtStoryLine" runat="server">
                                            Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
                                        </p>
                                    </div>
                                </div>
                                <div>
                                </div>
                            </div>
                            <div id="Screenshort" class="container tab-pane  ">
                                <br>
                                <div class="row">
                                    <div class="row text-center p-3">
                                        <asp:Image runat="server" ID="Image1" ImageUrl="Images/test.png" class="img img-fluid custom-img-for-upper-model col-lg-3 col-md-3 col-xs-3 col-sm-3" data-toggle="modal" data-target="#myModal" />
                                        <asp:Image runat="server" ID="Image2" ImageUrl="Images/test.png" class="img img-fluid custom-img-for-upper-model col-lg-3 col-md-3 col-xs-3 col-sm-3" data-toggle="modal" data-target="#myModal" />
                                        <asp:Image runat="server" ID="Image3" ImageUrl="Images/test.png" class="img img-fluid custom-img-for-upper-model col-lg-3 col-md-3 col-xs-3 col-sm-3" data-toggle="modal" data-target="#myModal" />
                                        <asp:Image runat="server" ID="Image4" ImageUrl="Images/test.png" class="img img-fluid custom-img-for-upper-model col-lg-3 col-md-3 col-xs-3 col-sm-3" data-toggle="modal" data-target="#myModal" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />
                        <!-- Modal -->
                        <div id="myModal" class="modal fade" role="dialog">
                            <div class="modal-dialog" style="width: 100%; max-width: 90%; max-height: 90%;">
                                <!-- Modal content-->
                                <div class="modal-content" style="box-shadow: none; border: none;">
                                    <div class="modal-body">
                                        <img src="img/test.jpg" class="img img-fluid custom-img-for-upper-model-open" alt="Alternate Text" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="content-ads text-center mt-3 pt-5 pb-5" style="border: 1px solid #607D8B">
                            <h1>Content Ads
                            </h1>
                        </div>
                    </div>
                    <!-- End -->
                </div>
            </div>
            <!-- End -->
            <!-- start -->
            <div class="col-xl-2 col-lg-2 col-md-2 d-none d-lg-block text-center order-md-3 ">
                <img src="img/120x600.png" class="img-fluid cuntom-img-for-ads " />
            </div>
            <!-- end -->
        </div>
    </div>
    <!-- End -->
    <script src='https://cdn.plyr.io/2.0.7/plyr.js'></script>
    <script src="dist/js/video.js"></script>
</asp:Content>

