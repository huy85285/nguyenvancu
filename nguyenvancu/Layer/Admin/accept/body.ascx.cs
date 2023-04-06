using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nguyenvancu.Layer.Admin.accept
{
    public partial class body : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bodycontent.Controls.AddAt(0, LoadControl("sidebar.ascx"));
            bodycontent.Controls.AddAt(1, LoadControl("content.ascx"));
        }
    }
}