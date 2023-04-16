<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="nguyenvancu.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
     <div class="container">      
         <div class="row">
             <asp:Label runat="server" ID="DanhMuc">Tất cả các sách tại cửa hàng</asp:Label>
         </div>
        <div class="row">
            <asp:SqlDataSource ID="sqlproduct" runat="server" ConnectionString="<%$ ConnectionStrings:nguyenvancudbConnectionString1 %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
            <asp:Repeater ID="rptsach" runat="server">
                <ItemTemplate>
                    <asp:HiddenField ID="hdfIDsach" Value='<%# Eval("id_list_img") %>' runat="server"/>
                    <div class="col-lg-4 col-6">
                        <div class="thumbnail">     
                            <a href="product/id=<%# Eval("id") %>" target="_blank">
            <asp:SqlDataSource ID="sqlIMG" runat="server" ConnectionString="<%$ ConnectionStrings:nguyenvancudbConnectionString1 %>" SelectCommand="SELECT TOP 1 * FROM IMG where id_list_img=@id_list_img">
                <SelectParameters>
                    <asp:ControlParameter Name="id_list_img" ControlID="hdfIDsach" Type="Int32" DefaultValue=""/>
                </SelectParameters>
            </asp:SqlDataSource>
                                <asp:Repeater ID="repeteranh" DataSourceID="sqlIMG" runat="server">
                                    <ItemTemplate>
                                <img src="IMG/product_img/<%# Eval("link") is null?"err.jpg":Eval("link") %>">                    
                                    </ItemTemplate>
                                </asp:Repeater>
                                <img src="IMG/product_img/err.jpg" runat="server" visible='<%# Eval("id_list_img") is null%>'/>                    
                            </a>
                            <div class="caption">
                                <p><%# Eval("names") %></p>
                                    <p>Giá Bán:  <span><%# Eval("price") %>.000 Đồng</span></p>
                                <a href="#" class="btn btn-light btn-mua" values='<%# Eval("id") %>'>Mua ngay</a>
                            </div>            
                        </div>
                   </div>
                </ItemTemplate>
            </asp:Repeater>
            <script>
                $(document).ready(function () {
                    $("a.btn-mua ").click(function () {
                        var value = $(this).attr("values");
                        $.get(`/cart.aspx?id=${value}`, function () {
                            swal('Thêm thành công!', '', 'success');
                        })
                    });
                });

            </script>
        </div>
    </div>
</asp:Content>