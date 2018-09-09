<%@ Page Language="C#" MasterPageFile="~/FreePlay.Master" AutoEventWireup="true" CodeBehind="CartoonPost.aspx.cs" Inherits="FreePlay.CartoonPost" %>


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

                    <div class="col-xl-12 mt-5">

                        <hr />
                        <div class="page-header bg-dark" style="padding: 11px; color: #fff;">
                            <h3>

                                <span id="txtCartoonName" runat="server">Hay ke Rang</span>
                            </h3>
                        </div>
                        <hr />
                        <div class="row">


                            <div class="col-lg-3 text-center">

                                <asp:Image runat="server" ID="imgPoster" ImageUrl="img/test.jpg" class="img img-fluid" alt="Alternate Text" Style="width: 214px; height: 230px;" />
                            </div>


                            <div class="col-lg-9">
                                <div class="row">
                                    <div class="col-lg-3">

                                        <h5>StoryLine</h5>
                                    </div>
                                    <div class="col-lg-9">

                                        <p id="txtDescription" runat="server">Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.</p>
                                    </div>
                                </div>

                            </div>

                        </div>


                        <asp:Panel ID="pnlAllSecond" runat="server">
                            <div class="col-xl-12 mt-5">

                                <hr />
                                <div class="page-header bg-dark" style="padding: 11px; color: #fff;">
                                    <h3>Episode's</h3>
                                </div>
                                <hr />
                                <div class="movies_main text-center">
                                    <asp:ListView ID="lvAllSecond" runat="server" DataKeyNames="pkEpisodeID">
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
                                            <a href='<%#Eval("txtEpisodeLink") %>'>

                                                <div class="img-fluid img-container custom_trasition" style="display: inline-block; border: 1px solid #ccc; padding: 10px; margin-bottom: 1px;">

                                                    <div class="custom_img_for_sider_main_div ">

                                                        <div class="position-relative " style="overflow: hidden;">
                                                            <div class="shine"></div>
                                                            <asp:Image ID="imgLatest" runat="server" src='<%# "Images/Cartoons/" + Eval("txtPosterImage") %>' class="img img-fluid custom-img-hover-for-index img-custom-for-slider" alt="Alternate Text" />

                                                        </div>

                                                    </div>

                                                    <div class="custom_tittle_for_silder_main_div1" style="width: 130px">
                                                        <span><%#Eval("varEpisodeTitle")%></span>
                                                    </div>
                                                    <div class="custom_Release_year_for_silder_main_div1">
                                                        <span>Date: <%#Eval("dteEpisodeDate","{0:MM-dd-yyyy}")%></span><br />
                                                        <span>views : <%#Eval("intEpisodeViewsCounter")%></span><br />
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
                    <!-- End -->
                </div>
            </div>
            <!-- End -->
            <!-- aside -->
            <!-- start -->
            <div class="ol-xl-2 col-lg-2 col-md-2 d-none d-lg-block text-center order-md-3 ">
                <img src="img/120x600.png" class="img-fluid cuntom-img-for-ads " />
            </div>
            <!-- end -->
        </div>
    </div>


    <!-- End -->

</asp:Content>
