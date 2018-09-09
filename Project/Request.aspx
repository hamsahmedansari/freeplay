<%@ Page Title="" Language="C#" MasterPageFile="~/FreePlay.Master" AutoEventWireup="true" CodeBehind="Request.aspx.cs" Inherits="FreePlay.Request" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <style>
        #TopSlider{
            display:none !important;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                        <div class="col-xl-12 mt-3 text-left bg-danger text-capitalize text-center" style="color:#fff;padding: 15px;">
                            <h3>
                                Request
                            </h3>
                        </div>
                    </div>
                    <br />
                    <hr />
                    <div class="border-dark ">

                        <div class="row">

                            <div class="col-lg-6">

                                <div class="form-group">
                                    <label>Name : </label>
                                    <input type="text" class="form-control" id="txtName" runat="server" />
                                </div>

                            </div>

                            <div class="col-lg-6">

                                <div class="form-group">
                                    <label>Email : <sup class="text-success">(Optional)</sup> </label>
                                    <input class="form-control" id="txtEmail" runat="server" type="email" />
                                </div>

                            </div>

                        </div>



                        <div class="row">

                            <div class="col-lg-6">

                                <div class="form-group">
                                    <label><label>Type</label> : </label>
                                    <select class="form-control custom-request-type" id="txtSelectType" runat="server">
                                        <option>Select</option>
                                        <option>Movies</option>
                                        <option>Dramas</option>
                                        <option>Cartoon</option>
                                        <option>Songs</option>
                                        <option>Games</option>
                                    </select>
                                </div>

                            </div>
                            <div class="col-lg-6">

                                <div class="form-group">
                                    <label class=""> <label class="custom-request-label-change-on-change-option">Other :</label>   <sup class="text-success">(Optional)</sup> </label>
                                    <select class="form-control custom-request-other" disabled="true" id="txtSelectOther" runat="server"></select>
                                </div>

                            </div>

                        </div>


                        <div class="row">

                            <div class="col-lg-12">

                                <div class="form-group">
                                    <label>Tittle : </label>
                                    <input type="text" name="name" class="form-control" value="" id="txtTitle" runat="server" />
                                </div>

                            </div>


                        </div>



                        <div class="row">
                            <div class="col-lg-12 text-center">
                                <button type="button" class="btn btn-danger btn-lg" id="btnReset" runat="server" onserverclick="btnReset_ServerClick">Reset</button>
                                <button type="button" class="btn btn-success btn-lg" id="btnSubmit" runat="server" onserverclick="btnSubmit_ServerClick">Submit</button>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="ResultsMessage">
            <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
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
    <div class="custom-side-fixed-on-scroll" style="display:none"></div>

    <!-- End -->

</asp:Content>
