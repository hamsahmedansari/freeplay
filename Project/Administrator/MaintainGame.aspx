<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.Master" AutoEventWireup="true" CodeBehind="MaintainGame.aspx.cs" Inherits="FreePlay.Administrator.MaintainGame" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <title>Maintain Game</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container-fluid p-2">
        <!--Grid Start-->
        <div class="table-responsive">
            <div style="overflow: scroll;">
                <asp:GridView runat="server"
                    ID="dgvGame"
                    AllowPaging="True"
                    AutoGenerateColumns="false"
                    DataKeyNames="pkGameID"
                    GridLines="Vertical" 
                    OnPageIndexChanging="dgvGame_PageIndexChanging"
                    OnRowDataBound="dgvGame_RowDataBound"
                    OnSelectedIndexChanging="dgvGame_SelectedIndexChanging" 
                    BackColor="White" 
                    BorderColor="#999999" 
                    BorderStyle="Solid" 
                    BorderWidth="1px" 
                    CellPadding="3" 
                    ForeColor="Black">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="pkGameID" Visible="false" HeaderText="pkGameID" ReadOnly="true" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnSelect" runat="server" CausesValidation="false"
                                    Text="Select" UseSubmitBehavior="false" CssClass="btn btn-outline-dark" />
                                <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--Game Title--%>
                        <asp:BoundField DataField="varGameTitle" HeaderText="Game Name"
                            ReadOnly="true" SortExpression="varGameTitle" />
                        <asp:TemplateField HeaderText="Meta Title">
                            <ItemTemplate>
                                <asp:TextBox runat="server" ID="varMetaTitle"
                                    Text='<%# Eval("varMetaTitle") %>'
                                    TextMode="MultiLine" ReadOnly="true" Rows="3"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--Meta Description--%>
                        <asp:TemplateField HeaderText="Meta Description">
                            <ItemTemplate>
                                <asp:TextBox runat="server" ID="varMetaDescription"
                                    Text='<%# Eval("varMetaDescription") %>'
                                    TextMode="MultiLine" Rows="3" ReadOnly="true"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--<!--Meta Keyword-->--%>
                        <asp:TemplateField HeaderText="Meta Keyword">
                            <ItemTemplate>
                                <asp:TextBox runat="server" ID="varMetaKeyWord"
                                    Text='<%# Eval("varMetaKeyWord") %>'
                                    TextMode="MultiLine" Rows="3" ReadOnly="true"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--Release Date--%>
                        <asp:BoundField DataField="ReleaseDate" HeaderText="Release Date"
                            SortExpression="ReleaseDate" ReadOnly="true" />
                        <%--System Requirements--%>
                        <asp:TemplateField HeaderText="System Requirements">
                            <ItemTemplate>
                                <asp:TextBox runat="server" ID="varSystemRequirements"
                                    Text='<%# Eval("varSystemRequirements") %>'
                                    ReadOnly="true" Rows="3" TextMode="MultiLine"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--Overview--%>
                        <asp:TemplateField HeaderText="Overview">
                            <ItemTemplate>
                                <asp:TextBox runat="server" ID="varOverview"
                                    Text='<%# Eval("varOverview") %>'
                                    ReadOnly="true" Rows="3" TextMode="MultiLine"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--Features--%>
                        <asp:TemplateField HeaderText="Features">
                            <ItemTemplate>
                                <asp:TextBox runat="server" ID="varFeatures"
                                    Text='<%# Eval("varFeatures") %>'
                                    ReadOnly="true" Rows="3" TextMode="MultiLine"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--<!--Poster Image-->--%>
                        <asp:TemplateField HeaderText="Poster Image">
                            <ItemTemplate>
                                <asp:TextBox runat="server" ID="txtImage1"
                                    Text='<%# Eval("txtImage1") %>'
                                    ReadOnly="true" Rows="3" TextMode="MultiLine"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--Image 2--%>
                        <asp:TemplateField HeaderText="Image 2">
                            <ItemTemplate>
                                <asp:TextBox runat="server" ID="txtImage2"
                                    Text='<%# Eval("txtImage2") %>'
                                    ReadOnly="true" Rows="3" TextMode="MultiLine"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--<!--Image 3-->--%>
                        <asp:TemplateField HeaderText="Image 3">
                            <ItemTemplate>
                                <asp:TextBox runat="server" ID="txtImage3"
                                    Text='<%# Eval("txtImage3") %>'
                                    ReadOnly="true" Rows="3" TextMode="MultiLine"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--<!--Image 4-->--%>
                        <asp:TemplateField HeaderText="Image 4">
                            <ItemTemplate>
                                <asp:TextBox runat="server" ID="txtImage4"
                                    Text='<%# Eval("txtImage4") %>'
                                    ReadOnly="true" Rows="3" TextMode="MultiLine"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--<!--Download Link-->--%>
                        <asp:TemplateField HeaderText="Download Link">
                            <ItemTemplate>
                                <asp:TextBox runat="server" ID="txtDownloadLink"
                                    Text='<%# Eval("txtDownloadLink") %>'
                                    ReadOnly="true" Rows="3" TextMode="MultiLine"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--<!--Trailer Link-->--%>
                        <asp:TemplateField HeaderText="Trailer Link">
                            <ItemTemplate>
                                <asp:TextBox runat="server" ID="txtTrailerLink"
                                    Text='<%# Eval("txtTrailerLink") %>' placeholder="Trailer Link"
                                    ReadOnly="true" Rows="3" TextMode="MultiLine"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--<!--Downloads-->--%>
                        <asp:BoundField HeaderText="Downloads" DataField="intDownloadsCounter"
                            SortExpression="intDownloadsCounter" ReadOnly="true" />
                        <%--<!--Views-->--%>
                        <asp:BoundField HeaderText="Views" DataField="intViewsCounter"
                            SortExpression="intViewsCounter" ReadOnly="true" />
                        <asp:CommandField ShowSelectButton="true" SelectText="Edit" ButtonType="Button"
                            ControlStyle-CssClass="btn btn-outline-dark">
                            <ControlStyle CssClass="btn btn-outline-dark"></ControlStyle>
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Left" />
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
                        ID="btnAddNew" Text="Add New" OnClick="btnAddNew_Click" />
                </div>
                <div class="col-sm-8">
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
        <asp:Panel runat="server" ID="pnlGameForm" Visible="false">
            <div class="container mt-5 bg-greenboxshadowed pb-2 p-3">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtGameTitle">Game Title:</label>
                        <asp:TextBox runat="server" ID="txtGameTitle" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtMetaTitle">Meta Title:</label>
                        <asp:TextBox runat="server" ID="txtMetaTitle" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtMetaDescription">Meta Description:</label>
                        <asp:TextBox runat="server" ID="txtMetaDescription" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtMetaKeyword">Meta Keyword:</label>
                        <asp:TextBox runat="server" ID="txtMetaKeyword" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtReleaseDate">Release Date:</label>
                        <asp:TextBox runat="server" ID="txtReleaseDate" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtSystemRequirements">System Requirements:</label>
                        <asp:TextBox runat="server" ID="txtSystemRequirements" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtOverview">Overview:</label>
                        <asp:TextBox runat="server" ID="txtOverview" CssClass="form-control" TextMode="MultiLine">
                        </asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtFeatures">Features:</label>
                        <asp:TextBox runat="server" ID="txtFeatures" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtDownloadLink">Download Link:</label>
                        <asp:TextBox runat="server" ID="txtDownloadLink" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtTrailerLink">Trailer Link:</label>
                        <asp:TextBox runat="server" ID="txtTrailerLink" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3">
                        <label for="txtPosterImage">Poster Image:<span class="text-info">(640 X 936)</span></label>
                        <asp:FileUpload ID="txtPosterImage" runat="server" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="txtPosterImage" ForeColor="Red"
                            ErrorMessage="*Only s" Font-Bold="True"
                            Font-Size="Medium"
                            ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                        <asp:HiddenField ID="hfPosterImage" runat="server" />
                    </div>
                    <div class="col-sm-3">
                        <label for="txtImage2">Image 2:</label>
                        <asp:FileUpload ID="txtImage2" runat="server" />
                        <asp:RegularExpressionValidator ID="ReGexValidator2" runat="server"
                            ControlToValidate="txtImage2" ForeColor="Red"
                            ErrorMessage="*Only .jpg, .png, .jpeg, .gif, .Files are Allowed" Font-Bold="true"
                            Font-Size="Medium"
                            ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                        <asp:HiddenField ID="hfImage2" runat="server" />
                    </div>
                    <div class="col-sm-3">
                        <label for="txtImage3">Image 3:</label>
                        <asp:FileUpload ID="txtImage3" runat="server" />
                        <asp:RegularExpressionValidator ID="ReGexValidator3" runat="server"
                            ControlToValidate="txtImage3" ForeColor="Red"
                            ErrorMessage="*Only .jpg, .png, .jpeg, .gif, .Files are Allowed" Font-Bold="true"
                            Font-Size="Medium"
                            ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                        <asp:HiddenField ID="hfImage3" runat="server" />
                    </div>
                    <div class="col-sm-3">
                        <label for="txtImage4">Image 4:</label>
                        <asp:FileUpload ID="txtImage4" runat="server" />
                        <asp:RegularExpressionValidator ID="ReGexValidator4" runat="server"
                            ControlToValidate="txtImage4" ForeColor="Red"
                            ErrorMessage="*Only .jpg, .png, .jpeg, .gif, .Files are Allowed" Font-Bold="true"
                            Font-Size="Medium"
                            ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                        <asp:HiddenField ID="hfImage4" runat="server" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <asp:Button runat="server" Text="Save" ID="btnSave" CssClass="btn btn-outline-dark" OnClick="btnSave_Click" />
                        <asp:Button runat="server" Text="Cancel" ID="btnCancel" CssClass="btn btn-outline-dark" OnClick="btnCancel_Click" />
                    </div>
                </div>
                <asp:HiddenField ID="hfGameID" runat="server" />
                <div class="row">
                    <div class="col-sm-12 text-danger">
                        <asp:Label runat="server" ID="errExceptionBox"></asp:Label>
                    </div>
                </div>
            </div>
        </asp:Panel>
        <!--Form End-->
    </div>
</asp:Content>
