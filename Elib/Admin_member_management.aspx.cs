using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elib
{
    public partial class Admin_member_management : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Go_btn(object sender, EventArgs e)
        {
            Response.Write("<script>alert('go')</script>");
        }
    }
}