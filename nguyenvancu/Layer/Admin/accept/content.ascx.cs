using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nguyenvancu.Layer.Admin.accept
{
    public partial class content : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string action = Request.QueryString.Get("query");
            switch (action)
            {
                case "info":
                    content_PHD.Controls.AddAt(0, LoadControl("bodycontent/info.ascx"));
                    break;
                case "changepass":
                    content_PHD.Controls.AddAt(0, LoadControl("bodycontent/changepass.ascx"));
                    break;
                case "danhmuc":
                    content_PHD.Controls.AddAt(0, LoadControl("bodycontent/danhmuc.ascx"));
                    break;
                case "themhanghoa":
                    content_PHD.Controls.AddAt(0, LoadControl("bodycontent/themhanghoa.ascx"));
                    break;
                case "thuoctinh":
                    content_PHD.Controls.AddAt(0, LoadControl("bodycontent/thuoctinh.ascx"));
                    break;
                default:
                    break;
            }
        }
    }
}