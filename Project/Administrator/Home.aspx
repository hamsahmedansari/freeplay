<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FreePlay.Administrator.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <title>Home - Administrator</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container mt-3 mb-3">
        <h3 class="display-5 text-center">Admin Home</h3>
        <hr />
        <div class="row">
            <div class="col-sm-6">
                <div class="bg-whiteboxshadowed">
                    <div class="p-1">
                        <h4>You can EDIT/UPDATE/CREATE/DELETE Movies</h4>
                        <p>Click <a href="MaintainMovies.aspx">here</a> to go to Movies section</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="bg-whiteboxshadowed">
                    <div class="p-1">
                        <h4>You can EDIT/UPDATE/CREATE/DELETE Drama</h4>
                        <p>Click <a href="MaintainDrama.aspx">here</a> to go to Dramas section</p>
                    </div>
                </div>
            </div>
        </div>
        <p></p>
        <div class="row">
            <div class="col-sm-6">
                <div class="bg-whiteboxshadowed">
                    <div class="p-1">
                        <h4>You can EDIT/UPDATE/CREATE/DELETE Cartoon</h4>
                        <p>Click <a href="#">here</a> to go to Cartoons section</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="bg-whiteboxshadowed">
                    <div class="p-1">
                        <h4>You can EDIT/UPDATE/CREATE/DELETE Games</h4>
                        <p>Click <a href="#">here</a> to go to Games section</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
