using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nguyenvancu.Layer.Admin
{
    public partial class acceptlogin : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LPHCONTTEN.Controls.AddAt(0, LoadControl("accept/nav.ascx"));
            LPHCONTTEN.Controls.AddAt(1, LoadControl("accept/body.ascx"));
        }
    }
}