<%@ Page Title="" Language="C#" MasterPageFile="~/FreePlay.Master" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="FreePlay.Game" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title runat="server" id="txtPageTitle">Games</title>
    <%--FACEBOOK--%>
    <meta property="og:url" runat="server" id="txtFaceBootMetaPageUrl"/>
    <meta property="og:type" content="article" />
    <meta property="og:title" runat="server" id="txtFaceBookMetaPostTitle"/>
    <meta property="og:description" runat="server" id="txtFaceBookMetaPostDescription" />
    <meta property="og:image" runat="server" id="txtFaceBookMetaPostImage"/>
    <%--TWITTER--%>
    <meta name="twitter:card" content="summary"/>
    <meta name="twitter:title" runat="server" id="txtTwitterMetaPostTitle"/>
    <meta name="twitter:description" runat="server" id="txtTwitterMetaPostDescription"/>
    <meta name="twitter:image" runat="server" id="txtTwitterMetaPostImage"/>
    <%--GOOGLE--%>
    <meta name="description" runat="server" id="txtGoogleMetaDescription"/>
    <meta name="keywords" runat="server" id="txtGoogleKeywords"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        
    </script>
    <asp:Panel runat="server" ID="pnlGames" Visible="false">
        <div class="container-fluid">
            <div class="row">
                <!-- ads-1 -->
                <!-- start -->
                <div class="col-xl-1 col-lg-1 col-md-1 d-none d-lg-block text-center order-md-1 ">
                    <img src="img/120x600.png" class="img-fluid cuntom-img-for-ads" />
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
                        <!-- End -->
                        <!-- Movies -->
                        <!-- Start -->
                        <div class="col-xl-12 mt-2">
                            <hr>
                            <div class="page-header text-center">
                                <h2>Games
                                </h2>
                            </div>
                            <hr />
                            <%--Latest Game Panel--%>
                            <asp:Panel runat="server" ID="pnlLatestGames" Visible="false">
                                <div class="col-xl-12 mt-5">
                                    <div class="page-header bg-dark" style="padding: 11px; color: #fff;">
                                        <h3 runat="server" id="txtLastestGameHeading">Latest Games
                                        </h3>
                                    </div>
                                    <hr>
                                    <div class="movies_main text-center">
                                        <!-- post -->
                                        <asp:ListView runat="server"
                                            ID="lvLatestGame"
                                            GroupItemCount="10"
                                            DataKeyNames="pkGameID"
                                            OnPagePropertiesChanging="lvLatestGame_PagePropertiesChanging">
                                            <LayoutTemplate>
                                                <div runat="server">
                                                    <div runat="server" id="groupPlaceholder">
                                                    </div>
                                                </div>
                                                <asp:DataPager runat="server" Visible="false" ID="DataPager">
                                                    <Fields>
                                                        <asp:NextPreviousPagerField
                                                            NextPageText="<span class='fa fa-arrow-circle-o-right'></span>"
                                                            PreviousPageText="<span class='fa fa-arrow-circle-o-left'></span>" />
                                                    </Fields>
                                                </asp:DataPager>
                                            </LayoutTemplate>
                                            <GroupTemplate>
                                                <div runat="server" id="productRow">
                                                    <span runat="server" id="itemPlaceholder"></span>
                                                </div>
                                            </GroupTemplate>
                                            <ItemTemplate>
                                                <a href='<%# "Game.aspx?ID=" + Eval("pkGameID") + "&Title" + Eval("varGameTitle") %>' rel="bookmark">
                                                    <div class="img-fluid img-container custom_trasition tr" style="display: inline-block; border: 1px solid #ccc; padding: 10px; margin-bottom: 1px;">
                                                        <div class="custom_img_for_sider_main_div ">
                                                            <div class="position-relative " style="overflow: hidden;">
                                                                <div class="shine"></div>
                                                                <asp:Image runat="server" ImageUrl='<%# "Images/Games/" + Eval("txtImage1") %>' class="img img-fluid custom-img-hover-for-index img-custom-for-slider" alt="Alternate Text" />
                                                            </div>
                                                        </div>
                                                        <div class="custom_tittle_for_silder_main_div1" style="width: 130px">
                                                            <span class="td"><%# Eval("varGameTitle") %></span>
                                                        </div>
                                                        <div class="custom_Release_year_for_silder_main_div1">
                                                            <span><%# Eval("ReleaseDate", "{0:dd-MM-yyyy}") %></span><br>
                                                            <span>Downloads : <%# Eval("intDownloadsCounter") %></span><br>
                                                            <span>views : <%# Eval("intViewsCounter") %></span><br>
                                                        </div>
                                                    </div>
                                                </a>
                                            </ItemTemplate>
                                        </asp:ListView>
                                        <!-- End -->
                                        <!-- Post -->
                                    </div>
                                </div>
                            </asp:Panel>
                            <%--Latest Game Panel End--%>
                            <hr />
                            <%--Pupular Games Panel--%>
                            <asp:Panel runat="server" ID="pnlPopularGames" Visible="false">
                                <div class="col-xl-12 mt-5">
                                    <div class="page-header bg-dark" style="padding: 11px; color: #fff;">
                                        <h3>Popular Games
                                        </h3>
                                    </div>
                                    <hr>
                                    <div class="movies_main text-center">
                                        <!-- post -->
                                        <asp:ListView runat="server"
                                            ID="lvPopularGames"
                                            GroupItemCount="10"
                                            DataKeyNames="pkGameID">
                                            <LayoutTemplate>
                                                <div runat="server">
                                                    <div runat="server" id="groupPlaceholder">
                                                    </div>
                                                </div>
                                            </LayoutTemplate>
                                            <GroupTemplate>
                                                <div runat="server" id="productRow">
                                                    <span runat="server" id="itemPlaceholder"></span>
                                                </div>
                                            </GroupTemplate>
                                            <ItemTemplate>
                                                <a href='<%# "Game.aspx?ID=" + Eval("pkGameID") + "&Title" + Eval("varGameTitle") %>' rel="bookmark">
                                                    <div class="img-fluid img-container custom_trasition tr" style="display: inline-block; border: 1px solid #ccc; padding: 10px; margin-bottom: 1px;">
                                                        <div class="custom_img_for_sider_main_div ">
                                                            <div class="position-relative " style="overflow: hidden;">
                                                                <div class="shine"></div>
                                                                <asp:Image runat="server" ImageUrl='<%# "Images/Games/" + Eval("txtImage1") %>' class="img img-fluid custom-img-hover-for-index img-custom-for-slider" alt="Alternate Text" />
                                                            </div>
                                                        </div>
                                                        <div class="custom_tittle_for_silder_main_div1" style="width: 130px">
                                                            <span class="td"><%# Eval("varGameTitle") %></span>
                                                        </div>
                                                        <div class="custom_Release_year_for_silder_main_div1">
                                                            <span><%# Eval("ReleaseDate", "{0:dd-MM-yyyy}") %></span><br>
                                                            <span>Downloads : <%# Eval("intDownloadsCounter") %></span><br>
                                                            <span>views : <%# Eval("intViewsCounter") %></span><br>
                                                        </div>
                                                    </div>
                                                </a>
                                            </ItemTemplate>
                                        </asp:ListView>
                                        <!-- End -->
                                        <!-- Post -->
                                    </div>
                                </div>
                            </asp:Panel>
                            <%--Popular Games Panel End--%>
                            <hr />
                        </div>
                        <asp:Panel runat="server" ID="pnlAllGame" Visible="false">
                            <div class="col-xl-12 mt-5">
                                <div class="page-header bg-dark" style="padding: 11px; color: #fff;">
                                    <h3 runat="server" id="txtAllGamesHeading" class="d-inline-block">All Games
                                    </h3>
                                    <asp:Button runat="server" ID="btnViewAll" OnClick="btnViewAll_Click" Text="View More" class="btn btn-danger float-right d-inline-block"></asp:Button>
                                </div>
                                <hr>
                                <div class="movies_main text-center" id="myTable">
                                    <!-- post -->
                                    <asp:ListView runat="server"
                                        ID="lvAllGameListPreview"
                                        GroupItemCount="10"
                                        DataKeyNames="pkGameID">
                                        <LayoutTemplate>
                                            <div runat="server">
                                                <div runat="server" id="groupPlaceholder">
                                                </div>
                                            </div>
                                        </LayoutTemplate>
                                        <GroupTemplate>
                                            <div runat="server" id="productRow">
                                                <span runat="server" id="itemPlaceholder"></span>
                                            </div>
                                        </GroupTemplate>
                                        <ItemTemplate>
                                            <a href='<%# "Game.aspx?ID=" + Eval("pkGameID") + "&Title" + Eval("varGameTitle") %>' rel="bookmark">
                                                <div class="img-fluid img-container custom_trasition tr" style="display: inline-block; border: 1px solid #ccc; padding: 10px; margin-bottom: 1px;">
                                                    <div class="custom_img_for_sider_main_div ">
                                                        <div class="position-relative " style="overflow: hidden;">
                                                            <div class="shine"></div>
                                                            <asp:Image runat="server" ImageUrl='<%# "Images/Games/" + Eval("txtImage1") %>' class="img img-fluid custom-img-hover-for-index img-custom-for-slider" alt="Alternate Text" />
                                                        </div>
                                                    </div>
                                                    <div class="custom_tittle_for_silder_main_div1" style="width: 130px">
                                                        <span class="td"><%# Eval("varGameTitle") %></span>
                                                    </div>
                                                    <div class="custom_Release_year_for_silder_main_div1">
                                                        <span><%# Eval("ReleaseDate", "{0:dd-MM-yyyy}") %></span><br>
                                                        <span>Downloads : <%# Eval("intDownloadsCounter") %></span><br>
                                                        <span>views : <%# Eval("intViewsCounter") %></span><br>
                                                    </div>
                                                </div>
                                            </a>
                                        </ItemTemplate>
                                    </asp:ListView>
                                    <!-- End -->
                                    <!-- Post -->
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                </div>

                <!-- End -->
                <!-- aside -->
                <!-- start -->
                <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-xs-12 order-md-3 order-sm-1 custom-side-fixed-on-scroll custom-for-post" style="margin-top: 1831.28px;">
                    <!-- search -->
                    <!-- start -->
                    <div class="" style="padding: 10px;">
                        <h5 class="text-secondary " style="color: #607D8B !important;">Search</h5>
                        <div class="input-group ">
                            <asp:TextBox runat="server" ID="txtSearch" class="form-control"></asp:TextBox>
                            <div class="input-group-btn">
                                <asp:Button runat="server" ID="btnSearch" class="btn btn-success" Style="border-radius: 0px;" Text="Search" OnClick="btnSearch_Click" />
                            </div>
                        </div>
                        <hr>
                        <h5 class="text-secondary " style="color: #607D8B !important;">Release year</h5>
                        <div class="genres-custom-for-year-realies genres-custom">
                            <div class="  p-4 text-center" style="padding-top: 9px !important;">
                                <asp:ListView ID="lvGameReleaseDate" runat="server">
                                    <LayoutTemplate>
                                        <table cellpadding="20" runat="server" cellspacing="50" id="tblProducts">
                                            <tr runat="server" id="groupPlaceholder">
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                    <GroupTemplate>
                                        <span runat="server" id="productRow">
                                            <div runat="server" id="itemPlaceHolder"></div>
                                        </span>
                                    </GroupTemplate>
                                    <ItemTemplate>
                                        <a href='<%#"Game.aspx?SearchBy=" + "Release Date" + "&Date=" + Eval("ReleaseDate") %>' class="bg-dark  text-white custom-aside-reals-year">
                                            <span><%#Eval("ReleaseDate")%> </span>
                                        </a>
                                    </ItemTemplate>
                                </asp:ListView>
                            </div>
                        </div>
                        <hr>
                    </div>
                    <!-- end -->
                </div>

                <!-- Row end -->
            </div>
            <!--Container end -->
        </div>
    </asp:Panel>

    <asp:Panel runat="server" ID="pnlGamePostPage" Visible="true">
        <div class="container-fluid">
            <div class="row">
                <!-- ads-1 -->
                <!-- start -->
                <div class="col-xl-1 col-lg-1 col-md-1 d-none d-lg-block text-center order-md-1 ">
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
                                        <a class="nav-link text-dark-constom" data-toggle="tab" href="#Screenshort">Screen Short</a>
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
                                <div id="Download_now" class="container tab-pane  fade text-center">
                                    <br>
                                    <img src="img/720x90.png" class="img-fluid " />
                                    <br />
                                    <br />
                                    <h3>Download Now</h3>
                                    <br />
                                    <a runat="server" type="button" id="btnDownload" class="btn btn-success btn-lg text-white" href="https://f4.megaup.net/Ag3/The.Foreigner.2017.720p.BluRay.x264-[YTS.AG].mp4?download_token=b7c7db5a095c45a90e9813a8b93ccc9621c02e5590142daf2570a5d48be99175" download>Download Now
                                    </a>
                                </div>
                                <div id="Tralier" class="container tab-pane fade text-center">
                                    <br />
                                    <img src="img/720x90.png" class="img-fluid " />
                                    <br />
                                    <br />
                                    <h3 class="text-left">Tralier</h3>
                                    <div>
                                        <br>
                                        <!-- Youtube Video Emberd -->
                                        <div runat="server" id="trailerVideo" data-type="youtube" data-video-id="bTqVqk7FSmY"></div>
                                    </div>
                                </div>
                                <div id="info" class="container tab-pane active ">
                                    <br>
                                    <div class="row">
                                        <div class="col-lg-4 col-md-4 col-xs-12 col-sm-12">
                                            <img runat="server" id="txtPosterImage" src="img/test-game.jpg" class="img img-fluid" style="" alt="Alternate Text" />
                                        </div>
                                        <div class="col-lg-8 col-md-4 col-xs-12 col-sm-12 text-left">
                                            <h3 runat="server" id="txtGameTitle">Tittle of Game</h3>
                                            <p runat="server" id="txtReleaseDate">Release Date</p>
                                            <h5>No Of Downloads : <span runat="server" id="txtDownloads" class="badge bg-info text-white custom_briage_for_aside">50000</span>
                                                <br />
                                                <br />
                                                No Of Views : <span runat="server" id="txtViews" class="badge bg-info text-white custom_briage_for_aside">50000</span>
                                            </h5>
                                        </div>
                                        <div class="col-lg-12 text-left mt-5">

                                            <h4>Overview</h4>
                                            <asp:Literal runat="server" id="txtOverview">
                                                Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
                                            </asp:Literal>
                                            <h4>System Requirements</h4>
                                            <asp:Literal runat="server" id="txtSystemRequirements">
                                                <ul>
                                                    <li>Operating System: Windows&nbsp;XP/&nbsp;Windows Vista/ Windows 7</li>
                                                    <li>CPU:&nbsp;Pentium 3 1.3 Ghz</li>
                                                    <li>RAM:&nbsp;1 GB of RAM for Windows XP / 2 GB Windows Vista</li>
                                                    <li>Hard disk Space:&nbsp;2 GB</li>
                                                </ul>
                                            </asp:Literal>
                                            <h4>Features</h4>
                                            <asp:Literal runat="server" id="txtFeatures">
                                                <ul>
                                                    <li>High quality&nbsp;graphics and visual effects</li>
                                                    <li>Adventurous open world stealth game</li>
                                                    <li>Player can&nbsp;customized&nbsp;different options in the game</li>
                                                    <li>Each character has different&nbsp;voices and characteristics</li>
                                                    <li>Different game view modes are&nbsp;introduced</li>
                                                </ul>
                                            </asp:Literal>
                                        </div>
                                    </div>
                                </div>
                                <div id="Screenshort" class="container tab-pane ">
                                    <br>
                                    <div class="row">
                                        <div class=" text-center p-3">
                                            <img src="Images/test.png" runat="server" id="txtImage2" class="img img-fluid custom-img-for-upper-model col-lg-3 col-md-3 col-xs-3 col-sm-3" alt="Alternate Text" data-toggle="modal" data-target="#myModal" />
                                            <img src="Images/test.png" runat="server" id="txtImage3" class="img img-fluid custom-img-for-upper-model col-lg-3 col-md-3 col-xs-3 col-sm-3" alt="Alternate Text" data-toggle="modal" data-target="#myModal" />
                                            <img src="Images/test.png" runat="server" id="txtImage4" class="img img-fluid custom-img-for-upper-model col-lg-3 col-md-3 col-xs-3 col-sm-3" alt="Alternate Text" data-toggle="modal" data-target="#myModal" />
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
                                            <img src="Images/test.png" class="img img-fluid custom-img-for-upper-model-open" alt="Alternate Text" />
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
                <!-- aside -->
                <!-- start -->
                <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-xs-12 order-md-3  order-sm-1 custom-side-fixed-on-scroll custom-for-post">
                    <!-- search -->
                    <!-- start -->

                    <!-- end -->
                </div>
                <!-- end -->
            </div>
        </div>
    </asp:Panel>
    <script src='https://cdn.plyr.io/2.0.7/plyr.js'></script>
    <script src="dist/js/video.js"></script>
</asp:Content>
