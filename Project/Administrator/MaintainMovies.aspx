<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.Master" AutoEventWireup="true" CodeBehind="MaintainMovies.aspx.cs" Inherits="FreePlay.Administrator.MaintainMovies" ValidateRequest="false"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <title>Movies - Administrator</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="container p-1">
        <!--Grid Start-->
        <div class="table-responsive">
            <div class="" style="overflow: scroll;">
                <asp:GridView CssClass="table" runat="server" AllowPaging="True" AutoGenerateColumns="False" ID="dgvMovies" DataKeyNames="pkMovieID"
                     BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" Font-Size="12px" ForeColor="Black" 
                    GridLines="Vertical" AllowSorting="false" OnPageIndexChanging="dgvMovies_PageIndexChanging" OnRowDataBound="dgvMovies_RowDataBound" OnSelectedIndexChanging="dgvMovies_SelectedIndexChanging">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="pkMovieID" Visible="false" HeaderText="pkMovieID" ReadOnly="true" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnSelect" runat="server" CausesValidation="false"
                                    Text="Select" UseSubmitBehavior="false" CssClass="btn btn-outline-dark" />
                                <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />

                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="varMovieCategory" HeaderText="Category" ReadOnly="true"
                            SortExpression="varMovieCategory" ItemStyle-Width="300px" ItemStyle-Wrap="false" >
                        </asp:BoundField>

                        <asp:BoundField DataField="varMovieName" HeaderText="Name" ReadOnly="true"
                            SortExpression="varMovieName" ItemStyle-Width="250px" ItemStyle-Wrap="false" />

                        <asp:TemplateField HeaderText="Meta Title">
                            <ItemTemplate>
                                <asp:TextBox ID="varMovieMetaTitle" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varMovieMetaTitle") %>' ></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Meta Description">
                            <ItemTemplate>
                                <asp:TextBox ID="varMovieMetaDescription" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varMovieMetaDescription") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Meta KeyWord">
                            <ItemTemplate>
                                <asp:TextBox ID="varMoiveMetaKeyWord" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varMoiveMetaKeyWord") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="varMovieProducer" HeaderText="Producer" ReadOnly="true"
                            SortExpression="varMovieProducer" />

                        <asp:BoundField DataField="varMovieDirector" HeaderText="Director" ReadOnly="true"
                            SortExpression="varMovieDirector" />
                        <asp:BoundField DataField="varMovieCast" HeaderText="Cast" ReadOnly="true"
                            SortExpression="varMovieCast" />
                        <asp:BoundField DataField="varMovieLanguage" HeaderText="Language" ReadOnly="true"
                            SortExpression="varMovieLanguage" />


                        <asp:BoundField DataField="varMovieRating" HeaderText="Rating" ReadOnly="true"
                            SortExpression="varMovieRating" />

                        <asp:BoundField DataField="dteReleaseDate" HeaderText="Release Date" ReadOnly="true"
                            SortExpression="dteReleaseDate" DataFormatString="{0:MM/dd/yyyy}" />

                        <asp:BoundField DataField="varMovieQuality" HeaderText="Movie Quality" ReadOnly="true"
                            SortExpression="varMovieQuality" />

                        <asp:BoundField DataField="varMovieGene" HeaderText="Genere" ReadOnly="true"
                            SortExpression="varMovieGene" />

                        <asp:TemplateField HeaderText="Poster Image">
                            <ItemTemplate>
                                <asp:TextBox ID="txtPosterImage" ReadOnly="true" TextMode="MultiLine"
                                    Rows="3" runat="server" MaxLength="250" Text='<%# Bind("txtPosterImage") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Image1">
                            <ItemTemplate>
                                <asp:TextBox ID="txtImage1" ReadOnly="true" TextMode="MultiLine"
                                    Rows="3" runat="server" MaxLength="250" Text='<%# Bind("txtImage1") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Image2">
                            <ItemTemplate>
                                <asp:TextBox ID="txtImage2" ReadOnly="true" TextMode="MultiLine"
                                    Rows="3" runat="server" MaxLength="250" Text='<%# Bind("txtImage2") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Image3">
                            <ItemTemplate>
                                <asp:TextBox ID="txtImage3" ReadOnly="true" TextMode="MultiLine"
                                    Rows="3" runat="server" MaxLength="250" Text='<%# Bind("txtImage3") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Image4">
                            <ItemTemplate>
                                <asp:TextBox ID="txtImage4" ReadOnly="true" TextMode="MultiLine"
                                    Rows="3" runat="server" MaxLength="250" Text='<%# Bind("txtImage4") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Story Line/Details">
                            <ItemTemplate>
                                <asp:TextBox ID="nvarDetails" ReadOnly="true" TextMode="MultiLine"
                                    Rows="3" runat="server" MaxLength="250" Text='<%# Bind("nvarDetails") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Download/Watch Now Link">
                            <ItemTemplate>
                                <asp:TextBox ID="txtDownloadLink" ReadOnly="true" TextMode="MultiLine"
                                    Rows="3" runat="server" MaxLength="250" Text='<%# Bind("txtDownloadLink") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Trailer Embed Link">
                            <ItemTemplate>
                                <asp:TextBox ID="txtTrailerEmbedLink" ReadOnly="true" TextMode="MultiLine"
                                    Rows="3" runat="server" MaxLength="250" Text='<%# Bind("txtTrailerEmbedLink") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:CommandField ShowSelectButton="true" SelectText="Edit" ButtonType="Button"
                            ControlStyle-CssClass="btn btn-outline-dark">
                            <ControlStyle CssClass="btn btn-outline-dark"></ControlStyle>
                        </asp:CommandField>
                    </Columns>

                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#CCCCCC" Width="5px" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="White" />
                    
                </asp:GridView>
            </div>
        </div>
        <!--Grid End-->
        <!--Add New And Delete Button Section-->
        <div>
            <asp:Button runat="server" CssClass="btn btn-outline-dark float-left"
                ID="btnAddNew" Text="Add New" OnClick="btnAddNew_Click" />
            <asp:Button runat="server" CssClass="btn btn-outline-dark float-right"
                ID="btnDelete" Text="Delete" OnClick="btnDelete_Click" />
        </div>
        <!--Add New And Delete Button Section End....-->
        <!--Form Start-->
        <asp:Panel runat="server" Visible="false" ID="pnlForm">
            <div class="container mt-5 bg-whiteboxshadowed pb-2">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtTitle">Title:</label>
                        <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtRating">Rating:</label>
                        <asp:TextBox ID="txtRating" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3 form-group">
                        <label for="txtMovieCategory">Category:</label>
                        <asp:DropDownList runat="server" ID="txtMovieCategory" CssClass="form-control">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem Value="Bollywood">Bollywood</asp:ListItem>
                            <asp:ListItem Value="Hollywood">Hollywood</asp:ListItem>
                            <asp:ListItem Value="Animated">Animated</asp:ListItem>
                            <asp:ListItem Value="Others">Others</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-sm-3 form-group">
                        <label for="txtReleaseDate">Release Date:</label>
                        <asp:TextBox runat="server" TextMode="Date" ID="txtReleaseDate" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-6 form-group">
                        <label for="txtDetails">Story Line/Details:</label>
                        <asp:TextBox runat="server" TextMode="Multiline" ID="txtDetails" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtMetaTitle">Meta Title:</label>
                        <asp:TextBox runat="server" TextMode="Multiline" Rows="3" ID="txtMetaTitle" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtMetaDescription">Meta Description:</label>
                        <asp:TextBox runat="server" TextMode="Multiline" Rows="3" ID="txtMetaDescription" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtMetaKeyword">Meta Keyword:</label>
                        <asp:TextBox runat="server" TextMode="Multiline" Rows="3" ID="txtMetaKeyword" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtCast">Cast:</label>
                        <asp:TextBox runat="server" TextMode="Multiline" Rows="3" ID="txtCast" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtProducer">Producer:</label>
                        <asp:TextBox runat="server" ID="txtProducer" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtDirector">Director:</label>
                        <asp:TextBox runat="server" ID="txtDirector" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtLanguage">Language(s):</label>
                        <asp:TextBox runat="server" ID="txtLanguage" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtQuality">Quality:</label>
                        <asp:DropDownList runat="server" ID="txtQuality" CssClass="form-control">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem Value="Cam">Cam</asp:ListItem>
                            <asp:ListItem Value="Good Cam">Good Cam</asp:ListItem>
                            <asp:ListItem Value="Master">Master</asp:ListItem>
                            <asp:ListItem Value="HD">HD</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <label for="txtGenre">Genre:</label><br />
                        <asp:ListBox runat="server" Rows="3" ID="txtGenre" SelectionMode="Multiple" CssClass="form-control">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem Value="Action">Action</asp:ListItem>
                            <asp:ListItem Value="Adventure">Adventure</asp:ListItem>
                            <asp:ListItem Value="Animation">Animation</asp:ListItem>
                            <asp:ListItem Value="Comedy">Comedy</asp:ListItem>
                            <asp:ListItem Value="Crime">Crime</asp:ListItem>
                            <asp:ListItem Value="Documentary">Documentary</asp:ListItem>
                            <asp:ListItem Value="Family">Family</asp:ListItem>
                            <asp:ListItem Value="Fantasy">Fantasy</asp:ListItem>
                            <asp:ListItem Value="History">History</asp:ListItem>
                            <asp:ListItem Value="Horror">Horror</asp:ListItem>
                            <asp:ListItem Value="Mystery">Mystery</asp:ListItem>
                            <asp:ListItem Value="Romance">Romance</asp:ListItem>
                            <asp:ListItem Value="Science Fiction">Science Fiction</asp:ListItem>
                        </asp:ListBox>
                    </div>
                    <div class="col-sm-4">
                        <label for="txtDownloadLink">Download/Play Online Link:</label>
                        <asp:TextBox runat="server" TextMode="Multiline" Rows="4" ID="txtDownloadLink" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <label for="txtTrailerLink">Trailer Link:</label>
                        <asp:TextBox runat="server" TextMode="MultiLine" Rows="4" ID="txtTrailerLink" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <label for="txtPosterImage">Poster Image <span class="text-info">(490 x 662)</span></label>
                        <asp:FileUpload ID="FileUploadPosterImage" runat="server" CssClass="form-control" />
                        <asp:HiddenField ID="hfPosterImage" runat="server" />
                        <asp:RegularExpressionValidator ID="RegExValFileUploadFileType" runat="server"
                            ControlToValidate="FileUploadPosterImage" ForeColor="Red"
                            ErrorMessage="*Only .jpg,.png,.jpeg,.gif Files are allowed" Font-Bold="True"
                            Font-Size="Medium"
                            ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="row">

                    <div class="col-sm-3">
                        <label for="txtImage1">Img<span class="text-info">(expect ratio 100 x 100)</span></label>
                        <asp:FileUpload ID="FileUploadImage1" runat="server" CssClass="form-control" />
                         <asp:HiddenField ID="hfImage1" runat="server" />
                    </div>
                    <div class="col-sm-3">
                        <label for="txtImage2">Img<span class="text-info">(expect ratio 100 x 100)</span></label>
                        <asp:FileUpload ID="FileUploadImage2" runat="server" CssClass="form-control" />
                         <asp:HiddenField ID="hfImage2" runat="server" />
                    </div>
                    <div class="col-sm-3">
                        <label for="txtImage3">Img<span class="text-info">(expect ratio 100 x 100)</span></label>
                        <asp:FileUpload ID="FileUploadImage3" runat="server" CssClass="form-control" />
                         <asp:HiddenField ID="hfImage3" runat="server" />
                    </div>
                    <div class="col-sm-3">
                        <label for="txtImage1">Img<span class="text-info">(expect ratio 100 x 100)</span></label>
                        <asp:FileUpload ID="FileUploadImage4" runat="server" CssClass="form-control" />
                         <asp:HiddenField ID="hfImage4" runat="server" />
                    </div>
                </div>
                <p></p>
                <div class="text-center">
                    <asp:Button runat="server" ID="btnCancel" UseSubmitBehavior="false" CausesValidation="false" CssClass="btn btn-outline-dark" Text="Cancel" OnClick="btnCancel_Click" />
                    <asp:Button runat="server" ID="btnSave" CssClass="btn btn-outline-dark ml-3" Text="Save" OnClick="btnSave_Click" />
                    <asp:HiddenField ID="hfMovieID" runat="server" />
                </div>
            </div>
        </asp:Panel>
        <!--Form End-->

        <div class="ResultsMessage">
            <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
        </div>

    </div>
</asp:Content>
