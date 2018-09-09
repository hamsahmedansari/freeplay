<%@ Page Language="C#" MasterPageFile="~/FreePlay.Master" AutoEventWireup="true" CodeBehind="SongsPost.aspx.cs" Inherits="FreePlay.SongsPost" %>

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
    <style>
        .song_name:before {
            content: "\f04b" !important;
            color: #000 !important;
            margin-right: 10px !important;
        }
    </style>
    <script src="dist/js/song-post.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

            <div class="col-xl-9 col-lg-9 com-md-9 col-sm-12 col-xs-12  order-md-2 order-5 ">

                <div class="container">


                    <div class="col-xl-12 mt-3 text-left bg-danger" style="color: #fff; padding: 15px;">
                        <h6>
                            <i class="fa fa-folder-open-o" aria-hidden="true"></i>
                            <span id="txtSongTitle" runat="server"></span>.MP3 - DOWNLOAD SONG FREE TRACKLIST
                        </h6>
                    </div>

                    <div class="row">
                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center">

                            <%--<img src="img/songs/1.jpg" class="img img-fluid img-thumbnail" alt="Alternate Text" />--%>
                            <asp:Image runat="server" ID="ImgPoster" ImageUrl="img/1.jpg" class="img d-inline-block img-fluid img-thumbnail" alt="Alternate Text" />
                        </div>

                        <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-xs-12">
                            <ul class="list-group page-meta-body">
                                <li class="list-group-item">
                                    <div class="col-md-3 col-xs-6  text-left float-left">
                                        Release Date
                                    </div>
                                    <div class="col-md-9 col-xs-6  text-right float-right">
                                        <span id="txtReleaseDate" runat="server"></span>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="col-md-3 col-xs-6 text-left float-left">
                                        Singers
                                    </div>
                                    <div class="col-md-9 col-xs-6 text-right float-right">
                                        <%--<a href="#">--%>
                                        <span id="txtSinger" runat="server"></span>
                                        <%--</a>--%>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="col-md-3 col-xs-6 text-left float-left">
                                        Music Director
                                    </div>
                                    <div class="col-md-9 col-xs-6 text-right float-right">
                                        <%-- <a href="#">--%>
                                        <span id="txtDirector" runat="server"></span>
                                        <%--</a>--%>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="col-md-3 col-xs-6 text-left float-left">
                                        Lyricist
                                    </div>
                                    <div class="col-md-9 col-xs-6 text-right float-right">
                                        <%--<a href="#">--%>
                                        <span id="txtLyricist" runat="server"></span>
                                        <%--</a>--%>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>


                    <div class="col-xl-12 mt-3 text-left bg-danger text-capitalize" style="color: #fff; padding: 15px;">
                        <h6>listen online
                        </h6>
                    </div>
                    <br />
                    <p>
                        <span class="fa fa-pause	"></span>
                        <span class="current_playing_song">Click Song Name to Play Here..</span>
                        <span class="text-info">Playing</span>
                    </p>
                    <audio controls id="player_now_music_audio">
                        <source src="#" type="audio/mp3" />
                    </audio>
                    <hr />

                    <div class="col-xl-12 mt-3 text-left bg-danger text-capitalize" style="color: #fff; padding: 15px;">
                        <h6>Songs
                        </h6>
                    </div>
                    <br />

                    <asp:ListView ID="lvSongs" runat="server" DataKeyNames="pkSID">
                        <LayoutTemplate>
                            <table runat="server" cellpadding="5" cellspacing="5" id="tblProducts">
                                <tr runat="server" id="groupPlaceholder">
                                </tr>
                            </table>
                        </LayoutTemplate>

                        <GroupTemplate>
                            <span class="col-xs-3 custom_po90" runat="server" id="productRow">

                                <div runat="server" id="itemPlaceHolder"></div>
                            </span>
                        </GroupTemplate>
                        <ItemTemplate>
                            <div class="mt-4 mb-3 text-primary p-0" style="cursor: pointer;">
                                <h6 class="row">
                                    <span class="fa fa-play text-capitalize song_name col-lg-4 float-lg-left float-sm-none col-sm-12 text-xl-left text-sm-center text-center text-md-left"><%#Eval("varSongName") %></span>
                                    <br class=" d-xl-none d-sm-block" />
                                    <br class=" d-xl-none d-sm-block" />
                                    <span class="float-lg-right col-lg-8 float-sm-none col-sm-12 text-lg-right text-sm-center text-center">
                                        <a href='<%#Eval("txtOnlinePlayLink120")%>' download class="btn btn-success btn-sm text-white song-128">Download 128kbps</a>
                                        <a href='<%#Eval("txtOnlinePlayLink320") %>' download class="btn btn-primary btn-sm text-white song-320">Download 320kbps</a>
                                    </span>
                                </h6>
                            </div>
                            <hr class="mt-4 custom_hr_for_songs_aspx" />

                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
            <!-- End -->
            <!-- aside -->
            <!-- start -->
            <div class="col-xl-2 col-lg-2 col-md-2 d-none d-lg-block text-center order-md-3 ">

                <img src="img/120x600.png" class="img-fluid cuntom-img-for-ads" />

            </div>
            <!-- end -->
        </div>
    </div>
    <!-- End -->
    <script src='https://cdn.plyr.io/2.0.7/plyr.js'></script>
    <script src="dist/js/video.js"></script>
</asp:Content>

