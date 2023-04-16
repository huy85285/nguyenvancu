<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="menu.ascx.cs" Inherits="nguyenvancu.Layer.menu" %>
<link href="../../../../Content/menulv4.css" rel="stylesheet" />
<div class="container-fluid" style="position: relative;
    height: 30px;">
    <div class="menu_on_top">
        <div>DANH MỤC</div>
        <asp:SqlDataSource ID="SDS_menu1" runat="server" ConnectionString="<%$ ConnectionStrings:nguyenvancudbConnectionString1 %>" SelectCommand="SELECT * FROM [menu] WHERE ([lv] = @lv)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="lv" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                <asp:Repeater ID="rpt_menulv1" DataSourceID="SDS_menu1" runat="server">
                    <ItemTemplate>
            <div class="menu menu1 row">
                <div class="col-6 col-md">
                    <a href="collections?id=<%# Eval("id") %>"><%# Eval("names") %></a>
                    <asp:HiddenField ID="hdnId" Value='<%#Eval("id") %>' runat="server" />
                    <asp:EntityDataSource ID="EDS_menu2" runat="server"  ConnectionString="name=nguyenvancudbEntities" DefaultContainerName="nguyenvancudbEntities" EnableFlattening="False" EntitySetName="menus" Where="it.lv==2 and it.menuownerid=@menuownerid">
                    <WhereParameters>
                        <asp:ControlParameter ControlID="hdnId" PropertyName="Value" Type="int32" DefaultValue="" Name="menuownerid"/>
                    </WhereParameters>
                </asp:EntityDataSource>
                    <div class="menu2 row">
                    <asp:Repeater ID="rpt_menulv2" DataSourceID="EDS_menu2" runat="server">
                    <ItemTemplate>
                        <asp:HiddenField ID="hdnId" Value='<%#Eval("id") %>' runat="server" />
                        <div class="col-4">
                    <asp:HiddenField ID="hdnId2" Value='<%#Eval("id") %>' runat="server" />
                            <a href="collections?id=<%# Eval("id") %>"><%# Eval("names") %></a>
                            <hr>
                            <asp:EntityDataSource ID="EDS_menu3" runat="server"  ConnectionString="name=nguyenvancudbEntities" DefaultContainerName="nguyenvancudbEntities" EnableFlattening="False" EntitySetName="menus" Where="it.lv==3 and it.menuownerid=@menuownerid">
                    <WhereParameters>
                        <asp:ControlParameter ControlID="hdnId2" PropertyName="Value" Type="int32" DefaultValue="" Name="menuownerid"/>
                    </WhereParameters>
                </asp:EntityDataSource>
                            <asp:Repeater ID="rpt_menulv3" runat="server" DataSourceID="EDS_menu3">
                                <ItemTemplate>
                            <div class="col-12 row menu3">
                                <div>
                    <asp:HiddenField ID="hdnId3" Value='<%#Eval("id") %>' runat="server" />
                                    
                                    <a href="collections?id=<%# Eval("id") %>" class="col-4"><%# Eval("names") %></a>
                            <asp:EntityDataSource ID="EDS_menu4" runat="server"  ConnectionString="name=nguyenvancudbEntities" DefaultContainerName="nguyenvancudbEntities" EnableFlattening="False" EntitySetName="menus" Where="it.lv==4 and it.menuownerid=@menuownerid">
                    <WhereParameters>
                        <asp:ControlParameter ControlID="hdnId3" PropertyName="Value" Type="int32" DefaultValue="" Name="menuownerid"/>
                    </WhereParameters>
                </asp:EntityDataSource>
                                    <div class="row menu4">
                                    <asp:Repeater ID="rpt_menulv4" DataSourceID="EDS_menu4" runat="server">
                                        <ItemTemplate>
                                        <div>
                                            <a href="collections?id=<%# Eval("id") %>" class="col-4"><%# Eval("names") %></a>
                                    </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    </div>
                                </div>
                            </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </ItemTemplate>
                     </asp:Repeater>
                    </div>

                </div>
            </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
</div>