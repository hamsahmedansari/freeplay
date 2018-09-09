<%@ Page Language="C#" MasterPageFile="~/FreePlay.Master" AutoEventWireup="true" CodeBehind="Dramas.aspx.cs" Inherits="FreePlay.Dramas" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title runat="server" id="txtPageTitle">Dramas</title>
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
            <div class="col-xl-2 col-lg-2 col-md-2 d-none d-lg-block text-center">
                <img src="img/120x600.png" class="img-fluid cuntom-img-for-ads " />
            </div>
            <!-- end -->
            <!-- main-content -->
            <!-- Start -->
            <div class="col-xl-8 col-lg-8 com-md-8 col-sm-12 col-xs-12">
                <div class="container">
                    <!-- main-container-center-ads -->
                    <!-- Start -->
                    <!-- ads top -->
                    <div class="col-xl-12 text-center">
                        <img src="img/720x90.png" class="img-fluid cuntom-img-for-ads-top" alt="Alternate Text" />
                    </div>
                    <!-- Movies -->
                    <!-- Start -->
                    <div class="col-xl-12 mt-2">
                        <hr />
                        <div class="page-header text-center">
                            <h2>Dramas
                            </h2>
                        </div>
                        <hr />
                        <asp:Panel ID="pnlSearch" runat="server" DefaultButton="kk">
                            <div class="input-group ">
                                <input id="txtSearch" type="text" class="form-control" placeholder="Search" name="txtSearch" runat="server" required />
                                <div class="input-group-btn">
                                    <asp:Button ID="kk" Text="Search" UseSubmitBehavior="false" class="btn btn-success" Style="border-radius: 0px;" runat="server" OnClick="btnSearch_Click" />
                                </div>
                            </div>
                        </asp:Panel>
                        <hr />
                        <asp:Panel ID="pnlTv" runat="server">
                            <div class="page-header bg-dark" style="padding: 11px; color: #fff;">
                                <h3>TV
                                </h3>
                            </div>
                            <hr />
                            <div class="movies_main_1 text-center">
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
                                        <a href='<%#"DramaTv.aspx?CID=" + Eval("pkDramaChannelID") + "&TvName=" + Eval("varChannelName") %>'>
                                            <div class="img-fluid img-container" style="display: inline-block; border: 1px solid #ccc; padding: 10px; margin-bottom: 1px;">

                                                <div class="custom_img_for_sider_main_div img-height-for-news-img-tv">
                                                    <%--<img src="img/tv/1.jpg" alt="Alternate Text" class="img-fluid img-custom-for-slider" />--%>
                                                    <asp:Image ID="imgLatest" runat="server" src='<%# "Images/Dramas/" + Eval("txtChannelLogo") %>' class="img img-fluid img-custom-for-slider" alt="Alternate Text" />
                                                </div>
                                                <div class="custom_tittle_for_silder_main_div1 text-center" style="width: 130px; font-size: 19px;">
                                                    <span><%#Eval("varChannelName")%></span>
                                                </div>
                                                <div class="custom_Release_year_for_silder_main_div1">
                                                    <span></span>
                                                    <br />
                                                </div>
                                            </div>
                                        </a>
                                    </ItemTemplate>
                                </asp:ListView>
                                <!-- end -->
                                <!-- post -->
                            </div>
                        </asp:Panel>
                    </div>
                    <!-- End -->
                    <!-- Top Rated -->
                    <!-- Start -->
                    <asp:Panel ID="pnlTopRated" runat="server">
                        <div class="col-xl-12 mt-5">
                            <hr />
                            <div class="page-header bg-dark" style="padding: 11px; color: #fff;">
                                <h3>Top Rated Dramas
                                </h3>
                            </div>
                            <hr />
                            <div class="movies_main text-center">
                                <asp:ListView ID="lvTopRated" runat="server" DataKeyNames="pkDramaID">
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
                                                    <span>Date: <%#Eval("dteDateAdded","{0:MM-dd-yyyy}")%></span><br />
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
                    <!-- Popular -->
                    <!-- Start -->
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
                                                    <span>Date: <%#Eval("dteDateAdded","{0:MM-dd-yyyy}")%></span><br />
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
                                                    <span>Date: <%#Eval("dteDateAdded","{0:MM-dd-yyyy}")%></span><br />
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
            <div class="col-xl-2 col-lg-2 col-md-2 d-none d-lg-block text-center">
                <img src="img/120x600.png" class="img-fluid cuntom-img-for-ads " />
            </div>
            <!-- end -->
        </div>
    </div>
    <div class="custom-side-fixed-on-scroll" style="display: none"></div>
    <!-- End -->
</asp:Content>

