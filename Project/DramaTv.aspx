﻿<%@ Page Language="C#" MasterPageFile="~/FreePlay.Master" AutoEventWireup="true" CodeBehind="DramaTv.aspx.cs" Inherits="FreePlay.DramaTv" %>

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
    <!-- End -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-1 col-lg-1 col-md-1 d-none d-lg-block text-center order-md-1 ">
                <img src="img/120x600.png" class="img-fluid cuntom-img-for-ads " />
            </div>

            <!-- main-content -->
            <!-- Start -->
            <div class="col-xl-8 col-lg-8 com-md-8 col-sm-12 col-xs-12  order-md-2 order-5 ">
                <div class="container">
                    <div class="col-xl-12 text-center">
                        <img src="img/720x90.png" class="img-fluid cuntom-img-for-ads-top" alt="Alternate Text" />
                    </div>
                    <asp:Panel ID="pnlLatest" runat="server">
                        <div class="col-xl-12 mt-5">
                            <hr />
                            <div class="page-header bg-dark" style="padding: 11px; color: #fff;">
                                <h3>Latest Dramas
                                </h3>
                            </div>
                            <hr />
                            <div class="movies_main text-center">
                                <asp:ListView ID="lvLatest" runat="server" DataKeyNames="pkDramaID">
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
                                        <a href='<%#"DramasPost.aspx?fID=" + Eval("pkDramaID") + "&Title=" + Eval("varDramaName") %>'>
                                            <div class="img-fluid img-container custom_trasition" style="display: inline-block; border: 1px solid #ccc; padding: 10px; margin-bottom: 1px;">
                                                <div class="custom_img_for_sider_main_div ">
                                                    <div class="position-relative " style="overflow: hidden;">
                                                        <div class="shine"></div>
                                                        <asp:Image ID="imgLatest" runat="server" src='<%# "Images/Dramas/" + Eval("txtDramaImage") %>' class="img img-fluid custom-img-hover-for-index img-custom-for-slider" alt="Alternate Text" />
                                                    </div>
                                                </div>
                                                <div class="custom_tittle_for_silder_main_div1" style="width: 130px">
                                                    <span><%#Eval("varDramaName")%></span>
                                                </div>
                                                <div class="custom_Release_year_for_silder_main_div1">
                                                    <span>Date: <%#Eval("dteReleaseDate","{0:MM-dd-yyyy}")%></span><br />
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

                    <asp:Panel ID="pnlAllFirst" runat="server">
                        <div class="col-xl-12 mt-5">

                            <hr />
                            <div class="page-header bg-dark" style="padding: 11px; color: #fff;">
                                <h3>All Dramas
                                    <asp:Button ID="btnViewAll" runat="server" class="btn btn-danger float-right" UseSubmitBehavior="false" Text="View More" OnClick="btnViewAll_Click" />
                                </h3>
                            </div>
                            <hr />
                            <div class="movies_main text-center">
                                <asp:ListView ID="lvAllFirst" runat="server" DataKeyNames="pkDramaID">
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
                                        <a href='<%#"DramasPost.aspx?fID=" + Eval("pkDramaID") + "&Title=" + Eval("varDramaName") %>'>

                                            <div class="img-fluid img-container custom_trasition" style="display: inline-block; border: 1px solid #ccc; padding: 10px; margin-bottom: 1px;">

                                                <div class="custom_img_for_sider_main_div ">

                                                    <div class="position-relative " style="overflow: hidden;">
                                                        <div class="shine"></div>
                                                        <asp:Image ID="imgLatest" runat="server" src='<%# "Images/Dramas/" + Eval("txtDramaImage") %>' class="img img-fluid custom-img-hover-for-index img-custom-for-slider" alt="Alternate Text" />
                                                    </div>
                                                </div>
                                                <div class="custom_tittle_for_silder_main_div1" style="width: 130px">
                                                    <span><%#Eval("varDramaName")%></span>
                                                </div>
                                                <div class="custom_Release_year_for_silder_main_div1">
                                                    <span>Date: <%#Eval("dteReleaseDate","{0:MM-dd-yyyy}")%></span><br />
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
                    <asp:Panel ID="pnlAllSecond" runat="server" Visible="false">
                        <div class="col-xl-12 mt-5">
                            <hr />
                            <div class="page-header bg-dark" style="padding: 11px; color: #fff;">
                                <h3>All Dramas
                                    <asp:Button ID="btnBack" runat="server" class="btn btn-danger float-right" UseSubmitBehavior="false" Text="Back" OnClick="btnBack_Click" />
                                </h3>
                            </div>
                            <hr />
                            <div class="movies_main text-center">
                                <asp:ListView ID="lvAllSecond" runat="server" DataKeyNames="pkDramaID" OnPagePropertiesChanging="lvAllSecond_PagePropertiesChanging">
                                    <LayoutTemplate>
                                        <table cellpadding="20" runat="server" cellspacing="50" id="tblProducts">
                                            <tr runat="server" id="groupPlaceholder">
                                            </tr>

                                        </table>
                                        <asp:DataPager runat="server" ID="DataPager" PageSize="30">
                                            <Fields>
                                                <asp:NextPreviousPagerField
                                                    PreviousPageText="<span class='fa fa-arrow-circle-o-left'></span>"
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
                                        <a href='<%#"DramasPost.aspx?fID=" + Eval("pkDramaID") + "&Title=" + Eval("varDramaName") %>'>

                                            <div class="img-fluid img-container custom_trasition" style="display: inline-block; border: 1px solid #ccc; padding: 10px; margin-bottom: 1px;">

                                                <div class="custom_img_for_sider_main_div ">

                                                    <div class="position-relative " style="overflow: hidden;">
                                                        <div class="shine"></div>
                                                        <asp:Image ID="imgLatest" runat="server" src='<%# "Images/Dramas/" + Eval("txtDramaImage") %>' class="img img-fluid custom-img-hover-for-index img-custom-for-slider" alt="Alternate Text" />
                                                    </div>
                                                </div>
                                                <div class="custom_tittle_for_silder_main_div1" style="width: 130px">
                                                    <span><%#Eval("varDramaName")%></span>
                                                </div>
                                                <div class="custom_Release_year_for_silder_main_div1">
                                                    <span>Date: <%#Eval("dteReleaseDate","{0:MM-dd-yyyy}")%></span><br />
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
                </div>
            </div>
            <!-- End -->
            <!-- aside -->
            <!-- start -->


            <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-xs-12 order-md-3  order-sm-1 custom-side-for-drama-tv custom-side-fixed-on-scroll">

                <!-- search -->
                <!-- start -->
                <div class="" style="padding: 10px;">
                    <hr />
                    <asp:Panel ID="pnlSearch" runat="server" DefaultButton="kk">
                        <div class="input-group ">
                            <input id="txtSearch" type="text" class="form-control" placeholder="Search by Drama Name" name="txtSearch" runat="server" required />
                            <div class="input-group-btn">
                                <asp:Button ID="kk" Text="Search" UseSubmitBehavior="false" class="btn btn-success" Style="border-radius: 0px;" runat="server" OnClick="btnSearch_Click" />
                            </div>
                        </div>
                    </asp:Panel>
                    <hr />

                    <h5 class="text-secondary " style="color: #607D8B !important;">TV</h5>

                    <div class="text-center">

                        <asp:ListView ID="lvTv" runat="server" DataKeyNames="pkDramaChannelID">
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
                                <a href='<%#"DramaTv.aspx?fID=" + Eval("pkDramaChannelID") + "&TvName=" + Eval("varChannelName") %>'>
                                    <asp:Image ID="imgTv" runat="server" src='<%# "Images/Dramas/" + Eval("txtChannelLogo") %>' class="img img-fluid cuntom-img-for-tv-aside" Style="width: 100%; max-width: 80px" alt="Alternate Text" />
                                </a>
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                    <hr />
                    <h5 class="text-secondary " style="color: #607D8B !important;">Release year</h5>
                    <div class="genres-custom-for-year-realies genres-custom" style="height: 90px !important;">

                        <div class="  p-4 text-center" style="padding-top: 9px !important;">

                            <asp:ListView ID="lvDramaReleaseDate" runat="server">
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
                                    <a href='<%#"DramaTv.aspx?SearchBy=" + "Release Date" + "&Date=" + Eval("dteReleaseDate") %>' class="bg-dark  text-white custom-aside-reals-year">
                                        <span><%#Eval("dteReleaseDate")%> </span>
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
</asp:Content>

