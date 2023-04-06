<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="login.ascx.cs" Inherits="nguyenvancu.Layer.Admin.login" %>
<style>
    body{
        background-image:url("../../IMG/695-1800x900.jpg");
        background-size: cover;
    }
</style>
<form runat="server">
<asp:Panel ID="Panel1" runat="server" DefaultButton="Button1">
    <div class="" style="height:100vh">
        <div class="table-bordered position-sticky m-auto  p-5 " style="border-radius:15px;width:600px; top: 40%;transform:translateY(-50%); text-align: left; background-color:orange" >
            <div class="my-3 mb-5"style="text-align:center;font-weight:bold ; font-size:40px">Đăng nhập</div>
        <div class="form-inline my-3">
            <label class="col-auto" style="width:160px;justify-content: left;" for="txtusername">Email address</label>
            <asp:TextBox ID="txtusername" CssClass="form-control col" runat="server" placeholder="email@example.com"></asp:TextBox>
        </div>
        <div class="form-inline my-3">
          <label class="col-1  " style="min-width:160px;justify-content: left;" for="txtpassword">Password</label>
          <asp:TextBox CssClass="form-control col" ID="txtpassword" runat="server" placeholder="Pasword" type="password"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" CssClass="btn-block mx-auto my-3" Width="100px" BackColor="#07f8f8" runat="server" Text="Đăng nhập" OnClick="Button1_Click"/>
        </div>
    </div>
</asp:Panel>
</form>