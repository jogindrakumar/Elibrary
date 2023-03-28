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
    public partial class Admin_login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from admin_login_tbl where username='" + username.Text.Trim() + "' and password='" + password.Text.Trim() + "'", con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {

                    while (reader.Read())
                    {
                        Response.Write("<script>alert('Hello " + reader.GetValue(2).ToString() + "')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid User')</script>");
                }

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('"+ex.Message+"')</script>");
            }
        }
    }
}