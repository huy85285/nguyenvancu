<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="nguyenvancu.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row">
        <div class="col-md-3 item">
            <div class="i">
                <a href="#">
                    <img src='<%# Eval("Hinh_San_Pham/{0}") %>' />

                </a>
            </div>
        </div>
    </div>
</asp:Content>
