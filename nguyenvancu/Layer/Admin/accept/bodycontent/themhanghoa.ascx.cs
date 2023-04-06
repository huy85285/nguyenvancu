using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nguyenvancu.Models;

namespace nguyenvancu.Layer.Admin.accept.bodycontent
{
    public partial class WebUserCondanhmuctrol1 : System.Web.UI.UserControl
    {
        nguyenvancudbEntities src = new nguyenvancudbEntities();
        product product = new product();
        detailproduct detailproduct = new detailproduct();
        content contents = new content();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
            }
            else
            {
            ListView1.DataBind();
            }
        }

        protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
        {
            e.Values["idproduct"] = product.id;
        }

        protected void txtnames_TextChanged(object sender, EventArgs e)
            {
            txtnames.Text = (sender as TextBox).Text;
            if (txtnames.Text != "" && src.products.Count(x => x.names == txtnames.Text) > 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "swal('Đã tồn tại nên mặc hàng này!','', 'error');", true);
                txtnames.Text = "";
            }
        }
    }
}