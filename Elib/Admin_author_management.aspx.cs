﻿using System;
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
    public partial class Admin_author_management : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // add button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                Response.Write("<script>alert('Author ID Already  exits check another one !! ')</script>");
            }
            else
            {
                addNewAuthor();

            }

        }
        //update function
        protected void Button3_Click(object sender, EventArgs e)
        {

        }


        //Delete function
        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        // go button
        protected void Button1_Click(object sender, EventArgs e)
        {

        }


        //user defined function 

        void addNewAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into author_master_tbl(author_id,author_name)" +
                    " values(@author_id,@author_name)", con);
                cmd.Parameters.AddWithValue("@author_id", author_id.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", author_name.Text.Trim());
          

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author added Successfully!!')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");

            }
        }

        //user defined function 
        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from author_master_tbl where author_id='" + author_id.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
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
    }
}