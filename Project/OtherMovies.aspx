<%@ Page Language="C#" MasterPageFile="~/FreePlay.Master" AutoEventWireup="true" CodeBehind="OtherMovies.aspx.cs" Inherits="FreePlay.OtherMovies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title runat="server" id="txtPageTitle">Dub Movies</title>
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

    <!-- End -->

    <!-- Start -->
    <asp:Panel ID="pnlBollywoodMain" runat="server">
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
                        <asp:Panel ID="pnlLatest" runat="server">
                            <div class="col-xl-12 mt-2">
                                <hr />
                                <div class="page-header text-center">
                                    <h2>Others
                               
                                    </h2>
                                </div>

                                <hr />
                                <div class="page-header bg-dark" style="padding: 11px; color: #fff;">
                                    <h3>Latest
                                <!--<button type="button" class="btn btn-danger float-right">View More</button>-->
                                    </h3>
                                </div>
                                <hr />

                                <div class="movies_main text-center">
                                    <asp:ListView ID="lvLatestHollywood" runat="server" DataKeyNames="pkMovieID">
                                        <LayoutTemplate>
                                            <table cellpadding="20" runat="server" cellspacing="50" id="tblProducts">
                                                <tr runat="server" id="groupPlaceholder">
                                                </tr>

                                            </table>
                                        </LayoutTemplate>
                                        <GroupTemplate>
                                            <span class="text-center" runat="server" id="productRow">
                                                <div runat="server" id="itemPlaceHolder"></div>
                                            </span>
                                        </GroupTemplate>
                                        <ItemTemplate>
                                            <!-- post -->
                                            <a href='<%#"MoviesPost.aspx?ID=" + Eval("pkMovieID") + "&Title=" + Eval("varMovieName") %>'>

                                                <div class="img-fluid img-container custom_trasition" style="display: inline-block; border: 1px solid #ccc; padding: 10px; margin-bottom: 1px;">

                                                    <div class="custom_img_for_sider_main_div ">

                                                        <div class="position-relative " style="overflow: hidden;">
                                                            <div class="shine"></div>
                                                            <asp:Image ID="imgLatest" runat="server" src='<%# "Images/Movies/" + Eval("txtPosterImage") %>' class="img img-fluid custom-img-hover-for-index img-custom-for-slider" alt="Alternate Text" />

                                                        </div>

                                                    </div>

                                                    <div class="custom_tittle_for_silder_main_div1" style="width: 130px">
                                                        <span><%#Eval("varMovieName")%></span>
                                                    </div>

                                                    <div class="custom_Release_year_for_silder_main_div1">
                                                        <span>RD <%#Eval("dteReleaseDate","{0:MM-dd-yyyy}")%></span><br />
                                                        <span>Downloads : <%#Eval("intDownloadCounter")%></span><br />
                                                        <span>views : <%#Eval("intViewsCounter")%></span><br />
                                                    </div>

                                                </div>

                                            </a>
                                        </ItemTemplate>
                                    </asp:ListView>
                                    <!-- end -->
                                    <!-- post -->

                                </div>

                            </div>
                        </asp:Panel>

                        <!-- End -->
                        <!-- Popular -->
                        <!-- Start -->
                        <asp:Panel ID="pnlPopular" runat="server">
                            <div class="col-xl-12 mt-5">

                                <hr />
                                <div class="page-header bg-dark" style="padding: 11px; color: #fff;">
                                    <h3>Popular
                                <!--<button type="button" class="btn btn-danger float-right">View More</button>-->
                                    </h3>
                                </div>
                                <hr />

                                <div class="movies_main text-center">

                                    <asp:ListView ID="lvPopular" runat="server" DataKeyNames="pkMovieID">
                                        <LayoutTemplate>
                                            <table cellpadding="20" runat="server" cellspacing="50" id="tblProducts">
                                                <tr runat="server" id="groupPlaceholder">
                                                </tr>

                                            </table>
                                        </LayoutTemplate>
                                        <GroupTemplate>
                                            <span class="text-center" runat="server" id="productRow">
                                                <div runat="server" id="itemPlaceHolder"></div>
                                            </span>
                                        </GroupTemplate>
                                        <ItemTemplate>
                                            <!-- post -->
                                            <a href='<%#"MoviesPost.aspx?ID=" + Eval("pkMovieID") + "&Title=" + Eval("varMovieName") %>'>

                                                <div class="img-fluid img-container custom_trasition" style="display: inline-block; border: 1px solid #ccc; padding: 10px; margin-bottom: 1px;">

                                                    <div class="custom_img_for_sider_main_div ">

                                                        <div class="position-relative " style="overflow: hidden;">
                                                            <div class="shine"></div>
                                                            <asp:Image ID="imgLatest" runat="server" src='<%# "Images/Movies/" + Eval("txtPosterImage") %>' class="img img-fluid custom-img-hover-for-index img-custom-for-slider" alt="Alternate Text" />

                                                        </div>

                                                    </div>

                                                    <div class="custom_tittle_for_silder_main_div1" style="width: 130px">
                                                        <span><%#Eval("varMovieName")%></span>
                                                    </div>

                                                    <div class="custom_Release_year_for_silder_main_div1">
                                                        <span>RD <%#Eval("dteReleaseDate","{0:MM-dd-yyyy}")%></span><br />
                                                        <span>Downloads : <%#Eval("intDownloadCounter")%></span><br />
                                                        <span>views : <%#Eval("intViewsCounter")%></span><br />
                                                    </div>

                                                </div>

                                            </a>
                                        </ItemTemplate>
                                    </asp:ListView>

                                    <!-- end -->
                                </div>

                            </div>
                        </asp:Panel>
                        <!-- End -->
                        <!-- Popular -->
                        <!-- Start -->

                        <div class="col-xl-12 mt-5">

                            <hr />
                            <div class="page-header bg-dark" style="padding: 11px; color: #fff;">
                                <h3>All Dub Movies
                               <asp:Button ID="btnViewAll" runat="server" class="btn btn-danger float-right" UseSubmitBehavior="false" Text="View More" OnClick="btnViewAll_Click" />
                                </h3>
                            </div>
                            <hr />

                            <div class="movies_main text-center">
                                <asp:Panel ID="pnlAllSecond" runat="server" Visible="false">
                                    <asp:ListView ID="lvAllMovies" runat="server" DataKeyNames="pkMovieID" OnPagePropertiesChanging="lvAllMovies_PagePropertiesChanging">
                                        <LayoutTemplate>
                                            <table cellpadding="20" runat="server" cellspacing="50" id="tblProducts">
                                                <tr runat="server" id="groupPlaceholder">
                                                </tr>

                                            </table>
                                            <asp:DataPager runat="server" ID="DataPager" PageSize="10">
                                                <Fields>
                                                    <asp:NextPreviousPagerField PreviousPageText="<span class='fa fa-arrow-circle-o-left'></span>"
                                                        NextPageText="<span class='fa fa-arrow-circle-o-right'></span>" />
                                                </Fields>
                                            </asp:DataPager>
                                        </LayoutTemplate>
                                        <GroupTemplate>
                                            <span class="text-center" runat="server" id="productRow">
                                                <div runat="server" id="itemPlaceHolder"></div>
                                            </span>
                                        </GroupTemplate>
                                        <ItemTemplate>
                                            <!-- post -->
                                            <a href='<%#"MoviesPost.aspx?ID=" + Eval("pkMovieID") + "&Title=" + Eval("varMovieName") %>'>

                                                <div class="img-fluid img-container custom_trasition" style="display: inline-block; border: 1px solid #ccc; padding: 10px; margin-bottom: 1px;">

                                                    <div class="custom_img_for_sider_main_div ">

                                                        <div class="position-relative " style="overflow: hidden;">
                                                            <div class="shine"></div>
                                                            <asp:Image ID="imgLatest" runat="server" src='<%# "Images/Movies/" + Eval("txtPosterImage") %>' class="img img-fluid custom-img-hover-for-index img-custom-for-slider" alt="Alternate Text" />

                                                        </div>

                                                    </div>

                                                    <div class="custom_tittle_for_silder_main_div1" style="width: 130px">
                                                        <span><%#Eval("varMovieName")%></span>
                                                    </div>

                                                    <div class="custom_Release_year_for_silder_main_div1">
                                                        <span>RD <%#Eval("dteReleaseDate","{0:MM-dd-yyyy}")%></span><br />
                                                        <span>Downloads : <%#Eval("intDownloadCounter")%></span><br />
                                                        <span>views : <%#Eval("intViewsCounter")%></span><br />
                                                    </div>

                                                </div>

                                            </a>
                                        </ItemTemplate>

                                    </asp:ListView>
                                </asp:Panel>

                                <asp:Panel ID="pnlAllFirst" runat="server" Visible="true">
                                    <asp:ListView ID="lvAllMoviesFirst" runat="server" DataKeyNames="pkMovieID">
                                        <LayoutTemplate>
                                            <table cellpadding="20" runat="server" cellspacing="50" id="tblProducts">
                                                <tr runat="server" id="groupPlaceholder">
                                                </tr>

                                            </table>
                                        </LayoutTemplate>
                                        <GroupTemplate>
                                            <span class="text-center" runat="server" id="productRow">
                                                <div runat="server" id="itemPlaceHolder"></div>
                                            </span>
                                        </GroupTemplate>
                                        <ItemTemplate>
                                            <!-- post -->
                                            <a href='<%#"MoviesPost.aspx?ID=" + Eval("pkMovieID") + "&Title=" + Eval("varMovieName") %>'>

                                                <div class="img-fluid img-container custom_trasition" style="display: inline-block; border: 1px solid #ccc; padding: 10px; margin-bottom: 1px;">

                                                    <div class="custom_img_for_sider_main_div ">

                                                        <div class="position-relative " style="overflow: hidden;">
                                                            <div class="shine"></div>
                                                            <asp:Image ID="imgLatest" runat="server" src='<%# "Images/Movies/" + Eval("txtPosterImage") %>' class="img img-fluid custom-img-hover-for-index img-custom-for-slider" alt="Alternate Text" />

                                                        </div>

                                                    </div>

                                                    <div class="custom_tittle_for_silder_main_div1" style="width: 130px">
                                                        <span><%#Eval("varMovieName")%></span>
                                                    </div>

                                                    <div class="custom_Release_year_for_silder_main_div1">
                                                        <span>RD <%#Eval("dteReleaseDate","{0:MM-dd-yyyy}")%></span><br />
                                                        <span>Downloads : <%#Eval("intDownloadCounter")%></span><br />
                                                        <span>views : <%#Eval("intViewsCounter")%></span><br />
                                                    </div>

                                                </div>

                                            </a>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </asp:Panel>

                                <!-- end -->
                            </div>

                        </div>

                    </div>

                </div>

                <!-- End -->
                <!-- aside -->
                <!-- start -->

                <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-xs-12 order-md-3 custom-side-fixed-on-scroll order-sm-1 custom-side-fixed-on-scroll">

                    <!-- search -->
                    <!-- start -->
                    <div class="" style="padding: 10px;">

                        <h5 class="text-secondary " style="color: #607D8B !important;">Search</h5>
                        <asp:Panel ID="pnlSearch" runat="server" DefaultButton="kk">
                            <div class="input-group ">
                                <input id="txtSearch" type="text" class="form-control" placeholder="Search" name="txtSearch" runat="server" required />
                                <div class="input-group-btn">
                                    <asp:Button ID="kk" Text="Search" UseSubmitBehavior="false" class="btn btn-success" Style="border-radius: 0px;" runat="server" OnClick="btnSearch_Click" />
                                </div>
                            </div>
                        </asp:Panel>
                        <hr />

                        <h5 class="text-secondary " style="color: #607D8B !important;">Genres</h5>

                        <div class="genres-custom">

                            <div class="list-group">

                            <a href='Hollywood.aspx?Movie=MovieSearch&Title=Action' class="list-group-item list-group-item-action aside-list text-capitalize">
                                Action
                                
                            </a>

                            <a href='Hollywood.aspx?Movie=MovieSearch&Title=Adventure' class="list-group-item list-group-item-action aside-list text-capitalize">
                                Adventure
                                
                            </a>

                            <a href='Hollywood.aspx?MovieMovieSearch&Title=Animation' class="list-group-item list-group-item-action aside-list text-capitalize">
                                Animation
                                
                            </a>

                            <a href='Hollywood.aspx?Movie=MovieSearch&Title=Comedy' class="list-group-item list-group-item-action aside-list text-capitalize">
                                Comedy
                                
                            </a>

                            <a href='Hollywood.aspx?Movie=MovieSearch&Title=Crime' class="list-group-item list-group-item-action aside-list text-capitalize">
                                Crime
                                
                            </a>

                            <a href='Hollywood.aspx?Movie=MovieSearch&Title=Documentary' class="list-group-item list-group-item-action aside-list text-capitalize">
                                Documentary
                                
                            </a>

                            <a href='Hollywood.aspx?Movie=MovieSearch&Title=Family' class="list-group-item list-group-item-action aside-list text-capitalize">
                                Family
                                
                            </a>

                            <a href='Hollywood.aspx?Movie=MovieSearch&Title=Fantasy' class="list-group-item list-group-item-action aside-list text-capitalize">
                                Fantasy
                                
                            </a>

                            <a href='Hollywood.aspx?Movie=MovieSearch&Title=History' class="list-group-item list-group-item-action aside-list text-capitalize">
                                History
                                
                            </a>

                            <a href='Hollywood.aspx?Movie=MovieSearch&Title=Horror' class="list-group-item list-group-item-action aside-list text-capitalize">
                                Horror
                                
                            </a>

                            <a href='Hollywood.aspx?Movie=MovieSearch&Title=Mystery' class="list-group-item list-group-item-action aside-list text-capitalize">
                                Mystery

                                
                            </a>

                            <a href='Hollywood.aspx?Movie=MovieSearch&Title=Romance' class="list-group-item list-group-item-action aside-list text-capitalize">
                                Romance
                                
                            </a>
                            <a href='Hollywood.aspx?Movie=MovieSearch&Title=Science Fiction' class="list-group-item list-group-item-action aside-list text-capitalize">
                                Science Fiction
                                
                            </a>

                        </div>

                        </div>

                        <hr />

                        <h5 class="text-secondary " style="color: #607D8B !important;">Release year</h5>

                        <div class="genres-custom-for-year-realies genres-custom">

                            <div class="  p-4 text-center" style="padding-top: 9px !important;">

                                <asp:ListView ID="lvMovieReleaseDate" runat="server">
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
                                        <a href='<%#"OtherMovies.aspx?SearchBy=" + "Release Date" + "&Date=" + Eval("dteReleaseDate") %>' class="bg-dark  text-white custom-aside-reals-year">
                                            <span><%#Eval("dteReleaseDate")%> </span>
                                        </a>

                                    </ItemTemplate>
                                </asp:ListView>


                            </div>

                        </div>


                        <hr />

                        <h5 class="text-secondary " style="color: #607D8B !important;">Quality</h5>

                        <div class="">

                            <div class="  p-4 text-center" style="padding-top: 9px !important;">
                                <a href="OtherMovies.aspx?SearchBy=HD&Quality=HD" class="bg-primary  text-white custom-aside-reals-year">HD</a>
                                <a href="OtherMovies.aspx?SearchBy=Quality&Quality=Master" class="bg-danger  text-white custom-aside-reals-year">MASTER</a>
                                <a href="OtherMovies.aspx?SearchBy=Quality&Quality=Cam" class="bg-success  text-white custom-aside-reals-year">CAM</a>
                            </div>
                        </div>
                    </div>
                    <!-- end -->
                </div>
                <!-- end -->
            </div>
        </div>
    </asp:Panel>
    <!-- End -->
    <!-- content -->
    <script src='https://cdn.plyr.io/2.0.7/plyr.js'></script>
    <script src="dist/js/video.js"></script>
</asp:Content>

