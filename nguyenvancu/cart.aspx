<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="nguyenvancu.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <div class="container">
        <div class="row"> Danh sách mua hàng</div>
        <div class="row">
            <div class="col-3">Tên sản phẩm</div>
            <div class="col-6">Hình minh hoạ</div>
            <div class="col-3">Số lượng</div>
        </div>
        <hr />
        <asp:Repeater ID="rptcart" runat="server">
            <ItemTemplate>
                <div class="row cart">
                    <asp:HiddenField ID="hdfidproduct" Value='<%# Eval("idproduct") %>' runat="server"/>
            <asp:SqlDataSource ID="sqlprduct" runat="server" ConnectionString="<%$ ConnectionStrings:nguyenvancudbConnectionString1 %>" SelectCommand="SELECT TOP 1 * FROM product where id=@idproduct">
                <SelectParameters>
                    <asp:ControlParameter Name="idproduct" ControlID="hdfidproduct"  Type="Int32" DefaultValue=""/>
                </SelectParameters>
            </asp:SqlDataSource>
                <asp:Repeater ID="Repeater1" DataSourceID="sqlprduct" runat="server">
                    <ItemTemplate>
                    <div class="col-3"><%# Eval("names") %></div>
                    <asp:HiddenField ID="hdfidid_list_img" Value='<%# Eval("id_list_img") %>' runat="server"/>
                        <asp:SqlDataSource ID="sqlIMG" runat="server" ConnectionString="<%$ ConnectionStrings:nguyenvancudbConnectionString1 %>" SelectCommand="SELECT TOP 1 * FROM IMG where id_list_img=@id_list_img">
                            <SelectParameters>
                                <asp:ControlParameter Name="id_list_img" ControlID="hdfidid_list_img" Type="Int32" DefaultValue=""/>
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:Repeater ID="Repeater2" DataSourceID="sqlIMG" runat="server">
                            <ItemTemplate>
                    <div class="col-6">
                        <img style="height:100px; width:100px;object-fit:cover" src="IMG/product_img/<%# Eval("link")%>" alt="Alternate Text" />
                    </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ItemTemplate>
                </asp:Repeater>
                    <div class="col-3"><%# Eval("COUNT") %></div>
                </div>
                                <hr />
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
