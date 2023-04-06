<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="danhmuc.ascx.cs" Inherits="nguyenvancu.Layer.Admin.accept.bodycontent.menu" %>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            max-width: 100%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
    <form runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-12 p-3 border-info border">
                    <asp:Panel ID="Panel1" runat="server" DefaultButton="btnmenu1add">
                        <div class="text-center m-1">Menu cấp 1</div>
                        <asp:DropDownList CssClass="col m-1 w-75" ID="DropDownList1" runat="server"
                            DataSourceID="EntityDataSource1" DataTextField="names" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        <div>
                            <asp:TextBox CssClass="col m-1 w-75" ID="txtmenu1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ErrorMessage="Nhập tên của menu" Text="*" ControlToValidate="txtmenu1">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ErrorMessage="Độ dài menu không quá 30 ký tự" Text="*" ControlToValidate="txtmenu1"
                                ValidationExpression="^.{1,30}$" ValidationGroup="err1"></asp:RegularExpressionValidator>
                            <div class="col-12">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="err1" />
                                <div id="err1" style="color:red" runat="server"></div>
                            </div>
                            <div class="col-12">
                                <asp:Button CssClass="w-25 m-1" ID="btnmenu1add" runat="server" Text="Thêm"
                                    OnClick="btnmenu1add_Click" ValidationGroup="err1" />
                                <asp:Button CssClass="w-25 m-1" ID="btnmenu1mdf" runat="server" Text="Sửa"
                                    OnClick="btnmenu1mdf_Click" ValidationGroup="err1" />
                            </div>
                        </div>
                        <asp:EntityDataSource ID="EntityDataSource1" runat="server"
                            ConnectionString="name=nguyenvancudbEntities" DefaultContainerName="nguyenvancudbEntities"
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True"
                            EntitySetName="menus" EntityTypeFilter="" Select="" Where="it.lv=1"></asp:EntityDataSource>
                    </asp:Panel>
                </div>
                <div class="col-lg-6 col-md-12 p-3 border-info border">
                    <asp:Panel ID="Panel2" runat="server" DefaultButton="btnmenu2add">
                        <div class="text-center m-1">Menu cấp 2</div>
                        <asp:DropDownList CssClass="col m-1 w-75" ID="DropDownList2" runat="server"
                            DataSourceID="EntityDataSource2" DataTextField="names" DataValueField="id" AutoPostBack="True"
                            style="left: 0px; top: 0px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        </asp:DropDownList>
                        <div>
                            <asp:TextBox CssClass="col m-1 w-75" ID="txtmenu2" runat="server" ValidationGroup="err2">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ErrorMessage="Nhập tên của menu" Text="*" ControlToValidate="txtmenu2" ValidationGroup="err2">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                ErrorMessage="Độ dài menu không quá 30 ký tự" Text="*" ControlToValidate="txtmenu2"
                                ValidationExpression="^.{1,30}$" ValidationGroup="err2"></asp:RegularExpressionValidator>
                            <div class="col-12">
                                <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="err2" />
                                <div id="err2" style="color:red" runat="server"></div>
                            </div>
                            <div class="auto-style1">
                                <asp:Button CssClass="w-25 m-1" ID="btnmenu2add" runat="server" Text="Thêm"
                                    OnClick="btnmenu2add_Click" ValidationGroup="err2" />
                                <asp:Button CssClass="w-25 m-1" ID="btnmenu2mdf" runat="server" Text="Sửa"
                                    OnClick="btnmenu2mdf_Click" ValidationGroup="err2" />
                            </div>
                        </div>
                        <asp:EntityDataSource ID="EntityDataSource2" runat="server"
                            ConnectionString="name=nguyenvancudbEntities" DefaultContainerName="nguyenvancudbEntities"
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True"
                            EntitySetName="menus" Where="it.lv=2 and it.menuownerid=@value">
                            <WhereParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="value" PropertyName="SelectedValue"
                                    DefaultValue="" Type="Int32" />
                            </WhereParameters>
                        </asp:EntityDataSource>
                    </asp:Panel>
                </div>
                <div class="col-lg-6 col-md-12 p-3 border-info border">
                    <asp:Panel ID="Panel3" runat="server" DefaultButton="btnmenu3add">
                        <div class="text-center m-1">Menu cấp 3</div>
                        <asp:DropDownList CssClass="col m-1 w-75" ID="DropDownList3" runat="server"
                            DataSourceID="EntityDataSource3" DataTextField="names" DataValueField="id" AutoPostBack="True"
                            style="left: 0px; top: 0px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                        </asp:DropDownList>
                        <div>
                            <asp:TextBox CssClass="col m-1 w-75" ID="txtmenu3" runat="server" ValidationGroup="err3">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ErrorMessage="Nhập tên của menu" Text="*" ControlToValidate="txtmenu3" ValidationGroup="err3">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                ErrorMessage="Độ dài menu không quá 30 ký tự" Text="*" ControlToValidate="txtmenu3"
                                ValidationExpression="^.{1,30}$" ValidationGroup="err3"></asp:RegularExpressionValidator>
                            <div class="col-12">
                                <asp:ValidationSummary ID="ValidationSummary3" runat="server" ValidationGroup="err3" />
                                <div id="err3" style="color:red" runat="server"></div>
                            </div>
                            <div class="auto-style1">
                                <asp:Button CssClass="w-25 m-1" ID="btnmenu3add" runat="server" Text="Thêm"
                                    OnClick="btnmenu3add_Click" ValidationGroup="err3" />
                                <asp:Button CssClass="w-25 m-1" ID="btnmenu3mdf" runat="server" Text="Sửa"
                                    OnClick="btnmenu3mdf_Click" ValidationGroup="err3" />
                            </div>
                        </div>
                        <asp:EntityDataSource ID="EntityDataSource3" runat="server"
                            ConnectionString="name=nguyenvancudbEntities" DefaultContainerName="nguyenvancudbEntities"
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True"
                            EntitySetName="menus" Where="it.lv=3 and it.menuownerid=@value">
                            <WhereParameters>
                                <asp:ControlParameter ControlID="DropDownList2" Name="value" PropertyName="SelectedValue"
                                    DefaultValue="" Type="Int32" />
                            </WhereParameters>
                        </asp:EntityDataSource>
                    </asp:Panel>
                </div>
                <div class="col-lg-6 col-md-12 p-3 border-info border">
                    <asp:Panel ID="Panel4" runat="server" DefaultButton="btnmenu4add">
                        <div class="text-center m-1">Menu cấp 4</div>
                        <asp:DropDownList CssClass="col m-1 w-75" ID="DropDownList4" runat="server"
                            DataSourceID="EntityDataSource4" DataTextField="names" DataValueField="id" AutoPostBack="True"
                            style="left: 0px; top: 0px">
                        </asp:DropDownList>
                        <div>
                            <asp:TextBox CssClass="col m-1 w-75" ID="txtmenu4" runat="server" ValidationGroup="err4">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ErrorMessage="Nhập tên của menu" Text="*" ControlToValidate="txtmenu4" ValidationGroup="err4">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
                                ErrorMessage="Độ dài menu không quá 30 ký tự" Text="*" ControlToValidate="txtmenu4"
                                ValidationExpression="^.{1,30}$" ValidationGroup="err4"></asp:RegularExpressionValidator>
                            <div class="col-12">
                                <asp:ValidationSummary ID="ValidationSummary4" runat="server" ValidationGroup="err4" />
                                <div id="err4" style="color:red" runat="server"></div>
                            </div>
                            <div class="auto-style1">
                                <asp:Button CssClass="w-25 m-1" ID="btnmenu4add" runat="server" Text="Thêm"
                                    OnClick="btnmenu4add_Click" ValidationGroup="err4" />
                                <asp:Button CssClass="w-25 m-1" ID="btnmenu4mdf" runat="server" Text="Sửa"
                                    OnClick="btnmenu4mdf_Click" ValidationGroup="err4" />
                            </div>
                        </div>
                        <asp:EntityDataSource ID="EntityDataSource4" runat="server"
                            ConnectionString="name=nguyenvancudbEntities" DefaultContainerName="nguyenvancudbEntities"
                            EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True"
                            EntitySetName="menus" Where="it.lv=4 and it.menuownerid=@value">
                            <WhereParameters>
                                <asp:ControlParameter ControlID="DropDownList3" Name="value" PropertyName="SelectedValue"
                                    DefaultValue="" Type="Int32" />
                            </WhereParameters>
                        </asp:EntityDataSource>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </form>
