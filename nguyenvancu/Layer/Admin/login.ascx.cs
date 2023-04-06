using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nguyenvancu.Models;
namespace nguyenvancu.Layer.Admin
{
    public partial class login : System.Web.UI.UserControl
    {
        nguyenvancudbEntities nguyenvancuEntities = new nguyenvancudbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private Boolean checkAdmin(String user, String passworda)
        {

            ADMIN ADMINS = nguyenvancuEntities.ADMINS.Find(txtusername.Text);
            if (ADMINS == null)
            {
                return false;
            }
            else
            {
                if (!ADMINS.is_active)
                {
                    return false;
                }
                return password.Comparehash(ADMINS.passwords, txtpassword.Text, ADMINS.passwords_salt);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["username"] = txtusername.Text;
            Session["isTrust"] = checkAdmin(txtusername.Text, txtpassword.Text);// đặt hàm check
            Session["rank"] = "admin";//hàm kiểm tra ranh
            if ((Boolean)Session["isTrust"])
            {
                Response.Redirect(Request.RawUrl);
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Mật khẩu sai!','', 'error');", true);
            }
        }
    }
}