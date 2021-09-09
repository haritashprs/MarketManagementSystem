using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBMSproject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("local"))
                {
                    LinkButton3.Visible = false;   //log out
                    LinkButton8.Visible = false;   //Hello user
                    LinkButton10.Visible = true;  // User signup
                    LinkButton1.Visible = true;  //User login
                    LinkButton5.Visible = true;  //admin login
                    LinkButton7.Visible = true;  //Shop login
                    LinkButton2.Visible = false;  //Admin Member Management
                    LinkButton4.Visible = false;  //Managing Section
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton3.Visible = true;   //log out
                    LinkButton8.Visible = true;   //Hello User
                    LinkButton10.Visible = false;  // User signup
                    LinkButton1.Visible = false;  //User login
                    LinkButton5.Visible = false;  //admin login
                    LinkButton7.Visible = false;  //Shop login
                    LinkButton2.Visible = false;  //Admin Member Management
                    LinkButton4.Visible = false;  //Managing Section

                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton3.Visible = true;   //log out
                    LinkButton8.Text = "Hello Admin";
                    LinkButton10.Visible = false;  // User signup
                    LinkButton1.Visible = false;  //User login
                    LinkButton5.Visible = false;  //admin login
                    LinkButton7.Visible = false;  //Shop login
                    LinkButton2.Visible = true;  //Admin Member Management
                    LinkButton4.Visible = true;  //Managing Section
                }
                else if (Session["role"].Equals("shop"))
                {
                    LinkButton3.Visible = true;   //log out
                    LinkButton8.Visible = false;   //Hello User
                    LinkButton10.Visible = false;  // User signup
                    LinkButton1.Visible = false;  //User login
                    LinkButton5.Visible = false;  //admin login
                    LinkButton7.Visible = false;  //Shop login
                    LinkButton2.Visible = false;  //Admin Member Management
                    LinkButton4.Visible = false;  //Managing Section

                }
            }
            catch(Exception ex)
            {
                Response.Redirect("homepage.aspx");
            }               
            
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }


        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Userlogin.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminlogin.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShoppingSectionlogin.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Usersignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";
            Response.Redirect("homepage.aspx");
            LinkButton3.Visible = false;   //log out
            LinkButton8.Visible = false;   //Hello user
            LinkButton10.Visible = true;  // User signup
            LinkButton1.Visible = true;  //User login
            LinkButton5.Visible = true;  //admin login
            LinkButton7.Visible = true;  //Shop login
            LinkButton2.Visible = false;  //Admin Member Management

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminMemberManagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Userprofile.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManagingSectionManagement.aspx");
        }
    }
}