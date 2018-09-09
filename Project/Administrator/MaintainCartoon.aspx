<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.Master" AutoEventWireup="true" CodeBehind="MaintainCartoon.aspx.cs" Inherits="FreePlay.Administrator.MaintainCartoon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <title>Maintain Cartoon</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container-fluid p-2">
        <!--Grid Start-->
        <div class="table-responsive">
           <div class="" style="overflow: scroll;">
            <asp:GridView ID="dgvCartoon" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                CellPadding="3" ForeColor="Black" DataKeyNames="pkCartoonID,pkEpisodeID" OnPageIndexChanging="dgvCartoon_PageIndexChanging" OnRowCommand="dgvCartoon_RowCommand" OnRowDataBound="dgvCartoon_RowDataBound" OnSelectedIndexChanging="dgvCartoon_SelectedIndexChanging"
                 >
                <AlternatingRowStyle BackColor="#CCCCCC" />

                <Columns>
                    <asp:BoundField DataField="pkCartoonID"  HeaderText="pkCartoonID" ItemStyle-CssClass="d-none"  HeaderStyle-CssClass="d-none" />
                   
                     <asp:BoundField DataField="pkEpisodeID" HeaderText="pkEpisodeID" ItemStyle-CssClass="d-none"  HeaderStyle-CssClass="d-none" />                 
                  <%--  
                    <asp:BoundField DataField="pkDramaEpisodeID" HeaderText="pkDramaEpisodeID" ItemStyle-CssClass="d-none" HeaderStyle-CssClass="d-none" />--%>

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnSelect" runat="server" CausesValidation="false"
                                Text="Select" UseSubmitBehavior="false" CssClass="btn btn-outline-dark" />
                            <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
                        </ItemTemplate>
                    </asp:TemplateField>

                        <asp:BoundField DataField="varCartoonName" HeaderText="Cartoon Name" ReadOnly="true"
                            SortExpression="varCartoonName" ItemStyle-Width="350px" ItemStyle-Wrap="false" >
                        </asp:BoundField>
                                                                                       
                     <asp:TemplateField HeaderText="Cartoon Meta Title">
                            <ItemTemplate>
                                <asp:TextBox ID="varMetaTitle" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varMetaTitle") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Cartoon Meta Description">
                            <ItemTemplate>
                                <asp:TextBox ID="varMetaDescription" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varMetaDescription") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Cartoon Meta KeyWord">
                            <ItemTemplate>
                                <asp:TextBox ID="varMetaKeyWord" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varMetaKeyWord") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                     <asp:TemplateField HeaderText="Cartoon Poster Image">
                            <ItemTemplate>
                                <asp:TextBox ID="txtPosterImage" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("txtPosterImage") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                    <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <asp:TextBox ID="nvarDescription" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("nvarDescription") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                                                              
                    <asp:TemplateField HeaderText="Episode Title">
                            <ItemTemplate>
                                <asp:TextBox ID="varEpisodeTitle" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="250" Text='<%# Bind("varEpisodeTitle") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Episode Meta Title">
                            <ItemTemplate>
                                <asp:TextBox ID="varEpisodeMetaTitle" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="250" Text='<%# Bind("varEpisodeMetaTitle") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                     <asp:TemplateField HeaderText="Episode Meta Description">
                            <ItemTemplate>
                                <asp:TextBox ID="varEpisodeMetaDescription" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varEpisodeMetaDescription") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Episode Meta KeyWord">
                            <ItemTemplate>
                                <asp:TextBox ID="varEpisodeMetaKeyWord" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("varEpisodeMetaKeyWord") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="dteEpisodeDate" HeaderText="Episode Date" ReadOnly="true"
                            SortExpression="dteEpisodeDate" DataFormatString="{0:MM/dd/yyyy}" />

                    <asp:TemplateField HeaderText="Episode Link">
                            <ItemTemplate>
                                <asp:TextBox ID="txtEpisodeLink" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("txtEpisodeLink") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <%--<asp:TemplateField HeaderText="Episode Details">
                            <ItemTemplate>
                                <asp:TextBox ID="nvarDetails" ReadOnly="true" TextMode="MultiLine"
                                    Rows="2" runat="server" MaxLength="255" Text='<%# Bind("nvarDetails") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                    <%--<asp:CommandField ShowSelectButton="true" SelectText="Edit Channel" ButtonType="Button" 
                        ControlStyle-CssClass="btn btn-outline-dark" >
<ControlStyle CssClass="btn btn-outline-dark"></ControlStyle>
                    </asp:CommandField>--%>

                    <%--<asp:CommandField ShowSelectButton="true" SelectText="Edit Drama" ButtonType="Button"
                        ControlStyle-CssClass="btn btn-outline-dark"  >
<ControlStyle CssClass="btn btn-outline-dark"></ControlStyle>
                    </asp:CommandField>
                    <asp:CommandField ShowSelectButton="true" SelectText="Edit Episode" ButtonType="Button"
                        ControlStyle-CssClass="btn btn-outline-dark" >
<ControlStyle CssClass="btn btn-outline-dark"></ControlStyle>
                    </asp:CommandField>--%>
                   
                     <asp:ButtonField ButtonType="Link" Text="Edit Cartoon" CommandName="Cartoon" ControlStyle-CssClass="btn btn-danger" />
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
                <div class="col-2">
                    <asp:Button runat="server" CssClass="btn btn-outline-dark"
                        ID="btnAddNewCartoon" Text="Add Cartoon" OnClick="btnAddNewCartoon_Click" />
                </div>
                <div class="col-2">
                    <asp:Button runat="server" CssClass="btn btn-outline-dark"
                        ID="btnAddEpisode" Text="Add Episode" OnClick="btnAddEpisode_Click" />
                </div>
                <div class="col-sm-6">
                    <p></p>
                </div>
                <div class="col-2">
                    <asp:Button runat="server" CssClass="btn btn-outline-dark"
                        ID="btnDelete" Text="Delete" OnClick="btnDelete_Click" style="float:right;" />
                </div>
            </div>
        </div>
        <!--Add New And Delete Button Section End....-->
        <!--Form Add Cartoon Start-->
        <asp:Panel runat="server" ID="pnlAddCartoon" Visible="false">
            <div class="container mt-5 bg-yellowboxshadowed pb-2 p-3">
                <h3 class="text-center"><span class="border-bottom-5-dark">Add Cartoon</span></h3>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtCartoonTitle">Cartoon Name:</label>
                        <asp:TextBox runat="server" ID="txtCartoonTitle" CssClass="form-control"></asp:TextBox>
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
                        <label for="txtImage">Poster Image:<span class="text-info">(214 X 230 Pixels)</span></label>
                        <br />
                        <asp:FileUpload runat="server" ID="txtImage" />
                        <asp:HiddenField ID="hfPosterImage" runat="server" />
                        <asp:RegularExpressionValidator runat="server" ID="ReGexValidator1"
                            ControlToValidate="txtImage" ErrorMessage="Error: *Only .jpg, .png, .jpeg, .gif Files are allowed"
                            ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"
                            Font-Bold="true" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtDescription">Description:</label>
                        <asp:TextBox runat="server" ID="txtDescription" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <p></p>
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <asp:Button runat="server" Text="Cancel" ID="btnAddCartoonCancel" CssClass="btn btn-outline-dark" OnClick="btnAddCartoonCancel_Click" />
                        <asp:Button runat="server" Text="Save" ID="btnAddCartoonSave" CssClass="btn btn-outline-dark" OnClick="btnAddCartoonSave_Click" />
                    </div>
                </div>
            </div>
        </asp:Panel>
        <!--Form Add Cartoon End-->
        <!--Form Add Cartoon Episode Start-->
        <asp:Panel runat="server" ID="pnlAddEpisode" Visible="false">
            <div class="container mt-5 bg-yellowboxshadowed pb-2 p-3">
                <h3 class="text-center"><span class="border-bottom-5-dark">Add Episode</span></h3>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtSelectCartoon">Select Cartoon:</label>
                        <asp:DropDownList runat="server" ID="txtSelectCartoon" CssClass="form-control">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <%--<div class="col-sm-3">
                        <label for="txtEpisodeNumber">Episode Number:</label>
                        <asp:TextBox runat="server" ID="txtEpisodeNumber" CssClass="form-control"></asp:TextBox>
                    </div>--%>
                    <div class="col-sm-6">
                        <label for="txtEpisodeTitle">Episode Title:</label>
                        <asp:TextBox runat="server" ID="txtEpisodeTitle" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtEpisodeMetaTitle">Meta Title:</label>
                        <asp:TextBox runat="server" ID="txtEpisodeMetaTitle" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <label for="txtEpisodeMetaDescription">Meta Description:</label>
                        <asp:TextBox runat="server" ID="txtEpisodeMetaDescription" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtEpisodeMetaKeyword">Meta Keyword:</label>
                        <asp:TextBox runat="server" ID="txtEpisodeMetaKeyword" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                         <label for="txtEpisodeDate">Episode Date:</label>
                        <asp:TextBox runat="server" ID="txtEpisodeDate" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <label for="txtEpisodeLink">Episode Link:</label>
                        <asp:TextBox runat="server" ID="txtEpisodeLink" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                   <%-- <div class="col-sm-6">
                        <label for="txtEpisodeDescription">Episode Description:</label>
                        <asp:TextBox runat="server" ID="txtEpisodeDescription" CssClass="form-control" TextMode="Multiline"></asp:TextBox>
                    </div>--%>
                </div>
                <div class="row">
                    <div class="col-sm-6 text-center">
                        <asp:Button runat="server" ID="btnAddEpisodeCancel" Text="Cancel" CssClass="btn btn-outline-dark" OnClick="btnAddEpisodeCancel_Click" />
                        <asp:Button runat="server" ID="btnAddEpisodeSave" Text="Save" CssClass="btn btn-outline-dark" OnClick="btnAddEpisodeSave_Click" />
                    </div>
                </div>
            </div>
            <asp:HiddenField ID="hfCartoonID" runat="server" />
            <asp:HiddenField ID="hfEpisodeID" runat="server" />
        </asp:Panel>
        <!--Form Add Cartoon Episode End-->

        <div class="ResultsMessage">
            <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
        </div>
    </div>
</asp:Content>
