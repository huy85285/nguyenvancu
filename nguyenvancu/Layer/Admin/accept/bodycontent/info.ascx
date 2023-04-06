<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="info.ascx.cs" Inherits="nguyenvancu.Layer.Admin.accept.bodycontent.info" %>
<form method="post" runat="server">
<div class="m-auto"style="max-width:600px">
<div>
<%--    <div class="row">
        <b class="text-center w-100">Thông tin nhân viên</b>
        <div class="col-lg-3 p-2">
            Mã nhân viên:
        </div>s
        <div class="col">
            <asp:TextBox Width="100%" ID="txtid" runat="server" Text=""></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3 p-2">
            Họ nhân viên:
        </div>
        <div class="col">
            <asp:TextBox Width="100%" ID="txtlastname" runat="server" Text=""></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3 p-2">
            Tên nhân viên:
        </div>
        <div class="col">
            <asp:TextBox Width="100%" ID="txtfirstname" runat="server" Text=""></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3 p-2">
            Email:
        </div>
        <div class="col">
            <asp:TextBox Width="100%" ID="txtemail" runat="server" Text=""></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3 p-2">
            Số điện thoại:
        </div>
        <div class="col">
            <asp:TextBox Width="100%" ID="txtphone" runat="server" Text=""></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3 p-2">
            Địa chỉ:
        </div>
        <div class="col">
            <asp:TextBox Width="100%" ID="txtaddressid" runat="server" Text=""></asp:TextBox>
        </div>
    </div>
    <div class="col" style="text-align:center">
        <asp:Button CssClass="btn-group my-3 p-2 m-1" ID="btnmdf" runat="server" Text="CHỈNH SỬA" />
        <asp:Button CssClass="btn-group my-3 p-2 m-1" ID="btnsummit" runat="server" Text="GHI" Visible="false"/>
    </div>

--%>


    <asp:FormView CssClass="container" ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="EntityDataSource1">
        <EditItemTemplate>
            <div class="row">
        <b class="text-center w-100">Thông tin nhân viên</b>
        <div class="col-lg-3 p-2">
            Mã nhân viên:
        </div>
        <div class="col">
            <asp:TextBox Width="100%" ID="txtid" runat="server" Text='<%# Bind("id") %>'></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3 p-2">
            Họ nhân viên:
        </div>
        <div class="col">
            <asp:TextBox Width="100%" ID="txtlastname" runat="server" Text='<%# Bind("lastname") %>'></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3 p-2">
            Tên nhân viên:
        </div>
        <div class="col">
            <asp:TextBox Width="100%" ID="txtfirstname" runat="server" Text='<%# Bind("firstname") %>'></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3 p-2">
            Email:
        </div>
        <div class="col">
            <asp:TextBox Width="100%" ID="txtemail" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3 p-2">
            Số điện thoại:
        </div>
        <div class="col">
            <asp:TextBox Width="100%" ID="txtphone" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3 p-2">
            Địa chỉ:
        </div>
        <div class="col">
            <asp:TextBox Width="100%" ID="txtaddressid" runat="server" Text='<%# Bind("addressid") %>'></asp:TextBox>
        </div>
    </div>
            <asp:LinkButton CssClass="p2" ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" BackColor="Yellow" />
            &nbsp;<asp:LinkButton CssClass="p2" ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" BackColor="Yellow"/>
        </EditItemTemplate>
        <InsertItemTemplate>
            id:
            <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
            <br />
            passwords:
            <asp:TextBox ID="passwordsTextBox" runat="server" Text='<%# Bind("passwords") %>' />
            <br />
            passwords_salt:
            <asp:TextBox ID="passwords_saltTextBox" runat="server" Text='<%# Bind("passwords_salt") %>' />
            <br />
            lastname:
            <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' />
            <br />
            firstname:
            <asp:TextBox ID="firstnameTextBox" runat="server" Text='<%# Bind("firstname") %>' />
            <br />
            addressid:
            <asp:TextBox ID="addressidTextBox" runat="server" Text='<%# Bind("addressid") %>' />
            <br />
            phone:
            <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            idrank:
            <asp:TextBox ID="idrankTextBox" runat="server" Text='<%# Bind("idrank") %>' />
            <br />
            date_create:
            <asp:TextBox ID="date_createTextBox" runat="server" Text='<%# Bind("date_create") %>' />
            <br />
            admin_create:
            <asp:TextBox ID="admin_createTextBox" runat="server" Text='<%# Bind("admin_create") %>' />
            <br />
            is_active:
            <asp:CheckBox ID="is_activeCheckBox" runat="server" Checked='<%# Bind("is_active") %>' />
            <br />
            idImg:
            <asp:TextBox ID="idImgTextBox" runat="server" Text='<%# Bind("idImg") %>' />
            <br />
            ADMINS1:
            <asp:TextBox ID="ADMINS1TextBox" runat="server" Text='<%# Eval("ADMINS1") %>' />
            <br />
            ADMIN1:
            <asp:TextBox ID="ADMIN1TextBox" runat="server" Text='<%# Eval("ADMIN1") %>' />
            <br />
            IMG:
            <asp:TextBox ID="IMGTextBox" runat="server" Text='<%# Bind("IMG") %>' />
            <br />
            rank:
            <asp:TextBox ID="rankTextBox" runat="server" Text='<%# Bind("rank") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            





            <div class="row">
        <b class="text-center w-100">Thông tin nhân viên</b>
        <div class="col-lg-3 p-2">
            Mã nhân viên:
        </div>
        <div class="col">
            <asp:TextBox Width="100%" ID="txtid" runat="server" Text='<%# Bind("id") %>' ReadOnly="true"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3 p-2">
            Họ nhân viên:
        </div>
        <div class="col">
            <asp:TextBox Width="100%" ID="txtlastname" runat="server" Text='<%# Bind("lastname") %>' ReadOnly="true"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3 p-2">
            Tên nhân viên:
        </div>
        <div class="col">
            <asp:TextBox Width="100%" ID="txtfirstname" runat="server" Text='<%# Bind("firstname") %>' ReadOnly="true"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3 p-2">
            Email:
        </div>
        <div class="col">
            <asp:TextBox Width="100%" ID="txtemail" runat="server" Text='<%# Bind("email") %>' ReadOnly="true"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3 p-2">
            Số điện thoại:
        </div>
        <div class="col">
            <asp:TextBox Width="100%" ID="txtphone" runat="server" Text='<%# Bind("phone") %>' ReadOnly="true"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3 p-2">
            Địa chỉ:
        </div>
        <div class="col">
            <asp:TextBox Width="100%" ID="txtaddressid" runat="server" Text='<%# Bind("addressid") %>' ReadOnly="true"></asp:TextBox>
        </div>
    </div>













            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" BorderColor="#CC0000" BorderStyle="Double" BackColor="Yellow" CssClass="p-2" />
        </ItemTemplate>
    </asp:FormView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=nguyenvancudbEntities" DefaultContainerName="nguyenvancudbEntities" EnableFlattening="False" EntitySetName="ADMINS" EnableUpdate="True" Where="it.id==@username">
        <WhereParameters>
            <asp:SessionParameter Name="username" SessionField="username"  DbType="String"/>
        </WhereParameters>
    </asp:EntityDataSource>
</div>
</div>
</form>