<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.Master" AutoEventWireup="true" CodeBehind="MaintainOnlineGame.aspx.cs" Inherits="FreePlay.Administrator.MaintainOnlineGame" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <title>Maintain Online Games</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container-fluid p-2">
        <!--Grid Start-->
        <div class="table-responsive" style="overflow: scroll;">
            <asp:GridView runat="server" AllowPaging="True"
                GridLines="Vertical" ID="dgvOnlineGame" CellPadding="3" ForeColor="Black" AutoGenerateColumns="False" DataKeyNames="pkGameID" OnDataBound="dgvOnlineGame_DataBound" OnPageIndexChanging="dgvOnlineGame_PageIndexChanging" OnRowDataBound="dgvOnlineGame_RowDataBound" OnSelectedIndexChanging="dgvOnlineGame_SelectedIndexChanging" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="" Visible="false" HeaderText="pkGameID" ReadOnly="true" />

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnSelect" runat="server" CausesValidation="false"
                                Text="Select" UseSubmitBehavior="false" CssClass="btn btn-outline-dark" />
                            <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Meta Title">
                        <ItemTemplate>
                            <asp:TextBox ID="varTitle" ReadOnly="true" TextMode="MultiLine"
                                Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varTitle") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Meta Title">
                        <ItemTemplate>
                            <asp:TextBox ID="varMetaTitle" ReadOnly="true" TextMode="MultiLine"
                                Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varMetaTitle") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Meta Description">
                        <ItemTemplate>
                            <asp:TextBox ID="varMetaDescription" ReadOnly="true" TextMode="MultiLine"
                                Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varMetaDescription") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Game Description">
                        <ItemTemplate>
                            <asp:TextBox ID="varDescription" ReadOnly="true" TextMode="MultiLine"
                                Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varDescription") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Code">
                        <ItemTemplate>
                            <asp:TextBox ID="nvarCode" ReadOnly="true" TextMode="MultiLine"
                                Rows="2" runat="server" MaxLength="255" Text='<%# Bind("nvarCode") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="JSLibrary">
                        <ItemTemplate>
                            <asp:TextBox ID="nvarJSLibrary" ReadOnly="true" TextMode="MultiLine"
                                Rows="2" runat="server" MaxLength="255" Text='<%# Bind("nvarJSLibrary") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="PosterImage">
                        <ItemTemplate>
                            <asp:TextBox ID="txtPosterImage" ReadOnly="true" TextMode="MultiLine"
                                Rows="2" runat="server" MaxLength="255" Text='<%# Bind("txtPosterImage") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:CommandField ShowSelectButton="true" SelectText="Edit" ButtonType="Button"
                        ControlStyle-CssClass="btn btn-outline-dark">
                        <ControlStyle CssClass="btn btn-outline-dark"></ControlStyle>
                    </asp:CommandField>
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
        <asp:Panel runat="server" ID="pnlAddOnlineGame" Visible="false">
            <div class="container mt-5 bg-yellowboxshadowed pb-2 p-3">
                <h3 class="text-center"><span class="border-bottom-5-dark">Add Game</span></h3>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtTitle">Game Title:</label>
                        <asp:TextBox runat="server" ID="txtTitle" CssClass="form-control"></asp:TextBox>
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
                        <label for="txtDescription">Description:</label>
                        <asp:TextBox runat="server" ID="txtDescription" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtCode">Code:</label>
                        <asp:TextBox runat="server" ID="txtCode" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtJSLibrary">JS Library:</label>
                        <asp:TextBox runat="server" ID="txtJSLibrary" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <label for="txtImage">Poster Image:<span class="text-info">(150 X 110 Pixels)</span></label>
                        <asp:HiddenField runat="server" ID="hfPosterImage" />
                        <br />
                        <asp:FileUpload runat="server" ID="txtImage" />
                        <asp:RegularExpressionValidator runat="server" ID="ReGexValidator1"
                            ControlToValidate="txtImage" ErrorMessage="Error: *Only .jpg, .png, .jpeg, .gif Files are allowed"
                            ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"
                            Font-Bold="true" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 text-center">

                        <asp:Button Text="Save" runat="server" CssClass="btn btn-outline-dark" ID="submit" OnClick="submit_Click" />
                        <asp:Button Text="Cancel" runat="server" CssClass="btn btn-outline-dark" ID="clear" OnClick="clear_Click" />

                    </div>
                </div>
            </div>
            <asp:HiddenField runat="server" ID="hfOnlineGameID" />
        </asp:Panel>
        <%-- Form End  --%>

        <div class="ResultsMessage">
            <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
        </div>
    </div>
</asp:Content>
