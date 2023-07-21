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
    public partial class Setting : System.Web.UI.Page
    {

        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((String)Session["type"] == "Guest")
            {
                Response.Redirect("HomePage.aspx");
            }
            System.Diagnostics.Debug.WriteLine((String)Session["type"]);


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("./AddVenue.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("./EditVenue.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            SqlParameter sp1 = new SqlParameter("@vid", 2);
            try
            {
                cmd = new SqlCommand("DeleteVenue", con);
                cmd.Parameters.Add(sp1);
                cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                SqlDataReader dr = cmd.ExecuteReader();
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("./MyVenue.aspx");
        }
    }
}