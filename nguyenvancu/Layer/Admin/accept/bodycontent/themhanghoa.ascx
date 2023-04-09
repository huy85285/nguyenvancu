<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="themhanghoa.ascx.cs" Inherits="nguyenvancu.Layer.Admin.accept.bodycontent.WebUserCondanhmuctrol1" %>
<link href="../../../../Content/bootstrap.min.css" rel="stylesheet" />
<form runat="server" class="container-fluid">
  <div class="row">
    <label class="col-12 col-md-4 m-0" for="txtnames">Tên sách</label>
    <asp:TextBox class="col col-md-8 m-0" ID="txtnames" runat="server" placeholder="Tên sách" AutoPostBack="True" OnTextChanged="txtnames_TextChanged"/>
    <asp:RequiredFieldValidator ValidationGroup="err1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mục này không để rỗng" Text="*" ControlToValidate="txtnames"></asp:RequiredFieldValidator>
  </div>
  <div class="row">
    <label class="col-12 col-md-4 m-0" for="txtgia">Giá niêm yết</label>
    <asp:TextBox class="col col-md-8 m-0" ID="txtgia" runat="server" placeholder="Giá niêm yết"/>
    <asp:RequiredFieldValidator ValidationGroup="err1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mục này không để rỗng" Text="*" ControlToValidate="txtgia"></asp:RequiredFieldValidator>
      <asp:RangeValidator ID="RangeValidator2" ValidationGroup="err1" ControlToValidate="txtgia" runat="server" ErrorMessage="Số nguyên dương" Text="*" MaximumValue="9999999" MinimumValue="1" Type="Integer"></asp:RangeValidator>
  </div>
  <div class="row">
    <label class="col-4" for="chkispromotion">Giảm giá</label>
      <asp:CheckBox ID="chkispromotion" class="col" Text="" runat="server" Checked="false"/>
  </div>
  <div class="row">
    <label class="col-12 col-md-4 m-0" for="txtgiagiam">Giá giảm</label>
    <asp:TextBox class="col col-md-8 m-0" ID="txtgiagiam" runat="server" placeholder="Giá giảm"/>
          <asp:RequiredFieldValidator ValidationGroup="err1" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Mục này không để rỗng" Text="*" ControlToValidate="txtgia"></asp:RequiredFieldValidator>

      <asp:RangeValidator ID="RangeValidator1" ValidationGroup="err1" ControlToValidate="txtgiagiam" runat="server" ErrorMessage="Số nguyên dương" Text="*" MaximumValue="9999999" MinimumValue="1" Type="Integer"></asp:RangeValidator>
  </div>
  <div class="row">
        <label class="col-12 col-md-4 m-0" for="txtnoidung">Nội dung</label>
        <textarea class="col col-md-8 m-0" ID="txtnoidung" runat="server" placeholder="Nội dung"></textarea>
    </div>
  <div class="row">
      <label class="col-12 col-md-4 m-0" for="txtnoidung">Danh mục</label>
      <asp:DropDownList CssClass="col-12" ID="DDL_menu" DataSourceID="EDS_listimg" DataTextField="names" DataValueField="id" runat="server"></asp:DropDownList>
        <p>
            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapsemenus" aria-expanded="false" id="collapsemenusbtn">
                 Danh mục chi tiết
            </button>
        </p>
        <div class="collapse" id="collapsemenus">
          <div class="card card-body">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-12 p-3 border-info border">
                    <asp:Panel ID="Panel1" runat="server" DefaultButton="btnmenu1add">
                        <div class="text-center m-1">Menu cấp 1</div>
                        <asp:DropDownList CssClass="col m-1 w-75" ID="DropDownList1" runat="server"
                            DataSourceID="EntityDataSource1" DataTextField="names" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                            <div class="col-12">
                                <asp:Button CssClass="w-25 m-1" ID="btnmenu1add" runat="server" Text="Chọn"
                                    OnClick="btnmenu1add_Click" ValidationGroup="err1" />
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
                            <div class="auto-style1">
                                <asp:Button CssClass="w-25 m-1" ID="btnmenu2add" runat="server" Text="Chọn"
                                    OnClick="btnmenu2add_Click" ValidationGroup="err2" data-toggle="collapsemenus" data-target="#collapseExample" />
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
                            style="left: 0px; top: 0px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" >
                        </asp:DropDownList>
                            <div class="col-12">
                                <asp:Button CssClass="w-25 m-1" ID="btnmenu3add" runat="server" Text="Chọn"
                                    OnClick="btnmenu3add_Click" ValidationGroup="err3" data-toggle="collapsemenus" data-target="#collapseExample"/>
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
                            style="left: 0px; top: 0px" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                        </asp:DropDownList>
                        <div>
                            <div class="auto-style1">
                                <strong>
                                <asp:Button ID="btnmenu4add" runat="server" CssClass="w-25 m-1" data-target="#collapseExample" data-toggle="collapsemenus" OnClick="btnmenu4add_Click" Text="Chọn" ValidationGroup="err4" />
                                </strong>
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
          </div>
        </div>
  </div>
  <div class="row">
    <label class="col-12" for="txtgiagiam">Danh mục</label>
      <asp:ListView ID="LVWdetailproduct" runat="server" DataKeyNames="idproperties" InsertItemPosition="FirstItem" OnItemInserting="LVWdetailproduct_ItemInserting" OnItemDeleting="LVWdetailproduct_ItemDeleting" OnItemEditing="LVWdetailproduct_ItemEditing" OnItemUpdating="LVWdetailproduct_ItemUpdating" OnItemCanceling="LVWdetailproduct_ItemCanceling">
          <ItemTemplate>
              <tr>
                  <td>
                      <asp:DropDownList ID="DropDownList1" DataSourceID="EDSproperti" SelectedValue='<%# Eval("idproperties") %>' DataValueField="id" DataTextField="names" runat="server" Enabled="false"></asp:DropDownList>
                  </td>
                  <td>
                      <asp:TextBox ID="datasTextBox" runat="server" Text='<%# Eval("datas") %>' Enabled="false"/>
                  </td>
                  <td>
                      <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                      <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                  </td>
              </tr>
          </ItemTemplate>
          <EditItemTemplate>
              <tr>
                 <td>
                      <asp:DropDownList Enabled="false" ID="DropDownList1" DataSourceID="EDSproperti" SelectedValue='<%# Bind("idproperties") %>' DataValueField="id" DataTextField="names" runat="server"></asp:DropDownList>
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
          <InsertItemTemplate>
              <tr>
                  <td>
                      <asp:DropDownList ID="DropDownList1" DataSourceID="EDSproperti" SelectedValue='<%# Bind("idproperties") %>' DataValueField="id" DataTextField="names" runat="server"></asp:DropDownList>
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
          <EmptyItemTemplate>
              <tr>
                  <td>
              Mời Nhập dữ liệu
                  </td>
              </tr>
          </EmptyItemTemplate>
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
        <label class="col-12" for="txtgiagiam">Danh mục</label>
        <asp:ListView ID="LVW_list_img" runat="server" DataKeyNames="link" InsertItemPosition="FirstItem" OnItemCanceling="LVW_list_img_ItemCanceling" OnItemDeleting="LVW_list_img_ItemDeleting" OnItemEditing="LVW_list_img_ItemEditing" OnItemInserting="LVW_list_img_ItemInserting" OnItemUpdating="LVW_list_img_ItemUpdating">
           <InsertItemTemplate>
               <tr>
                  <td>
                     <asp:FileUpload ID="FileUpload1" runat="server" accept="image/*,.pdf"/>
                  </td>
                  <td>
                      <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                      <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                  </td>
              </tr>
           </InsertItemTemplate>
          <ItemTemplate>
              <tr>
                    <td>
                        <asp:Image ID="IMGProduct" ImageUrl=<%# Eval("link","~/IMG/product_img/{0}") %> Style="height:50px" runat="server" />
                    </td>
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    </td>
                </tr>
          </ItemTemplate>
          <EmptyItemTemplate>
              <tr>
                  <td>
              Mời Nhập dữ liệu
                  </td>
              </tr>
          </EmptyItemTemplate>
          <EditItemTemplate>
              <tr>
                 <td>
                     <asp:FileUpload ID="FileUpload1" runat="server" accept="image/*,.pdf" Names='<%# Eval("link") %>' />
                  </td>
                  <td>
                      <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                      <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                  </td>
               </tr>
          </EditItemTemplate>
          <LayoutTemplate>
              <table runat="server">
                  <tr runat="server">
                      <td runat="server">
                          <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                              <tr runat="server" style="">
                                  <th runat="server">Ảnh</th>
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
       <asp:Button Text="Ghi" runat="server" OnClick="Unnamed1_Click" ValidationGroup="err1"/>
       <asp:Button Text="Không" runat="server" OnClick="Unnamed2_Click" />
   </div>
<%-- data --%>
    <asp:EntityDataSource ID="EDSproperti" runat="server" ConnectionString="name=nguyenvancudbEntities" DefaultContainerName="nguyenvancudbEntities" EnableFlattening="False" EntitySetName="properties" Select="it.[names], it.[id]"></asp:EntityDataSource>
    <asp:EntityDataSource ID="EDS_listimg" runat="server" ConnectionString="name=nguyenvancudbEntities" DefaultContainerName="nguyenvancudbEntities" EnableFlattening="False" EntitySetName="menus"></asp:EntityDataSource>
</form>