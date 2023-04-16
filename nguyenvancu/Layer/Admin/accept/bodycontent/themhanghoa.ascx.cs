using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nguyenvancu.Models;
using System.IO;

namespace nguyenvancu.Layer.Admin.accept.bodycontent
{
    public partial class WebUserCondanhmuctrol1 : System.Web.UI.UserControl
    {
        nguyenvancudbEntities src ;
        product products;
        Models.CONTENT contents;
        List<detailproduct> listdetailproduc;
        List<IMG> list_imgs;
        protected void Page_Load(object sender, EventArgs e)
        {
                if (Session["contents"] is null)
                {
                    Session["contents"] = new Models.CONTENT();
                }
                if (Session["products"] is null)
                {
                    Session["products"] = new product();
                }
                if (Session["listdetailproduc"] is null)
                {
                    Session["listdetailproduc"] = new List<detailproduct>();
                }
                if (Session["list_imgs"] is null)
                {
                    Session["list_imgs"] = new List<IMG>();
                }
            
            src = new nguyenvancudbEntities();
            products= Session["products"] as product;
            contents = Session["contents"] as Models.CONTENT;
            listdetailproduc = Session["listdetailproduc"] as List<detailproduct>;
            list_imgs = Session["list_imgs"] as List<IMG>;
            Page.LoadComplete += Page_LoadComplete;
        }
        private void Page_LoadComplete(object sender, EventArgs e) 
        {
            Session["products"]=products;
            Session["contents"]=contents;
            //listdetailproduc
            Session["listdetailproduc"] = listdetailproduc;
            LVWdetailproduct.DataSource = listdetailproduc;
            LVWdetailproduct.DataBind();
            //list_imgs
            Session["list_imgs"] = list_imgs;
            LVW_list_img.DataSource = list_imgs;
            LVW_list_img.DataBind();
        }
        protected void txtnames_TextChanged(object sender, EventArgs e)
            {
            txtnames.Text = (sender as TextBox).Text;
            if (txtnames.Text != "" && src.products.Count(x => x.names == txtnames.Text) > 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Đã tồn tại tên mặc hàng này!','', 'error');", true);
                txtnames.Text = "";
                return;
            }
        }

        protected void LVWdetailproduct_ItemInserting(object sender, ListViewInsertEventArgs e)
        {
            if (listdetailproduc.FindAll(x => x.idproperties == Convert.ToInt32(e.Values["idproperties"])).Count > 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Thuộc tính này đã được thêm rồi!','', 'error');", true);
                return;
            }
            detailproduct detailproduct = new detailproduct();
            detailproduct.product = products;
            detailproduct.idproperties = Convert.ToInt32(e.Values["idproperties"]);
            detailproduct.datas = e.Values["datas"].ToString();
            listdetailproduc = Session["listdetailproduc"] as List<detailproduct>;
            listdetailproduc.Add(detailproduct);
        }
        protected void LVWdetailproduct_ItemEditing(object sender, ListViewEditEventArgs e)
        {
            LVWdetailproduct.EditIndex = e.NewEditIndex;
        }

        protected void LVWdetailproduct_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {
            var newdata = LVWdetailproduct.DataKeys[(e.ItemIndex)].Value;
            listdetailproduc.RemoveAll(x => x.idproduct == products.id && x.idproperties == Convert.ToInt32(newdata));
        }

        protected void LVWdetailproduct_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
            var newdata=e.NewValues;
            var row=listdetailproduc.Find(x=>x.idproperties == Convert.ToInt32(newdata["idproperties"]));
            row.datas = newdata["datas"].ToString();
            LVWdetailproduct.EditIndex = -1;
        }

        protected void LVWdetailproduct_ItemCanceling(object sender, ListViewCancelEventArgs e)
        {
            LVWdetailproduct.EditIndex = -1;
        }

        protected void LVW_list_img_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {
            var data = LVW_list_img.DataKeys[(e.ItemIndex)].Value;
            File.Delete(Server.MapPath($"/IMG/product_img/{data}"));
            list_imgs.RemoveAll(x=>x.link== data.ToString());
        }

        protected void LVW_list_img_ItemEditing(object sender, ListViewEditEventArgs e)
        {
            LVW_list_img.EditIndex = e.NewEditIndex;
        }

        protected void LVW_list_img_ItemInserting(object sender, ListViewInsertEventArgs e)
        {
            FileUpload fileUploads = LVW_list_img.InsertItem.Controls[1] as FileUpload;
            string link = (txtnames.Text + DateTime.Now.ToString()  + Session.SessionID).Replace(" ", "").Replace(".", "").Replace(":", "").Replace("/", "")+ fileUploads.FileName;
            int abc = src.IMGs.Count(x => x.link == link);
            if (abc != 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Lỗi hệ thống thử lại!','', 'error');", true);
                return;
            }
            if (!fileUploads.HasFile)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Chưa thêm fille!','', 'error');", true);
                return;
            }
            string path = Server.MapPath($"/IMG/product_img/")+ link;
            fileUploads.SaveAs(path);
            IMG newimg = new IMG();
            newimg.link = link;
            list_imgs.Add(newimg);
        }

        protected void LVW_list_img_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
            string linkold = e.Keys[0].ToString();
            IMG rows = list_imgs.FindLast(x => x.link == linkold);
            int abc = src.IMGs.Count(x => x.link == linkold);
            FileUpload fileUpload = LVW_list_img.EditItem.Controls[1] as FileUpload;
            if (!fileUpload.HasFile)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Chưa thêm fille!','', 'error');", true);
                return;
            }
            if (!File.Exists(Server.MapPath($"/IMG/product_img/{linkold}")))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Lỗi hệ thống thử lại!','', 'error');", true);
                return;
            }else
            {
                File.Delete(Server.MapPath($"/IMG/product_img/{linkold}"));
                fileUpload.SaveAs(Server.MapPath($"/IMG/product_img/{linkold}"));
            }
            //}
            //var row = list_imgs.Find(x => x.link == );
            //row.datas = newdata["datas"].ToString();
            LVW_list_img.EditIndex = -1;
        }

        protected void LVW_list_img_ItemCanceling(object sender, ListViewCancelEventArgs e)
        {
            LVW_list_img.EditIndex = -1;
        }

        protected void btnmenu4add_Click(object sender, EventArgs e)
        {
            DDL_menu.SelectedValue = DropDownList4.SelectedValue;
        }

        protected void btnmenu3add_Click(object sender, EventArgs e)
        {
            DDL_menu.SelectedValue = DropDownList3.SelectedValue;
        }

        protected void btnmenu2add_Click(object sender, EventArgs e)
        {
            DDL_menu.SelectedValue = DropDownList2.SelectedValue;
        }

        protected void btnmenu1add_Click(object sender, EventArgs e)
        {
            DDL_menu.SelectedValue = DropDownList1.SelectedValue;
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            EntityDataSource2.DataBind();
            DropDownList2.DataBind();
            if (DropDownList2.Items.Count > 0)
            {
                DropDownList2.SelectedIndex = 0;
            }
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", @"$('#collapsemenus').addClass(function( index ) {
  return 'show ' + index;
        });", true);
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            EntityDataSource3.DataBind();
            DropDownList3.DataBind();
            if (DropDownList3.Items.Count > 0)
            {
                DropDownList3.SelectedIndex = 0;
            }
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", @"$('#collapsemenus').addClass(function( index ) {
  return 'show ' + index;
        });", true);
        }
        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            EntityDataSource4.DataBind();
            DropDownList4.DataBind();
            if (DropDownList4.Items.Count > 0)
            {
                DropDownList4.SelectedIndex = 0;
            }
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", @"$('#collapsemenus').addClass(function( index ) {
  return 'show ' + index;
        });", true);
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", @"$('#collapsemenus').addClass(function( index ) {
  return 'show ' + index;
        });", true);
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            int giagiam,gia;
            LIST_IMG lIST_IMGs = new LIST_IMG();
            if (txtnames.Text == ""|| src.products.Count(x => x.names == txtnames.Text) > 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Đã tồn tại tên mặc hàng này!','', 'error');", true);
                txtnames.Text = "";
                txtnames.Focus();
                return;
            }
            if (txtgiagiam.Text==""||!int.TryParse(txtgiagiam.Text,out giagiam))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Giá là số nguyên dương!','', 'error');", true);
                txtgiagiam.Text = "";
                txtgiagiam.Focus();
                return;
            }
            if (txtgia.Text == "" || !int.TryParse(txtgia.Text, out gia))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Giá là số nguyên dương!','', 'error');", true);
                txtgia.Text = "";
                txtgia.Focus();
                return;
            }
            lIST_IMGs.id_user = Session["username"].ToString();
            lIST_IMGs.@class = "ADMINS";
            lIST_IMGs.date_update = DateTime.Now;
            foreach (IMG item in list_imgs)
            {
                item.LIST_IMG = lIST_IMGs;
                item.mota = txtnames.Text;
                src.IMGs.Add(item);
            }
            foreach (detailproduct item in listdetailproduc)
            {
                item.product = products;
                src.detailproducts.Add(item);
            }
            contents.texts = txtnoidung.InnerText;
            contents.ADMIN = src.ADMINS.Find(Session["username"].ToString());
            products.names = txtnames.Text;
            products.price = int.Parse(txtgia.Text);
            products.price_promotion = int.Parse(txtgiagiam.Text);
            products.idADMINSLASTMDF = Session["username"].ToString();
            //products.idcompany nợ
            products.idmenu = Convert.ToInt32(DDL_menu.SelectedValue);
            products.CONTENT = contents;
            products.ispromotion = chkispromotion.Checked;
            products.is_available = true;
            if (list_imgs.Count==0)
            {
                products.LIST_IMG = null;
            }
            else
            {
            products.LIST_IMG = lIST_IMGs;
            }
            src.LIST_IMG.Add(lIST_IMGs);
            src.CONTENTs.Add(contents);
            src.products.Add(products);
            if (src.SaveChanges()>0)
            {
                contents = null;
                products = null;
                listdetailproduc = null;
                list_imgs = null;
                txtgia.Text = "";
                txtgiagiam.Text = "";
                txtnames.Text = "";
                txtnoidung.Value = "";
            }
            ;
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            foreach (IMG item in list_imgs)
            {
                File.Delete(MapPath($"/IMG/product_img/{item.link}"));
            }
            contents = null;
            products = null;
            listdetailproduc= null;
            list_imgs= null;
        }
    }
}