<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="nav.ascx.cs" Inherits="nguyenvancu.Layer.Admin.accept.nav" %>
<div id="nav" class="bg-dark navbar-dark">
      <nav class="navbar navbar-expand-lg container-lg">
         <!-- Brand -->
         <a class="navbar-brand" href="?">NGUYỄN VĂN CỪ</a>

         <!-- Toggler/collapsibe Button -->
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
         </button>

         <!-- Navbar links -->
         <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
               <li class="nav-item ">
                  <a class="nav-link info" href="?query=info">Thông tin cá nhân</a>
               </li>
                <li class="nav-item">
                  <a class="nav-link changepass" href="?query=changepass">Đổi mật khẩu</a>
               </li>
                <li class="nav-item ">
                  <a class="nav-link" href="?query=sign_out">đăng xuất</a>
               </li>
            </ul>
         </div>
      </nav>
</div>