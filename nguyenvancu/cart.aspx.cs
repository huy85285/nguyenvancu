using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nguyenvancu.Models;

namespace nguyenvancu
{
    public partial class cart : System.Web.UI.Page
    {
            USER users;
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Models.cart> listcart = new List<Models.cart>();
            if (users is null)
            {
                users = new USER();
            }
            string id = Request.QueryString.Get("id");
            if (Session["cart"] is null)
            {
                Session["cart"]= new List<Models.cart>();
            }
            listcart = Session["cart"] as List<Models.cart>;
            if (!(id is null))
            {
                if (!(listcart.Find(x=>x.idproduct== int.Parse(id)) is null))
                {
                    listcart.Find(x => x.idproduct == int.Parse(id)).COUNT++;
                }
                else
                {
                    Models.cart carts = new Models.cart();
                    carts.USER = users;
                    carts.COUNT = 1;
                    carts.idproduct = int.Parse(id);
                     listcart.Add(carts);
                }
                Session["cart"] = listcart;
            }
            rptcart.DataSource = listcart;
            rptcart.DataBind();
        }
    }
}