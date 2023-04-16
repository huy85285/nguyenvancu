using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nguyenvancu.Models;
namespace nguyenvancu
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString.Get("id");
            if (!(id is null))
            {
                List<product> products = new List<product>();
                menu menus = (new nguyenvancudbEntities()).menus.Find(int.Parse(id));
                foreach (menu item in (new nguyenvancudbEntities()).menus)
                {
                    if (item.is_farther(int.Parse(id)))
                    {
                        List<product> productstemp=(new nguyenvancudbEntities()).products.Where(x => x.idmenu == item.id).ToList() as List<product>;
                        if (!(productstemp is null))
                        {
                        products.AddRange(productstemp);
                        }
                    }
                }
                rptsach.DataSource = null;
                rptsach.DataSource = products;
                rptsach.DataBind();
                //sqlproduct.SelectCommand = "SELECT * FROM product where idmenu=@id";
                //sqlproduct.SelectParameters.Add("id", id);
                if (menus.products is null)
                {
                    DanhMuc.Text = "Không có sách ở đây";
                }
                else
                {
                    DanhMuc.Text = menus.names;
                }
            }
            else
            {
                rptsach.DataSource = null;
                rptsach.DataSourceID = "sqlproduct";
                rptsach.DataBind();
            }
        }
    }
}