<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="nguyenvancu.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="container">
        <div class="row">
            <div class="deatail-product">
                <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
                    <div class="row row-width">
                        <h1 class="title-product" itemprop="name">Bí Kíp Luyện Rồng</h1>
                        <div class="product-detail-left product-images col-xs-12 col-sm-6 col-md-6 col-lg-6">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="thumbnail">
                                            <a href="IMG/695-1800x900.jpg">
                                                <img src="IMG/695-1800x900.jpg" />
                                                <div class="caption">
                                                    <p></p>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 details-pro">
                                <div class="btn-group">
                                    <span class="first_status"><span class="a_name">Thương hiệu</span> <span class="status_name">DN SÁCH THÀNH NGHĨA
                                    </span>
                                    </span>
                                    <span class="first_status"><span class="a_name">Tình trạng</span> <span class="status_name availabel">Còn hàng										
                                    </span></span>
                                </div>
                                <div class="price_box">
                                    <span class="special-price"><span class="price product-price" itemprop="price">230000Đ</span>
                                        <meta itemprop="priceCurrenly" content="VND" />
                                    </span>
                                    <span class="old-price"><del class="price product-price-old sale" itemprop="priceSpecification">240,000₫</del>
                                        <meta itemprop="priceCurrency" content="VND">
                                    </span>
                                </div>
                                <div class="product-summary product_description">
                                    <div class="rte description text3line">
                                        <p>Tác giả : Tiểu Giàu;&nbsp;</p>
                                        <p>Nhà xuất bản Trẻ;&nbsp;</p>
                                        <p>Phát hành tại Nhà sách Thành Nghĩa và hệ thống Nhà sách Nguyễn Văn Cừ</p>
                                    </div>
                                </div>
                            </div>
                            <div class="form-product col-sm-12">
                                <div class="box-variant clearfix">
                                    <input type="hidden" name="Id" value="1069266019" />
                                </div>
                                <div class="form-group form_button_details">
                                    <header class="not_bg">Số Lượng</header>
                                    <div class="custom input_number_product custom-btn-number form-control">
                                        <asp:Button ID="btntruoc" runat="server" Text="-" />
                                        <input type="text" id="qtym" name="quantity" value="1" class="form-control prd_quantity" onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode) )) return false;" onchange="if(this.value == 0)this.value=1;">
                                        <asp:Button ID="btnsau" runat="server" Text="+" />
                                    </div>
                                    <asp:Button ID="btnmua" runat="server" Text="Mua Ngay" />
                                </div>
                            </div>
                            <<div class="social-sharing ">
                                <span class="ttt hidden">Chia sẻ: </span>
                                <div class="addthis_inline_share_toolbox share_add">
                                </div>
                            </div>
                        </div>
                        <div class="top-tabs-info">
                            <div class="productAnchor_horizonalNavs hidden-xs">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="productAnchor_horizonalNav">
                                            <div class="product_info_image hidden-xs">
                                                <div class="thumbnail">
                                                    <a href="IMG/695-1800x900.jpg"></a>
                                                    <img class="pict_imagelazyload" src="IMG/695-1800x900.jpg" />
                                                    <div class="caption">
                                                    </div>
                                                    <div class="product_info_content hidden-xs">
                                                        <h3 class="product_info_name" title="Bí Quyết Hóa Rồng - Lịch Sử Singapore 1965-2000">Bí Quyết Hóa Rồng - Lịch Sử Singapore 1965-2000</h3>
                                                        <div class="product_info_price">
                                                            <div class="product_info_price_title">
                                                                Giá bán:
                                                            </div>
                                                            <div class="product_info_price_value">
                                                                <div class="product_info_price_value-final">230,000₫</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product_info_buttons">
                                                        <asp:Button ID="btnadd" runat="server" Text="Add To Cart" />
                                                        <span class="txt-main">MUA NGAY</span>
                                                        <a class="btn btn_traGop btn-tra-gop-click s-flag" href="tel:02871086979">
                                                            <span class="txt-main hidden-xs">Liên hệ đặt hàng</span>
                                                            <span class="txt-sub">02871086979</span>
                                                            <i class="fa fa-phone visible-xs" aria-hidden="true"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
    <link href="Content/product.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.bundle.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/sweetalert.min.js"></script>
</asp:Content>

