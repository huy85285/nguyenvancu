<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="changepass.ascx.cs" Inherits="nguyenvancu.Layer.Admin.accept.bodycontent.changepass" %>
<form method="post" runat="server">
<div class="container-fluid">
    <div class="row p-2" style="justify-content:center; font-weight:bold">
        Đổi mật khẩu
    </div>
        <div class="row p-2">
        <div class="col-auto" style="width:240px">Xác nhận Mật khẩu cũ</div>
        <div class="col-lg col-md-12">
            <asp:TextBox CssClass="col w-75" ID="txtcurrentpass" runat="server" type="password" style="left: 0px; top: 0px"></asp:TextBox>
            <asp:RequiredFieldValidator CssClass="col" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mật khẩu sác nhận không được rỗng" Text="*" ControlToValidate="txtcurrentpass" ></asp:RequiredFieldValidator>
        </div>
        </div>
    <div class="row p-2">
        <div class="col-auto" style="width:240px">Mật khẩu mới</div>
        <div class="col-lg col-md-12">
            <asp:TextBox CssClass="col w-75" ID="txtpassnew" runat="server" type="password"></asp:TextBox>
            <asp:RequiredFieldValidator CssClass="col" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mật khẩu sác nhận không được rỗng" Text="*" ControlToValidate="txtpassnew"></asp:RequiredFieldValidator>
        </div>
        </div>
    <div class="row p-2">
        <div class="col-auto" style="width:240px">Xác nhận mật khẩu mới</div>
        <div class="col-lg col-md-12">
            <asp:TextBox CssClass="col w-75" ID="txtpassnewaccept" runat="server" type="password"></asp:TextBox>
            <asp:CompareValidator CssClass="col" ID="CompareValidator1" runat="server" ControlToCompare="txtpassnew" ControlToValidate="txtpassnewaccept" ErrorMessage="Mật khẩu mới không trùng khớp" Text="*"></asp:CompareValidator>
        </div>
        </div>
    <div class="row p-2" style="justify-content:center">
        <span id="lblerr" runat="server" style="color:red ; text-align:center"></span>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </div>
    <asp:Button ID="btnsubmit" Text="Thay đổi" runat="server" OnClick="btnchange_Click"/>
</div>
</form>