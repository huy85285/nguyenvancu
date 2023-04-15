using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nguyenvancu
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isTrust"] is null || (Boolean)Session["isTrust"] == false|| Request.QueryString.Get("query") == "sign_out")
            {
                 if (Request.QueryString.Get("query") == "sign_out")
                 {
                    Session.Abandon();
                    Response.Redirect(Request.Path);
                }
                AdmindPHD.Controls.AddAt(0, LoadControl("Layer/Admin/login.ascx"));
            }
            else
            {
                AdmindPHD.Controls.AddAt(0, LoadControl("Layer/Admin/acceptlogin.ascx"));
            }
        }
    }
}