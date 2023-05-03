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
            getMemberById();
        }
       
     

        protected void active_status_btn_Click(object sender, EventArgs e)
        {

        }

        protected void pending_status_btn_Click(object sender, EventArgs e)
        {

        }

        protected void deactive_status_btn_Click(object sender, EventArgs e)
        {

        }


        //user Defined Function 

        void getMemberById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from member_master_tbl where member_id='" + member_id.Text.Trim()  + "'", con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {

                    while (reader.Read())
                    {

                        TextBox2.Text = reader.GetValue(0).ToString();
                        TextBox7.Text = reader.GetValue(10).ToString();
                        TextBox8.Text = reader.GetValue(1).ToString();
                        TextBox3.Text = reader.GetValue(2).ToString();
                        TextBox4.Text = reader.GetValue(3).ToString();
                        TextBox9.Text = reader.GetValue(4).ToString();
                        TextBox10.Text = reader.GetValue(5).ToString();
                        TextBox11.Text = reader.GetValue(6).ToString();
                        TextBox6.Text = reader.GetValue(7).ToString();
                      
                    }
                   
                }
                else
                {
                    Response.Write("<script>alert('Invalid User')</script>");
                }

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}