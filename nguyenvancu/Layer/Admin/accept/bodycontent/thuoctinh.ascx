<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="thuoctinh.ascx.cs" Inherits="nguyenvancu.Layer.Admin.accept.bodycontent.thuoctinh" %>
<form runat="server">
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=nguyenvancudbEntities" DefaultContainerName="nguyenvancudbEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="properties"></asp:EntityDataSource>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="EntityDataSource1" InsertItemPosition="LastItem" OnItemInserting="ListView1_ItemInserting">
    <EmptyDataTemplate>
        <table runat="server" style="">
            <tr>
                <td>No data was returned.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <tr style="">
            <td>
                <asp:TextBox ID="namesTextBox" runat="server" Text='<%# Bind("names") %>' />
            </td>
            <td>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="">
            <td>
                <asp:Label ID="namesLabel" runat="server" Text='<%# Eval("names") %>' />
            </td>
            <td>
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                        <tr runat="server" style="">
                            <th runat="server">names</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>
                </td>
            </tr>
        </table>
    </LayoutTemplate>
    <EditItemTemplate>
        <td>
                <asp:TextBox ID="namesTextBox" runat="server" Text='<%# Bind("names") %>' />
            </td>
            <td>
                <asp:Button ID="SaveButton" runat="server" SaveButton_Edit="" Text="Save" />
                <asp:Button ID="CancelButton_Edit" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
    </EditItemTemplate>
</asp:ListView>
</form>