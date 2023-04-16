using nguyenvancu.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using System.Web.Security;
using System.Web.SessionState;

namespace nguyenvancu
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session.Timeout = 30;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            if (!(Session["list_imgs"] is null))
            {
            List<IMG> list_imgs = Session["list_imgs"] as List<IMG>;
            foreach (IMG item in list_imgs)
            {
                    string abc = HostingEnvironment.MapPath($"/IMG/product_img/{item.link}");
                    File.Delete(HostingEnvironment.MapPath($"/IMG/product_img/{item.link}"));

                }
                Session.Remove("contents");
            Session.Remove("products");
            Session.Remove("listdetailproduc");
            Session.Remove("list_imgs");
            }
        }

        protected void Application_End(object sender, EventArgs e)
        {
        }
    }
}