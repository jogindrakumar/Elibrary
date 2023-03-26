using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elib
{
    public partial class User_SignUp : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        //sign up button click code here
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                Response.Write("<script>alert('Member already Registered!! try other ID')</script>");
            }
            else
            {
                signUpNewUser();

            }
           
        }
        //user check member method

        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from member_master_tbl where member_id='"+member_id.Text.Trim()+"'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count >= 1) 
                { return true; }
                else
                {
                    return false;
                }
                

             
              
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;

            }
            
        }
        //user define method
        void signUpNewUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into member_master_tbl(full_name,dob,contact_no,email,state,city,pincode,full_address,member_id,password,account_status)" +
                    " values(@full_name,@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)", con);
                cmd.Parameters.AddWithValue("@full_name", full_name.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", dob.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", contact_no.Text.Trim());
                cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                cmd.Parameters.AddWithValue("@state", ddl_state.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", city.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", pincode.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", full_address.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", member_id.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Account created Successfully!!')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");

            }
        }
    }
}