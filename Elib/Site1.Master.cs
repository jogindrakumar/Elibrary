using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elib
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                if (Session["role"].Equals(""))
                {
                    userlogin.Visible = true; // user login link button
                    signup.Visible = true; // Sign UP link button
                    logout.Visible = false; // logout link button
                    hellouser.Visible = false; // hello user link button
                    adminlogin.Visible = true; // admin login link button
                    authormg.Visible = false; // author management link button
                    publishermg.Visible = false; // publisher managementlink button
                    bookinvent.Visible = false; // Book Inventery login link button
                    bookissue.Visible = false; // book Issue link button
                    membermg.Visible = false; // Member managment link button

                }

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_author_management.aspx");

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_publisher_management.aspx");

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Book_Inventory.aspx");

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_book_Issuing.aspx");

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_member_management.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Login.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_login.aspx");

        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Admin_member_management.aspx");
        }
    }
}