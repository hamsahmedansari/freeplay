<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.Master" AutoEventWireup="true" CodeBehind="MainSliderMain.aspx.cs" Inherits="FreePlay.Administrator.MainSliderMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container p-1">
         <!--Grid Start-->
         <div class="table-responsive">
             <div style="overflow:scroll;">
                 <asp:GridView CssClass="table" runat="server" AllowPaging="True" AutoGenerateColumns="False" ID="dgvSliderMain" DataKeyNames="pkID"
                     BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" Font-Size="12px" ForeColor="Black" 
                    GridLines="Vertical" AllowSorting="false" OnPageIndexChanging="dgvSliderMain_PageIndexChanging" OnRowDataBound="dgvSliderMain_RowDataBound" OnSelectedIndexChanging="dgvSliderMain_SelectedIndexChanging">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="pkID" Visible="false" HeaderText="pkID" ReadOnly="true" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnSelect" runat="server" CausesValidation="false"
                                    Text="Select" UseSubmitBehavior="false" CssClass="btn btn-outline-dark" />
                                <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />

                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="varName" HeaderText="Category" ReadOnly="true"
                            SortExpression="varName" ItemStyle-Width="300px" ItemStyle-Wrap="false" >
                        </asp:BoundField>                       

                        <asp:TemplateField HeaderText="Poster Image">
                            <ItemTemplate>
                                <asp:TextBox ID="txtImage" ReadOnly="true" TextMode="MultiLine"
                                    Rows="3" runat="server" MaxLength="250" Text='<%#Bind("txtImage") %>'></asp:TextBox>
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
                    <div class="col-sm-6 form-group">
                        <label for="txtName">Name:</label>
                        <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-6 form-group">
                        <label for="txtImage">Poster Image:</label>
                         <label for="txtPosterImage">Poster Image</label>
                        <asp:FileUpload ID="FileUploadPosterImage" runat="server" CssClass="form-control" />
                        <asp:HiddenField ID="hfPosterImage" runat="server" />
                        <asp:RegularExpressionValidator ID="RegExValFileUploadFileType" runat="server"
                            ControlToValidate="FileUploadPosterImage" ForeColor="Red"
                            ErrorMessage="*Only .jpg,.png,.jpeg,.gif Files are allowed" Font-Bold="True"
                            Font-Size="Medium"
                            ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                    
                    </div>
                </div>
                
                <p></p>
                <div class="text-center">
                    <asp:Button runat="server" ID="btnCancel" UseSubmitBehavior="false" CausesValidation="false" CssClass="btn btn-outline-dark" Text="Cancel" OnClick="btnCancel_Click" />
                    <asp:Button runat="server" ID="btnSave" CssClass="btn btn-outline-dark ml-3" Text="Save" OnClick="btnSave_Click" />
                    <asp:HiddenField ID="hfID" runat="server" />
                </div>
            </div>
        </asp:Panel>

          <div class="ResultsMessage">
            <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
        </div>
     </div>
</asp:Content>
