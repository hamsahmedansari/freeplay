<%@ Page Title="" Language="C#" MasterPageFile="~/FreePlay.Master" AutoEventWireup="true" CodeBehind="OnlineGame.aspx.cs" Inherits="FreePlay.OnlineGame" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title runat="server" id="txtPageTitle">Online Games</title>
    <asp:Literal runat="server" ID="txtJSLibrary"></asp:Literal>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- End -->
    <!-- content -->
    <!-- Start -->
    <asp:Panel runat="server" ID="pnlAllGame" Visible="false">
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
                            <hr />
                            <div class="page-header text-center">
                                <h2>Online Games
                                </h2>
                            </div>
                            <hr />
                        </div>
                        <!-- End -->
                        <!-- Popular -->
                        <!-- Start -->
                        <asp:Panel runat="server" ID="pnlPopularGame" Visible="true">
                            <div class="col-xl-12 mt-5">
                                <hr />
                                <div class="page-header bg-dark" style="padding: 11px; color: #fff;">
                                    <h3>Popular
                                    </h3>
                                </div>
                                <hr />
                                <div class="movies_main text-center">
                                    <!-- post -->
                                    <asp:ListView runat="server"
                                        ID="lvPopularGame"
                                        GroupItemCount="10"
                                        DataKeyNames="pkGameID">
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
                                            <a href='<%# "OnlineGame.aspx?ID=" + Eval("pkGameID") + "&Title" + Eval("varTitle") %>' rel="bookmark">
                                                <div class="img-fluid img-container custom_trasition" style="display: inline-block; border: 1px solid #ccc; padding: 10px; margin-bottom: 1px;">
                                                    <div class="custom_img_for_sider_main_div ">
                                                        <div class="position-relative " style="overflow: hidden;">
                                                            <div class="shine"></div>
                                                            <asp:Image runat="server" ImageUrl='<%# "Images/OnlineGame/" + Eval("txtPosterImage") %>' class="img img-fluid custom-img-hover-for-index img-custom-for-slider" alt='<%# Eval("varTitle") %>' />
                                                        </div>
                                                    </div>
                                                    <div class="custom_tittle_for_silder_main_div1" style="width: 130px">
                                                        <span><%# Eval("varTitle") %></span>
                                                    </div>
                                                    <div class="custom_Release_year_for_silder_main_div1">
                                                        <%--<span>PD 1-16-2018</span><br />--%>
                                                        <span>views : <%# Eval("intViewsCounter") %></span><br />
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
                        <asp:Panel runat="server" ID="pnlAllGameView" Visible="true">
                            <div class="col-xl-12 mt-5">
                                <hr />
                                <div class="page-header bg-dark" style="padding: 11px; color: #fff;">
                                    <h3 runat="server" class="d-inline" id="txtAllGameHeading">All Online Games</h3>
                                    <asp:Button runat="server" ID="btnViewAll" Text="View More" class="btn btn-danger float-right d-inline" OnClick="btnViewAll_Click"></asp:Button>
                                </div>
                                <hr />
                                <div class="movies_main text-center">
                                    <!-- post -->
                                    <asp:ListView runat="server"
                                        ID="lvAllGames"
                                        GroupItemCount="10"
                                        DataKeyNames="pkGameID"
                                        OnPagePropertiesChanging="lvAllGames_PagePropertiesChanging">
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
                                            <a href='<%# "OnlineGame.aspx?ID=" + Eval("pkGameID") + "&Title" + Eval("varTitle") %>' rel="bookmark">
                                                <div class="img-fluid img-container custom_trasition" style="display: inline-block; border: 1px solid #ccc; padding: 10px; margin-bottom: 1px;">
                                                    <div class="custom_img_for_sider_main_div ">
                                                        <div class="position-relative " style="overflow: hidden;">
                                                            <div class="shine"></div>
                                                            <asp:Image runat="server" ImageUrl='<%# "Images/OnlineGame/" + Eval("txtPosterImage") %>' class="img img-fluid custom-img-hover-for-index img-custom-for-slider" alt='<%# Eval("varTitle") %>' />
                                                        </div>
                                                    </div>
                                                    <div class="custom_tittle_for_silder_main_div1" style="width: 130px">
                                                        <span><%# Eval("varTitle") %></span>
                                                    </div>
                                                    <div class="custom_Release_year_for_silder_main_div1">
                                                        <%--<span>PD 1-16-2018</span><br />--%>
                                                        <span>views : <%# Eval("intViewsCounter") %></span><br />
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
                        <!-- Top Slider -->
                    </div>
                </div>

                <!-- End -->
                <!-- aside -->
                <!-- start -->

                <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-xs-12 order-md-3  order-sm-1 custom-side-fixed-on-scroll">

                    <!-- search -->
                    <!-- start -->
                    <div class="" style="padding: 10px;">
                        <h5 class="text-secondary " style="color: #607D8B !important;">Search</h5>
                        <div class="input-group ">
                            <asp:TextBox runat="server" ID="txtSearch" type="text" class="form-control" placeholder="Search here"></asp:TextBox>
                            <div class="input-group-btn">
                                <asp:Button runat="server" ID="btnSearch" Text="Search" class="btn btn-success" Style="border-radius: 0px;" OnClick="btnSearch_Click" />
                            </div>
                        </div>
                        <hr />
                        <h5 class="text-secondary " style="color: #607D8B !important;">Year</h5>
                        <div class="genres-custom-for-year-realies genres-custom">
                            <div class="  p-4 text-center" style="padding-top: 9px !important;">
                                <asp:ListView runat="server"
                                    ID="lvGameYearFilter"
                                    GroupItemCount="10">
                                    <LayoutTemplate>
                                        <div runat="server">
                                            <div runat="server" id="groupPlaceholder">
                                            </div>
                                        </div>
                                        <asp:DataPager runat="server" Visible="false" ID="DataPager" PageSize="10">
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
                                        <a href='<%#"OnlineGame.aspx?SearchBy=" + "Year" + "&Date=" + Eval("dteDateAdded") %>' class="bg-dark  text-white custom-aside-reals-year">
                                            <span><%# Eval("dteDateAdded")%> </span>
                                        </a>
                                    </ItemTemplate>
                                </asp:ListView>
                            </div>
                        </div>
                        <hr />
                        <h5 class="text-secondary " style="color: #607D8B !important;">Updated Games</h5>
                        <div style="height: 215px; overflow: hidden; overflow-y: scroll;">
                            <asp:ListView runat="server"
                                ID="lvLatestGame"
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
                                    <table class="table" style="margin: 0 0 10px 0; width: 100%; background: #fff; border: 1px solid #ccc;" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td style="font-family: verdana; font-size: 11px; color: #000; padding: 5px 10px;">
                                                <a href='<%# "OnlineGame.aspx?ID=" + Eval("pkGameID") + "&Title" + Eval("varTitle") %>' rel="bookmark" style="display: block; text-decoration: none;">
                                                    <img src='<%# "Images/OnlineGame/" + Eval("txtPosterImage") %>' width="70" height="59" align="left" style="margin-right: 5px; border: 0;" alt="Games at Miniclip.com - 8 Ball Pool" />
                                                    <a href='<%# "OnlineGame.aspx?ID=" + Eval("pkGameID") + "&Title" + Eval("varTitle") %>' rel="bookmark" style="font-weight: bold; color: #000; border: none; text-decoration: underline;"><%# Eval("varTitle") %></a>
                                                    <p style="margin: 0; clear: none; text-decoration: none; color: #000;">Play <%# Eval("varTitle") %> against other players online!</p>
                                                </a>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                        <hr />
                    </div>
                    <!-- end -->
                </div>
                <!-- end -->
            </div>
        </div>
        <!-- End -->
        <!-- Footer -->
        <!-- Start -->
    </asp:Panel>

    <asp:Panel runat="server" ID="pnlGamePostPage" Visible="true">
        <!-- End -->
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
                    <div class="container">
                        <!-- main-container-center-ads -->
                        <!-- Start -->
                        <!-- ads top -->
                        <div class="col-xl-12 text-center">
                            <img src="img/720x90.png" class="img-fluid cuntom-img-for-ads-top" alt="Alternate Text" />
                        </div>
                        <!-- Place this code where you'd like the game to appear dont forget to add a script on head. Each game may have different script  -->
                        <div class="text-center mt-2">
                            <div class="adding-block-of-code" runat="server" id="txtGameCode">
                                Game Not Available Right Now
                            <%--<div class="miniclip-game-embed embed-responsive embed-responsive-16by9 w-100 mt-3" data-game-name="8-ball-pool-multiplayer" data-theme="5" data-width="1010" data-height="640" data-language="en"></div>--%>
                            </div>
                        </div>
                        <div class="position-relative p-3 mt-3" style="border: 1px solid #ccc;">
                            <div class="row">
                                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col-12">
                                    <asp:Image runat="server" ID="txtPosterImage" ImageUrl="img/online games/8ball.jpg" class="img img-fluid" alt="Alternate Text" />
                                </div>
                                <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9 col-12">
                                    <h3 runat="server" id="txtGameTitle">8 Ball Pool</h3>
                                    <p>Views : <span class="bg-primary p-1 text-white" runat="server" id="txtViews">4</span></p>
                                    <asp:Literal runat="server" ID="txtGameDetail">
                                        Tincidunt integer eu augue augue nunc elit dolor, 
                                        luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, 
                                        vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
                                    </asp:Literal>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End -->
                <!-- aside -->
                <!-- start -->
                <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-xs-12 order-md-3  order-sm-1 custom-side-fixed-on-scroll" style="margin-top: 0px;">
                    <div class="" style="padding: 10px;">
                        <h5 class="text-secondary " style="color: #607D8B !important;">Updated Games</h5>
                        <div style="height: 430px; overflow: hidden; overflow-y: scroll;">
                            <asp:ListView runat="server"
                                ID="lvPostPageLetestGame"
                                GroupItemCount="10"
                                DataKeyNames="pkGameID">
                                <LayoutTemplate>
                                    <div runat="server">
                                        <div runat="server" id="groupPlaceholder">
                                        </div>
                                    </div>
                                    <asp:DataPager runat="server" Visible="false" ID="DataPager" PageSize="20">
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
                                    <table class="table" style="margin: 0 0 10px 0; width: 100%; background: #fff; border: 1px solid #ccc;" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td style="font-family: verdana; font-size: 11px; color: #000; padding: 5px 10px;">
                                                <a href='<%# "OnlineGame.aspx?ID=" + Eval("pkGameID") + "&Title" + Eval("varTitle") %>' rel="bookmark" style="display: block; text-decoration: none;">
                                                    <img src='<%# "Images/OnlineGame/" + Eval("txtPosterImage") %>' width="70" height="59" align="left" style="margin-right: 5px; border: 0;" alt="Games at Miniclip.com - 8 Ball Pool" />
                                                    <a href='<%# "OnlineGame.aspx?ID=" + Eval("pkGameID") + "&Title" + Eval("varTitle") %>' rel="bookmark" style="font-weight: bold; color: #000; border: none; text-decoration: underline;"><%# Eval("varTitle") %></a>
                                                    <p style="margin: 0; clear: none; text-decoration: none; color: #000;">Play <%# Eval("varTitle") %> against other players online!</p>
                                                </a>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                </div>
                <!-- end -->
            </div>
        </div>
        <!-- End -->
        <!-- Footer -->
        <!-- Start -->
    </asp:Panel>
</asp:Content>
