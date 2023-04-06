using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nguyenvancu.Models;

namespace nguyenvancu.Layer.Admin.accept.bodycontent
{
    public partial class thuoctinh : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
        {
            nguyenvancudbEntities src = new nguyenvancudbEntities();
            if (src.properties.Select(X=>X.names==(e.Values["names"]).ToString())!=null || e.Values["names"] ==null)
            {
                e.Cancel=true;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Trùng tên hoặc để trống!','', 'error');", true);
            }
        }
    }
}