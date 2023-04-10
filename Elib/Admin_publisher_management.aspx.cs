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
    public partial class Admin_publisher_management : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();

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
        //update button
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                updateAuthor();

            }
            else
            {
                Response.Write("<script>alert('Publisher ID Does not  exits check another one !! ')</script>");

            }
        }
        
        //delete button
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                deleteAuthor();

            }
            else
            {
                Response.Write("<script>alert('Publisher ID Does not  exits check another one !! ')</script>");

            }

        }

        //go button
        protected void Button1_Click(object sender, EventArgs e)
        {
            getuserbyId();

        }
        // get author by id

        void getuserbyId()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from publisher_master_tbl where publisher_id='" + publisher_id.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    publisher_name.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Author ID')</script>");
                }




            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");


            }
        }

        //delete author function 

        void deleteAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from publisher_master_tbl where publisher_id='" + publisher_id.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Deleted Successfully!!')</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");

            }
        }

        // update author function 

        void updateAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("update publisher_master_tbl set publisher_name=@publisher_name where publisher_id='" + publisher_id.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@publisher_name", publisher_name.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher Updated  Successfully!!')</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");

            }
        }


        //add athor function 

        void addNewAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into publisher_master_tbl(publisher_id,publisher_name)" +
                    " values(@publisher_id,@publisher_name)", con);
                cmd.Parameters.AddWithValue("@publisher_id", publisher_id.Text.Trim());
                cmd.Parameters.AddWithValue("@publisher_name", publisher_name.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher added Successfully!!')</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");

            }
        }

        //user check user defined function 
        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from publisher_master_tbl where publisher_id='" + publisher_id.Text.Trim() + "'", con);
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

        void clearForm()
        {
            publisher_id.Text = "";
            publisher_name.Text = "";
        }
    }
}