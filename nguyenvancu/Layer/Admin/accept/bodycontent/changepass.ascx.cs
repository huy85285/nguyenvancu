using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nguyenvancu.Models;

namespace nguyenvancu.Layer.Admin.accept.bodycontent
{
    public partial class changepass : System.Web.UI.UserControl
    {
        nguyenvancudbEntities src = new nguyenvancudbEntities();
        ADMIN user;
        protected void Page_Load(object sender, EventArgs e)
        {
            user = src.ADMINS.Find(Session["username"]);
        }

        protected void btnchange_Click(Object sender, EventArgs e)
        {
            if (!password.Comparehash(user.passwords, txtcurrentpass.Text, user.passwords_salt))
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Mật khẩu không khớp!','', 'error');", true);
            }
            else
            {
                user.passwords = password.HASHPW4time(txtpassnew.Text, user.passwords_salt);
                src.SaveChanges();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Thành công!','', 'success');", true);
            }
        }
    }
}