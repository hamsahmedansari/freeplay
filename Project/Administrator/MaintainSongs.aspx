<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.Master" AutoEventWireup="true" CodeBehind="MaintainSongs.aspx.cs" Inherits="FreePlay.Administrator.MaintainSongs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <title>Maintain Songs</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container-fluid p-2">
        <!--Grid Start-->
        <div class="table-responsive">
            <div class="div" style="overflow: scroll">
                <asp:GridView runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="pkSongID,pkSID"
                    GridLines="Vertical" ID="dgvSongs" CellPadding="3" ForeColor="Black" OnPageIndexChanging="dgvSongs_PageIndexChanging"
                     OnRowDataBound="dgvSongs_RowDataBound" OnSelectedIndexChanging="dgvSongs_SelectedIndexChanging"
                      OnRowCommand="dgvSongs_RowCommand" BackColor="White"
                     BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="pkSongID"  HeaderText="pkSongID" ItemStyle-CssClass="d-none"  HeaderStyle-CssClass="d-none" />
                         <asp:BoundField DataField="pkSID" HeaderText="pkSID" ItemStyle-CssClass="d-none"  HeaderStyle-CssClass="d-none" />  
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnSelect" runat="server" CausesValidation="false"
                                    Text="Select" UseSubmitBehavior="false" CssClass="btn btn-outline-dark" />
                                <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />

                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="varSongCategory" HeaderText="Category" ReadOnly="true"
                            SortExpression="varSongCategory" ItemStyle-Width="300px" ItemStyle-Wrap="false">
                            <ItemStyle Wrap="False" Width="300px"></ItemStyle>
                        </asp:BoundField>

                        <asp:BoundField DataField="varSongTitle" HeaderText="Title" ReadOnly="true"
                            SortExpression="varSongTitle" ItemStyle-Width="250px" ItemStyle-Wrap="false">

                            <ItemStyle Wrap="False" Width="250px"></ItemStyle>
                        </asp:BoundField>

                         <asp:TemplateField HeaderText="Album Name">
                            <ItemTemplate>
                                <asp:TextBox ID="varAlbumName" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varAlbumName") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Meta Title">
                            <ItemTemplate>
                                <asp:TextBox ID="varSongMetaTitle" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varSongMetaTitle") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Meta Keyword">
                            <ItemTemplate>
                                <asp:TextBox ID="varSongsMetaKeyWords" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varMetaKeyWords") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Meta Description">
                            <ItemTemplate>
                                <asp:TextBox ID="varSongsMetaDescription" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varMetaDescription") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="varMusicDirector" HeaderText="Director" ReadOnly="true"
                            SortExpression="varMusicDirector" />

                        <asp:BoundField DataField="varMusicLyricist" HeaderText="Lyricist" ReadOnly="true"
                            SortExpression="varMusicLyricist" />
                        <asp:BoundField DataField="varSinger" HeaderText="Cast" ReadOnly="true"
                            SortExpression="varSinger" />                      
                      
                        <asp:TemplateField HeaderText="PosterImage">
                            <ItemTemplate>
                                <asp:TextBox ID="txtSongPosterImage" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="250" Text='<%# Bind("txtSongPosterImage") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="dteSongReleaseDate" HeaderText="Song Release Date" ReadOnly="true"
                            SortExpression="dteSongReleaseDate" DataFormatString="{0:MM/dd/yyyy}" />
                         
                        <asp:TemplateField HeaderText="Song Name ">
                            <ItemTemplate>
                                <asp:TextBox ID="varSongName" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varSongName") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Download Link 320 ">
                            <ItemTemplate>
                                <asp:TextBox ID="txtOnlinePlayLink320" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("txtOnlinePlayLink320") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Download Link 120 ">
                            <ItemTemplate>
                                <asp:TextBox ID="txtOnlinePlayLink120" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("txtOnlinePlayLink120") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                         <%--<asp:CommandField ShowSelectButton="true" SelectText="Edit" ButtonType="Button"
                            ControlStyle-CssClass="btn btn-outline-dark">
                            <ControlStyle CssClass="btn btn-outline-dark"></ControlStyle>
                        </asp:CommandField>--%>
                        <asp:ButtonField ButtonType="Link" Text="Edit Album" CommandName="Album" ControlStyle-CssClass="btn btn-danger" />
                    <asp:ButtonField ButtonType="Link" Text="Edit Song" CommandName="Song" ControlStyle-BorderStyle="Ridge" ControlStyle-CssClass="btn btn-danger"  />
   
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </div>
        </div>
        <!--Grid End-->
        <!--Add New And Delete Button Section-->
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <asp:Button runat="server" CssClass="btn btn-outline-dark"
                        ID="btnAddNew" Text="Add Album" OnClick="btnAddNew_Click" />
                </div>
                 <div class="col-sm-2">
                    <asp:Button runat="server" CssClass="btn btn-outline-dark"
                        ID="btnAddSong" Text="Add Song" OnClick="btnAddSong_Click" />
                </div>
                <div class="col-sm-6">
                    <p></p>
                </div>
                <div class="col-2">
                    <asp:Button runat="server" CssClass="btn btn-outline-dark"
                        ID="btnDelete" Text="Delete" OnClick="btnDelete_Click" />
                </div>
            </div>
        </div>
        <!--Add New And Delete Button Section End....-->
        <!--Form Start-->
        <asp:Panel runat="server" ID="pnlAddAlbum" Visible="false">
            <div class="container mt-5 bg-yellowboxshadowed pb-2 p-3">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtSongCategory">Song Category:</label>
                        <asp:DropDownList ID="txtSongCategory" runat="server" CssClass="form-control">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem Value="Pakistani">Pakistani</asp:ListItem>
                            <asp:ListItem Value="Indian">Indian</asp:ListItem>
                            <asp:ListItem Value="English">English</asp:ListItem>
                            <asp:ListItem Value="Others">Others</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtSongTitle">Album Title:</label>
                        <asp:TextBox runat="server" ID="txtSongTitle" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtMetaTitle">Meta Title:</label>
                        <asp:TextBox runat="server" ID="txtMetaTitle" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtMetaKeyword">Meta Keyword:</label>
                        <asp:TextBox runat="server" ID="txtMetaKeyword" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtMetaDescription">Meta Description:</label>
                        <asp:TextBox ID="txtMetaDescription" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtDirector">Music Director:</label>
                        <asp:TextBox runat="server" ID="txtDirector" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtLyricist">Music Lyricist:</label>
                        <asp:TextBox runat="server" ID="txtLyricist" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtSinger">Singer(s):<span class="text-info">(Comma Separated)</span></label>
                        <asp:TextBox runat="server" ID="txtSinger" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

              
                <div class="row">
                    <div class="col-sm-3">
                        <label for="txtPosterImage">Poster Image:<span class="text-info">(250 X 250 Pixels)</span></label>
                        <asp:HiddenField runat="server" ID="hfPosterImage" />
                        <br />
                        <asp:FileUpload runat="server" ID="txtPosterImage" />
                        <asp:RegularExpressionValidator runat="server" ID="ReGexValidator1"
                            ControlToValidate="txtPosterImage" ErrorMessage="Error: *Only .jpg, .png, .jpeg, .gif Files are allowed"
                            ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"
                            Font-Bold="true" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
                    </div>
                    <div class="col-sm-3">
                        <label for="txtReleaseDate">Release Date:</label>
                        <asp:TextBox runat="server" TextMode="Date" ID="txtReleaseDate" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtAlbumName">Album Name:</label>
                        <asp:TextBox runat="server" ID="txtAlbumName" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <asp:Button runat="server" ID="btnSave" CssClass="btn btn-outline-dark" Text="Save" OnClick="btnSave_Click" />
                        <asp:Button runat="server" ID="btnCancel" OnClick="btnCancel_Click" CssClass="btn btn-outline-dark" Text="Cancel" />
                    </div>
                </div>
            </div>
            <asp:HiddenField runat="server" ID="hfSongsID" />
        </asp:Panel>
        <asp:Panel ID="pnlAddSong" runat="server" Visible="false">
             <div class="container mt-5 bg-yellowboxshadowed pb-2 p-3">
                 <div class="row">
                    <div class="col-sm-6">
                        <label for="txtSongAlbum">Song Album:</label>
                        <asp:DropDownList ID="txtSelectAlbum" runat="server" CssClass="form-control">
                           <%-- <asp:ListItem Value="0">Select</asp:ListItem>--%>
                        </asp:DropDownList>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtSongTitle">Song Title:</label>
                        <asp:TextBox runat="server" ID="txtSongName" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>   
                   <div class="row">
                    <div class="col-sm-6">
                        <label for="txtPlayLink320">Online Play Link:<span class="text-info">(320-Kbps)</span></label>
                        <asp:TextBox runat="server" ID="txtPlayLink320" CssClass="form-control" TextMode="MultiLine" type="audio/mpeg"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtPlayLink120">Online Play Link:<span class="text-info">(120-Kbps)</span></label>
                        <asp:TextBox runat="server" ID="txtPlayLink120" CssClass="form-control" TextMode="MultiLine" type="audio/mpeg"></asp:TextBox>
                    </div>
                </div>
                 <p></p>
                  <div class="row">
                    
                      <div class="col-sm-12 text-center">
                        <asp:Button runat="server" ID="btnSaveSong" CssClass="btn btn-outline-dark" Text="Save" OnClick="btnSaveSong_Click" />
                        <asp:Button runat="server" ID="btnCancelSong" OnClick="btnCancelSong_Click" CssClass="btn btn-outline-dark" Text="Cancel" />
                    </div>
                </div>
                 <asp:HiddenField runat="server" ID="hfSID" />
             </div>
        </asp:Panel>
        <!--Form End-->
        <div class="ResultsMessage">
            <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
        </div>
    </div>
</asp:Content>
