using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nguyenvancu.Models;

namespace nguyenvancu.Layer.Admin.accept.bodycontent
{
    public partial class menu : System.Web.UI.UserControl
    {
            nguyenvancudbEntities src = new nguyenvancudbEntities();
            Models.menu menus;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.SelectedIndex = 0;
                DropDownList2.SelectedIndex = 0;
                DropDownList3.SelectedIndex = 0;
                DropDownList4.SelectedIndex = 0;
                resetfrom();
            }
        }

        private void resetfrom()
        {
            foreach (Control item in Page.Form.Controls)
            {
                if (item is Panel)
                {
                    foreach (Control item2 in item.Controls)
                    {
                        if (item2 is TextBox)
                        {
                            (item2 as TextBox).Text = "";
                        }
                    }
                }
            }
        }

        protected void btnmenu1add_Click(object sender, EventArgs e)
        {
            if (src.menus.Count(x=>x.names ==txtmenu1.Text)>0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Đã có tên này trong danh mục!','', 'error');", true);
                return;
            }
            menus = new Models.menu();
            menus.names = txtmenu1.Text;
            menus.lv = 1;
            src.menus.Add(menus);
            int sl=src.SaveChanges();
            EntityDataSource1.DataBind();
            DropDownList1.DataBind();
            DropDownList1.SelectedValue = menus.id + "";
            resetfrom();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Thành công!','', 'success');", true);
        }

        protected void btnmenu1mdf_Click(object sender, EventArgs e)
        {
            if (src.menus.Count(x => x.names == txtmenu1.Text) > 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Đã có tên này trong danh mục!','', 'error');", true);
                return;
            }
            menus = src.menus.Find(int.Parse(DropDownList1.SelectedValue));
            menus.names = txtmenu1.Text;
            menus.lv = 1;
            src.SaveChanges();
            EntityDataSource1.DataBind();
            DropDownList1.DataBind();
            DropDownList1.SelectedValue = menus.id + ""; 
            resetfrom();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Thành công!','', 'success');", true);
        }
        protected void btnmenu2add_Click(object sender, EventArgs e)
        {
            if (src.menus.Count(x => x.names == txtmenu2.Text) > 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Đã có tên này trong danh mục!','', 'error');", true);
                return;
            }
            else if (DropDownList1.SelectedIndex == -1)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Danh mục cha!','', 'error');", true);
                return;
            }
            menus = new Models.menu();
            menus.names = txtmenu2.Text;
            menus.lv = 2;
            menus.menuownerid = int.Parse(DropDownList1.SelectedValue);
            src.menus.Add(menus);
            EntityDataSource2.DataBind();
            src.SaveChanges();
            DropDownList2.DataBind();
            DropDownList2.SelectedValue = menus.id + "";
            resetfrom();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Thành công!','', 'success');", true);
        }
        protected void btnmenu2mdf_Click(object sender, EventArgs e)
        {
            if (src.menus.Count(x => x.names == txtmenu2.Text) > 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Đã có tên này trong danh mục!','', 'error');", true);
                return;
            }
            menus = src.menus.Find(int.Parse(DropDownList2.SelectedValue));
            menus.names = txtmenu2.Text;
            menus.lv = 2;
            menus.menuownerid = int.Parse(DropDownList1.SelectedValue);
            EntityDataSource2.DataBind();
            DropDownList2.DataBind();
            src.SaveChanges();
            DropDownList2.SelectedValue = menus.id + "";
            resetfrom();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Thành công!','', 'success');", true);
        }
        protected void btnmenu3add_Click(object sender, EventArgs e)
        {
            if (src.menus.Count(x => x.names == txtmenu3.Text) > 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Đã có tên này trong danh mục!','', 'error');", true);
                return;
            }
            else if (DropDownList2.SelectedIndex == -1)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Danh mục cha!','', 'error');", true);
                return;
            }
            menus = new Models.menu();
            menus.names = txtmenu3.Text;
            menus.lv = 3;
            src.menus.Add(menus);
            menus.menuownerid = int.Parse(DropDownList2.SelectedValue);
            src.SaveChanges();
            EntityDataSource3.DataBind();
            DropDownList3.DataBind();
            DropDownList3.SelectedValue = menus.id + "";
            resetfrom();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Thành công!','', 'success');", true);
        }
        protected void btnmenu3mdf_Click(object sender, EventArgs e)
        {
            if (src.menus.Count(x => x.names == txtmenu3.Text) > 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Đã có tên này trong danh mục!','', 'error');", true);
                return;
            }
            menus = src.menus.Find(int.Parse(DropDownList3.SelectedValue));
            menus.names = txtmenu3.Text;
            menus.lv = 3;
            menus.menuownerid = int.Parse(DropDownList2.SelectedValue);
            EntityDataSource3.DataBind();
            src.SaveChanges();
            DropDownList3.DataBind();
            DropDownList3.SelectedValue = menus.id + "";
            resetfrom();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Thành công!','', 'success');", true);
        }
        protected void btnmenu4add_Click(object sender, EventArgs e)
        {
            if (src.menus.Count(x => x.names == txtmenu4.Text) > 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Đã có tên này trong danh mục!','', 'error');", true);
                return;
            }
            else if (DropDownList3.SelectedIndex == -1)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Danh mục cha!','', 'error');", true);
                return;
            }
            menus = new Models.menu();
            menus.names = txtmenu4.Text;
            menus.lv = 4;
            menus.menuownerid = int.Parse(DropDownList3.SelectedValue);
            src.menus.Add(menus);
            EntityDataSource4.DataBind();
            src.SaveChanges();
            DropDownList4.DataBind();
            DropDownList4.SelectedValue = menus.id + "";
            resetfrom();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Thành công!','', 'success');", true);
        }
        protected void btnmenu4mdf_Click(object sender, EventArgs e)
        {
            if (src.menus.Count(x => x.names == txtmenu4.Text) > 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Đã có tên này trong danh mục!','', 'error');", true);
                return;
            }
            menus = src.menus.Find(int.Parse(DropDownList4.SelectedValue));
            menus.names = txtmenu4.Text;
            menus.lv = 4;
            menus.menuownerid = int.Parse(DropDownList3.SelectedValue);
            EntityDataSource4.DataBind();
            src.SaveChanges();
            DropDownList4.DataBind();
            DropDownList4.SelectedValue = menus.id + "";
            resetfrom();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Thành công!','', 'success');", true);
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            EntityDataSource2.DataBind();
            DropDownList2.DataBind();
            if (DropDownList2.Items.Count > 0)
            {
                DropDownList2.SelectedIndex = 0;
            }
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            EntityDataSource3.DataBind();
            DropDownList3.DataBind();
            if (DropDownList3.Items.Count>0)
            {
            DropDownList3.SelectedIndex = 0;
            }
        }
        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            EntityDataSource4.DataBind();
            DropDownList4.DataBind();
            if (DropDownList4.Items.Count > 0)
            {
                DropDownList4.SelectedIndex = 0;
            }
        }
    }
}