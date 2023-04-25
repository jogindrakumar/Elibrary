using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elib
{
    public partial class Admin_member_management : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();

        }

        protected void Go_btn(object sender, EventArgs e)
        {
            Response.Write("<script>alert('go')</script>");
        }
        protected void Go_button(object sender, EventArgs e)
        {
            Response.Write("<script>alert('go')</script>");
        }
        protected void active_status_btn(object sender, EventArgs e)
        {
            Response.Write("<script>alert('go')</script>");
        }
        protected void pending_status_btn(object sender, EventArgs e)
        {
            Response.Write("<script>alert('go')</script>");
        }
        protected void deactive_status_btn(object sender, EventArgs e)
        {
            Response.Write("<script>alert('go')</script>");
        }
    }
}