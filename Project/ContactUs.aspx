<%@ Page Title="" Language="C#" MasterPageFile="~/FreePlay.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="FreePlay.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title runat="server" id="txtPageTitle">Contact Us</title>
    
    <style>
        #TopSlider{
            display:none !important;
        }
    </style>

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
                    <div class="row">
                        <div class="col-xl-12 mt-3 text-left bg-danger text-capitalize text-center" style="color: #fff; padding: 15px;">
                            <h3>Contact
                            </h3>
                        </div>
                    </div>
                    <br />
                    <hr />
                    <div class="border-dark ">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>First Name : </label>
                                    <asp:TextBox runat="server" ID="txtFirstName" class="form-control"></asp:TextBox>
                                    <asp:Label runat="server" ID="errFirstNameResuired" Visible="false" Style="color: #f30f0f">First Name Required*</asp:Label>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Last Name : </label>
                                    <asp:TextBox runat="server" ID="txtLastName" class="form-control"></asp:TextBox>
                                    <asp:Label runat="server" ID="errLastNameRequired" Visible="false" Style="color: #f30f0f">Last Name Required*</asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Email : </label>
                                    <asp:TextBox runat="server" ID="txtEmail" class="form-control"></asp:TextBox>
                                    <asp:Label runat="server" ID="errEmailRequired" Visible="false" Style="color: #f30f0f">Email Required*</asp:Label>
                                    <asp:Label runat="server" ID="errEmailInvalid" Visible="false" Style="color: #f30f0f">Email Format Invalid</asp:Label>
                                </div>
                            </div>
                            <div class="col-lg-6">

                                <div class="form-group">
                                    <label>Contact no: </label>
                                    <asp:TextBox runat="server" ID="txtContact" class="form-control" MaxLength="15" onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode)))return false;"></asp:TextBox>
                                    <asp:Label runat="server" ID="errContactRequired" Visible="false" Style="color: #f30f0f">Please Enter a Valid Contact Number</asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label>Message : </label>
                                    <asp:TextBox runat="server" ID="txtMessage" class="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                    <asp:Label runat="server" ID="errMessageRequired" Visible="false" Style="color: #f30f0f">Message Required*</asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 text-center">
                                <asp:Button runat="server" id="btnReset" Text="Reset" class="btn btn-danger btn-lg" OnClick="btnReset_Click"></asp:Button>
                                <asp:Button runat="server" ID="btnSubmit" Text="Submit" class="btn btn-success btn-lg" OnClick="btnSubmit_Click"></asp:Button>
                            </div>
                        </div>
                    </div>
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
    <!-- End -->
</asp:Content>
