<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.Master" AutoEventWireup="true" CodeBehind="MaintainDrama.aspx.cs" Inherits="FreePlay.Administrator.MaintainDrama" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="container-fluid p-2">
        <!--Grid Start  -->
        <div class="table-responsive">
            <div class="" style="overflow: scroll;">
            <asp:GridView ID="dgvDrama" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                CellPadding="3" ForeColor="Black" DataKeyNames="pkDramaID,pkDramaEpisodeID" OnPageIndexChanging="dgvDrama_PageIndexChanging" OnSelectedIndexChanging="dgvDrama_SelectedIndexChanging"
                 OnRowDataBound="dgvDrama_RowDataBound" 
                 OnRowCommand="dgvDrama_RowCommand">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="pkDramaChannelID" Visible="false" HeaderText="pkDramaChannelID" ReadOnly="true" />
                   
                     <asp:BoundField DataField="pkDramaID" HeaderText="pkDramaID" ItemStyle-CssClass="d-none"  HeaderStyle-CssClass="d-none" />                 
                    
                    <asp:BoundField DataField="pkDramaEpisodeID" HeaderText="pkDramaEpisodeID" ItemStyle-CssClass="d-none" HeaderStyle-CssClass="d-none" />

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnSelect" runat="server" CausesValidation="false"
                                Text="Select" UseSubmitBehavior="false" CssClass="btn btn-outline-dark" />
                            <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
                        </ItemTemplate>
                    </asp:TemplateField>

                        <asp:BoundField DataField="varChannelName" HeaderText="Channel Name" ReadOnly="true"
                            SortExpression="varChannelName" ItemStyle-Width="350px" ItemStyle-Wrap="false" >
                        </asp:BoundField>

                        <asp:TemplateField HeaderText="Logo">
                            <ItemTemplate>
                                <asp:TextBox ID="txtChannelLogo" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("txtChannelLogo") %>' ></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="varDramaName" HeaderText="Drama Name" ReadOnly="true"
                            SortExpression="varDramaName" ItemStyle-Width="250px" ItemStyle-Wrap="false" />

                     <asp:TemplateField HeaderText="Drama Meta Title">
                            <ItemTemplate>
                                <asp:TextBox ID="varDramaMetaTitle" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varDramaMetaTitle") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Drama Meta Description">
                            <ItemTemplate>
                                <asp:TextBox ID="varDramaMetaDescription" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varDramaMetaDescription") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Drama Meta KeyWord">
                            <ItemTemplate>
                                <asp:TextBox ID="varDramaMetaKeyWord" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varDramaMetaKeyWord") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                    <asp:TemplateField HeaderText="Drama Description">
                            <ItemTemplate>
                                <asp:TextBox ID="nvarDescription" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("nvarDescription") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                    <asp:TemplateField HeaderText="Drama Image">
                            <ItemTemplate>
                                <asp:TextBox ID="txtDramaImage" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("txtDramaImage") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="varEpisodeNumber" HeaderText="Episode Number" ReadOnly="true"
                            SortExpression="varEpisodeNumber" />


                        <asp:TemplateField HeaderText="EpisodeEmbed Link">
                            <ItemTemplate>
                                <asp:TextBox ID="txtEpisodeEmbedLink" ReadOnly="true" TextMode="MultiLine"
                                    Rows="3" runat="server" MaxLength="250" Text='<%# Bind("txtEpisodeEmbedLink") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Episode Meta Title]">
                            <ItemTemplate>
                                <asp:TextBox ID="varEpisodeMetaTitle" ReadOnly="true" TextMode="MultiLine"
                                    Rows="3" runat="server" MaxLength="250" Text='<%# Bind("varEpisodeMetaTitle") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="dteEpisodeDate" HeaderText="Episode Date" ReadOnly="true"
                            SortExpression="dteEpisodeDate" DataFormatString="{0:MM/dd/yyyy}" />

                   
                     <asp:ButtonField ButtonType="Link" Text="Edit Drama" CommandName="Drama" ControlStyle-CssClass="btn btn-danger" />
                    <asp:ButtonField ButtonType="Link" Text="Edit Episode" CommandName="Episode" ControlStyle-BorderStyle="Ridge" ControlStyle-CssClass="btn btn-danger"  />

                     
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
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button runat="server" CssClass="btn btn-outline-dark"
                        ID="btnAddChannel" Text="Add Channel" OnClick="btnAddChannel_Click" />
                    <asp:Button runat="server" CssClass="btn btn-outline-dark"
                        ID="btnAddDrama" Text="Add Drama" OnClick="btnAddDrama_Click" />
                    <asp:Button runat="server" CssClass="btn btn-outline-dark"
                        ID="btnAddEpisode" Text="Add Episode" OnClick="btnAddEpisode_Click" />
                </div>
                <div class="col-sm-4">
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
        <!--Panel Add Channel Start-->
        <asp:Panel runat="server" Visible="false" ID="pnlAddChannel">
            <div class="container mt-5 bg-greenboxshadowed pb-2 p-3">
                <!--Form Fields Start Here-->
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtChannelAdd">Channel Name:</label>
                        <asp:TextBox runat="server" ID="txtChannelAdd" placeholder="Enter New Channel Name You Want To Add" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtChannelLogo">Channel Logo:</label>
                        <br />
                        <asp:FileUpload runat="server" ID="txtChannelLogo" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="txtChannelLogo" ForeColor="Red"
                            ErrorMessage="*Only .jpg,.png,.jpeg,.gif Files are allowed" Font-Bold="True"
                            Font-Size="Medium"
                            ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                        <asp:HiddenField ID="hfChannelLogo" runat="server" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtExistingChannels">Channels Already Existing:</label>
                        
                        <div class="card">
                            <asp:ListBox ID="txtChannelList" runat="server"></asp:ListBox>
                           <%-- <asp:DropDownList ID="txtChannelList" runat="server"></asp:DropDownList>--%>
                        </div>
                    </div>
                </div>
                <!--Form Fields End Here-->
                <p></p>
                <div class="text-center">
                    <asp:Button runat="server" ID="pnlAddChannelbtnCancel" UseSubmitBehavior="false" CausesValidation="false" CssClass="btn btn-outline-dark" Text="Cancel" OnClick="pnlAddChannelbtnCancel_Click" />
                    <asp:Button runat="server" ID="pnlAddChannelbtnSave" CssClass="btn btn-outline-dark ml-3" Text="Save" OnClick="pnlAddChannelbtnSave_Click" />
                    <asp:HiddenField ID="hfChannelID" runat="server" />
                </div>
            </div>
        </asp:Panel>
        <!--Panel Add Channel End-->

        <!--Panel Add Drama Start-->
        <asp:Panel runat="server" Visible="false" ID="pnlAddDrama">
            <div class="container mt-5 bg-yellowboxshadowed pb-2 p-3">
                <!--Form Fields Start Here-->
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtChannelSelect">Channel Name:</label>
                        <asp:DropDownList runat="server" ID="txtChannelSelect" CssClass="form-control">
                            <asp:ListItem Value="0" Text="Select" />                            
                        </asp:DropDownList>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtDramaAdd">Drama Name:</label>
                        <asp:TextBox runat="server" ID="txtDramaAdd" CssClass="form-control" placeholder="Enter The New Drama You Want to Add"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtExistingDramas">Dramas Already Existing:</label>
                        <div class="card">
                            <asp:ListBox ID="txtExistingDramas" CssClass="form-control" runat="server">

                            </asp:ListBox>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtMetaTitle">Meta Title:</label>
                        <asp:TextBox runat="server" ID="txtMetaTitle" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtMetaDescription">Meta Description:</label>
                        <asp:TextBox runat="server" ID="txtMetaDescription" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtMetaKeyword">Meta Keyword:</label>
                        <asp:TextBox runat="server" ID="txtMetaKeyword" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtDescription">Description:</label>
                        <asp:TextBox runat="server" ID="txtDescription" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <label for="txtDramaImage">Drama Poster Image:<span class="text-info">(214 X 230)</span></label>
                        <asp:FileUpload runat="server" ID="txtDramaImage" />
                        <asp:HiddenField ID="hfDramaImage" runat="server" />
                        <asp:RegularExpressionValidator ID="RegExValFileUploadFileType" runat="server"
                            ControlToValidate="txtDramaImage" ForeColor="Red"
                            ErrorMessage="*Only .jpg,.png,.jpeg,.gif Files are allowed" Font-Bold="True"
                            Font-Size="Medium"
                            ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>

                    </div>
                    <div class="col-sm-3">
                        <label for="txtEpisodeDate">Release Date:</label>
                        <asp:TextBox runat="server" ID="txtReleaseDate" TextMode="Date" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <!--Form Fields End Here-->
                <p></p>
                <div class="text-center">
                    <asp:Button runat="server" ID="pnlAddDramabtnCancel" UseSubmitBehavior="false" CausesValidation="false" CssClass="btn btn-outline-dark" Text="Cancel" OnClick="pnlAddDramabtnCancel_Click" />
                    <asp:Button runat="server" ID="pnlAddDramabtnSave" CssClass="btn btn-outline-dark ml-3" Text="Save" OnClick="pnlAddDramabtnSave_Click" />
                    <asp:HiddenField ID="hfDramaID" runat="server" />
                </div>
            </div>
        </asp:Panel>
        <!--Panel Add Drama End-->

        <!--Panel Add Episode Start-->
        <asp:Panel runat="server" Visible="false" ID="pnlAddEpisode">
            <div class="container mt-5 bg-orangeboxshadowed pb-2 p-3">
                <!--Form Fields Start Here-->
                <div class="row">
                    <div class="col-sm-4">
                        <label for="txtDramaSelect">Select Drama:</label>
                        <asp:DropDownList runat="server" ID="txtDramaSelect" CssClass="form-control">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-sm-4">
                        <label for="txtEpisodeDate">Episode Date:</label>
                        <asp:TextBox runat="server" ID="txtEpisodeDate" TextMode="Date" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <label for="txtEpisodeNumber">Episode Number:</label>
                        <asp:TextBox runat="server" ID="txtEpisodeNumber" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtEpisodeLink">Episode Embed Link:</label>
                        <asp:TextBox runat="server" ID="txtEpisodeLink" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtEpisodeMetaTitle">Meta Title:</label>
                        <asp:TextBox runat="server" ID="txtEpisodeMetaTitle" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <!--Form Fields End Here-->
                <p></p>
                <div class="text-center">
                    <asp:Button runat="server" ID="pnlAddEpisodebtnCancel" UseSubmitBehavior="false" CausesValidation="false" CssClass="btn btn-outline-dark" Text="Cancel" OnClick="pnlAddEpisodebtnCancel_Click" />
                    <asp:Button runat="server" ID="pnlAddEpisodebtnSave" CssClass="btn btn-outline-dark ml-3" Text="Save" OnClick="pnlAddEpisodebtnSave_Click" />
                    <asp:HiddenField ID="hfEpisodeID" runat="server" />
                </div>
            </div>
        </asp:Panel>
        <!--Panel Add Episode End-->
        <!--Form End-->
        <div class="ResultsMessage">
            <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
        </div>
    </div>
</asp:Content>
