using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            SqlParameter sp1 = new SqlParameter("@em",TextBox1.Text.Trim());

            SqlParameter sp2 = new SqlParameter("@pass", TextBox2.Text.Trim());
            try
            {
                cmd = new SqlCommand("LoginUser", con);  //instantiate SQL command 
                cmd.Parameters.Add(sp1);
                cmd.Parameters.Add(sp2);

                cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.Read())
                {
                    System.Diagnostics.Debug.WriteLine("Welcome");
                    Session["id"] = dr["UserId"].ToString();
                    Session["type"] = dr["Type"].ToString();
                    Session["em"] = TextBox1.Text.ToString();

                    cmd = new SqlCommand("JoinVenue", con);
                    cmd.Parameters.Add("@hid",(String)Session["id"]);
                    cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                    dr = cmd.ExecuteReader();
                    if(dr.Read())
                    {
                        Session["vid"] = dr["venueId"].ToString();
                        System.Diagnostics.Debug.WriteLine((String)Session["vid"]);

                    }
                    if((String)Session["type"]=="HOST")
                        Response.Redirect("HostHomePage.aspx");
                    else
                    Response.Redirect("HomePage.aspx");



                }
                else
                {
                    Label2.Visible = true;
                }
            }
            catch (SqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return; //return 
            

        }
    }
}