<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="sidebar.ascx.cs" Inherits="nguyenvancu.Layer.Admin.accept.sidebar" %>
<nav id="slidebar" class="col-xl-3 navbar-expand-xl badge-secondary navbar-light "style="background-color:transparent; border-radius:15px;">
         <!-- Brand -->

         <!-- Toggler/collapsibe Button -->
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleSidebar">
            <span class="navbar-toggler-icon"></span>
         </button>
    <div class="collapse navbar-collapse" id="collapsibleSidebar" >
        <ul class="navbar-collapse row  navbar-light mb-0 " style="border-radius:10px; min-width:230px;background-color:rgb(105 55 13);transition:0.2s">
               <li class="col">
                  <a class="nav-link" href="#" style="color:whitesmoke;min-width:200px">Bán hàng</a>
               </li>
               <li class="col">
                  <a class="nav-link" href="#" style="color:whitesmoke;min-width:200px">Tìm kiếm hàng hoá</a>
               </li>
               <li class="col">
                  <a class="nav-link" href="?query=themhanghoa" style="color:whitesmoke;min-width:200px">Thêm hàng hoá</a>
               </li>
               <li class="col">
                  <a class="nav-link" href="?query=danhmuc" style="color:whitesmoke;min-width:200px">Quản lý danh mục sản phẩm</a>
               </li>
                <li class="col">
                  <a class="nav-link" href="#" style="color:whitesmoke;min-width:200px">Tra cứu hoá đơn</a>
               </li>
                <li class="col">
                  <a class="nav-link" href="#" style="color:whitesmoke;min-width:200px">Quản lý khuyến mãi</a>
               </li>
                <li class="col">
                  <a class="nav-link" href="#" style="color:whitesmoke;min-width:200px">Quảng lý khách hàng</a>
               </li>
               <li class="col">
                  <a class="nav-link" href="?query=thuoctinh" style="color:whitesmoke;min-width:200px">Quảng lý thuộc tính</a>
               </li>
                <li class="col">
                  <a class="nav-link" href="#" style="color:whitesmoke;min-width:200px">Nhập kho</a>
               </li>
               <li class="col">
                  <a class="nav-link" href="#" style="color:whitesmoke;min-width:200px">Kho</a>
               </li>
                <li class="col">
                  <a class="nav-link" href="#"style="color:whitesmoke;min-width:200px">Danh thu</a>
               </li>
            </ul>
    </div>
</nav>