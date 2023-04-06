<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="themhanghoa.ascx.cs" Inherits="nguyenvancu.Layer.Admin.accept.bodycontent.WebUserCondanhmuctrol1" %>
<link href="../../../../Content/bootstrap.min.css" rel="stylesheet" />
<form runat="server" class="container-fluid">
  <div class="row">
    <label class="col-12 col-md-4 m-0" for="txtnames">Tên sách</label>
    <asp:TextBox class="col col-md-8 m-0" ID="txtnames" runat="server" placeholder="Tên sách" AutoPostBack="True" OnTextChanged="txtnames_TextChanged"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mục này không để rỗng" Text="*" ControlToValidate="txtnames"></asp:RequiredFieldValidator>
  </div>
  <div class="row">
    <label class="col-12 col-md-4 m-0" for="txtgia">Giá niêm yết</label>
    <asp:TextBox class="col col-md-8 m-0" ID="txtgia" runat="server" placeholder="Giá niêm yết"/>
    <asp:RequiredFieldValidator ControlToValidate="txtgia" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mục này không để rỗng" Text="*" ></asp:RequiredFieldValidator>
  </div>
  <div class="row">
    <label class="col-4" for="chkispromotion">Giảm giá</label>
      <asp:CheckBox ID="chkispromotion" class="col" Text="" runat="server" />
  </div>
  <div class="row">
    <label class="col-12 col-md-4 m-0" for="txtgiagiam">Giá giảm</label>
    <asp:TextBox class="col col-md-8 m-0" ID="txtgiagiam" runat="server" placeholder="Giá giảm"/>
    <asp:RequiredFieldValidator ControlToValidate="txtgiagiam" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mục này không để rỗng" Text="*" ></asp:RequiredFieldValidator>
  </div>
    <div class="row">
        <label class="col-12 col-md-4 m-0" for="txtnoidung">Nội dung</label>
        <textarea class="col col-md-8 m-0" ID="txtnoidung" runat="server" placeholder="Nội dung"/>
    </div>
  <div class="row">
    <label class="col-12" for="txtgiagiam">Danh mục</label>
      <asp:ListView ID="ListView1" runat="server" DataKeyNames="idproduct,idproperties" InsertItemPosition="LastItem" OnItemInserting="ListView1_ItemInserting">
          <EditItemTemplate>
                  <td>
                      <asp:DropDownList ID="DropDownList1" DataSourceID="EDSproperti" SelectedValue='<%# Eval("idproperties") %>' DataValueField="id" DataTextField="names" runat="server"></asp:DropDownList>
                  </td>
                  <td>
                      <asp:TextBox ID="datasTextBox" runat="server" Text='<%# Bind("datas") %>' />
                  </td>
                  <td>
                      <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                      <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                  </td>
              </tr>
          </EditItemTemplate>
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
                      <asp:DropDownList ID="DropDownList1" DataSourceID="EDSproperti" SelectedValue='<%# Bind("idproperties") %>' DataValueField="id" DataTextField="names" runat="server"></asp:DropDownList>
                      <asp:HiddenField ID="hididproduct" runat="server" value='<%# Bind("idproduct") %>'/>
                  </td>
                  <td>
                      <asp:TextBox ID="datasTextBox" runat="server" Text='<%# Bind("datas") %>' />
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
                      <asp:DropDownList ID="DropDownList1" DataSourceID="EDSproperti" SelectedValue='<%# Eval("idproperties") %>' DataValueField="id" DataTextField="names" runat="server"></asp:DropDownList>
                  </td>
                  <td>
                      <asp:Label ID="datasLabel" runat="server" Text='<%# Eval("datas") %>' />
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
                                  <th runat="server">Tên thuộc tính</th>
                                  <th runat="server">giá trị</th>
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
                                  <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                              </Fields>
                          </asp:DataPager>
                      </td>
                  </tr>
              </table>
          </LayoutTemplate>
      </asp:ListView>
  </div>
   <div class="row">
       <asp:Button Text="Ghi" runat="server" />
       <asp:Button Text="Không" runat="server" />
   </div>
<%-- data --%>
    <asp:EntityDataSource ID="EDSproperti" runat="server" ConnectionString="name=nguyenvancudbEntities" DefaultContainerName="nguyenvancudbEntities" EnableFlattening="False" EntitySetName="properties" Select="it.[names], it.[id]"></asp:EntityDataSource>
</form>