<%@ Page Language="C#" MasterPageFile="~/FreePlay.Master" AutoEventWireup="true" CodeBehind="Songs.aspx.cs" Inherits="FreePlay.Songs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title runat="server" id="txtPageTitle">Songs</title>
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
            <div class="col-xl-1 col-lg-1 col-md-1 d-none d-lg-block text-center order-md-1 ">

                <img src="img/120x600.png" class="img-fluid cuntom-img-for-ads" />

            </div>

            <!-- end -->
            <!-- main-content -->
            <!-- Start -->

            <div class="col-xl-8 col-lg-8 com-md-8 col-sm-12 col-xs-12  order-md-2 order-5 ">
                <asp:Panel ID="pnlLatest" runat="server">
                    <div class="container">


                        <!-- main-container-center-ads -->
                        <!-- Start -->
                        <!-- ads top -->
                        <div class="col-xl-12 mt-3 text-left bg-danger" style="color: #fff; padding: 15px;">
                            <h6>
                                <i class="fa fa-folder-open-o" aria-hidden="true"></i>
                                LATEST SONGS
                            </h6>
                        </div>
                        <div class="featured-container row">

                            <asp:ListView ID="lvLatestSongs" runat="server" DataKeyNames="pkSongID">
                                <LayoutTemplate>
                                    <table cellpadding="20" runat="server" cellspacing="50" id="tblProducts">
                                        <tr runat="server" id="groupPlaceholder">
                                        </tr>

                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <figure class="text-center col-lg-3 col-md-3 col-sm-3 col-6" runat="server" id="productRow">
                                        <div runat="server" id="itemPlaceHolder"></div>
                                    </figure>
                                </GroupTemplate>
                                <ItemTemplate>

                                    <div class="thumb-image">
                                        <a href='<%#"SongsPost.aspx?ID=" + Eval("pkSongID") + "&Title=" + Eval("varSongName") %>'>
                                            <asp:Image ID="imgLatest" runat="server" src='<%# "Images/Songs/" + Eval("txtSongPosterImage") %>' alt="Alternate Text" />
                                            <span class="name"><%#Eval("varSongName")%></span>
                                        </a>
                                        
                                    </div>

                                </ItemTemplate>
                            </asp:ListView>
                            <!-- end -->
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlHindi" runat="server">
                    <div class="container">


                        <!-- main-container-center-ads -->
                        <!-- Start -->
                        <!-- ads top -->
                        <div class="col-xl-12  text-left bg-danger" style="color: #fff; padding: 15px;">
                            <h6>
                                <i class="fa fa-folder-open-o" aria-hidden="true"></i>
                                FEATURED ALBUMS HINDI
                                <asp:Button ID="btnViewAllHindi" runat="server" class="btn btn-sm btn-success float-right" UseSubmitBehavior="false" Text="View All" OnClick="btnViewAllHindi_Click" />
                            </h6>
                        </div>
                        <div class="featured-container row">
                            <asp:ListView ID="lvHindiSongs" runat="server" DataKeyNames="pkSongID">
                                <LayoutTemplate>
                                    <table cellpadding="20" runat="server" cellspacing="50" id="tblProducts">
                                        <tr runat="server" id="groupPlaceholder">
                                        </tr>

                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <figure class="text-center col-lg-3 col-md-3 col-sm-3 col-6" runat="server" id="productRow">
                                        <div runat="server" id="itemPlaceHolder"></div>
                                    </figure>
                                </GroupTemplate>
                                <ItemTemplate>

                                    <div class="thumb-image">
                                        <a href='<%#"SongsPost.aspx?ID=" + Eval("pkSongID") + "&Title=" + Eval("varSongTitle") %>'>
                                            <asp:Image ID="imgLatest" runat="server" src='<%# "Images/Songs/" + Eval("txtSongPosterImage") %>' alt="Alternate Text" />
                                            <span class="name"><%#Eval("varAlbumName")%></span>
                                        </a>
                                       
                                    </div>

                                </ItemTemplate>
                            </asp:ListView>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </asp:Panel>

                <asp:Panel ID="pnlPakistani" runat="server">
                    <div class="container">


                        <!-- main-container-center-ads -->
                        <!-- Start -->
                        <!-- ads top -->
                        <div class="col-xl-12  text-left  bg-danger" style="color: #fff; padding: 15px;">
                            <h6>
                                <i class="fa fa-folder-open-o" aria-hidden="true"></i>
                                FEATURED ALBUMS PAKISTANI

                           <asp:Button ID="btnViewAllPak" runat="server" class="btn btn-sm btn-success float-right" Text="View All" UseSubmitBehavior="false" OnClick="btnViewAllPak_Click" />
                            </h6>
                        </div>
                        <div class="featured-container row">
                            <asp:ListView ID="lvPakistaniSongs" runat="server" DataKeyNames="pkSongID">
                                <LayoutTemplate>
                                    <table cellpadding="20" runat="server" cellspacing="50" id="tblProducts">
                                        <tr runat="server" id="groupPlaceholder">
                                        </tr>

                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <figure class="text-center col-lg-3 col-md-3 col-sm-3 col-6" runat="server" id="productRow">
                                        <div runat="server" id="itemPlaceHolder"></div>
                                    </figure>
                                </GroupTemplate>
                                <ItemTemplate>

                                    <div class="thumb-image">
                                        <a href='<%#"SongsPost.aspx?ID=" + Eval("pkSongID") + "&Title=" + Eval("varSongTitle") %>'>
                                            <asp:Image ID="imgLatest" runat="server" src='<%# "Images/Songs/" + Eval("txtSongPosterImage") %>' alt="Alternate Text" />
                                            <span class="name"><%#Eval("varAlbumName")%></span>
                                        </a>
                                        
                                    </div>

                                </ItemTemplate>
                            </asp:ListView>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </asp:Panel>

                <asp:Panel ID="pnlEnglish" runat="server">
                    <div class="container">


                        <!-- main-container-center-ads -->
                        <!-- Start -->
                        <!-- ads top -->
                        <div class="col-xl-12  text-left  bg-danger" style="color: #fff; padding: 15px;">
                            <h6>
                                <i class="fa fa-folder-open-o" aria-hidden="true"></i>
                                FEATURED ALBUMS ENGLISH

                            <asp:Button ID="btnViewAllEnglish" runat="server" class="btn btn-sm btn-success float-right" Text="View All" UseSubmitBehavior="false" OnClick="btnViewAllEnglish_Click" />
                            </h6>
                        </div>
                        <div class="featured-container row">
                            <asp:ListView ID="lvEnglishSongs" runat="server" DataKeyNames="pkSongID">
                                <LayoutTemplate>
                                    <table cellpadding="20" runat="server" cellspacing="50" id="tblProducts">
                                        <tr runat="server" id="groupPlaceholder">
                                        </tr>

                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <figure class="text-center col-lg-3 col-md-3 col-sm-3 col-6" runat="server" id="productRow">
                                        <div runat="server" id="itemPlaceHolder"></div>
                                    </figure>
                                </GroupTemplate>
                                <ItemTemplate>

                                    <div class="thumb-image">
                                        <a href='<%#"SongsPost.aspx?ID=" + Eval("pkSongID") + "&Title=" + Eval("varSongTitle") %>'>
                                            <asp:Image ID="imgLatest" runat="server" src='<%# "Images/Songs/" + Eval("txtSongPosterImage") %>' alt="Alternate Text" />
                                            <span class="name"><%#Eval("varAlbumName")%></span>
                                        </a>
                                       
                                    </div>

                                </ItemTemplate>
                            </asp:ListView>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </asp:Panel>

                <asp:Panel ID="pnlOthers" runat="server">
                    <div class="container">


                        <!-- main-container-center-ads -->
                        <!-- Start -->
                        <!-- ads top -->
                        <div class="col-xl-12  text-left  bg-danger" style="color: #fff; padding: 15px;">
                            <h6>
                                <i class="fa fa-folder-open-o" aria-hidden="true"></i>
                                FEATURED ALBUMS OTHER
                            <asp:Button ID="btnViewAllOthers" runat="server" class="btn btn-sm btn-success float-right" Text="View All" UseSubmitBehavior="false" OnClick="btnViewAllOthers_Click" />

                            </h6>
                        </div>
                        <div class="featured-container row">
                            <asp:ListView ID="lvOtherSongs" runat="server" DataKeyNames="pkSongID">
                                <LayoutTemplate>
                                    <table cellpadding="20" runat="server" cellspacing="50" id="tblProducts">
                                        <tr runat="server" id="groupPlaceholder">
                                        </tr>

                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <figure class="text-center col-lg-3 col-md-3 col-sm-3 col-6" runat="server" id="productRow">
                                        <div runat="server" id="itemPlaceHolder"></div>
                                    </figure>
                                </GroupTemplate>
                                <ItemTemplate>

                                    <div class="thumb-image">
                                        <a href='<%#"SongsPost.aspx?ID=" + Eval("pkSongID") + "&Title=" + Eval("varSongTitle") %>'>
                                            <asp:Image ID="imgLatest" runat="server" src='<%# "Images/Songs/" + Eval("txtSongPosterImage") %>' alt="Alternate Text" />
                                            <span class="name"><%#Eval("varAlbumName")%></span>
                                        </a>

                                    </div>

                                </ItemTemplate>
                            </asp:ListView>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnlAllSearch" runat="server" Visible="false">
                    <div class="container">
                        <div class="col-xl-12  text-left  bg-danger" style="color: #fff; padding: 15px;">
                            <h6>
                                <i class="fa fa-folder-open-o" aria-hidden="true"></i>
                                FEATURED ALBUMS <span id="txtAlbumtype" runat="server"></span>
                                <asp:Button ID="btnBack" runat="server" class="btn btn-sm btn-success float-right" Text="Back" UseSubmitBehavior="false" OnClick="btnBack_Click" />

                            </h6>
                        </div>
                        <div class="featured-container row">
                            <asp:ListView ID="lvAllSongs" runat="server" DataKeyNames="pkSongID" OnPagePropertiesChanging="lvAllSongs_PagePropertiesChanging">
                                <LayoutTemplate>
                                    <table cellpadding="20" runat="server" cellspacing="50" id="tblProducts">
                                        <tr runat="server" id="groupPlaceholder">
                                        </tr>

                                    </table>
                                    <asp:DataPager runat="server" ID="DataPager" PageSize="30">
                                        <Fields>
                                            <asp:NextPreviousPagerField
                                                NextPageText="<span class='fa fa-arrow-circle-o-right'></span>" PreviousPageText="<span class='fa fa-arrow-circle-o-left'></span>" />
                                        </Fields>
                                    </asp:DataPager>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <figure class="text-center col-lg-3 col-md-3 col-sm-3 col-6" runat="server" id="productRow">
                                        <div runat="server" id="itemPlaceHolder"></div>
                                    </figure>
                                </GroupTemplate>
                                <ItemTemplate>

                                    <div class="thumb-image">
                                        <a href='<%#"SongsPost.aspx?ID=" + Eval("pkSongID") + "&Title=" + Eval("varSongTitle") %>'>
                                            <asp:Image ID="imgLatest" runat="server" src='<%# "Images/Songs/" + Eval("txtSongPosterImage") %>' alt="Alternate Text" />
                                            <span class="name"><%#Eval("varAlbumName")%></span>
                                        </a>

                                    </div>

                                </ItemTemplate>

                            </asp:ListView>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </asp:Panel>
            </div>

            <!-- End -->
            <!-- aside -->
            <!-- start -->

            <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-xs-12 order-md-3 custom-side-fixed-on-scroll order-sm-1">

                <!-- search -->
                <!-- start -->
                <div class="" style="padding: 10px;">

                    <h5 class="text-secondary " style="color: #607D8B !important;">Search</h5>
                    <asp:Panel ID="pnlSearch" runat="server" DefaultButton="kk">
                        <div class="input-group ">
                            <input id="txtSearch" type="text" class="form-control" placeholder="Search by Album" name="txtSearch" runat="server" required />
                            <div class="input-group-btn">
                                <asp:Button ID="kk" Text="Search" UseSubmitBehavior="false" class="btn btn-success" Style="border-radius: 0px;" runat="server" OnClick="btnSearch_Click" />
                            </div>
                        </div>
                    </asp:Panel>
                    <hr />

                    <h5 class="text-secondary " style="color: #607D8B !important;">CATEGORIES</h5>

                    <div class="genres-custom">

                        <div class="list-group">
                            <asp:ListView ID="lvSongCategories" runat="server">
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
                                    <a href='<%#"Songs.aspx?Song=" + "SongSearch" + "&Category=" + Eval("varSongCategory") %>' class="list-group-item list-group-item-action aside-list text-capitalize">
                                        <span><%#Eval("varSongCategory")%> </span><span>Songs</span>
                                        <span class="badge bg-info text-white float-right custom_briage_for_aside"><%#Eval("NoOfSongs")%></span>
                                    </a>

                                </ItemTemplate>
                            </asp:ListView>


                        </div>

                    </div>

                    <hr />

                    <h5 class="text-secondary " style="color: #607D8B !important;">Release year</h5>

                    <div class="genres-custom-for-year-realies genres-custom">

                        <div class="  p-4 text-center" style="padding-top: 9px !important;">

                            <asp:ListView ID="lvSongReleaseDate" runat="server">
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
                                    <a href='<%#"Songs.aspx?SearchBy=" + "Release Date" + "&Date=" + Eval("dteSongReleaseDate") %>' class="bg-dark  text-white custom-aside-reals-year">
                                        <span><%#Eval("dteSongReleaseDate")%> </span>
                                    </a>

                                </ItemTemplate>
                            </asp:ListView>

                        </div>

                    </div>

                </div>

                <!-- end -->
            </div>

            <!-- end -->

        </div>

    </div>


    <!-- End -->
</asp:Content>

